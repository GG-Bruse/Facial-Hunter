#include <iostream>
#include <vector>
#include <thread>
#include "../Common/httplib.h"
#include "../Common/LogMessage.hpp"
#include "../Common/Daemon.hpp"
#include "Controller.hpp"
#include "Configurator.hpp"
#include <opencv2/opencv.hpp>

using namespace std;
using namespace httplib;
using namespace DailyRecord;
using namespace Controller;
using namespace config;

Configurator* p_configurator = nullptr;
static Control* p_controller = nullptr;

void Resume(int signo) { p_controller->RestoreHosts(); }

int main(int argc, char* argv[])
{
    signal(SIGQUIT, Resume);

    //int fd = DaemonSelf(0);

    //加载配置器
    Configurator configurator;
    if(!configurator.loadFile(string(argv[1]))) exit(-1);
    p_configurator = &configurator;

    Server server;
     
    //控制器
    Control controller;
    p_controller = &controller;


    server.Post("/image", [&](const Request& request, Response& response) {
        // 从请求主体中读取图像数据
        vector<uchar> imageData(request.body.begin(), request.body.end());
        //将图像数据转换为OpenCV Mat对象
        cv::Mat image = cv::imdecode(imageData, cv::IMREAD_COLOR);
        if (image.empty()) {
            // 图像解码失败，返回错误响应
            response.set_content("错误, 图像解码失败, error", "text/plain");
            LOG(ERROR) << "Error decoding image" << endl;
            return;
        }
        string outputStr;
        //LOG(DEBUG) << "current thread:" << this_thread::get_id() << endl;
        controller.HandleFaceImage(image, &outputStr);
        LOG(DEBUG) << outputStr << endl;
        response.set_content(outputStr.c_str(), "text/plain");
    });

    server.listen("0.0.0.0", p_configurator->GetConfigInformation()._serverPort);
    //close(fd);
    return 0;
}