#include <iostream>
#include <leveldb/db.h>

int main(int argc, char *argv[])
{
    std::cout << "Hello World!" << std::endl;
    leveldb::Options opts;
    opts.create_if_missing = true;

    leveldb::DB *dbptr = nullptr;
    leveldb::Status s = leveldb::DB::Open(opts, "/tmp/leveldb_test01", &dbptr);

    if(s.ok()){
        std::cout << "Open DB Success!" << std::endl;
    }else{
        std::cout << "Open DB Failed!" << std::endl;
        return 0;
    }


    std::unique_ptr<leveldb::DB> db(dbptr);

    leveldb::WriteOptions write_opts;
    write_opts.sync = false;

    // 数据写入
    s = db->Put(write_opts, "name", "leveldb");
    s = db->Put(write_opts, "time", "20240319");

    // 数据查询
    std::string value;
    leveldb::ReadOptions read_opts;
    s = db->Get(read_opts, "", &value);

    if(s.ok()){
        std::cout << ": " << value << std::endl;
    }else if(s.IsNotFound()){
        std::cout << "query success value not found" << std::endl;
    }else{
        std::cout << "query failed reason" << s.ToString() << std::endl;
    }

    s = db->Delete(write_opts, "name");
    return 0;
}