#pragma once
#include <iostream>
#include <vector>
#include <string>
#include <cmath>
#include <onnxruntime/core/session/onnxruntime_cxx_api.h>
#include <nlohmann/json.hpp>
#include <unistd.h>
#include <opencv2/opencv.hpp>

#include "Configurator.hpp"
#include "../Common/LogMessage.hpp"

using namespace std;
using namespace DailyRecord;
using namespace config;
using namespace Ort;
using namespace cv;
using json = nlohmann::json;

extern Configurator* p_configurator;

namespace imageHandle
{
    class ImageHandler
    {
    public:
        ImageHandler():
            _env(Env(ORT_LOGGING_LEVEL_ERROR, "ONNXRuntime")),// 初始化 ONNX Runtime 环境
            _memoryInfo(MemoryInfo::CreateCpu(OrtAllocatorType::OrtArenaAllocator, OrtMemType::OrtMemTypeDefault))
        {
            LoadFromConf();

            // 创建 ONNX Runtime 会话选项
            SessionOptions sessionOptions;
            sessionOptions.SetIntraOpNumThreads(2);  // 设置内部操作的线程数
            sessionOptions.SetGraphOptimizationLevel(GraphOptimizationLevel::ORT_ENABLE_EXTENDED);  // 设置图优化级别

            // 加载 ONNX 模型
            _session = new Session(_env, _modelPath.c_str(), sessionOptions);

            // 获取模型的输入信息
            size_t numInputNodes = _session->GetInputCount();
            for (size_t i = 0; i < numInputNodes; ++i) 
            {
                // 获取输入名称
                string inputName = _session->GetInputName(i, AllocatorWithDefaultOptions());
                _inputNames.push_back(inputName);
                // 获取输入张量的类型信息
                auto inputInfo = _session->GetInputTypeInfo(i);
                auto inputTensorInfo = inputInfo.GetTensorTypeAndShapeInfo();
                // 获取输入张量的形状
                _inputTensorShape = inputTensorInfo.GetShape();

                // 打印输入名称和形状
                LOG(NORMAL) << "模型输入名称: " << inputName << endl;
                LOG(NORMAL) << "模型输入形状: ";
                for (auto dim : _inputTensorShape) cout << dim << " ";
                cout << endl;
            }

            // 获取模型的输出信息
            size_t numOutputNodes = _session->GetOutputCount();
            for (size_t i = 0; i < numOutputNodes; ++i) 
            {
                // 获取输出名称
                string outputName = _session->GetOutputName(i, AllocatorWithDefaultOptions());
                _outputNames.push_back(outputName);
                // 获取输出张量的类型信息
                auto outputInfo = _session->GetOutputTypeInfo(i);
                auto outputTensorInfo = outputInfo.GetTensorTypeAndShapeInfo();
                // 获取输出张量的形状
                _outputTensorShape = outputTensorInfo.GetShape();

                // 打印输出名称和形状
                LOG(NORMAL) << "模型输出名称: " << outputName << endl;
                LOG(NORMAL) << "模型输出形状: ";
                for (auto dim : _outputTensorShape) cout << dim << " ";
                cout << endl;
            }

            // 处理得到后续所需数据
            for(int i = 0; i < _inputNames.size(); ++i) _inputNamesCStr.push_back(_inputNames[i].c_str());
            for(int i = 0; i < _outputNames.size(); ++i) _outputNamesCStr.push_back(_outputNames[i].c_str());
        }
        
    public:
        // double HandleImageTest()
        // {
        //     size_t inputSize = 1 * 3 * 160 * 160;
        //     vector<float> inputTensorData1(inputSize, 1.0f);
        //     vector<float> inputTensorData2(inputSize, 1.0f);

        //     Value inputTensor1 = Value::CreateTensor<float>(_memoryInfo, inputTensorData1.data(), inputSize, _inputTensorShape.data(), _inputTensorShape.size());
        //     Value inputTensor2 = Value::CreateTensor<float>(_memoryInfo, inputTensorData2.data(), inputSize, _inputTensorShape.data(), _inputTensorShape.size());

        //     // 运行模型推理
        //     cout << "ggggggggggg";
        //     auto outputTensor1 = _session->Run(
        //         RunOptions{nullptr}, // 运行选项
        //         _inputNamesCStr.data(), // 输入名称
        //         &inputTensor1, // 输入张量
        //         1, // 输入张量数量
        //         _outputNamesCStr.data(), // 输出名称
        //         1 // 输出张量数量
        //     );
        //     cout << "ggggggggggg";
        //     auto outputTensor2 = _session->Run(RunOptions{nullptr}, _inputNamesCStr.data(), 
        //         &inputTensor2, 1, _outputNamesCStr.data(), 1);
        //     cout << "ggggggggggg";

        //     return 1.0;
        // }


        string HandleImage(const json& jsonImages)
        {
            //构建数据
            vector<unsigned char> Data1;
            vector<unsigned char> Data2;
            jsonToVector(jsonImages, Data1, Data2);
            Mat image1 = cv::imdecode(Data1, cv::IMREAD_COLOR);
            Mat image2 = cv::imdecode(Data2, cv::IMREAD_COLOR);
            vector<float> inputData1 = matToVector(image1);
            vector<float> inputData2 = matToVector(image2);

            // 创建ONNX输入张量
            Value inputTensor1 = Value::CreateTensor<float> (
                _memoryInfo,
                inputData1.data(), // 数据指针
                inputData1.size(), // 数据大小
                _inputTensorShape.data(), // 张量形状
                _inputTensorShape.size()  // 张量维度数
            );
            Value inputTensor2 = Value::CreateTensor<float> (_memoryInfo,
                inputData2.data(), inputData2.size(),
                _inputTensorShape.data(), _inputTensorShape.size() 
            );

            // for(auto& it : _inputNamesCStr) cout << it << " ";
            // cout << endl;
            // for(auto& it : _outputNamesCStr) cout << it << " ";
            // cout << endl;

            // 运行模型推理
            auto outputTensors1 = _session->Run(
                RunOptions{nullptr}, // 运行选项
                _inputNamesCStr.data(), // 输入名称
                &inputTensor1, // 输入张量
                1, // 输入张量数量
                _outputNamesCStr.data(), // 输出名称
                1 // 输出张量数量
            );
            auto outputTensors2 = _session->Run(RunOptions{nullptr}, _inputNamesCStr.data(), 
                &inputTensor2, 1, _outputNamesCStr.data(), 1);

            // 获取推理结果
            Value& outputTensor1 = outputTensors1[0];
            Value& outputTensor2 = outputTensors2[0];
            float* floatArr1 = outputTensor1.GetTensorMutableData<float>();
            float* floatArr2 = outputTensor2.GetTensorMutableData<float>();

            //将推理结果转为vector<float>类型
            size_t outputSize = 1;
            for(int i = 0; i < _outputTensorShape.size(); ++i) outputSize *= _outputTensorShape[i]; 
            vector<float> outputVector1(floatArr1, floatArr1 + outputSize);
            vector<float> outputVector2(floatArr2, floatArr2 + outputSize);

            //计算L2范数
            double result = computeL2Norm(outputVector1, outputVector2);
            LOG(NORMAL) << "Inference results:" << result << endl;

            if(result <= _judgingRate && result >= 0) return "true";
            else return "false";
        }

    private:
        bool jsonToVector(const json& jsonImages, vector<unsigned char>& Data1, vector<unsigned char>& Data2)
        {
            for (const auto& item : jsonImages["data1"]) {
                if (item.is_number() && item >= 0 && item <= 255) {
                    //cout << item.get<int>() << endl;
                    Data1.push_back(static_cast<unsigned char>(item.get<int>()));
                }
            }
            for (const auto& item : jsonImages["data2"]) {
                if (item.is_number() && item >= 0 && item <= 255) {
                    //cout << item.get<int>() << endl;
                    Data2.push_back(static_cast<unsigned char>(item.get<int>()));
                }
            }
            return true;
        }

        vector<float> matToVector(const cv::Mat& mat) 
        {
            //将rgb数据分离为单通道
            vector<Mat> mv;
            cv::split(mat, mv);
            vector<float> R = mv[0].reshape(1, 1);
            vector<float> G = mv[1].reshape(1, 1);
            vector<float> B = mv[2].reshape(1, 1);
            //RGB数据合并
            vector<float> inputData;
            inputData.insert(inputData.end(), R.begin(), R.end());
            inputData.insert(inputData.end(), G.begin(), G.end());
            inputData.insert(inputData.end(), B.begin(), B.end());
            return inputData;
        }

    private:
        double computeL2Norm(const vector<float>& vector1, const vector<float>& vector2) 
        {
            if(vector1.size() != vector2.size()) {
                exit(-1);
            } 
            double sum = 0.0;
            for (size_t i = 0; i < vector1.size(); ++i) {
                double diff = vector1[i] - vector2[i];
                sum += diff * diff;
            }
            return sqrt(sum);
        }

    private:
        bool LoadFromConf()
        {
            iniConfig config = p_configurator->GetConfigInformation();
            _modelType = config._modelType;
            _modelPath = config._modelPath;
            _judgingRate = config._judgingRate;
            return true;
        }

    private:
        string _modelType;
        string _modelPath;
        double _judgingRate;

    private:
        Env _env;
        Session* _session;
        MemoryInfo _memoryInfo;
        vector<string> _inputNames; //输入名称
        vector<string> _outputNames; //输出名称
        vector<const char*> _inputNamesCStr; //输入名称const char*
        vector<const char*> _outputNamesCStr; //输出名称const char*
        vector<int64_t> _inputTensorShape;
        vector<int64_t> _outputTensorShape;
    };
}
