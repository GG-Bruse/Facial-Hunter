# nlohmann_json and onnxruntime
LIB=/usr/local/lib64/
INCLUDE=/usr/local/include/

INIPARSER_LIB=../thirdparty/iniparser/lib/
INIPARSER_INCLUDE=../thirdparty/iniparser/include/

CPPFLAGS=-std=c++11 -lpthread -lonnxruntime -liniparser -O3

HandleServer:HandleServer.cpp
	g++ $^ -o $@ \
	-L$(LIB) -I$(INIPARSER_LIB) -L$(INIPARSER_LIB) $(CPPFLAGS) 
	
.PHONY:clean
clean:
	rm -rf HandleServer
