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
include modules/rapid/CMakeFiles/opencv_rapid.dir/depend.make

# Include the progress variables for this target.
include modules/rapid/CMakeFiles/opencv_rapid.dir/progress.make

# Include the compile flags for this target's objects.
include modules/rapid/CMakeFiles/opencv_rapid.dir/flags.make

modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o: modules/rapid/CMakeFiles/opencv_rapid.dir/flags.make
modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o: ../opencv_contrib/modules/rapid/src/histogram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rapid/src/histogram.cpp

modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_rapid.dir/src/histogram.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rapid/src/histogram.cpp > CMakeFiles/opencv_rapid.dir/src/histogram.cpp.i

modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_rapid.dir/src/histogram.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rapid/src/histogram.cpp -o CMakeFiles/opencv_rapid.dir/src/histogram.cpp.s

modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o.requires:

.PHONY : modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o.requires

modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o.provides: modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o.requires
	$(MAKE) -f modules/rapid/CMakeFiles/opencv_rapid.dir/build.make modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o.provides.build
.PHONY : modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o.provides

modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o.provides.build: modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o


modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o: modules/rapid/CMakeFiles/opencv_rapid.dir/flags.make
modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o: ../opencv_contrib/modules/rapid/src/rapid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rapid/src/rapid.cpp

modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_rapid.dir/src/rapid.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rapid/src/rapid.cpp > CMakeFiles/opencv_rapid.dir/src/rapid.cpp.i

modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_rapid.dir/src/rapid.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rapid/src/rapid.cpp -o CMakeFiles/opencv_rapid.dir/src/rapid.cpp.s

modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o.requires:

.PHONY : modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o.requires

modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o.provides: modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o.requires
	$(MAKE) -f modules/rapid/CMakeFiles/opencv_rapid.dir/build.make modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o.provides.build
.PHONY : modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o.provides

modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o.provides.build: modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o


# Object files for target opencv_rapid
opencv_rapid_OBJECTS = \
"CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o" \
"CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o"

# External object files for target opencv_rapid
opencv_rapid_EXTERNAL_OBJECTS =

lib/libopencv_rapid.so.4.5.0: modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o
lib/libopencv_rapid.so.4.5.0: modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o
lib/libopencv_rapid.so.4.5.0: modules/rapid/CMakeFiles/opencv_rapid.dir/build.make
lib/libopencv_rapid.so.4.5.0: lib/libopencv_calib3d.so.4.5.0
lib/libopencv_rapid.so.4.5.0: lib/libopencv_features2d.so.4.5.0
lib/libopencv_rapid.so.4.5.0: lib/libopencv_flann.so.4.5.0
lib/libopencv_rapid.so.4.5.0: lib/libopencv_imgproc.so.4.5.0
lib/libopencv_rapid.so.4.5.0: lib/libopencv_core.so.4.5.0
lib/libopencv_rapid.so.4.5.0: modules/rapid/CMakeFiles/opencv_rapid.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../../lib/libopencv_rapid.so"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_rapid.dir/link.txt --verbose=$(VERBOSE)
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libopencv_rapid.so.4.5.0 ../../lib/libopencv_rapid.so.4.5 ../../lib/libopencv_rapid.so

lib/libopencv_rapid.so.4.5: lib/libopencv_rapid.so.4.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libopencv_rapid.so.4.5

lib/libopencv_rapid.so: lib/libopencv_rapid.so.4.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libopencv_rapid.so

# Rule to build all files generated by this target.
modules/rapid/CMakeFiles/opencv_rapid.dir/build: lib/libopencv_rapid.so

.PHONY : modules/rapid/CMakeFiles/opencv_rapid.dir/build

# Object files for target opencv_rapid
opencv_rapid_OBJECTS = \
"CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o" \
"CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o"

# External object files for target opencv_rapid
opencv_rapid_EXTERNAL_OBJECTS =

modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0: modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o
modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0: modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o
modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0: modules/rapid/CMakeFiles/opencv_rapid.dir/build.make
modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0: lib/libopencv_calib3d.so.4.5.0
modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0: lib/libopencv_features2d.so.4.5.0
modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0: lib/libopencv_flann.so.4.5.0
modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0: lib/libopencv_imgproc.so.4.5.0
modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0: lib/libopencv_core.so.4.5.0
modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0: modules/rapid/CMakeFiles/opencv_rapid.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library CMakeFiles/CMakeRelink.dir/libopencv_rapid.so"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_rapid.dir/relink.txt --verbose=$(VERBOSE)
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && $(CMAKE_COMMAND) -E cmake_symlink_library CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0 CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5 CMakeFiles/CMakeRelink.dir/libopencv_rapid.so

modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5: modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5

modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so: modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so.4.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so

# Rule to relink during preinstall.
modules/rapid/CMakeFiles/opencv_rapid.dir/preinstall: modules/rapid/CMakeFiles/CMakeRelink.dir/libopencv_rapid.so

.PHONY : modules/rapid/CMakeFiles/opencv_rapid.dir/preinstall

modules/rapid/CMakeFiles/opencv_rapid.dir/requires: modules/rapid/CMakeFiles/opencv_rapid.dir/src/histogram.cpp.o.requires
modules/rapid/CMakeFiles/opencv_rapid.dir/requires: modules/rapid/CMakeFiles/opencv_rapid.dir/src/rapid.cpp.o.requires

.PHONY : modules/rapid/CMakeFiles/opencv_rapid.dir/requires

modules/rapid/CMakeFiles/opencv_rapid.dir/clean:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid && $(CMAKE_COMMAND) -P CMakeFiles/opencv_rapid.dir/cmake_clean.cmake
.PHONY : modules/rapid/CMakeFiles/opencv_rapid.dir/clean

modules/rapid/CMakeFiles/opencv_rapid.dir/depend:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bjy/FaceRecSys/thirdparty/opencv /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/rapid /home/bjy/FaceRecSys/thirdparty/opencv/build /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/rapid/CMakeFiles/opencv_rapid.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/rapid/CMakeFiles/opencv_rapid.dir/depend

