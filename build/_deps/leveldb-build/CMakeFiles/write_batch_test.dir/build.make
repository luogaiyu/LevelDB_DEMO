# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.31.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.31.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/bowen.yin/code/test_levelDB

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/bowen.yin/code/test_levelDB/build

# Include any dependencies generated for this target.
include _deps/leveldb-build/CMakeFiles/write_batch_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/leveldb-build/CMakeFiles/write_batch_test.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/leveldb-build/CMakeFiles/write_batch_test.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/leveldb-build/CMakeFiles/write_batch_test.dir/flags.make

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/codegen:
.PHONY : _deps/leveldb-build/CMakeFiles/write_batch_test.dir/codegen

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testharness.cc.o: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/flags.make
_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testharness.cc.o: _deps/leveldb-src/util/testharness.cc
_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testharness.cc.o: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/bowen.yin/code/test_levelDB/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testharness.cc.o"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testharness.cc.o -MF CMakeFiles/write_batch_test.dir/util/testharness.cc.o.d -o CMakeFiles/write_batch_test.dir/util/testharness.cc.o -c /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src/util/testharness.cc

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testharness.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/write_batch_test.dir/util/testharness.cc.i"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src/util/testharness.cc > CMakeFiles/write_batch_test.dir/util/testharness.cc.i

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testharness.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/write_batch_test.dir/util/testharness.cc.s"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src/util/testharness.cc -o CMakeFiles/write_batch_test.dir/util/testharness.cc.s

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testutil.cc.o: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/flags.make
_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testutil.cc.o: _deps/leveldb-src/util/testutil.cc
_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testutil.cc.o: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/bowen.yin/code/test_levelDB/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testutil.cc.o"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testutil.cc.o -MF CMakeFiles/write_batch_test.dir/util/testutil.cc.o.d -o CMakeFiles/write_batch_test.dir/util/testutil.cc.o -c /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src/util/testutil.cc

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/write_batch_test.dir/util/testutil.cc.i"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src/util/testutil.cc > CMakeFiles/write_batch_test.dir/util/testutil.cc.i

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/write_batch_test.dir/util/testutil.cc.s"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src/util/testutil.cc -o CMakeFiles/write_batch_test.dir/util/testutil.cc.s

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.o: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/flags.make
_deps/leveldb-build/CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.o: _deps/leveldb-src/db/write_batch_test.cc
_deps/leveldb-build/CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.o: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/bowen.yin/code/test_levelDB/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object _deps/leveldb-build/CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.o"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/leveldb-build/CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.o -MF CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.o.d -o CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.o -c /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src/db/write_batch_test.cc

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.i"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src/db/write_batch_test.cc > CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.i

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.s"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src/db/write_batch_test.cc -o CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.s

# Object files for target write_batch_test
write_batch_test_OBJECTS = \
"CMakeFiles/write_batch_test.dir/util/testharness.cc.o" \
"CMakeFiles/write_batch_test.dir/util/testutil.cc.o" \
"CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.o"

# External object files for target write_batch_test
write_batch_test_EXTERNAL_OBJECTS =

_deps/leveldb-build/write_batch_test: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testharness.cc.o
_deps/leveldb-build/write_batch_test: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/util/testutil.cc.o
_deps/leveldb-build/write_batch_test: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/db/write_batch_test.cc.o
_deps/leveldb-build/write_batch_test: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/build.make
_deps/leveldb-build/write_batch_test: _deps/leveldb-build/libleveldb.a
_deps/leveldb-build/write_batch_test: _deps/leveldb-build/CMakeFiles/write_batch_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/bowen.yin/code/test_levelDB/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable write_batch_test"
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/write_batch_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/leveldb-build/CMakeFiles/write_batch_test.dir/build: _deps/leveldb-build/write_batch_test
.PHONY : _deps/leveldb-build/CMakeFiles/write_batch_test.dir/build

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/clean:
	cd /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build && $(CMAKE_COMMAND) -P CMakeFiles/write_batch_test.dir/cmake_clean.cmake
.PHONY : _deps/leveldb-build/CMakeFiles/write_batch_test.dir/clean

_deps/leveldb-build/CMakeFiles/write_batch_test.dir/depend:
	cd /Users/bowen.yin/code/test_levelDB/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/bowen.yin/code/test_levelDB /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-src /Users/bowen.yin/code/test_levelDB/build /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build /Users/bowen.yin/code/test_levelDB/build/_deps/leveldb-build/CMakeFiles/write_batch_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/leveldb-build/CMakeFiles/write_batch_test.dir/depend

