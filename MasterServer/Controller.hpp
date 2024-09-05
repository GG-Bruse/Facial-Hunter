#pragma once

#include <iostream>
#include <vector>
#include <string>
#include <thread>
#include <future>
#include <functional>
#include <dirent.h>
#include <nlohmann/json.hpp>
#include "LoadBalancer.hpp"
#include "ModelLayer.hpp"
#include "../Common/httplib.h"
#include "../Common/LogMessage.hpp"


using namespace std;
using namespace LoadBalance;
using namespace ModelLayer;
using namespace httplib;
using namespace DailyRecord;
using json = nlohmann::json;

namespace Controller
{   
    class Control
    {
    public:
        void HandleFaceImage(const vector<unsigned char> imageData1, string* outputStr) 
        {
            string returnStr = "错误, 识别失败, error";
            //构造数据
            json imageDatas;
            imageDatas["data1"] = imageData1;

            // 获取数据库中所有人员的主键值(学号)
            vector<string> studentIdSet;
            _model.GetAllStudentID(studentIdSet);

            //控制逻辑，先对比各个人的一份信息，若正确则继续对比
            for(int i = 0; i < studentIdSet.size(); ++i)
            {
                //获取此人的所有人脸信息
                vector<string> faceDatas;
                if(!_model.GetFaceData(studentIdSet[i], faceDatas)) LOG(ERROR) << "Get Face Data ERROR" << endl;
                else LOG(DEBUG) << "faceDatas size:" << faceDatas.size() << endl;

                //添加参数, 检测单张人脸图片
                imageDatas["data2"] = json::parse(faceDatas[0]);
                bool result = ProcessSinglePicture(imageDatas);
                if(!result) continue;
                
                // 小于阈值则初步判断为同一人, 继续比对人脸集中其他图片验证
                bool flag = ProcessingCollectionPictures(imageData1, vector<string>(faceDatas.begin() + 1, faceDatas.end()));
                LOG(DEBUG) << flag << endl;
                if(flag) { 
                    string name = _model.GetName(studentIdSet[i]);
                    returnStr = ("正确, " + name + ", " + studentIdSet[i]);
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
        bool ProcessSinglePicture(const json imageDatas)
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
                if(httplib::Result ret = client.Post("/imageHandle", imageDatas.dump(), "application/json"))
                {
                    if(ret)
                    {
                        if (ret->status == 200) {//http请求成功时状态码为200
                            bool result = (ret->body) == "true" ? true : false;
                            serverHost->ReduceLoad();
                            // LOG(DEBUG) << result << endl;
                            LOG(NORMAL) << "Request code processing server successful" << endl;
                            return result;
                        }
                        else {
                            LOG(DEBUG) << ret->status << endl;
                        }
                    }
                     else {
                        LOG(ERROR) << ret.error() << endl;
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

        bool ProcessingCollectionPictures(const vector<unsigned char>& vectorImage, vector<string> faceDatas)
        {
            // LOG(DEBUG) << "faceDatas size:" << faceDatas.size() << endl;
            if(faceDatas.size() == 0) return true;

            vector<future<bool>> resultV;//记录各个异步任务执行结果
            int rightCount = 0;//正确的共有多少张图片

            json imageDatas;
            imageDatas["data1"] = vectorImage;
            //处理该ID的剩余所有人脸信息
            for(int i = 0; i < faceDatas.size(); ++i)
            {
                //构建数据
                json thisFace = json::parse(faceDatas[i]);
                imageDatas["data2"] = thisFace;
                // 异步处理
                future<bool> fu = async(launch::async, &Control::ProcessSinglePicture, this, imageDatas);
                resultV.push_back(move(fu));
            }
            //计算结果
            for (int i = 0; i < resultV.size(); ++i) 
            {
                try {
                    // 检查 future 是否有效并等待其完成
                    if (resultV[i].valid()) {
                        bool result = resultV[i].get();
                        if (result) ++rightCount;
                    }
                    else --i;
                } catch (const exception& e) {
                    LOG(ERROR) << "Error getting future result: " << e.what() << endl;
                }
            }
            //返回结果
            LOG(DEBUG) << "totalCount:" << faceDatas.size() << ", rightCount:" << rightCount << endl;
            if(0.5 <= ((double)rightCount / (double)faceDatas.size())) return true;
            else return false;
        }

    private:
        Model _model;
        LoadBalancer _loadBalancer;
    };
}
