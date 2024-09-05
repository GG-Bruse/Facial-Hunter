#include <iostream>
#include <fstream>
#include <string>
#include "mysql.h"

using namespace std;

bool ConnectMysql(MYSQL* _mysql_fp)
{
    if (nullptr == mysql_real_connect(_mysql_fp, "127.0.0.1", "bjy", "Bjy591888@", "facedb", 3306, nullptr, 0)) {
        cout << " Failed to access MySQL:" << mysql_error(_mysql_fp) << endl;
        return false;
    }
    mysql_set_character_set(_mysql_fp, "utf8");
    cout << "Successfully linked MySQL" << endl;
    return true;
}

bool QueryMysql(MYSQL* _mysql_fp, const string &sql, MYSQL_RES *&result)
{
    int ret = mysql_query(_mysql_fp, sql.c_str());
    if (ret != 0) {
        cerr << mysql_error(_mysql_fp) << " 执行失败" << endl;
        return false;
    }
    result = mysql_store_result(_mysql_fp);
    return true;
}

int main()
{
    ifstream inputFile ("input.jsonl");
    if (!inputFile.is_open()) {
        cerr << "Error opening file(s)." << std::endl;
        return 1;
    }

    string result = "insert into FacialInformation (studentId, faceData) values ('2130622004', '";
    string line;
    while(getline(inputFile, line))
    {
        result += line;
        result += "');\n";
    }

    MYSQL* _mysql_fp = mysql_init(nullptr);
    ConnectMysql(_mysql_fp);
    MYSQL_RES* tmp = nullptr;
    QueryMysql(_mysql_fp, result, tmp);
    mysql_close(_mysql_fp);
    return 0;
}