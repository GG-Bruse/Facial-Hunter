#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QMainWindow>
#include <QDebug>
#include <QScreen>
#include "opencv2/opencv.hpp"
#include "opencv2/highgui.hpp"
#include <QImage>
#include <QPainter>
#include <QPixmap>
#include <QTimer>
#include <QLabel>
#include <QResizeEvent>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QLCDNumber>
#include <QProgressBar>
#include <QMessageBox>
#include <QPushButton>
#include <QThread>

#include <iostream>
#include <atomic>

#include "facialdetection.h"
#include "httpcontroller.h"

using namespace std;

QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();

//UI类接口
public:
    void AdaptToScreenSize();
    void setWindowWidget();
    //设置左上角控件
    void setWindowLeftUpWidget(QRect& rect);
    void setDateShowStyleSheet();
    void setTimeShowStyleSheet();
    //设置右上角控件
    void setWindowRightUpWidget(QRect& rect);
    void setLabelShowStyleSheet(QRect rect);
    QPixmap convertBlackToWhite(const QPixmap& pixmap);//将黑色转为白色
    //设置右下角控件
    void setWindowRightDownWidget(QRect& rect);
    //设置中间的显示控件
    void setWindowMiddleWidget(QRect& rect);


//UI类成员变量
private:
    QLabel* _label;//用于显示视频
    //左上
    QWidget* _leftUp;
    QLabel* _dateShow;//显示日期
    QLCDNumber* _timeShow;//显示时间
    //右上
    QWidget* _rightUp;
    QLabel* _labelShow1;
    QLabel* _labelShow2;
    QLabel* _labelShow3;
    //右下
    QPushButton* _loginShow;
    // 显示人脸识别的结果
    QWidget* _middleShow;
    QLabel* _resultShow1;
    QLabel* _resultShow2;
    QTimer* _showTimer;


//视频类接口
public:
    void GetVideoStream();

//视频类成员变量
private:
    QTimer* _timer;
    cv::Mat _srcImge;
    cv::VideoCapture *_videoCap;

//人脸检测类成员变量
private:
    FacialDetection* _faceialDetection;

//网络传输类成员变量
private:
    HttpController* _httpController;

public:
    atomic_bool isSend;
    void showResult(vector<QString>);
    void _disShowResult();


private:
    Ui::Widget *ui;
};
#endif // WIDGET_H
