#pragma once
#include <iostream>
#include <vector>
#include <mutex>
#include <cassert>
// #include <jsoncpp/json/json.h>
#include "mysql.h"
#include "Configurator.hpp"
#include "../Common/LogMessage.hpp"
#include "../Common/ComponentTool.hpp"

using namespace DailyRecord;
using namespace ComponentTool;
using namespace config;
using std::vector;
using std::unique_lock;
using std::mutex;
using std::endl;

extern Configurator* p_configurator;

namespace DataBases
{
    class DateBase
    {
    public:
        DateBase():_mysql_fp(mysql_init(nullptr)), _pmutex(new mutex), _maxReconnectCount(3) { 
            assert(LoadFromConf());
            assert(ConnectMysql()); 
        }
        ~DateBase() {
            mysql_close(_mysql_fp);
            delete _pmutex;
        }
    public:
        bool QueryMysql(const string &sql, MYSQL_RES *&result)
        {
            if(!ActivityTest()) {
                LOG(FATAL) << "Reconnect fail, process exit" << endl;
                exit(-1);
            }

            unique_lock<mutex> lock(*_pmutex);
            int ret = mysql_query(_mysql_fp, sql.c_str());
            if (ret != 0) {
                LOG(WARINNG) << sql << " 执行失败" << endl;
                return false;
            }
            result = mysql_store_result(_mysql_fp);
            return true;
        }

    public:
        //连接活性检测
        bool ActivityTest()
        {
            unique_lock<mutex> lock(*_pmutex);
            size_t count = 0;
            while(mysql_ping(_mysql_fp) != 0 && count < _maxReconnectCount)
            {
                LOG(ERROR) << "Error: Connection is not valid, reconnecting..." << endl;
                ConnectMysql();
                ++count;
            } 
            if(count < _maxReconnectCount) return true;
            else return false; 
        }

    private:
        bool ConnectMysql()
        {
            if (nullptr == mysql_real_connect(_mysql_fp, _dataBaseIP.c_str(), _dataBaseUser.c_str(), \
                _dataBasePassword.c_str(), _dataBaseName.c_str(), _dataBasePort, nullptr, 0)) {
                LOG(ERROR) << " Failed to access MySQL:" << mysql_error(_mysql_fp) << endl;
                return false;
            }
            mysql_set_character_set(_mysql_fp, "utf8");
            LOG(NORMAL) << "Successfully linked MySQL" << endl;
            return true;
        }

        bool LoadFromConf()
        {
            iniConfig config = p_configurator->GetConfigInformation();
            _dataBaseIP = config._dataBaseIP;
            _dataBaseName = config._dataBaseName;
            _dataBasePort = config._dataBasePort;
            _dataBaseUser =  config._dataBaseUser;
            _dataBasePassword = config._dataBasePassword;
            return true;
        }

    private:
        MYSQL* _mysql_fp;
        mutex* _pmutex;
        size_t _maxReconnectCount;

    private:
        string _dataBaseIP;
        string _dataBaseName;
        unsigned int _dataBasePort;
        string _dataBaseUser;
        string _dataBasePassword;
    };
}