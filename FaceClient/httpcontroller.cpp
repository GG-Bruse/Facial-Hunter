#include "httpcontroller.h"

QString HttpController::_url = "http://82.156.187.43";

HttpController::HttpController()
{
    _manager = new QNetworkAccessManager;
}

HttpController::~HttpController()
{
    if(_manager != nullptr)
        delete _manager;
}

vector<QString> HttpController::SendImage(Mat& faceImage)
{
    //构造请求
    QNetworkRequest request;
    request.setUrl(QUrl(_url + "/image"));
    request.setHeader(QNetworkRequest::ContentTypeHeader, QVariant("application/octet-stream"));

    // 将Mat转换为QByteArray
    std::vector<uchar> buffer;
    cv::imencode(".jpg", faceImage, buffer);
    QByteArray imageData(reinterpret_cast<char*>(buffer.data()), buffer.size());

//    std::vector<uchar> img_data(imageData.begin(), imageData.end());
//    cv::Mat image = cv::imdecode(img_data, cv::IMREAD_COLOR);
//    cv::imshow("Face Image", image);



    //发送请求
    QNetworkReply* reply = _manager->post(request, imageData);

    //信号槽, 绑定处理响应函数
    connect(reply, &QNetworkReply::finished, [=]() {
        if (reply->error() == QNetworkReply::NoError)
        {
            // 读取响应体内容
//            QByteArray responseData = reply->readAll();
//            QString responseString = QString::fromUtf8(responseData);
            QString responseString = reply->readAll();
            qDebug() << ":::" << responseString << endl;
            // 将响应体内容按逗号分割
            QStringList responseList = responseString.split(", ", QString::SkipEmptyParts);
            vector<QString> responseVector(responseList.begin(), responseList.end());
            //emit imageHandleFinished(vector<QString>{"错误", "网络重连", "error"});
            emit imageHandleFinished(responseVector); // 发送信号通知请求完成
         }
         else {
            qDebug() << "Network error occurred:" << reply->errorString();
            emit imageHandleFinished(vector<QString>{"错误", "网络重连", "error"});
         }
         reply->deleteLater();
    });
    //返回空的结果，等待信号触发后再更新
    return std::vector<QString>();
}

