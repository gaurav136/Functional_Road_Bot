# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/deps/evision

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_evision

# Include any dependencies generated for this target.
include CMakeFiles/evision.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/evision.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/evision.dir/flags.make

CMakeFiles/evision.dir/c_src/evision.cpp.o: CMakeFiles/evision.dir/flags.make
CMakeFiles/evision.dir/c_src/evision.cpp.o: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/deps/evision/c_src/evision.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_evision/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/evision.dir/c_src/evision.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/evision.dir/c_src/evision.cpp.o -c /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/deps/evision/c_src/evision.cpp

CMakeFiles/evision.dir/c_src/evision.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/evision.dir/c_src/evision.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/deps/evision/c_src/evision.cpp > CMakeFiles/evision.dir/c_src/evision.cpp.i

CMakeFiles/evision.dir/c_src/evision.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/evision.dir/c_src/evision.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/deps/evision/c_src/evision.cpp -o CMakeFiles/evision.dir/c_src/evision.cpp.s

# Object files for target evision
evision_OBJECTS = \
"CMakeFiles/evision.dir/c_src/evision.cpp.o"

# External object files for target evision
evision_EXTERNAL_OBJECTS =

evision.so: CMakeFiles/evision.dir/c_src/evision.cpp.o
evision.so: CMakeFiles/evision.dir/build.make
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_highgui.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_ml.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_objdetect.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_photo.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_stitching.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_video.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_videoio.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_imgcodecs.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_calib3d.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_dnn.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_features2d.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_flann.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_imgproc.so.4.6.0
evision.so: /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/priv/lib/libopencv_core.so.4.6.0
evision.so: CMakeFiles/evision.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_evision/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library evision.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/evision.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/evision.dir/build: evision.so

.PHONY : CMakeFiles/evision.dir/build

CMakeFiles/evision.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/evision.dir/cmake_clean.cmake
.PHONY : CMakeFiles/evision.dir/clean

CMakeFiles/evision.dir/depend:
	cd /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_evision && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/deps/evision /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/deps/evision /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_evision /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_evision /home/dark-horse/Documents/E-yanta_2022/task1b_number_detection/_build/dev/lib/evision/cmake_evision/CMakeFiles/evision.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/evision.dir/depend

