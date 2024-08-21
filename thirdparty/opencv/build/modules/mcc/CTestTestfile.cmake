# CMake generated Testfile for 
# Source directory: /home/bjy/FaceRecSys/thirdparty/opencv/opencv_contrib/modules/mcc
# Build directory: /home/bjy/FaceRecSys/thirdparty/opencv/build/modules/mcc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_mcc "/home/bjy/FaceRecSys/thirdparty/opencv/build/bin/opencv_test_mcc" "--gtest_output=xml:opencv_test_mcc.xml")
set_tests_properties(opencv_test_mcc PROPERTIES  LABELS "Extra;opencv_mcc;Accuracy" WORKING_DIRECTORY "/home/bjy/FaceRecSys/thirdparty/opencv/build/test-reports/accuracy")
