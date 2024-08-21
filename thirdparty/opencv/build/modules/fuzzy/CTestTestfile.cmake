# CMake generated Testfile for 
# Source directory: /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/fuzzy
# Build directory: /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/fuzzy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_fuzzy "/home/bjy/FaceRecSys/thirdparty/opencv/build/bin/opencv_test_fuzzy" "--gtest_output=xml:opencv_test_fuzzy.xml")
set_tests_properties(opencv_test_fuzzy PROPERTIES  LABELS "Extra;opencv_fuzzy;Accuracy" WORKING_DIRECTORY "/home/bjy/FaceRecSys/thirdparty/opencv/build/test-reports/accuracy")
