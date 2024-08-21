# CMake generated Testfile for 
# Source directory: /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/ximgproc
# Build directory: /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/ximgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_ximgproc "/home/bjy/FaceRecSys/thirdparty/opencv/build/bin/opencv_test_ximgproc" "--gtest_output=xml:opencv_test_ximgproc.xml")
set_tests_properties(opencv_test_ximgproc PROPERTIES  LABELS "Extra;opencv_ximgproc;Accuracy" WORKING_DIRECTORY "/home/bjy/FaceRecSys/thirdparty/opencv/build/test-reports/accuracy")
add_test(opencv_perf_ximgproc "/home/bjy/FaceRecSys/thirdparty/opencv/build/bin/opencv_perf_ximgproc" "--gtest_output=xml:opencv_perf_ximgproc.xml")
set_tests_properties(opencv_perf_ximgproc PROPERTIES  LABELS "Extra;opencv_ximgproc;Performance" WORKING_DIRECTORY "/home/bjy/FaceRecSys/thirdparty/opencv/build/test-reports/performance")
add_test(opencv_sanity_ximgproc "/home/bjy/FaceRecSys/thirdparty/opencv/build/bin/opencv_perf_ximgproc" "--gtest_output=xml:opencv_perf_ximgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_ximgproc PROPERTIES  LABELS "Extra;opencv_ximgproc;Sanity" WORKING_DIRECTORY "/home/bjy/FaceRecSys/thirdparty/opencv/build/test-reports/sanity")
