#define _CRT_SECURE_NO_WARNINGS

#include "../Common/httplib.h"
#include "../Common/Daemon.hpp"
#include <opencv2/opencv.hpp>
#include "imageHandler.hpp"
#include <mutex>

using namespace std;
using namespace httplib;
using namespace std;
using namespace imageHandle;
using namespace cv;

int main(int argc, char* argv[])
{
    if(argc != 3) {
        cerr << "\nUsage: " << argv[0] << " modelPath  prot" << endl;
        return 0;
    }

    //int fd = DaemonSelf(atoi(argv[1]));
    
    ImageHandler imageHandler;
    mutex mtx;
    Server server;

    // Mat image1 = imread("/home/bjy/FaceRecSysOnnx/face_image_dir/2130622004/2130622004_1.jpg");
    // Mat image2 = imread("/home/bjy/FaceRecSysOnnx/face_image_dir/2130622004/2130622004_3.jpg");
    // imageHandler.HandleImage(image1, image2);

    // 提供编译运行服务
    server.Post("/imageHandle", [&](const Request& req, Response& rsp) {
        MultipartFormData data1 = req.get_file_value("image1");
        MultipartFormData data2 = req.get_file_value("image2");

        Mat image1, image2;
        vector<uchar> buffer1(data1.content.begin(), data1.content.end());
        vector<uchar> buffer2(data2.content.begin(), data2.content.end());
        image1 = imdecode(buffer1, IMREAD_COLOR);
        image2 = imdecode(buffer2, IMREAD_COLOR);
        
        double result = imageHandler.HandleImage(image1, image2);
        LOG(NORMAL) << "Response Value : " << result << endl;
            
        rsp.set_content(std::to_string(result), "text/plain");
    });

    server.listen("0.0.0.0", atoi(argv[2])); // 启动http服务
    //close(fd);

    return 0;
}