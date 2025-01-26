MYSQL_LIB=../thirdparty/mysql-connector-c/lib/
MYSQL_INCLUDE=../thirdparty/mysql-connector-c/include/

CPPFLAGS=-O2 -g -std=c++11 -lmysqlclient 

insert:insert.cxx
	g++ $^ -o $@ \
	-L$(MYSQL_LIB) -I$(MYSQL_INCLUDE) \
	$(CPPFLAGS)

.PHONY:clean
clean:
	rm -rf insert