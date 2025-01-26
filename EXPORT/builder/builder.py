import argparse
import os
import sys
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from facenet.facenet import Facenet
import torch

def main(args):
    model = Facenet(backbone=args.backbone).eval()
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    tensor_dict = torch.load(args.model_path, map_location=device, weights_only=True)
    for key in tensor_dict:
        print(key)

    del tensor_dict['classifier.weight']
    del tensor_dict['classifier.bias']
    model.load_state_dict(tensor_dict)

    # 虚拟输入张量
    batch_size = 2
    channels = 3
    height = 160
    width = 160
    dummy_input = torch.randn(batch_size, channels, height, width)

    torch.onnx.export(
        model,                      # 要导出的模型
        dummy_input,                # 用于模型的虚拟输入数据
        args.output_file,           # 导出的 ONNX 文件路径
        verbose=True,               # 是否打印导出信息
        input_names=['input'],      # 输入节点的名称
        output_names=['output'],    # 输出节点的名称   
        dynamic_axes={"input": {0: "batch_size"}, "output": {0: "batch_size"}},  # 指定batch_size是动态的
    )
    print(f"Model has been exported to {args.output_file}")

if __name__ == "__main__":
    argparser = argparse.ArgumentParser()
    argparser.add_argument('--backbone', default='inception_resnetv1')
    argparser.add_argument('--model_path', default='../model/facenet_inception_resnetv1.pth')
    argparser.add_argument('--output_file', default='../output/facenet_model_mobilenet.onnx')
    args = argparser.parse_args()
    main(args)







# 使用自己训练好的模型预测需要修改2个参数, model_path和backbone
class Facenett(object):
    _defaults = {
        # 验证集损失较低不代表准确度较高，仅代表该权值在验证集上泛化性能较好
        "model_path": "/home/bjy/FaceRecSys/HandleServer/model_data/facenet_inception_resnetv1.pth",
        # 输入图片的大小
        "input_shape": [160, 160, 3],
        # 所使用到的主干特征提取网络
        "backbone": "inception_resnetv1",
        # 是否进行不失真的resize
        "letterbox_image": True,
        # 是否使用CUDA
        "cuda": False,
    }

    @classmethod
    def get_defaults(cls, n):
        if n in cls._defaults:
            return cls._defaults[n]
        else:
            return "Unrecognized attribute name '" + n + "'"

    # 初始化Facenet
    def __init__(self, **kwargs):
        self.__dict__.update(self._defaults)
        for name, value in kwargs.items():
            setattr(self, name, value)
        # 调用self.generate函数生成模型的网络结构
        self.generate()
        show_config(**self._defaults)
        
    def generate(self):
        # 载入模型与权值
        print('Loading weights into state dict...')
        device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
        # 调用facenet函数创建一个Facenet模型实例,并使用关键字参数backbone和mode来指定模型的主干网络和模式
        self.net = Facenet(backbone=self.backbone, mode="predict").eval()
        # strict被设置为False,表示允许加载的权重参数字典中存在模型中不存在的键值对
        self.net.load_state_dict(torch.load(self.model_path, map_location=device), strict=False)
        print('{} model loaded.'.format(self.model_path))
        if self.cuda:
            self.net = torch.nn.DataParallel(self.net)
            cudnn.benchmark = True
            self.net = self.net.cuda()

    # 检测图片
    def detect_image(self, image_1, image_2):
        try:
            # 图片预处理，归一化
            with torch.no_grad():
                image_1 = resize_image(image_1, [self.input_shape[1], self.input_shape[0]], letterbox_image=self.letterbox_image)
                image_2 = resize_image(image_2, [self.input_shape[1], self.input_shape[0]], letterbox_image=self.letterbox_image)

                photo_1 = torch.from_numpy(np.expand_dims(np.transpose(preprocess_input(np.array(image_1, np.float32)), (2, 0, 1)), 0))
                photo_2 = torch.from_numpy(np.expand_dims(np.transpose(preprocess_input(np.array(image_2, np.float32)), (2, 0, 1)), 0))
            
                if self.cuda:
                    photo_1 = photo_1.cuda()
                    photo_2 = photo_2.cuda()
                
                # 图片传入网络进行预测
                output1 = self.net(photo_1).cpu().numpy()
                output2 = self.net(photo_2).cpu().numpy()
                # 计算两个向量output1和output2之间的L1范数（曼哈顿距离）
                l1 = np.linalg.norm(output1 - output2, axis=1)
                value_float = l1.item()
            return value_float
        except:
            print("error")
            import traceback
            traceback.print_exc()
            return None


