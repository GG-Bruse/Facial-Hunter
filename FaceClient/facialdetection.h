#ifndef FACIALDETECTION_H
#define FACIALDETECTION_H

#include <iostream>
#include <QDebug>
#include <opencv2/opencv.hpp>
#include <opencv2/objdetect.hpp>
#include <vector>
using namespace cv;

class FacialDetection
{
public:
    FacialDetection();
    ~FacialDetection();

public:
    Mat DetectImage(Mat& srcImage, int& faceSize);

private:
    CascadeClassifier* face_cascade;
};

#endif // FACIALDETECTION_H
