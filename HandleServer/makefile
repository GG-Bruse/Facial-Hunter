
# opencv and onnxruntime
LIB=/usr/local/lib64/
INCLUDE=/usr/local/include/

ONNXRUNTIME_INCLUDE=/home/bjy/installation_package/onnxruntime/include/

CPPFLAGS=-std=c++11 -lpthread -lonnxruntime -O3

HandleServer:HandleServer.cpp
	g++ $^ -o $@ \
	-L$(LIB) -I$(ONNXRUNTIME_INCLUDE) $(CPPFLAGS) \
	`pkg-config --cflags opencv4` `pkg-config --libs opencv4`
	
.PHONY:clean
clean:
	rm -rf HandleServer
