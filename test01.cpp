#include <iostream>
#include <leveldb/db.h>

int main(int argc, char *argv[])
{
    std::cout << "Hello World!" << std::endl;
    leveldb::Options opts;
    opts.create_if_missing = true;

    leveldb::DB *db = nullptr;
    leveldb::Status status = leveldb::DB::Open(opts, "/tmp/leveldb_test01", &db);

    if(status.ok()){
        std::cout << "Open DB Success!" << std::endl;
    }else{
        std::cout << "Open DB Failed!" << std::endl;
    }

    if(db){
        delete db;
    }
    return 0;
}