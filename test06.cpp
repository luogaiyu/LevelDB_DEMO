#include <iostream>
#include <leveldb/db.h>
#include <leveldb/comparator.h>
#include <leveldb/write_batch.h>
#include <memory>
#include <leveldb/cache.h>

/**
 * BlockCache 的使用
 * sst(ldb) 文件
 * | DataBlock1 | 4kb
 * | DataBlock2 | 4kb
 * | DataBlock3 | 4kb
...
 * | MetaBlock1 | 4kb
 * | MetaBlock2 | 4kb
 * | MetaBlock3 | 4kb
 * -- 索引文件 
 * |MetaIndexBlock|
 * |IndexBlock| 
 * | Footer|
 *
 */

class ReserveBytewiseComparator : public leveldb::Comparator
{
public:
    int Compare(const leveldb::Slice& a, const leveldb::Slice& b) const override
    {
        return leveldb::BytewiseComparator()->Compare(b, a);
    }
    const char* Name() const override {
        return "my.ReserveBytewiseComparator";
    };

    void FindShortestSeparator(std::string* start,
                                     const leveldb::Slice& limit) const override{

                                     };
   void FindShortSuccessor(std::string* key) const override {

   };
};
int main(int argc, char *argv[])
{
    std::shared_ptr<leveldb::Cache> cache(leveldb::NewLRUCache(1*1024*1024*1024);)
    leveldb::Cache *cache =     
    std::cout << "Hello World!" << std::endl;
    leveldb::Options opts;
    opts.create_if_missing = true;
    opts.block_size = 8*1024;
    opts.block_cache =cache.get();

    // opts.comparator = new ReserveBytewiseComparator();


    leveldb::DB *dbptr = nullptr;
    leveldb::Status s = leveldb::DB::Open(opts, "/tmp/leveldb_test06", &dbptr);

    if(s.ok()){
        std::cout << "Open DB Success!" << std::endl;
    }else{
        std::cout << "Open DB Failed!" << std::endl;
        std::cout << "Reason : " +  s.ToString() << std::endl;
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
    iter -> SeekToFirst();
    for(;iter->Valid();iter->Next()) {
        auto key = iter->key().ToString();
        auto value = iter->value().ToString();
        std::cout << key << ":" << value << std::endl;
    }

    return 0;
}