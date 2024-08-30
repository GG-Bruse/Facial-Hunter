# nlohmann_json and onnxruntime
LIB=/usr/local/lib64/
INCLUDE=/usr/local/include/

MYSQL_LIB=../thirdparty/mysql-connector-c/lib/
MYSQL_INCLUDE=../thirdparty/mysql-connector-c/include/

INIPARSER_LIB=../thirdparty/iniparser/lib/
INIPARSER_INCLUDE=../thirdparty/iniparser/include/

CPPFLAGS=-O3 -std=c++17 -lpthread -lmysqlclient -liniparser

MasterServer:MasterServer.cpp
	g++ $^ -o $@ \
	-L$(LIB) -I$(INCLUDE) \
	-L$(MYSQL_LIB) -I$(MYSQL_INCLUDE) \
	-L$(INIPARSER_LIB) -I$(INIPARSER_INCLUDE) \
	$(CPPFLAGS)

.PHONY:clean
clean:
	rm -rf MasterServer
