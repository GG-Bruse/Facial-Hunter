source /opt/rh/devtoolset-9/enable

export LD_LIBRARY_PATH="/usr/lib64/:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/local/lib64/:$LD_LIBRARY_PATH"

# libstdc++.so.6 need GLIBCXX_3.4.30
# export LD_LIBRARY_PATH="/home/bjy/FaceRecSysOnnx/MasterServer/bin/:$LD_LIBRARY_PATH" 
# iniparser
export LD_LIBRARY_PATH="../thirdparty/iniparser/lib/:$LD_LIBRARY_PATH"
# mysqlclient
export LD_LIBRARY_PATH="../thirdparty/mysql-connector-c/lib/:$LD_LIBRARY_PATH"
