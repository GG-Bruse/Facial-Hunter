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
include modules/stereo/CMakeFiles/opencv_stereo.dir/depend.make

# Include the progress variables for this target.
include modules/stereo/CMakeFiles/opencv_stereo.dir/progress.make

# Include the compile flags for this target's objects.
include modules/stereo/CMakeFiles/opencv_stereo.dir/flags.make

modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o: modules/stereo/CMakeFiles/opencv_stereo.dir/flags.make
modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o: ../opencv_contrib/modules/stereo/src/descriptor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/descriptor.cpp

modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/descriptor.cpp > CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.i

modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/descriptor.cpp -o CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.s

modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o.requires:

.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o.requires

modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o.provides: modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o.requires
	$(MAKE) -f modules/stereo/CMakeFiles/opencv_stereo.dir/build.make modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o.provides.build
.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o.provides

modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o.provides.build: modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o


modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o: modules/stereo/CMakeFiles/opencv_stereo.dir/flags.make
modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o: ../opencv_contrib/modules/stereo/src/quasi_dense_stereo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/quasi_dense_stereo.cpp

modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/quasi_dense_stereo.cpp > CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.i

modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/quasi_dense_stereo.cpp -o CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.s

modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o.requires:

.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o.requires

modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o.provides: modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o.requires
	$(MAKE) -f modules/stereo/CMakeFiles/opencv_stereo.dir/build.make modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o.provides.build
.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o.provides

modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o.provides.build: modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o


modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o: modules/stereo/CMakeFiles/opencv_stereo.dir/flags.make
modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o: ../opencv_contrib/modules/stereo/src/stereo_binary_bm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/stereo_binary_bm.cpp

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/stereo_binary_bm.cpp > CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.i

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/stereo_binary_bm.cpp -o CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.s

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o.requires:

.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o.requires

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o.provides: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o.requires
	$(MAKE) -f modules/stereo/CMakeFiles/opencv_stereo.dir/build.make modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o.provides.build
.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o.provides

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o.provides.build: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o


modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o: modules/stereo/CMakeFiles/opencv_stereo.dir/flags.make
modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o: ../opencv_contrib/modules/stereo/src/stereo_binary_sgbm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/stereo_binary_sgbm.cpp

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/stereo_binary_sgbm.cpp > CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.i

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/src/stereo_binary_sgbm.cpp -o CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.s

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o.requires:

.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o.requires

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o.provides: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o.requires
	$(MAKE) -f modules/stereo/CMakeFiles/opencv_stereo.dir/build.make modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o.provides.build
.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o.provides

modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o.provides.build: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o


# Object files for target opencv_stereo
opencv_stereo_OBJECTS = \
"CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o" \
"CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o" \
"CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o" \
"CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o"

# External object files for target opencv_stereo
opencv_stereo_EXTERNAL_OBJECTS =

lib/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o
lib/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o
lib/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o
lib/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o
lib/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/build.make
lib/libopencv_stereo.so.4.5.0: lib/libopencv_tracking.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_plot.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_datasets.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_imgcodecs.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_text.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_ml.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_dnn.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_video.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_calib3d.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_features2d.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_flann.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_imgproc.so.4.5.0
lib/libopencv_stereo.so.4.5.0: lib/libopencv_core.so.4.5.0
lib/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library ../../lib/libopencv_stereo.so"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_stereo.dir/link.txt --verbose=$(VERBOSE)
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libopencv_stereo.so.4.5.0 ../../lib/libopencv_stereo.so.4.5 ../../lib/libopencv_stereo.so

lib/libopencv_stereo.so.4.5: lib/libopencv_stereo.so.4.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libopencv_stereo.so.4.5

lib/libopencv_stereo.so: lib/libopencv_stereo.so.4.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libopencv_stereo.so

# Rule to build all files generated by this target.
modules/stereo/CMakeFiles/opencv_stereo.dir/build: lib/libopencv_stereo.so

.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/build

# Object files for target opencv_stereo
opencv_stereo_OBJECTS = \
"CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o" \
"CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o" \
"CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o" \
"CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o"

# External object files for target opencv_stereo
opencv_stereo_EXTERNAL_OBJECTS =

modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/build.make
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_tracking.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_plot.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_datasets.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_imgcodecs.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_text.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_ml.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_dnn.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_video.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_calib3d.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_features2d.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_flann.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_imgproc.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: lib/libopencv_core.so.4.5.0
modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0: modules/stereo/CMakeFiles/opencv_stereo.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library CMakeFiles/CMakeRelink.dir/libopencv_stereo.so"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_stereo.dir/relink.txt --verbose=$(VERBOSE)
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && $(CMAKE_COMMAND) -E cmake_symlink_library CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0 CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5 CMakeFiles/CMakeRelink.dir/libopencv_stereo.so

modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5: modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5

modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so: modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so.4.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so

# Rule to relink during preinstall.
modules/stereo/CMakeFiles/opencv_stereo.dir/preinstall: modules/stereo/CMakeFiles/CMakeRelink.dir/libopencv_stereo.so

.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/preinstall

modules/stereo/CMakeFiles/opencv_stereo.dir/requires: modules/stereo/CMakeFiles/opencv_stereo.dir/src/descriptor.cpp.o.requires
modules/stereo/CMakeFiles/opencv_stereo.dir/requires: modules/stereo/CMakeFiles/opencv_stereo.dir/src/quasi_dense_stereo.cpp.o.requires
modules/stereo/CMakeFiles/opencv_stereo.dir/requires: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_bm.cpp.o.requires
modules/stereo/CMakeFiles/opencv_stereo.dir/requires: modules/stereo/CMakeFiles/opencv_stereo.dir/src/stereo_binary_sgbm.cpp.o.requires

.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/requires

modules/stereo/CMakeFiles/opencv_stereo.dir/clean:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && $(CMAKE_COMMAND) -P CMakeFiles/opencv_stereo.dir/cmake_clean.cmake
.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/clean

modules/stereo/CMakeFiles/opencv_stereo.dir/depend:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bjy/FaceRecSys/thirdparty/opencv /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo /home/bjy/FaceRecSys/thirdparty/opencv/build /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo/CMakeFiles/opencv_stereo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/stereo/CMakeFiles/opencv_stereo.dir/depend

