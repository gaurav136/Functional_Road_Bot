# Install script for directory: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/deps/evision/3rd_party/opencv/opencv-4.6.0/modules/python

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_opencv_4.6.0/modules/.firstpass/python/bindings/cmake_install.cmake")
  include("/home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_opencv_4.6.0/modules/.firstpass/python/test/cmake_install.cmake")
  include("/home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_opencv_4.6.0/modules/.firstpass/python/python2/cmake_install.cmake")
  include("/home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_opencv_4.6.0/modules/.firstpass/python/python3/cmake_install.cmake")

endif()

