# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bjy/FaceRecSys/thirdparty/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bjy/FaceRecSys/thirdparty/opencv/build

# Include any dependencies generated for this target.
include modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/depend.make

# Include the progress variables for this target.
include modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/progress.make

# Include the compile flags for this target's objects.
include modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/flags.make

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/flags.make
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o: ../opencv_contrib/modules/rgbd/test/test_dynafu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_dynafu.cpp

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_dynafu.cpp > CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.i

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_dynafu.cpp -o CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.s

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o.requires:

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o.requires

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o.provides: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o.requires
	$(MAKE) -f modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build.make modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o.provides.build
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o.provides

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o.provides.build: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o


modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/flags.make
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o: ../opencv_contrib/modules/rgbd/test/test_kinfu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_kinfu.cpp

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_kinfu.cpp > CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.i

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_kinfu.cpp -o CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.s

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o.requires:

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o.requires

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o.provides: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o.requires
	$(MAKE) -f modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build.make modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o.provides.build
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o.provides

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o.provides.build: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o


modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/flags.make
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o: ../opencv_contrib/modules/rgbd/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_main.cpp

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_main.cpp > CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.i

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_main.cpp -o CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.s

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o.requires:

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o.requires

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o.provides: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o.requires
	$(MAKE) -f modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build.make modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o.provides.build
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o.provides

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o.provides.build: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o


modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/flags.make
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o: ../opencv_contrib/modules/rgbd/test/test_normal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_normal.cpp

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_normal.cpp > CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.i

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_normal.cpp -o CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.s

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o.requires:

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o.requires

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o.provides: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o.requires
	$(MAKE) -f modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build.make modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o.provides.build
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o.provides

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o.provides.build: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o


modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/flags.make
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o: ../opencv_contrib/modules/rgbd/test/test_odometry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_odometry.cpp

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_odometry.cpp > CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.i

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_odometry.cpp -o CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.s

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o.requires:

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o.requires

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o.provides: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o.requires
	$(MAKE) -f modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build.make modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o.provides.build
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o.provides

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o.provides.build: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o


modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/flags.make
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o: ../opencv_contrib/modules/rgbd/test/test_registration.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_registration.cpp

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_registration.cpp > CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.i

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_registration.cpp -o CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.s

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o.requires:

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o.requires

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o.provides: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o.requires
	$(MAKE) -f modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build.make modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o.provides.build
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o.provides

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o.provides.build: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o


modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/flags.make
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o: ../opencv_contrib/modules/rgbd/test/test_tsdf.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_tsdf.cpp

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_tsdf.cpp > CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.i

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_tsdf.cpp -o CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.s

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o.requires:

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o.requires

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o.provides: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o.requires
	$(MAKE) -f modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build.make modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o.provides.build
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o.provides

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o.provides.build: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o


modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/flags.make
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o: ../opencv_contrib/modules/rgbd/test/test_utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_utils.cpp

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_utils.cpp > CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.i

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd/test/test_utils.cpp -o CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.s

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o.requires:

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o.requires

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o.provides: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o.requires
	$(MAKE) -f modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build.make modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o.provides.build
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o.provides

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o.provides.build: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o


# Object files for target opencv_test_rgbd
opencv_test_rgbd_OBJECTS = \
"CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o" \
"CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o" \
"CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o" \
"CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o" \
"CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o" \
"CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o" \
"CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o" \
"CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o"

# External object files for target opencv_test_rgbd
opencv_test_rgbd_EXTERNAL_OBJECTS =

bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o
bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o
bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o
bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o
bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o
bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o
bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o
bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o
bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build.make
bin/opencv_test_rgbd: lib/libopencv_ts.a
bin/opencv_test_rgbd: lib/libopencv_rgbd.so.4.5.0
bin/opencv_test_rgbd: lib/libopencv_highgui.so.4.5.0
bin/opencv_test_rgbd: lib/libopencv_calib3d.so.4.5.0
bin/opencv_test_rgbd: lib/libopencv_videoio.so.4.5.0
bin/opencv_test_rgbd: lib/libopencv_imgcodecs.so.4.5.0
bin/opencv_test_rgbd: lib/libopencv_features2d.so.4.5.0
bin/opencv_test_rgbd: lib/libopencv_flann.so.4.5.0
bin/opencv_test_rgbd: lib/libopencv_imgproc.so.4.5.0
bin/opencv_test_rgbd: lib/libopencv_core.so.4.5.0
bin/opencv_test_rgbd: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ../../bin/opencv_test_rgbd"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_rgbd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build: bin/opencv_test_rgbd

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/build

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/requires: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_dynafu.cpp.o.requires
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/requires: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_kinfu.cpp.o.requires
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/requires: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_main.cpp.o.requires
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/requires: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_normal.cpp.o.requires
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/requires: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_odometry.cpp.o.requires
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/requires: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_registration.cpp.o.requires
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/requires: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_tsdf.cpp.o.requires
modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/requires: modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/test/test_utils.cpp.o.requires

.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/requires

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/clean:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_rgbd.dir/cmake_clean.cmake
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/clean

modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/depend:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bjy/FaceRecSys/thirdparty/opencv /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rgbd /home/bjy/FaceRecSys/thirdparty/opencv/build /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/rgbd/CMakeFiles/opencv_test_rgbd.dir/depend

