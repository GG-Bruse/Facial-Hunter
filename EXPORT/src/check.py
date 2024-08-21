import sys
import onnx
import onnxruntime as ort
import numpy as np
import torch
from PIL import Image
from facenet import Facenet

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

def check(file_path):
    # 加载 ONNX 模型
    model = onnx.load(file_path)
    print(model.ir_version)

    # 检查模型是否有效
    try:
        onnx.checker.check_model(model)
        print("模型验证通过")
    except onnx.checker.ValidationError as e:
        print("模型验证失败:", e)

    # 创建 ONNX Runtime 会话
    session = ort.InferenceSession(file_path)

    # 创建输入数据1
    image = Image.open("/home/bjy/FaceRecSysOnnx/face_image_dir/2130622004/2130622004_1.jpg")
    image = resize_image(image, [160, 160], True)
    photo = np.expand_dims(np.transpose(preprocess_input(np.array(image, np.float32)), (2, 0, 1)), 0)
    input_name = session.get_inputs()[0].name
    print(photo)

    # 运行推理
    inputs = {input_name: photo}
    outputs1 = session.run(None, inputs)
    output1 = outputs1[0]
    print("ONNX1")
    print(output1)

    with torch.no_grad():
        model = Facenet(backbone="inception_resnetv1").eval()
        model.load_state_dict(torch.load("/home/bjy/FaceRecSysOnnx/EXPORT/model_data/facenet_inception_resnetv1.pth", map_location="cpu"), strict=False)
        
        input_data = torch.from_numpy(photo)
        output_data1 = model(input_data).cpu().numpy()
        print("pytorch1")
        print(output_data1)







    # 创建输入数据2
    image = Image.open("/home/bjy/FaceRecSysOnnx/face_image_dir/2130622004/2130622004_3.jpg")
    image = resize_image(image, [160, 160], True)
    photo = np.expand_dims(np.transpose(preprocess_input(np.array(image, np.float32)), (2, 0, 1)), 0)
    input_name = session.get_inputs()[0].name
    print(photo)

    # 运行推理
    inputs = {input_name: photo}
    outputs2 = session.run(None, inputs)
    output2 = outputs2[0]
    print("ONNX2")
    print(output2)



    with torch.no_grad():
        model = Facenet(backbone="inception_resnetv1").eval()
        model.load_state_dict(torch.load("/home/bjy/FaceRecSysOnnx/EXPORT/model_data/facenet_inception_resnetv1.pth", map_location="cpu"), strict=False)
        
        input_data = torch.from_numpy(photo)
        output_data2 = model(input_data).cpu().numpy()
        print("pytorch2")
        print(output_data2)


    l2 = np.linalg.norm(output1 - output2, axis=1)
    value_float = l2.item()
    print("ressult ONNX")
    print(value_float)

    l2 = np.linalg.norm(output_data1 - output_data2, axis=1)
    value_float = l2.item()
    print("ressult pytorch")
    print(value_float)

    



if __name__ == "__main__":
    arg = sys.argv[1]
    check(arg)