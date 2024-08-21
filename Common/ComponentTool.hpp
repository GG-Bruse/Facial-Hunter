#pragma once
#include <iostream>
#include <vector>
#include <fstream>
#include <string>
#include <atomic>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <signal.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <boost/algorithm/string.hpp>
using std::string;
using std::vector;
using std::to_string;
using std::ofstream;
using std::ifstream;
using std::atomic_int;

namespace ComponentTool
{
    class TimeTool
    {
    public:
        static string GetTime_MonToSec() {
            const time_t timestamp = time(nullptr);
            struct tm* local_time = localtime(&timestamp);
            return to_string(local_time->tm_mon + 1) + "_" + to_string(local_time->tm_mday) + "_" + 
            to_string(local_time->tm_hour) + "_" +to_string(local_time->tm_min) + "_" + to_string(local_time->tm_sec);
        }
    public:
        //获取毫秒级时间戳
        static string GetMillisecondLevelTimestamp() {
            struct timeval tv;
            gettimeofday(&tv, nullptr);
            return to_string(tv.tv_sec * 1000 + tv.tv_usec / 1000);
        }
    };



    class FileTool
    {
    public:
        //判断文件是否存在，也可通过打开文件是否成功来判断文件是否存在，但调用stat可获取文件属性,便于后续扩展
        static bool FileIsExistence(const string& pathName) {
            struct stat _stat;
            if(stat(pathName.c_str(), &_stat) == 0) return true;
            else return false;
        }
    public:
        //判断文件夹是否存在
        static bool DirectoryIsExists(const string& pathName) {
            struct stat info;
            if (stat(pathName.c_str(), &info) != 0) return false; // Cannot access path
            return (info.st_mode & S_IFDIR) != 0;
        }
    public:
        //获取唯一文件名
        static string GetUniqueFileName() {
            static atomic_int fildId(0);
            ++fildId;
            string milliSecond = TimeTool::GetMillisecondLevelTimestamp();
            string UniqueFileId = to_string(fildId);
            return UniqueFileId + milliSecond;
        }
    public:
        //文件读写
        static bool WriteToFile(const string& targetFile, const string& fileContent) 
        {
            ofstream output(targetFile);
            if(!output.is_open()) return false;
            output.write(fileContent.c_str(), fileContent.size());
            output.close();
            return true;
        }
        static bool ReadFromFile(const string& targetFile, string* fileContent, bool keepFlag = false) 
        {
            ifstream input(targetFile);
            if(!input.is_open()) return false;
            string line;
            while(getline(input, line)) {
                (*fileContent) += line;
                (*fileContent) += (keepFlag == true ? "\n" : "");
            }
            input.close();
            return true;
        }
    public:
        //清空文件
        static void ClearFile(const std::string& filename) {
            std::ofstream file(filename, std::ios::out | std::ios::trunc);
            file.close();
        }
    };



    class ResourceLimitTool
    {
    public:
        //限制进程被CPU调度的时间
        static void SetProcessCpuLimit(size_t cpuLimit) {
            struct rlimit limit;
            limit.rlim_cur = cpuLimit;
            limit.rlim_max = RLIM_INFINITY;
            setrlimit(RLIMIT_CPU, &limit);
        }
    public:
        //限制进程所占内存大小
        static void SetProcessMemoryLimit(size_t memoryLimit) {
            struct rlimit limit;
            limit.rlim_cur = memoryLimit;
            limit.rlim_max = RLIM_INFINITY;
            setrlimit(RLIMIT_AS, &limit);
        }
    };

    class SplitTool
    {
    public:
        static vector<string> SplitString(const string& targetString, const string delimiter/*分隔符*/) {
            vector<string> ret; 
            boost::split(ret, targetString, boost::is_any_of(delimiter), boost::algorithm::token_compress_on);
            return ret;
        }
    };
}