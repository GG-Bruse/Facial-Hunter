source /opt/rh/devtoolset-9/enable

export LD_LIBRARY_PATH="/usr/lib64/:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/local/lib64/:$LD_LIBRARY_PATH"

# libstdc++.so.6 need GLIBCXX_3.4.30
export LD_LIBRARY_PATH="/home/bjy/FaceRecSys/MasterServer/bin/:$LD_LIBRARY_PATH" 
# opencv4 c++
export PKG_CONFIG_PATH="/usr/local/lib64/pkgconfig:$PKG_CONFIG_PATH" 
