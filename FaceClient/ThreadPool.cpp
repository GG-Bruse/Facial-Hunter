#include "ThreadPool.h"

class Task;

ThreadPool* ThreadPool::_pool_ptr = nullptr;
mutex ThreadPool::_init_mutex;

ThreadPool::ThreadPool(int threadNum) :_number(threadNum) {
    _httpcontroller = new HttpController;
}

ThreadPool::~ThreadPool()
{
    for (auto& iter : _threads) {
        iter->join();
        delete iter;
    }
    _threads.clear();
}



mutex* ThreadPool::getMutex() { return &_mutex; };
bool ThreadPool::isEmpty() { return _taskQueue.empty(); }



void ThreadPool::waitCond(unique_lock<mutex>& ulock) {
    _cond.wait(ulock);
}





ThreadPool* ThreadPool::getThreadPool(int number)
{
    if (nullptr == _pool_ptr)
    {
        unique_lock<mutex> ulock(_init_mutex);
        if (nullptr == _pool_ptr)
            _pool_ptr = new ThreadPool(number);
    }
    return _pool_ptr;
}

void ThreadPool::Start()
{
    for (size_t i = 0; i < _number; ++i)
        _threads.push_back(new thread(threadFunction, this));
}

void* ThreadPool::threadFunction(ThreadPool* args)
{
    ThreadPool* threadPool = args;
    while (true)
    {
        Task task;
        {
            unique_lock<mutex> lock(*(threadPool->getMutex()));
            while (threadPool->isEmpty()) threadPool->waitCond(lock);
            task = threadPool->getTask();
            HttpController::SendImage(task._image);
        }
    }
    return nullptr;
}

void ThreadPool::pushTask(const Task* task)
{
    unique_lock<mutex> lock(_mutex);
    _taskQueue.push(task);
    _cond.notify_one();
}

Task* ThreadPool::getTask()
{
    if (!_taskQueue.empty()) {
        Task* task = _taskQueue.front();
        _taskQueue.pop();
        return task;
    }
    return nullptr;
}







