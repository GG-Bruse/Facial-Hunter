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
include modules/stereo/CMakeFiles/opencv_test_stereo.dir/depend.make

# Include the progress variables for this target.
include modules/stereo/CMakeFiles/opencv_test_stereo.dir/progress.make

# Include the compile flags for this target's objects.
include modules/stereo/CMakeFiles/opencv_test_stereo.dir/flags.make

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o: modules/stereo/CMakeFiles/opencv_test_stereo.dir/flags.make
modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o: ../opencv_contrib/modules/stereo/test/test_block_matching.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/test/test_block_matching.cpp

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/test/test_block_matching.cpp > CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.i

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/test/test_block_matching.cpp -o CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.s

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o.requires:

.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o.requires

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o.provides: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o.requires
	$(MAKE) -f modules/stereo/CMakeFiles/opencv_test_stereo.dir/build.make modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o.provides.build
.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o.provides

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o.provides.build: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o


modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o: modules/stereo/CMakeFiles/opencv_test_stereo.dir/flags.make
modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o: ../opencv_contrib/modules/stereo/test/test_descriptors.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/test/test_descriptors.cpp

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/test/test_descriptors.cpp > CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.i

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/test/test_descriptors.cpp -o CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.s

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o.requires:

.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o.requires

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o.provides: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o.requires
	$(MAKE) -f modules/stereo/CMakeFiles/opencv_test_stereo.dir/build.make modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o.provides.build
.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o.provides

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o.provides.build: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o


modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o: modules/stereo/CMakeFiles/opencv_test_stereo.dir/flags.make
modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o: ../opencv_contrib/modules/stereo/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/test/test_main.cpp

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/test/test_main.cpp > CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.i

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo/test/test_main.cpp -o CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.s

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o.requires:

.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o.requires

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o.provides: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o.requires
	$(MAKE) -f modules/stereo/CMakeFiles/opencv_test_stereo.dir/build.make modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o.provides.build
.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o.provides

modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o.provides.build: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o


# Object files for target opencv_test_stereo
opencv_test_stereo_OBJECTS = \
"CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o" \
"CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o" \
"CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o"

# External object files for target opencv_test_stereo
opencv_test_stereo_EXTERNAL_OBJECTS =

bin/opencv_test_stereo: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o
bin/opencv_test_stereo: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o
bin/opencv_test_stereo: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o
bin/opencv_test_stereo: modules/stereo/CMakeFiles/opencv_test_stereo.dir/build.make
bin/opencv_test_stereo: lib/libopencv_ts.a
bin/opencv_test_stereo: lib/libopencv_stereo.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_highgui.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_tracking.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_videoio.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_plot.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_datasets.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_imgcodecs.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_text.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_ml.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_dnn.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_video.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_calib3d.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_features2d.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_flann.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_imgproc.so.4.5.0
bin/opencv_test_stereo: lib/libopencv_core.so.4.5.0
bin/opencv_test_stereo: modules/stereo/CMakeFiles/opencv_test_stereo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../bin/opencv_test_stereo"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_stereo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/stereo/CMakeFiles/opencv_test_stereo.dir/build: bin/opencv_test_stereo

.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/build

modules/stereo/CMakeFiles/opencv_test_stereo.dir/requires: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_block_matching.cpp.o.requires
modules/stereo/CMakeFiles/opencv_test_stereo.dir/requires: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_descriptors.cpp.o.requires
modules/stereo/CMakeFiles/opencv_test_stereo.dir/requires: modules/stereo/CMakeFiles/opencv_test_stereo.dir/test/test_main.cpp.o.requires

.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/requires

modules/stereo/CMakeFiles/opencv_test_stereo.dir/clean:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_stereo.dir/cmake_clean.cmake
.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/clean

modules/stereo/CMakeFiles/opencv_test_stereo.dir/depend:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bjy/FaceRecSys/thirdparty/opencv /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/stereo /home/bjy/FaceRecSys/thirdparty/opencv/build /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/stereo/CMakeFiles/opencv_test_stereo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/stereo/CMakeFiles/opencv_test_stereo.dir/depend

