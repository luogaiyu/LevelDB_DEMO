#include <iostream>
#include <leveldb/db.h>
#include <leveldb/comparator.h>
#include <leveldb/write_batch.h>
#include <memory>
#include <leveldb/cache.h>
#include <thread>
#include "snapshot_guard.h"

void QueryStudentClassInfo(std::shared_ptr<leveldb::DB> db) {
    std::string student_info;
    auto read_opts = leveldb::ReadOptions();
    read_opts.snapshot = db->GetSnapshot();// 相当于保障查询的稳定性,不会存在不一致的中间状态
    
    SnapshotGuard guard(db.get());
    db->Get(read_opts, "studentId:10000", &student_info);
    std::cout << "studentId:10000 " << student_info << std::endl;

    std::this_thread::sleep_for(std::chrono::seconds(2));// 模拟发生卡顿

    db->Get(read_opts, "studentId:10001", &student_info);
    std::cout << "student_info: 10001 info " << student_info << std::endl;

}

int main(int argc, char *argv[])
{
    // std::shared_ptr<leveldb::Cache> cache(leveldb::NewLRUCache(1*1024*1024*1024);)
    // leveldb::Cache *cache =     
    // std::cout << "Hello World!" << std::endl;
    leveldb::Options opts;
    opts.create_if_missing = true;

    opts.block_size = 8*1024;
    // opts.block_cache =cache.get();

    // opts.comparator = new ReserveBytewiseComparator();


    leveldb::DB *dbptr = nullptr;
    leveldb::Status s = leveldb::DB::Open(opts, "/tmp/leveldb_test07", &dbptr);


    if(s.ok()){
        std::cout << "Open DB Success!" << std::endl;
    }else{
        std::cout << "Open DB Failed!" << std::endl;
        std::cout << "Reason : " +  s.ToString() << std::endl;
        return 0;
    }


    std::shared_ptr<leveldb::DB> db(dbptr);

    leveldb::WriteOptions write_opts;
    write_opts.sync = false;

    db->Put(write_opts, "studentId:10000", R"({"name":"张三","class":"0203"})");
    db->Put(write_opts, "studentId:10001", R"({"name":"李四","class":"0204"})");


    std::thread t1([db](){
        std::this_thread::sleep_for(std::chrono::seconds(1));
        leveldb::WriteBatch transfer_class_operation;
        transfer_class_operation.Put("studentId:10000", R"({"name":"张三","class":"0204"})");
        transfer_class_operation.Put("studentId:10001", R"({"name":"张三","class":"0203"})");
        db -> Write(leveldb::WriteOptions(), &transfer_class_operation);
    }
    );

    std::thread t2([db](){
        QueryStudentClassInfo(db);
    });
    
    t1.join();
    t2.join();
    // leveldb::Iterator *iter = db->NewIterator(leveldb::ReadOptions());
    // // 从头到尾扫描
    // iter -> SeekToFirst();
    // for(;iter->Valid();iter->Next()) {
    //     auto key = iter->key().ToString();
    //     auto value = iter->value().ToString();
    //     std::cout << key << ":" << value << std::endl;
    // }

    return 0;
}