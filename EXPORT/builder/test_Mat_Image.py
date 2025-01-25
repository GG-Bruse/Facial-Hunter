import cv2
import numpy as np
from PIL import Image

# 读取图像
opencv_image = cv2.imread('/home/bjy/FaceRecSysOnnx/face_image_dir/2130622004/2130622004_1.jpg')
pil_image = Image.open('/home/bjy/FaceRecSysOnnx/face_image_dir/2130622004/2130622004_1.jpg')

# 转换 PIL 图像为 numpy 数组
pil_image_np = np.array(pil_image)

# 检查 OpenCV 图像的颜色空间
opencv_image_rgb = cv2.cvtColor(opencv_image, cv2.COLOR_BGR2RGB)

# 比较图像尺寸
print("OpenCV shape:", opencv_image_rgb.shape)
print("PIL shape:", pil_image_np.shape)

# 比较数据类型
print("OpenCV RGB dtype:", opencv_image_rgb.dtype)
print("PIL dtype:", pil_image_np.dtype)

# 检查是否相同
print("Images are the same:", np.array_equal(opencv_image_rgb, pil_image_np))