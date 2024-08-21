#pragma once
#include <Python.h>
#include <iostream>
#include <opencv2/opencv.hpp>
#include "../Common/ComponentTool.hpp"
#include "../Common/LogMessage.hpp"
#include <string>
#include <mutex>
#include <cstdlib>
#include <unistd.h>
#include <sys/wait.h>
#include <fcntl.h>

using namespace std;
using namespace DailyRecord;
using namespace ComponentTool;

namespace Process
{
    class Processor
    {
    public:
        Processor():_mutex(new mutex)
        {
            // //创建临时文件夹
            // std::string folderPath = "./tmp";  // 临时文件夹路径
            // int status = mkdir(folderPath.c_str(), S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);
            // if (status == -1) {
            //     LOG(ERROR) << "Failed to create temporary folder." << endl;
            //     return;
            // }

            // 设置Python路径
            wchar_t *program = Py_DecodeLocale("/home/bjy/miniconda3/envs/pytorch/bin/pthon3.6", nullptr);
            if (program == nullptr) {
                std::cerr << "Fatal error: cannot decode Python path" << std::endl;
                return;
            }
            Py_SetProgramName(program);

            Py_Initialize();
	        if (!Py_IsInitialized()) {
		        LOG(FATAL) << "python initialize failed!" << endl;
		        return;
	        }
	        PyRun_SimpleString("import sys");
	        PyRun_SimpleString("sys.path.append('./')");
            PyRun_SimpleString("sys.path.append('/home/bjy/miniconda3/envs/pytorch/lib/python3.6/site-packages/')");
            
            //加载python模块
            pModule = PyImport_ImportModule("facenet");
            if (pModule == NULL) {
                PyErr_Print();
                LOG(FATAL) << "module not found" << endl;
                return;
            }
            // //加载模型
            // pModel = PyObject_GetAttrString(pModule, "Facenett");
            // if (!pModel || !PyCallable_Check(pModel)) {
            //     LOG(FATAL) << "not found function ReadyHandle" << endl;
            //     return;
            // }
            // //加载模型实例
            // pModelInstance = PyObject_CallObject(pModel, NULL);
            // if(!pModelInstance) {
            //     LOG(FATAL) << "get model instance error" << endl;
            //     return;
            // }
            //加载处理函数
            pFunc = PyObject_GetAttrString(pModule, "Handle");
            if (pFunc == NULL || !PyCallable_Check(pFunc)) {
                LOG(FATAL) << "not found function Handle" << endl;
                return;
            }
        }
        ~Processor() 
        {
            if (pFunc) Py_DECREF(pFunc);   
            // if (pModelInstance) Py_DECREF(pModelInstance);
            // if (pModel) Py_DECREF(pModel);
            if (pModule) Py_DECREF(pModule);
            if (Py_IsInitialized()) Py_Finalize();
        }
    public:
        double HandleMat(const string& path1, const string& path2)
        {
            unique_lock<mutex> lock(*_mutex);
            //构建参数
            LOG(NORMAL) << "this error two" << endl;
            PyObject* pArgs = PyTuple_Pack(2, PyUnicode_FromString(path1.c_str()), \
                                PyUnicode_FromString(path2.c_str()));
            //调用python处理函数
            cout << "C++:" << 10.0 << endl;
            PyObject* pResult = PyObject_CallObject(pFunc, pArgs);
            
            
            // PyObject *pResult = PyObject_CallMethod(pModelInstance, "detect_image", "(ss)", path1.c_str(), path2.c_str());
            cout << "C++:" << 1.0 << endl;
            if (pResult != nullptr) {
                double resultValue = (double)PyFloat_AsDouble(pResult);
                LOG(NORMAL) << "Returned value:" << resultValue << endl;
                Py_DECREF(pResult);
                Py_DECREF(pArgs);
                return resultValue;
            } 
            else {
                PyErr_Print();
                LOG(FATAL) << "Error: Failed to get a valid double value from Python function" << endl;
                return -1.0;
            }
        }
        static double ConvertToDouble(const string& content) {
            try {
                return std::stod(content);
            } catch (const std::invalid_argument& e) {
                LOG(ERROR) << "content:" << content << endl;
                std::cerr << "Invalid argument: " << e.what() << std::endl;
                return 100.0; // 如果转换失败，则返回默认值
            } catch (const std::out_of_range& e) {
                std::cerr << "Out of range: " << e.what() << std::endl;
                return 100.0; // 如果转换失败，则返回默认值
            }
        }
        double HandleMat(const string& path1, const string& path2, string tmpName)
        {
            string tmpFilePath = "./tmp/tmp" + tmpName +".txt";
            pid_t pid = fork();
            if(pid == 0) {
                const char* argvs[] = {"python3", "facenet.py", path1.c_str(), path2.c_str(), tmpFilePath.c_str(), NULL};
                execvp("python3", (char* const*)argvs);//进程替换不影响文件描述符表
                LOG(ERROR) << "Failed to start g++ for compilation" << endl;//若进程替换成功不会执行此代码
                exit(2);
            }
            else if(pid > 0) {
                waitpid(pid, nullptr, 0);//阻塞等待
                if(!FileTool::FileIsExistence(tmpFilePath)) 
                    LOG(ERROR) << "error tmp.txt is not Existence" << endl;
            }
            else {
                LOG(ERROR) << "Fork child process error" << endl;
                return -1.0;
            }
            //读取结果
            string content;
            FileTool::ReadFromFile(tmpFilePath, &content);
            double result = ConvertToDouble(content);
            FileTool::ClearFile(tmpFilePath);
            return result;
        }

    private:
        PyObject* pModule = nullptr;
        // PyObject* pModel  = nullptr;
        // PyObject *pModelInstance  = nullptr;
        PyObject* pFunc = nullptr;
        mutex* _mutex;
    };
}