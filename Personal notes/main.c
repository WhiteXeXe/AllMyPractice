#include <stdio.h>
#include <sqlite3.h>


void writeNewData(void)
{
    sqlite3 *db;
    sqlite3_open("test.db", &db);
    char a[10] = "nannn";
    char sql_command_create[512];
    snprintf("CREATE TABLE IF NOT EXISTS test("
             "%s TEXT,"
             "fu TEXT)");
    sqlite3_exec(db, sql_command_create, 0,0,0);
    sqlite3_close(db);
}


int main()
{
    writeNewData();
}

