conda activate pytorch

# back_bone file_path onnx_file_path
python ./src/facenet.py inception_resnetv1 ./model_data/facenet_inception_resnetv1.pth ./export_onnx/facenet_model_inception_resnetv1.onnx
python ./src/facenet.py mobilenet ./model_data/facenet_mobilenet.pth ./export_onnx/facenet_model_mobilenet.onnx

# remove_initializer_from_input
python ./src/remove_initializer_from_input.py --input ./export_onnx/facenet_model_inception_resnetv1.onnx  --output ./export_onnx/inception_resnerv1.onnx

python ./src/remove_initializer_from_input.py --input ./export_onnx/facenet_model_mobilenet.onnx  --output ./export_onnx/mobilenet.onnx

conda deactivate