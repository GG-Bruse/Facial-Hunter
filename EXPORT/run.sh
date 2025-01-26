conda activate image

# builder
python ./builder/builder.py --backbone inception_resnetv1 --model_path ./model/facenet_inception_resnetv1.pth --output_file ./output/facenet_model_inception_resnetv1.onnx
python ./builder/builder.py --backbone mobilenet --model_path ./model/facenet_mobilenet.pth --output_file ./output/facenet_model_mobilenet.onnx

# inference TODO:暂时只做了个别数据的比较, 应该进行大量的测试, 计算跳变率和差不匹配比例
python ./inference/inference.py --backbone inception_resnetv1 --onnx_path ./output/facenet_model_inception_resnetv1.onnx --model_path ./model/facenet_inception_resnetv1.pth
python ./inference/inference.py --backbone mobilenet --onnx_path ./output/facenet_model_mobilenet.onnx --model_path ./model/facenet_mobilenet.pth

conda deactivate