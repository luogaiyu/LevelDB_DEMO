project(test_levelDB)
cmake_minimum_required(VERSION 3.1.6)

find_package(LevelDB REQUIRED)

# fmt-----------
set(fmt_INCLUDE_DIR /usr/local/include)
set(fmt_LIBRARY /usr/local/lib/libfmt.a)
# fmt-----------

# 包含自定义的 CMake 模块
include(cmake/leveldb.cmake)

# 输出 LevelDB 源码目录
message(STATUS "---> ${leveldb_SOURCE_DIR}")

# 添加可执行文件
add_executable(test01 test01.cpp)

# 链接 LevelDB 库
target_link_libraries(test01 leveldb)

# 添加 LevelDB 头文件路径
target_include_directories(test01 PUBLIC ${leveldb_SOURCE_DIR}/include)

# test02
add_executable(test02 test02.cpp)
target_link_libraries(test02 leveldb)
target_include_directories(test02 PUBLIC ${leveldb_SOURCE_DIR}/include)

# test03
add_executable(test03 test03.cpp)
target_link_libraries(test03 leveldb)
target_include_directories(test03 PUBLIC ${leveldb_SOURCE_DIR}/include)

# test04
add_executable(test04 test04.cpp)
target_link_libraries(test04 leveldb)
target_include_directories(test04 PUBLIC ${leveldb_SOURCE_DIR}/include)

# test05
add_executable(test05 test05.cpp)
target_link_libraries(test05 leveldb)
target_include_directories(test05 PUBLIC ${leveldb_SOURCE_DIR}/include)


# test06
add_executable(test06 test05.cpp)
target_link_libraries(test06 leveldb)
target_include_directories(test06 PUBLIC ${leveldb_SOURCE_DIR}/include)


# test07
add_executable(test07 test07.cpp)
target_link_libraries(test07 leveldb)
target_include_directories(test07 PUBLIC ${leveldb_SOURCE_DIR}/include)

# test08
add_executable(test08 test08.cpp)
# 链接 fmt 库
target_link_libraries(test08 PRIVATE fmt leveldb)
# 添加 fmt 头文件路径
target_include_directories(test08 PUBLIC ${fmt_SOURCE_DIR}/include ${leveldb_SOURCE_DIR}/include)


set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g")


