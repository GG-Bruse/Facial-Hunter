#pragma once

#include <iostream>
#include <string>
#include "iniparser.h"
// #include "dictionary.h"
#include "../Common/LogMessage.hpp"

using std::string;
using std::vector;
using std::cout;
using std::endl;
using namespace DailyRecord;

namespace config
{
    struct iniConfig
    {
    public:
        iniConfig() {}
        iniConfig(string modelType, string modelPath, double judgingRate)
        {
            _modelType = modelType;
            _modelPath = modelPath;
            _judgingRate = judgingRate;
        }

    public://模型
        string _modelType;
        string _modelPath;
        double _judgingRate;
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

            //模型
            const char* modelType = iniparser_getstring(ini, (char*)"MODEL:ModelType", nullptr);
            const char* modelPath = iniparser_getstring(ini, (char*)"MODEL:ModelPath", nullptr);
            double judgingRate = iniparser_getdouble(ini, (char*)"MODEL:JudgingRate", 1.0);
            _config = iniConfig(string(modelType), string(modelPath), judgingRate);
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
