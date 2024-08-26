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
        Model():_dataBase(new DateBase) { assert(LoadFromConf()); }
        ~Model() {}
    public:
        bool GetAllStudentID(vector<string>& studentIdSet)
        {
            string sql = "select * from " + _personnelSummaryTableName + ";";
            bool result = GetDataFromMySQL(sql, 1);
            studentIdSet = _allPersonID;
            return result;
        }

        bool GetFaceData(string studentID, vector<string>& faceDatas)
        {
            string sql = "select * from " + _facialInformationTableName + " where studentId = " + studentID + ";";
            bool result = GetDataFromMySQL(sql, 2);
            faceDatas = _faceDatas;
            return result;
        }

        string GetName(string studentID)
        {
            string sql = "select * from " + _personnelSummaryTableName + " where studentId = " + studentID + ";";
            GetDataFromMySQL(sql, 3);
            return _name;
        }

    private:
        bool GetDataFromMySQL(const string& sql, int opt) 
        {
            MYSQL_RES* result = nullptr;
            if(!_dataBase->QueryMysql(sql, result)) return false;

            int row = mysql_num_rows(result);
            //避免赋值到一半时，有线程读，此时_data已不是空
            _mutex.lock();
            for(int i = 0; i < row; ++i) 
            {
                MYSQL_ROW lineMessage = mysql_fetch_row(result);
                if(opt == 1)
                    _allPersonID.push_back(lineMessage[0]);
                else if(opt == 2)
                    _faceDatas.push_back(lineMessage[1]);
                else if(opt == 3)
                    _name = lineMessage[1];
            }
            _mutex.unlock();
            
            free(result);
            return true;
        }

    private:
        bool LoadFromConf()
        {
            iniConfig config = p_configurator->GetConfigInformation();
            _personnelSummaryTableName = config._personnelSummaryTableName;
            _facialInformationTableName = config._facialInformationTableName;
            return true;
        }

    private:
        shared_ptr<DateBase> _dataBase;
        mutable shared_mutex _mutex;// 读写锁 mutable 确保_mutex在const函数中也可以修改状态(加锁解锁)

    private:
        string _personnelSummaryTableName;
        string _facialInformationTableName;

    private:
        vector<string> _allPersonID;
        vector<string> _faceDatas;
        string _name;
    };
}  
