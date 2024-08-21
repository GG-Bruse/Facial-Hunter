#ifndef HTTPCONTROLLER_H
#define HTTPCONTROLLER_H

#include <QObject>
#include <iostream>
#include <vector>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <opencv2/opencv.hpp>
#include <QImage>
#include <QBuffer>
#include <QEventLoop>
using namespace cv;
using namespace std;

class HttpController: public QObject
{
    Q_OBJECT
public:
    HttpController();
    ~HttpController();

public:
    vector<QString> SendImage(Mat& faceImage);

public:
    QString base64Encode(const QByteArray &data);

signals:
    void imageHandleFinished(vector<QString>);

private:
    QNetworkAccessManager* _manager;
    static QString _url;
};

#endif // HTTPCONTROLLER_H
