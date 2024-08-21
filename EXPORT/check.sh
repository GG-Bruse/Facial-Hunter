conda activate pytorch

python ./src/check.py ./export_onnx/inception_resnerv1.onnx
python ./src/check.py ./export_onnx/mobilenet.onnx

conda deactivate