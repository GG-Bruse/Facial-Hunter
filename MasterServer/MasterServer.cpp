#include <iostream>
#include <vector>
#include <thread>
#include "../Common/httplib.h"
#include "../Common/LogMessage.hpp"
#include "../Common/Daemon.hpp"
#include "Controller.hpp"
#include "Configurator.hpp"
#include <nlohmann/json.hpp>
#include <fstream>

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
        // 从请求主体中读取图像数据
        vector<unsigned char> imageData(request.body.begin(), request.body.end());

        // // 需要向MySQL插入数据时, 放开该代码
        // json jsonImage = imageData;
        // std::ofstream file("output.jsonl");
        // if (file.is_open()) {
        //     file << jsonImage.dump() << "\n";
        //     file.close();
        // } else {
        //     std::cerr << "Unable to open file" << std::endl;
        // }

        //处理
        string outputStr = "错误, 识别失败, error";
        // LOG(DEBUG) << "current thread:" << this_thread::get_id() << endl;
        controller.HandleFaceImage(imageData, &outputStr);
        // LOG(DEBUG) << outputStr << endl;
        response.set_content(outputStr.c_str(), "text/plain");
    });

    server.listen("0.0.0.0", p_configurator->GetConfigInformation()._serverPort);
    //close(fd);
    return 0;
}