include_guard()

include(FetchContent)
# 声明外部项目
FetchContent_Declare(
    leveldb
    GIT_REPOSITORY http://github.com/google/leveldb.git
    GIT_TAG v1.2.0
)

# 获取并构建外部项目
FetchContent_MakeAvailable(leveldb)


include(FetchContent)
FetchContent_Declare(
  fmt
  GIT_REPOSITORY https://github.com/fmtlib/fmt.git
  GIT_TAG        10.2.1
)
FetchContent_MakeAvailable(fmt)


set(CMAKE_CXX_STANDARD 11)