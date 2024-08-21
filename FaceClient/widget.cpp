#include "widget.h"
#include "ui_widget.h"

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);
    setWindowTitle("包佳毅人脸识别软件");

    //窗口适应屏幕大小
    AdaptToScreenSize();
    //设置窗口控件
    setWindowWidget();

    //人脸检测准备
    _faceialDetection = new FacialDetection;

    //网络传输准备
    _httpController = new HttpController;
    //网络处理结果信号槽绑定
    isSend.store(false);
    connect(_httpController, &HttpController::imageHandleFinished, this, &Widget::showResult);

    // 读取/dev/video 0获取
    _videoCap = new cv::VideoCapture(0);
    //设置定时器
    _timer = new QTimer(this);
    //定时器信号槽
    connect(_timer, &QTimer::timeout, this, &Widget::GetVideoStream);
    //定时器启动 33ms
    _timer->start(33);
}

Widget::~Widget()
{
    if(_faceialDetection != nullptr)
        delete _faceialDetection;
    if(_httpController != nullptr)
        delete _httpController;
    if(_videoCap != nullptr)
        delete _videoCap;
    delete ui;
}

void Widget::AdaptToScreenSize()
{
    // 获取主屏幕
    QScreen *screen = QGuiApplication::primaryScreen();
    // 获取屏幕尺寸
    QRect screenSize = screen->geometry();
    // 获取屏幕高度
    int screenHeight = screenSize.height();
    qDebug() << "屏幕高度：" << screenHeight;
    // 获取屏幕宽度
    int screenWidth = screenSize.width();
    qDebug() << "屏幕宽度：" << screenWidth;
    //设置窗口大小
    this->setGeometry(screenWidth/6, screenHeight/10, screenWidth/3, screenHeight - screenHeight/5);
    this->setMinimumSize(2 * screenWidth/3, screenHeight - screenHeight/5);
    this->setMaximumSize(2 * screenWidth/3, screenHeight - screenHeight/5);
}

void Widget::setWindowWidget()
{
    QRect rect = this->geometry();
    //设置显示控件
    _label = new QLabel(this);
    _label->resize(rect.width(), rect.height());
    //设置左上角
    setWindowLeftUpWidget(rect);
    //设置右上角
    setWindowRightUpWidget(rect);
    //设置右下角
    setWindowRightDownWidget(rect);
    //设置中间
    setWindowMiddleWidget(rect);
}

void Widget::setWindowLeftUpWidget(QRect& rect)
{
    //设置左上角整体控件
    _leftUp = new QWidget(_label);
    _leftUp->setGeometry(0, 0, rect.width() / 5, rect.height() / 5);
    //_leftUp->setStyleSheet("border: 2px solid black;");
    //布局
    QVBoxLayout* layout = new QVBoxLayout;
    _dateShow = new QLabel;
    _timeShow = new QLCDNumber;
    layout->addWidget(_dateShow);
    layout->addWidget(_timeShow);
    _leftUp->setLayout(layout);
    //设置间距
    layout->setContentsMargins(0, 0, 0, 0);
    layout->setSpacing(0);//相邻元素的边距
    //设置拉伸比例
    layout->setStretchFactor(_dateShow, 3);
    layout->setStretchFactor(_timeShow, 2);
    //分别设置两个控件的ui
    setDateShowStyleSheet();
    setTimeShowStyleSheet();

//    qDebug() << "_label thread:" << _label->thread();
//    qDebug() << "_leftUp thread:" << _leftUp->thread();
}

void Widget::setDateShowStyleSheet()
{
    // 内容居中
    _dateShow->setAlignment(Qt::AlignCenter);
    // 扩展布局
    _dateShow->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    // 内容自动拉伸填充
    _dateShow->setScaledContents(true);
    //设置边距
    _dateShow->setContentsMargins(0, 0, 0, 0);
    // 设置字体大小粗细
    QFont font("微软雅黑");
    font.setWeight(QFont::Bold);
    font.setPointSize(18);
    _dateShow->setFont(font);
    //背景透明，字体白色
    _dateShow->setStyleSheet("background:transparent; color: white;");
    //启动定时
    QTimer* timer = new QTimer(this);
    timer->start(1000);
    connect(timer, &QTimer::timeout, [&]()
    {
        QString text = QDate::currentDate().toString("MM月dd日 ");
        int dayOfWeek = QDate::currentDate().dayOfWeek();
        QString dayOfWeekString;
        switch (dayOfWeek)
        {
            case Qt::Monday:
                dayOfWeekString = "周一";
                break;
            case Qt::Tuesday:
                dayOfWeekString = "周二";
                break;
            case Qt::Wednesday:
                dayOfWeekString = "周三";
                break;
            case Qt::Thursday:
                dayOfWeekString = "周四";
                break;
            case Qt::Friday:
                dayOfWeekString = "周五";
                break;
            case Qt::Saturday:
                dayOfWeekString = "周六";
                break;
            case Qt::Sunday:
                dayOfWeekString = "周日";
                break;
            default:
                dayOfWeekString = "未知";
                break;
        }
        if(dayOfWeekString == "未知")
            QMessageBox::critical(this, "错误", "获取时间错误");
        text += dayOfWeekString;
        _dateShow->setText(text);
    });
}

void Widget::setTimeShowStyleSheet()
{
    _timeShow->setDigitCount(5); //设置位数
    _timeShow->setMode(QLCDNumber::Dec); //十进制显示
    _timeShow->setSegmentStyle(QLCDNumber::Flat); //有三种风格
    _timeShow->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    _timeShow->setStyleSheet("background:transparent; color:white;");
    //启动定时
    QTimer* timer = new QTimer(this);
    timer->start(1000);
    connect(timer, &QTimer::timeout, [&](){
        _timeShow->display(QTime::currentTime().toString("hh:mm"));
    });
}

void Widget::setWindowRightUpWidget(QRect &rect)
{
    //设置右上角整体控件
    _rightUp = new QWidget(_label);
    _rightUp->setGeometry(rect.width() - rect.width() / 11 * 2, rect.height() / 45, rect.width() / 6, rect.height() / 12);
    //_rightUp->setStyleSheet("border: 2px solid black;");

    //布局
    QHBoxLayout* layout = new QHBoxLayout;
    _labelShow1 = new QLabel;
    _labelShow2 = new QLabel;
    _labelShow3 = new QLabel;
    layout->addWidget(_labelShow1);
    layout->addWidget(_labelShow2);
    layout->addWidget(_labelShow3);
    _rightUp->setLayout(layout);
    //设置拉伸比例
    layout->setStretchFactor(_labelShow1, 2);
    layout->setStretchFactor(_labelShow2, 2);
    layout->setStretchFactor(_labelShow3, 2);
    //设置间距
    layout->setContentsMargins(0, 0, 0, 0);
    layout->setSpacing(10);//相邻元素的边距
    //设置QLabel的ui
    setLabelShowStyleSheet(_rightUp->geometry());
}

void Widget::setLabelShowStyleSheet(QRect rect)
{
    _labelShow1->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    _labelShow2->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    _labelShow3->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
    _labelShow1->setAlignment(Qt::AlignCenter);
    _labelShow2->setAlignment(Qt::AlignCenter);
    _labelShow3->setAlignment(Qt::AlignCenter);

    QSize labelSize = QSize(rect.width() / 3 - 2 * 10, rect.height());
    qDebug() << labelSize;

    QPixmap pixmap1(":/img/protect.png");
    QPixmap scaledPixmap1 = pixmap1.scaled(labelSize, Qt::KeepAspectRatio);
    _labelShow1->setPixmap(scaledPixmap1);

    QPixmap pixmap2(":/img/network.png");
    QPixmap scaledPixmap2 = pixmap2.scaled(labelSize, Qt::KeepAspectRatio);
    _labelShow2->setPixmap(scaledPixmap2);

    QPixmap pixmap3(":/img/etc.png");
    QPixmap scaledPixmap3 = pixmap3.scaled(labelSize, Qt::KeepAspectRatio);
    _labelShow3->setPixmap(scaledPixmap3);
}


void Widget::setWindowRightDownWidget(QRect &rect)
{
    _loginShow = new QPushButton(_label);
    _loginShow->setGeometry(rect.width() - rect.width() / 9, rect.height() - rect.height() / 3, rect.width() / 12, rect.height() / 9);

    QIcon icon(":/img/password.png");
    _loginShow->setIcon(icon);
    _loginShow->setStyleSheet("QPushButton { background-color: gray; border-radius: 50%;}"
                             "QPushButton:hover { background-color: darkgray; border-radius: 50%;}");
    _loginShow->setText("");
    _loginShow->setFlat(true); // 设置按钮为扁平样式，以确保只显示图标
    _loginShow->setIconSize(QSize(rect.width() / 17, rect.height() / 17));

    connect(_loginShow, &QPushButton::clicked, []() {});
}


void Widget::setWindowMiddleWidget(QRect &rect)
{
    _middleShow = new QWidget(_label);
    _middleShow->setGeometry(3 * rect.width() / 10, 5 * rect.height() / 8, 4 * rect.width() / 9, rect.height() / 5);

//    _middleShow->setStyleSheet("border: 2px solid black;");
//    qDebug() << _middleShow->geometry().x() << " " << \
//                _middleShow->geometry().y() << " " << \
//                _middleShow->geometry().width() << " " << \
//                _middleShow->geometry().height();

    _resultShow1 = new QLabel;
    _resultShow2 = new QLabel;
    //_resultShow->setObjectName("resultShow");
    //布局
    QHBoxLayout* layout = new QHBoxLayout;
    layout->addWidget(_resultShow1);
    layout->addWidget(_resultShow2);
    //设置拉伸比例
    layout->setStretchFactor(_resultShow1, 2);
    layout->setStretchFactor(_resultShow2, 3);
    //设置间距
    layout->setContentsMargins(0, 0, 0, 0);
    layout->setSpacing(0);//相邻元素的边距
    //布局加入
    _middleShow->setLayout(layout);
    //隐藏
    _middleShow->hide();
}


void Widget::GetVideoStream()
{
    _videoCap->read(_srcImge);//获取到一帧
    cvtColor(_srcImge, _srcImge, CV_BGR2RGB);

    //检测人脸并将其框出
    int faceSize = 0; // 检测到几个人脸
    Mat faceImage = _faceialDetection->DetectImage(_srcImge, faceSize);

    // 将OpenCV中的图像 _srcImge 转换为Qt中的 QImage 对象
    QImage image = QImage((const unsigned char*)_srcImge.data, _srcImge.cols, _srcImge.rows, QImage::Format_RGB888);

    //原比例缩放
    QRect rect = this->geometry();
    image = image.scaled(QSize(rect.width(), rect.height()), Qt::KeepAspectRatio);

    //显示
    _label->setPixmap(QPixmap::fromImage(image));

    //发送至服务器处理
    if(!isSend.load())
    {
        vector<QString> result;
        if(!faceImage.empty() && faceSize == 1) {
            result = _httpController->SendImage(faceImage);
            //cv::imshow("Face Image", faceImage);
            isSend.store(true);
        }
    }
    //_httpController->SendImage(faceImage);
}

void Widget::showResult(vector<QString> result)
{
    //设置显示图片、文字
    if(result[0] == "正确")
    {
        QPixmap pixmap(":img/pass.png");
        _resultShow1->setPixmap(pixmap);
        _resultShow2->setText(result[0] + " " + result[1] + " " + result[2]);
        //设置styleSheet
        _resultShow1->setStyleSheet(
            "QLabel {"
            "	border-top-left-radius: 20px;"  // 左上角倒角
            "	border-bottom-left-radius: 20px;"  // 左下角倒角
            "   background-color : rgba(0, 255, 0, 80);"    // 背景颜色（可选）
            "}"
        );
        _resultShow2->setStyleSheet(
            "QLabel {"
            "   color : white;"               // 字体颜色为白色
            "   font-size: 30px;"             // 字体大小
            "   font-weight: bold;"           // 字体加粗
            "   background-color : rgba(0, 255, 0, 80);"    // 背景颜色（可选）
            "	border-top-right-radius: 20px;"  // 右上角倒角
            "	border-bottom-right-radius: 20px;"  // 右下角倒角
            "}"
        );
    }
    else if(result[0] == "错误")
    {
        QPixmap pixmap(":img/nopass.png");
        _resultShow1->setPixmap(pixmap);
        _resultShow2->setText("识别错误");
        //设置styleSheet
        _resultShow1->setStyleSheet(
            "QLabel {"
            "	border-top-left-radius: 20px;"  // 左上角倒角
            "	border-bottom-left-radius: 20px;"  // 左下角倒角
            "   background-color : rgba(255, 0, 0, 80);"    // 背景颜色（可选）
            "}"
        );
        _resultShow2->setStyleSheet(
            "QLabel {"
            "   color : white;"               // 字体颜色为白色
            "   font-size: 30px;"             // 字体大小
            "   font-weight: bold;"           // 字体加粗
            "   background-color : rgba(255, 0, 0, 80);"    // 背景颜色（可选）
            "	border-top-right-radius: 20px;"  // 右上角倒角
            "	border-bottom-right-radius: 20px;"  // 右下角倒角
            "}"
        );
    }
    //控件显示
    _middleShow->show();
    //调试信息
    qDebug() << result[0] + " " + result[1] + " " + result[2];

    //设置定时器
    _showTimer = new QTimer(this);
    //定时器信号槽
    connect(_showTimer, &QTimer::timeout, this, &Widget::_disShowResult);
    //定时器启动
    _showTimer->start(3000);
//    isSend.store(false);
}

void Widget::_disShowResult()
{
    if (nullptr != _showTimer) {
        _showTimer->stop();
        delete _showTimer;
        _showTimer = nullptr;
    }
    //qDebug() << 1 << endl;
    _middleShow->hide();
    _resultShow1->setText("");
    _resultShow2->setText("");
    isSend.store(false);
}



