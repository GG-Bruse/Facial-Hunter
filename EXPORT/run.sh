conda activate image

# builder
python ./builder/builder.py --backbone inception_resnetv1 --model_path ./model/facenet_inception_resnetv1.pth --output_file ./output/facenet_model_inception_resnetv1.onnx
python ./builder/builder.py --backbone mobilenet --model_path ./model/facenet_mobilenet.pth --output_file ./output/facenet_model_mobilenet.onnx

# # remove_initializer_from_input
# python ./src/remove_initializer_from_input.py --input ./export_onnx/facenet_model_inception_resnetv1.onnx  --output ./export_onnx/inception_resnerv1.onnx
# python ./src/remove_initializer_from_input.py --input ./export_onnx/facenet_model_mobilenet.onnx  --output ./export_onnx/mobilenet.onnx

# inference
python ./src/check.py ./export_onnx/inception_resnerv1.onnx
python ./src/check.py ./export_onnx/mobilenet.onnx

conda deactivate