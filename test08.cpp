#include <ctime>
#include <iostream>
#include <leveldb/db.h>
#include <memory>
#include <thread>
#include "snapshot_guard.h"
#include <random>
#include <fmt/core.h>


std::string GenerateRandomString(int length)
{
    std::string characters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    std::string rand_string;
    rand_string.reserve(length);
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(0,characters.length()-1);
    for(int i = 0; i < length; i++){
        rand_string += characters[dis(gen)];
    }
    return rand_string;
}

    

int main(int argc, char *argv[])
{
    
    leveldb::Options opts;
    opts.create_if_missing = true;

    leveldb::DB *dbptr = nullptr;
    leveldb::Status s = leveldb::DB::Open(opts, "/tmp/leveldb_test08", &dbptr);


    if(s.ok()){
        std::cout << "Open DB Success!" << std::endl;
    }else{
        std::cout << "Open DB Failed!" << std::endl;
        std::cout << "Reason : " +  s.ToString() << std::endl;
        return 0;
    }


    std::shared_ptr<leveldb::DB> db(dbptr);

    leveldb::WriteOptions write_opts;


    for(int i = 0; i < 100000; i++){
        std::string key = fmt::format("userInfo:{}" , std::to_string(i));
        std::string value = GenerateRandomString(1024);// 1kb
        db -> Put(write_opts, key, value);
    }

    int a = 0;// for debug breakpoint

    for(int i = 0; i < 100000; i++){
        std::string key = fmt::format("userInfo:{}" , std::to_string(i));
        db -> Delete(write_opts, key);
    }
    a = 1;
    leveldb::Slice start_key;
    leveldb::Slice end_key ;
    for (int i = 0; i < 5; ++i) {
        std::this_thread::sleep_for(std::chrono::seconds(15));
        db->CompactRange(&start_key, &end_key);
    }


    return 0;
}