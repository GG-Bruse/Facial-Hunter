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
include modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/depend.make

# Include the progress variables for this target.
include modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/progress.make

# Include the compile flags for this target's objects.
include modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/flags.make

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/flags.make
modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o: ../opencv_contrib/modules/fuzzy/test/test_f0.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_f0.cpp

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_f0.cpp > CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.i

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_f0.cpp -o CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.s

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o.requires:

.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o.requires

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o.provides: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o.requires
	$(MAKE) -f modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/build.make modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o.provides.build
.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o.provides

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o.provides.build: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o


modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/flags.make
modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o: ../opencv_contrib/modules/fuzzy/test/test_f1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_f1.cpp

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_f1.cpp > CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.i

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_f1.cpp -o CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.s

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o.requires:

.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o.requires

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o.provides: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o.requires
	$(MAKE) -f modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/build.make modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o.provides.build
.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o.provides

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o.provides.build: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o


modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/flags.make
modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o: ../opencv_contrib/modules/fuzzy/test/test_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_image.cpp

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_image.cpp > CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.i

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_image.cpp -o CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.s

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o.requires:

.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o.requires

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o.provides: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o.requires
	$(MAKE) -f modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/build.make modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o.provides.build
.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o.provides

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o.provides.build: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o


modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/flags.make
modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o: ../opencv_contrib/modules/fuzzy/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o -c /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_main.cpp

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.i"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_main.cpp > CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.i

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.s"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy/test/test_main.cpp -o CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.s

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o.requires:

.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o.requires

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o.provides: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o.requires
	$(MAKE) -f modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/build.make modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o.provides.build
.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o.provides

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o.provides.build: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o


# Object files for target opencv_test_fuzzy
opencv_test_fuzzy_OBJECTS = \
"CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o" \
"CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o" \
"CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o" \
"CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o"

# External object files for target opencv_test_fuzzy
opencv_test_fuzzy_EXTERNAL_OBJECTS =

bin/opencv_test_fuzzy: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o
bin/opencv_test_fuzzy: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o
bin/opencv_test_fuzzy: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o
bin/opencv_test_fuzzy: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o
bin/opencv_test_fuzzy: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/build.make
bin/opencv_test_fuzzy: lib/libopencv_ts.a
bin/opencv_test_fuzzy: lib/libopencv_fuzzy.so.4.5.0
bin/opencv_test_fuzzy: lib/libopencv_highgui.so.4.5.0
bin/opencv_test_fuzzy: lib/libopencv_videoio.so.4.5.0
bin/opencv_test_fuzzy: lib/libopencv_imgcodecs.so.4.5.0
bin/opencv_test_fuzzy: lib/libopencv_imgproc.so.4.5.0
bin/opencv_test_fuzzy: lib/libopencv_core.so.4.5.0
bin/opencv_test_fuzzy: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bjy/FaceRecSys/thirdparty/opencv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../bin/opencv_test_fuzzy"
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_fuzzy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/build: bin/opencv_test_fuzzy

.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/build

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/requires: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f0.cpp.o.requires
modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/requires: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_f1.cpp.o.requires
modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/requires: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_image.cpp.o.requires
modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/requires: modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/test/test_main.cpp.o.requires

.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/requires

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/clean:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_fuzzy.dir/cmake_clean.cmake
.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/clean

modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/depend:
	cd /home/bjy/FaceRecSys/thirdparty/opencv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bjy/FaceRecSys/thirdparty/opencv /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy /home/bjy/FaceRecSys/thirdparty/opencv/build /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/fuzzy/CMakeFiles/opencv_test_fuzzy.dir/depend

