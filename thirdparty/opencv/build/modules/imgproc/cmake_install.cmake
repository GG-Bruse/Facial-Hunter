# Install script for directory: /home/bjy/FaceRecSys/thirdparty/opencv/modules/imgproc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/home/bjy/FaceRecSys/thirdparty/opencv/build/modules/imgproc/CMakeFiles/CMakeRelink.dir/libopencv_imgproc.so.4.5.0"
    "/home/bjy/FaceRecSys/thirdparty/opencv/build/modules/imgproc/CMakeFiles/CMakeRelink.dir/libopencv_imgproc.so.4.5"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/home/bjy/FaceRecSys/thirdparty/opencv/build/modules/imgproc/CMakeFiles/CMakeRelink.dir/libopencv_imgproc.so")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/modules/imgproc/include/opencv2/imgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/modules/imgproc/include/opencv2/imgproc/imgproc.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/modules/imgproc/include/opencv2/imgproc/imgproc_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/modules/imgproc/include/opencv2/imgproc/types_c.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc/hal" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/modules/imgproc/include/opencv2/imgproc/hal/hal.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc/hal" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/modules/imgproc/include/opencv2/imgproc/hal/interface.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/imgproc/detail" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/modules/imgproc/include/opencv2/imgproc/detail/gcgraph.hpp")
endif()

