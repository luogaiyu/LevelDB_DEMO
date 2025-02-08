#include <iostream>
#include <leveldb/db.h>
#include <leveldb/write_batch.h>

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
    write_opts.sync = true;

    // 使用WriteBatch 打包多个操作, 原子写入
    leveldb::WriteBatch batch;
    batch.Put("name", "leveldb");
    batch.Put("time", "20240319");
    batch.Delete("addr");


    s = db -> Write(write_opts, &batch);

    std::string value;
    leveldb::ReadOptions read_opts;
    s = db->Get(read_opts, "name", &value);
    if(s.ok()){
        std::cout << "name : " << value << std::endl;
    }else if(s.IsNotFound()){
        std::cout << "query success value not found" << std::endl;
    }else{
        std::cout << "query failed reason" << s.ToString() << std::endl;
    }

    s = db->Delete(write_opts, "name");
    return 0;
}