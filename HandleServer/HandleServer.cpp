#define _CRT_SECURE_NO_WARNINGS

#include "../Common/httplib.h"
#include "../Common/Daemon.hpp"
#include "imageHandler.hpp"
#include "Configurator.hpp"
#include <mutex>
#include <nlohmann/json.hpp>

using namespace std;
using namespace httplib;
using namespace std;
using namespace imageHandle;
using namespace config;
using json = nlohmann::json;

Configurator* p_configurator = nullptr;

int main(int argc, char* argv[])
{
    if(argc != 3) {
        cerr << "\nUsage: " << argv[0] << " confPath  port" << endl;
        return 0;
    }

    //int fd = DaemonSelf(atoi(argv[1]));

    //加载配置器
    Configurator configurator;
    if(!configurator.loadFile(string(argv[1]))) exit(-1);
    p_configurator = &configurator;
    
    ImageHandler imageHandler;
    Server server;

    // 提供人脸识别服务
    server.Post("/imageHandle", [&](const Request& request, Response& response) {
        // 从请求主体中读取图像数据
        json jsonImages = json::parse(request.body);
        // 过模型处理
        double result = imageHandler.HandleImage(jsonImages);
        LOG(NORMAL) << "Response Value : " << result << endl;
        // 响应
        response.set_content(std::to_string(result), "text/plain");
    });

    server.listen("0.0.0.0", atoi(argv[2])); // 启动http服务
    //close(fd);

    return 0;
}