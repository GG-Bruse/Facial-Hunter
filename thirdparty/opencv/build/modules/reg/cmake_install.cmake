# Install script for directory: /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg

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
    "/home/bjy/FaceRecSys/thirdparty/opencv/build/modules/reg/CMakeFiles/CMakeRelink.dir/libopencv_reg.so.4.5.0"
    "/home/bjy/FaceRecSys/thirdparty/opencv/build/modules/reg/CMakeFiles/CMakeRelink.dir/libopencv_reg.so.4.5"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/home/bjy/FaceRecSys/thirdparty/opencv/build/modules/reg/CMakeFiles/CMakeRelink.dir/libopencv_reg.so")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/map.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mapaffine.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mapper.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mappergradaffine.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mappergradeuclid.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mappergradproj.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mappergradshift.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mappergradsimilar.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mapperpyramid.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mapprojec.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/reg" TYPE FILE OPTIONAL FILES "/home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/reg/include/opencv2/reg/mapshift.hpp")
endif()

