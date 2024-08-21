#pragma once
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <unordered_map>
#include <shared_mutex>
#include <thread>
#include <cassert>
#include <jsoncpp/json/json.h>
#include "DataBase.hpp"
#include "Configurator.hpp"
#include "../Common/ComponentTool.hpp"
#include "../Common/LogMessage.hpp"
#include "include/mysql.h"

using std::cout;
using std::string;
using std::vector;
using std::ifstream;
using std::shared_ptr;
using std::endl;
using std::shared_mutex;
using std::unique_lock;
using std::shared_lock;
using namespace ComponentTool;
using namespace DailyRecord;
using namespace DataBases;
using namespace config;

namespace ModelLayer 
{
    class Model
    {
    public:
        Model():_database(new DateBase) { assert(LoadFromConf()); }
        ~Model() {}
    public:
        bool GetAllFilePath(vector<vector<string>>& db)
        {
            if(db.size() != 0) return false;

            if(_data.size() != 0) {
                shared_lock<shared_mutex> lock(_mutex);
                db = _data; //曾获取过数据
            }
            else {
                string sql = "select * from " + _tableName;
                bool result = GetDataFromMySQL_one(sql);
                shared_lock<shared_mutex> lock(_mutex);
                db = _data;
            }
            return true;
        }

    private:
        bool GetDataFromMySQL_one(const string& sql) 
        {
            MYSQL_RES* result = nullptr;
            if(!_database->QueryMysql(sql, result)) return false;

            int row = mysql_num_rows(result);
            
            //避免赋值到一半时，有线程读，此时_data已不是空
            _mutex.lock();
            for(int i = 0; i < row; ++i) {
                vector<string> tmp(3);
                MYSQL_ROW lineMessage = mysql_fetch_row(result);
                tmp[0] = lineMessage[0];
                tmp[1] = lineMessage[1];
                tmp[2] = lineMessage[2];
                _data.push_back(tmp);
            }
            _mutex.unlock();
            
            free(result);
            return true;
        }

        bool LoadFromConf()
        {
            iniConfig config = p_configurator->GetConfigInformation();
            _tableName = config._tableName;
            return true;
        }

    private:
        shared_ptr<DateBase> _database;
        vector<vector<string>> _data;
        //读写锁
        mutable shared_mutex _mutex;// mutable 确保_mutex在const函数中也可以修改状态(加锁解锁)

    private:
        string _tableName;
    };
}  
