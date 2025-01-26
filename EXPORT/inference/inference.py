import onnx
import onnxruntime as ort
import numpy as np
import torch
from PIL import Image

import os
import sys
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from facenet.facenet import Facenet
import argparse



# 对输入图像进行resize(通过添加灰条进行不失真的resize)
def resize_image(image, size, letterbox_image):
    # 获取原始图像的宽度和高度,分别保存在变量iw和ih中
    iw, ih = image.size
    # 从size元组中获取目标图像的宽度和高度,分别保存在变量w和h中
    w, h = size
    if letterbox_image:
        # 缩放比例scale
        scale = min(w/iw, h/ih)
        # 根据缩放比例计算新的宽度和高度,分别保存在变量nw和nh中
        nw = int(iw*scale)
        nh = int(ih*scale)
        # 使用image.resize方法将原始图像调整为新的宽度和高度,采用双三次插值算法(Image.BICUBIC)
        image = image.resize((nw, nh), Image.BICUBIC)
        # 创建一个新的空白图像对象
        new_image = Image.new('RGB', size, (128, 128, 128))
        # 将调整后的图像粘贴到新图像上, 位置为在新图像中居中显示
        new_image.paste(image, ((w-nw)//2, (h-nh)//2))
    else:
        # 直接使用image.resize方法将原始图像调整为目标大小,采用双三次插值算法
        new_image = image.resize((w, h), Image.BICUBIC)
    return new_image

def preprocess_input(image):
    image /= 255.0
    return image



def main(args):
    model = onnx.load(args.onnx_path)
    try:
        onnx.checker.check_model(model)
        print("模型验证通过")
    except onnx.checker.ValidationError as e:
        print("模型验证失败:", e)

    # 创建 ONNX Runtime 会话
    session = ort.InferenceSession(args.onnx_path)
    print("Input names:", [input.name for input in session.get_inputs()])
    print("Output names:", [output.name for output in session.get_outputs()])

    # 创建输入数据
    image1 = Image.open("/data/baojiayi/Facial-Hunter/EXPORT/image/1_001.jpg")
    image2 = Image.open("/data/baojiayi/Facial-Hunter/EXPORT/image/2_001.jpg")
    image1 = resize_image(image1, [160, 160], True)
    image2 = resize_image(image2, [160, 160], True)
    photo1 = np.expand_dims(np.transpose(preprocess_input(np.array(image1, np.float32)), (2, 0, 1)), 0)
    photo2 = np.expand_dims(np.transpose(preprocess_input(np.array(image2, np.float32)), (2, 0, 1)), 0)
    photos = np.concatenate([photo1, photo2], axis=0)
    print("Input shape:", photos.shape)

    # 运行推理
    input_name = session.get_inputs()[0].name
    output_name = session.get_outputs()[0].name
    outputs = session.run([output_name], {input_name: photos})[0]
    output1 = outputs[0]
    output2 = outputs[1]
    # print("output1", output1)
    # print("output1 shape", output1.shape)
    # print("output2", output2)
    # print("output2 shape", output2.shape)

    l1 = np.linalg.norm(output1 - output2, axis=0)
    result = l1.item()
    print('result onnx', result)


    with torch.no_grad():
        model = Facenet(backbone=args.backbone).eval()
        tensor_dict = torch.load(args.model_path, map_location="cpu", weights_only=True)
        del tensor_dict['classifier.weight']
        del tensor_dict['classifier.bias']
        model.load_state_dict(tensor_dict)
        
        input_data1 = torch.from_numpy(photo1)
        input_data2 = torch.from_numpy(photo2)
        output_data1 = model(input_data1).cpu().numpy()[0]
        output_data2 = model(input_data2).cpu().numpy()[0]
        # print("output1:", output_data1)
        # print("output2:", output_data2)
        # print("output1 shape:", output_data1.shape)
        # print("output2 shape:", output_data2.shape)
        l1 = np.linalg.norm(output_data1 - output_data2, axis=0)
        result = l1.item()
        print('result python:', result)



if __name__ == "__main__":
    argparser = argparse.ArgumentParser()
    argparser.add_argument('--backbone', default='inception_resnetv1')
    argparser.add_argument('--onnx_path', default='./output/facenet_model_inception_resnetv1.onnx')
    argparser.add_argument('--model_path', default='./model/facenet_inception_resnetv1.pth')
    args = argparser.parse_args()
    main(args)