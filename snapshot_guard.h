#ifndef __SNAPSHOT_GUARD_H__
#define __SNAPSHOT_GUARD_H__

#endif  // __SNAPSHOT_GUARD_H__

#include <leveldb/db.h>


class SnapshotGuard {
public:
    explicit SnapshotGuard(leveldb::DB* db) : db_(db),snapshot_(db_->GetSnapshot()) {
    }
    SnapshotGuard(const SnapshotGuard &) = delete;
    SnapshotGuard &operator =(const SnapshotGuard &) = delete;

    ~SnapshotGuard() {
        db_->ReleaseSnapshot(snapshot_);
    }

    const leveldb::Snapshot *GetShapshot() const {
        return snapshot_;
    }

private:
    leveldb::DB* db_{nullptr};
    const leveldb::Snapshot* snapshot_{nullptr};
};