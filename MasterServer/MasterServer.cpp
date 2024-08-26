#include <iostream>
#include <vector>
#include <thread>
#include "../Common/httplib.h"
#include "../Common/LogMessage.hpp"
#include "../Common/Daemon.hpp"
#include "Controller.hpp"
#include "Configurator.hpp"
#include <nlohmann/json.hpp>

using namespace std;
using namespace httplib;
using namespace DailyRecord;
using namespace Controller;
using namespace config;
using json = nlohmann::json;

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
        //设置响应头
        response.set_header("Content-Type", "application/json");
        // 从请求主体中读取图像数据
        json jsonImage = json::parse(request.body);
        // 将json转为vector<float>
        if(!jsonImage.contains("data") || !jsonImage["data"].is_array()) 
        {
            vector<float> vectorImage;
            for (const auto& item : jsonImage["data"]) 
                if (item.is_number_float())
                    vectorImage.push_back(item.get<float>());
            
            string outputStr = "错误, 识别失败, error";
            //LOG(DEBUG) << "current thread:" << this_thread::get_id() << endl;
            controller.HandleFaceImage(vectorImage, &outputStr);
            // LOG(DEBUG) << outputStr << endl;
            response.set_content(outputStr.c_str(), "application/json");
        }
        else 
        {
            string outputStr = "错误, 图像数据出错, error";
            response.set_content(outputStr.c_str(), "application/json");
        }
    });

    server.listen("0.0.0.0", p_configurator->GetConfigInformation()._serverPort);
    //close(fd);
    return 0;
}