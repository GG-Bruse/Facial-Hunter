#pragma once

#include <iostream>
#include <vector>
#include <string>
#include <thread>
#include <future>
#include <functional>
#include <dirent.h>
#include "LoadBalancer.hpp"
#include "ModelLayer.hpp"
#include "../Common/httplib.h"
#include "../Common/LogMessage.hpp"
#include <opencv2/opencv.hpp>


using namespace std;
using namespace cv;
using namespace LoadBalance;
using namespace ModelLayer;
using namespace httplib;
using namespace DailyRecord;

namespace Controller
{   
    class Control
    {
    public:
        void HandleFaceImage(const Mat& image, string* outputStr) 
        {
            string returnStr = "错误, 识别失败, error";
            //待比对图片
            vector<uchar> buffer;
            imencode(".jpg", image, buffer);
            string imageData1(buffer.begin(), buffer.end());
            //数据库图片
            vector<vector<string>> db;
            _model.GetAllFilePath(db);
            //比对数据库中各个人脸集的第一张图片
            for(int i = 0; i < db.size(); ++i)
            {
                //每个人脸文件夹中的第一个文件
                string filePath = db[i][2] + db[i][0] + "_1.jpg";
                Mat testImage =  imread(filePath);
                imencode(".jpg", testImage, buffer);
                string imageData2(buffer.begin(), buffer.end());
                //构造参数
                MultipartFormDataItems items;
                MultipartFormData data1{"image1", imageData1, "image1.jpg", "image/jpeg"};
                MultipartFormData data2{"image2", imageData2, "image2.jpg", "image/jpeg"};
                items.emplace_back(data1);
                items.emplace_back(data2);
                // 检测单张人脸图片
                double result = ProcessSinglePicture(items);
                if(result > 1.1600 || result < 0) continue;
                // 小于阈值则初步判断为同一人, 继续比对人脸集中其他图片验证
                bool flag = ProcessingCollectionPictures(imageData1, db[i][2], db[i][0] + "_1.jpg");
                //找到, 返回
                if(flag) { 
                    returnStr = ("正确, " + db[i][1] + ", " + db[i][0]);
                    *outputStr = returnStr;
                    return;
                }
            }
            *outputStr = returnStr;
            return;
        }

    public:
        void RestoreHosts() { _loadBalancer.OnlineServerHost(); }

    private:
        double ProcessSinglePicture(MultipartFormDataItems items)
        {
            //不断选择主机
            while(true) 
            {
                size_t hostID = 0;
                ServerHost* serverHost = nullptr;
                if(!_loadBalancer.SelectServiceHost(&hostID, &serverHost)) {
                    LOG(ERROR) << "所有主机不在线" << endl;
                    break;//所有主机不在线
                }          
                //充当代码处理服务器的客户端
                httplib::Client client(serverHost->GetIP(), serverHost->GetPort());
                serverHost->IncreaseLoad();
                LOG(NORMAL) << "Successfully selected the host with the least load, hostID:" << hostID << " ip:" <<
                serverHost->GetIP() << " port:" << serverHost->GetPort() << " 当前主机负载为:" << serverHost->GetLoadSituation() << endl;
                LOG(DEBUG) << "current thread:" <<this_thread::get_id() << endl;
                //发送
                if(httplib::Result ret = client.Post("/imageHandle", items))
                {
                    if (ret->status == 200) {//http请求成功时状态码为200
                        double responseData = stod(ret->body);
                        if(responseData >= 0) {
                            serverHost->ReduceLoad();
                            LOG(NORMAL) << "Request code processing server successful" << endl;
                            return responseData;
                        }
                    }
                    serverHost->ReduceLoad();
                }
                else//主机处于离线状态，请求失败
                {
                    LOG(ERROR) << "Request code processing server failed, hostID:" << hostID << " ip: " << \
                        serverHost->GetIP() << " port: " << serverHost->GetPort() << endl;
                    serverHost->ReduceLoad();
                    _loadBalancer.OfflineServerHost(hostID);
                    _loadBalancer.ShowServerHost();//for Debug
                }
            }
            return -1.0;
        }

        bool ProcessingCollectionPictures(string& imageData1, const string& path, const string& firstFilePath)
        {
            vector<future<double>> resultV;//记录各个异步任务执行结果
            vector<uchar> buffer;
            int totalCount = 0;//记录共有多少张图片
            int rightCount = 0;//正确的共有多少张图片
            //读取文件夹
            DIR* dir;
            struct dirent* entry;
            dir = opendir(path.c_str());
            if (dir != NULL) 
            {
                while ((entry = readdir(dir)) != NULL) 
                {
                    if (entry->d_type == DT_REG) //只处理普通文件，排除目录和特殊文件
                    {
                        string filename = entry->d_name;
                        // LOG(DEBUG) << filename << endl;
                        if (filename != firstFilePath) 
                        {
                            //Get人脸集目录中的对比图片
                            Mat testImage =  imread(path + filename);
                            imencode(".jpg", testImage, buffer);
                            string imageData2(buffer.begin(), buffer.end());
                            //构建数据
                            MultipartFormDataItems itemss;
                            MultipartFormData data1{"image1", imageData1, "image1.jpg", "image/jpeg"};
                            MultipartFormData data2{"image2", imageData2, "image2.jpg", "image/jpeg"};
                            itemss.emplace_back(data1);
                            itemss.emplace_back(data2);
                            // 异步处理
                            future<double> fu = async(launch::async, &Control::ProcessSinglePicture, this, itemss);
                            resultV.push_back(move(fu));
                            ++totalCount;
                        }
                    }
                }
                closedir(dir);
                //计算结果
                for (int i = 0; i < resultV.size(); ++i) {
                    try {
                        // 检查 future 是否有效并等待其完成
                        if (resultV[i].valid()) {
                            double result = resultV[i].get();
                            if (result >= 0.0 && result <= 0.85000) ++rightCount;
                        }
                        else --i;
                    } catch (const exception& e) {
                        LOG(ERROR) << "Error getting future result: " << e.what() << endl;
                    }
                }
                //返回结果
                LOG(DEBUG) << "totalCount:" << totalCount << ", rightCount:" << rightCount << endl;
                if(totalCount == 0 && rightCount == 0) return true;
                if(0.5 <= ((double)rightCount / (double)totalCount)) return true;
                else return false;
            } else {
                LOG(ERROR) << "人脸集目录无法打开" << std::endl;
                return false;
            }
        }

    private:
        Model _model;
        LoadBalancer _loadBalancer;
    };
}
