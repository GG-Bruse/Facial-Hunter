#pragma once

#include <iostream>
#include <string>
#include "iniparser.h"
// #include "dictionary.h"
#include "../Common/LogMessage.hpp"
#include "../Common/ComponentTool.hpp"

using std::string;
using std::vector;
using std::cout;
using std::endl;
using namespace ComponentTool;
using namespace DailyRecord;

const string SEP = ", ";

namespace config
{
    struct iniConfig
    {
    public:
        iniConfig() {}
        iniConfig(string dataBaseIP, unsigned short dataBasePort, string dataBaseUser, string dataBasePassword, string dataBaseName, string tableName1, \
                    string tableName2, unsigned short serverPort, string handleServerIpPort)
        {
            //数据库
            _dataBaseIP = dataBaseIP;
            _dataBasePort = dataBasePort;
            _dataBaseUser = dataBaseUser;
            _dataBasePassword = dataBasePassword;
            _dataBaseName = dataBaseName;
            _personnelSummaryTableName = tableName1;
            _facialInformationTableName = tableName2;

            //本机器
            _serverPort = serverPort;
            //做负载均衡的机器
            _handleServerIpPort = SplitTool::SplitString(handleServerIpPort, SEP);
        }

    public://数据库
        string _dataBaseIP;
        unsigned short _dataBasePort;
        string _dataBaseUser;
        string _dataBasePassword;
        string _dataBaseName;
        string _personnelSummaryTableName;
        string _facialInformationTableName;

    public://本机
        unsigned short _serverPort;

    public://做负载均衡的机器
        vector<string> _handleServerIpPort;
    };



    class Configurator
    {
    public:
        Configurator() {}
        ~Configurator() {}
    
    public:
        bool loadFile(const string& path)
        {
            if(_isLoaded) {
                LOG(NORMAL) << "INI configuration file loaded" << endl;
                return true;
            }

            dictionary* ini = iniparser_load((char*)path.c_str());
            if (ini==NULL) {
                LOG(ERROR) << "Cannot Parse File:" << path.c_str() << endl;
                return false;
            }

            //数据库
            const char* ip = iniparser_getstring(ini, (char*)"DATABASE:IP", nullptr);
            int port = iniparser_getint(ini, (char*)"DATABASE:Port", 3306);
            const char* user = iniparser_getstring(ini, (char*)"DATABASE:User", nullptr);
            const char* password = iniparser_getstring(ini, (char*)"DATABASE:Password", nullptr);
            const char* database = iniparser_getstring(ini, (char*)"DATABASE:Database", nullptr);
            const char* table1 = iniparser_getstring(ini, (char*)"DATABASE:PersonnelSummaryTableName", nullptr);
            const char* table2 = iniparser_getstring(ini, (char*)"DATABASE:FacialInformationTableName", nullptr);
            //本机器
            int sport = iniparser_getint(ini, (char*)"SERVER:Port", 80);
            //做负载均衡的机器
            const char* ipPort = iniparser_getstring(ini, (char*)"HANDSERVER:Address", nullptr);
            
            _config = iniConfig(string(ip), port, string(user), string(password), string(database), string(table1), string(table2), sport, string(ipPort));

            iniparser_freedict(ini);

            return (_isLoaded = true);
        }

        iniConfig GetConfigInformation() { return _config; }

        bool isLoaded() { return _isLoaded; }

    private:
        iniConfig _config;
        bool _isLoaded = false;
    };
}
