#ifndef THREADPOOL_H
#define THREADPOOL_H

#include <QWidget>

#include <iostream>
#include <functional>
#include <vector>
#include <queue>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <opencv2/opencv.hpp>

#include "widget.h"
#include "httpcontroller.h"

using namespace std;
using namespace cv;


class Task
{
public:
    Mat _image;
    CallBack* _callBack;
};


class ThreadPool
{
public:
    ThreadPool(int threadNum);
    ~ThreadPool();
public:
    ThreadPool(const ThreadPool& others) = delete;
    ThreadPool& operator= (const ThreadPool& others) = delete;

public:
    static ThreadPool* getThreadPool(int number);
    void AddHttpController(HttpController* httpcontroller);
    static void* threadFunction(ThreadPool* args);
    void Start();

    void waitCond(unique_lock<mutex>& ulock);
    mutex* getMutex();
    bool isEmpty();

public:
    Task* getTask();
    void pushTask(const Task* task);

private:
    vector<thread*> _threads;
    size_t _number = 4;
    queue<Task*> _taskQueue;

private:
    mutex _mutex;
    condition_variable _cond;

private:
    static ThreadPool* _pool_ptr;
    static mutex _init_mutex;

private:
    HttpController* _httpcontroller;
};

#endif // THREADPOOL_H
