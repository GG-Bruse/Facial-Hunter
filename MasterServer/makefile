LIB=/usr/local/lib64/

MYSQL_LIB=../thirdparty/mysql-connector-c/lib/
MYSQL_INCLUDE=../thirdparty/mysql-connector-c/include/

INIPARSER_LIB=../thirdparty/iniparser/lib/
INIPARSER_INCLUDE=../thirdparty/iniparser/include/

CPPFLAGS=-O3 -std=c++17 -lpthread -lmysqlclient -liniparser

MasterServer:MasterServer.cpp
	g++ $^ -o $@ \
	-L$(LIB) -L$(MYSQL_LIB) -I$(MYSQL_INCLUDE) \
	-L$(INIPARSER_LIB) -I$(INIPARSER_INCLUDE) \
	$(CPPFLAGS) \
	`pkg-config --cflags opencv4` `pkg-config --libs opencv4` 

.PHONY:clean
clean:
	rm -rf MasterServer
