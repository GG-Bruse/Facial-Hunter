#include "facialdetection.h"

FacialDetection::FacialDetection()
{
    //创建人脸检测器
    face_cascade = new CascadeClassifier;
    //此处只能使用绝对路径
    if (!face_cascade->load("C:/Users/BJY81/Desktop/build-QFaceClient-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug/haarcascade_frontalface_alt2.xml")) {
    qDebug() << "Error loading face cascade.";
    return;
    }
}

FacialDetection::~FacialDetection()
{
    if(face_cascade != nullptr)
    delete face_cascade;
}

Mat FacialDetection::DetectImage(Mat& srcImage, int& faceSize)
{
    // 存储检测到的人脸信息的容器
    std::vector<cv::Rect> faces;
    //人脸检测
    // 待检测的对象至少有100 * 100的大小
    //若没检测到人脸faces为空
    face_cascade->detectMultiScale(srcImage, faces, 1.1, 2, 0|cv::CASCADE_SCALE_IMAGE, cv::Size(100, 100));

    Mat faceImage;
    // 在图像上框出检测到的人脸
    for (size_t i = 0; i < faces.size(); ++i)
    {
        // 获取人脸矩形的坐标和尺寸
        int x = faces[i].x;
        int y = faces[i].y;
        int width = faces[i].width;
        int height = faces[i].height;
        //裁剪出人脸图片
        faceImage = srcImage(cv::Rect(x, y, width, height));
        // 定义线条的粗细
        int thickness = 1;
        // 绘制左上角
        cv::line(srcImage, cv::Point(x, y), cv::Point(x + width / 8, y), cv::Scalar(255, 255, 0), thickness);
        cv::line(srcImage, cv::Point(x, y), cv::Point(x, y + height / 8), cv::Scalar(255, 255, 0), thickness);
        // 绘制右上角
        cv::line(srcImage, cv::Point(x + width - width / 8, y), cv::Point(x + width, y), cv::Scalar(255, 255, 0), thickness);
        cv::line(srcImage, cv::Point(x + width, y), cv::Point(x + width, y + height / 8), cv::Scalar(255, 255, 0), thickness);
        // 绘制左下角
        cv::line(srcImage, cv::Point(x, y + height - height / 8), cv::Point(x, y + height), cv::Scalar(255, 255, 0), thickness);
        cv::line(srcImage, cv::Point(x, y + height), cv::Point(x + width / 8, y + height), cv::Scalar(255, 255, 0), thickness);
        // 绘制右下角
        cv::line(srcImage, cv::Point(x + width - width / 8, y + height), cv::Point(x + width, y + height), cv::Scalar(255, 255, 0), thickness);
        cv::line(srcImage, cv::Point(x + width, y + height - height / 8), cv::Point(x + width, y + height), cv::Scalar(255, 255, 0), thickness);
    }

    faceSize = faces.size();
    if(faces.size() > 1) return srcImage;

    return faceImage;
}
