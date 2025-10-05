#include <sqlite3.h>
#include <string>
#include <stdexcept>
#include <iostream>
#include <cstring>
extern "C" {
  #include "bank.h"      // from rpcgen
  #include <rpc/rpc.h>
}

#ifndef DB_PATH
#define DB_PATH "bank1/bank1.db"   // bank2 build overrides this with -DDB_PATH="bank2/bank2.db"
#endif

static int exec_one(const std::string &sql) {
  sqlite3 *db=nullptr;
  char *err=nullptr;
  int rc = sqlite3_open(DB_PATH, &db);
  if (rc) {
     if (db) sqlite3_close(db);
      return -1; 
    }

  rc = sqlite3_exec(db, sql.c_str(), nullptr, nullptr, &err);

  if (rc!=SQLITE_OK) {
     if (err) sqlite3_free(err); 
     sqlite3_close(db); 
     return -1;
     }

  sqlite3_close(db);
  
  return 0;
}