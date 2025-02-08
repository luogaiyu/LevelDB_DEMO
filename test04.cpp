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
    write_opts.sync = false;

    db->Put(write_opts, "key1", "value1");
    db->Put(write_opts, "key2", "value2");
    db->Put(write_opts, "key3", "value3");
    db->Put(write_opts, "key4", "value4");
    db->Put(write_opts, "key5", "value5");
    db->Put(write_opts, "key6", "value6");
    // // 迭代器的使用
    leveldb::Iterator *iter = db->NewIterator(leveldb::ReadOptions());
    // 从头到尾扫描
    // iter -> SeekToFirst();
    // for(;iter->Valid();iter->Next()) {
    //     auto key = iter->key().ToString();
    //     auto value = iter->value().ToString();
    //     std::cout << key << ":" << value << std::endl;
    // }

    // //从尾到头扫描
    // for(iter->SeekToLast(); iter->Valid(); iter->Prev()){
    //     auto key = iter->key().ToString();
    //     auto value = iter->value().ToString();
    //     std::cout << key << ":" << value << std::endl;
    // }
    // 
    // 从指定位置往后扫描
    for(iter->Seek("key2");iter->Valid();iter->Prev()){
        auto key = iter->key().ToString();
        auto value = iter->value().ToString();
        std::cout << key << ":" << value << std::endl;
    }
    return 0;
}