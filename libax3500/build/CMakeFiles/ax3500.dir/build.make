# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yam/ros_workspace/labo/libax3500

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yam/ros_workspace/labo/libax3500/build

# Include any dependencies generated for this target.
include CMakeFiles/ax3500.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ax3500.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ax3500.dir/flags.make

CMakeFiles/ax3500.dir/src/AX3500.o: CMakeFiles/ax3500.dir/flags.make
CMakeFiles/ax3500.dir/src/AX3500.o: ../src/AX3500.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/yam/ros_workspace/labo/libax3500/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ax3500.dir/src/AX3500.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ax3500.dir/src/AX3500.o -c /home/yam/ros_workspace/labo/libax3500/src/AX3500.cpp

CMakeFiles/ax3500.dir/src/AX3500.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ax3500.dir/src/AX3500.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/yam/ros_workspace/labo/libax3500/src/AX3500.cpp > CMakeFiles/ax3500.dir/src/AX3500.i

CMakeFiles/ax3500.dir/src/AX3500.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ax3500.dir/src/AX3500.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/yam/ros_workspace/labo/libax3500/src/AX3500.cpp -o CMakeFiles/ax3500.dir/src/AX3500.s

CMakeFiles/ax3500.dir/src/AX3500.o.requires:
.PHONY : CMakeFiles/ax3500.dir/src/AX3500.o.requires

CMakeFiles/ax3500.dir/src/AX3500.o.provides: CMakeFiles/ax3500.dir/src/AX3500.o.requires
	$(MAKE) -f CMakeFiles/ax3500.dir/build.make CMakeFiles/ax3500.dir/src/AX3500.o.provides.build
.PHONY : CMakeFiles/ax3500.dir/src/AX3500.o.provides

CMakeFiles/ax3500.dir/src/AX3500.o.provides.build: CMakeFiles/ax3500.dir/src/AX3500.o

# Object files for target ax3500
ax3500_OBJECTS = \
"CMakeFiles/ax3500.dir/src/AX3500.o"

# External object files for target ax3500
ax3500_EXTERNAL_OBJECTS =

../lib/libax3500.a: CMakeFiles/ax3500.dir/src/AX3500.o
../lib/libax3500.a: CMakeFiles/ax3500.dir/build.make
../lib/libax3500.a: CMakeFiles/ax3500.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library ../lib/libax3500.a"
	$(CMAKE_COMMAND) -P CMakeFiles/ax3500.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ax3500.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ax3500.dir/build: ../lib/libax3500.a
.PHONY : CMakeFiles/ax3500.dir/build

CMakeFiles/ax3500.dir/requires: CMakeFiles/ax3500.dir/src/AX3500.o.requires
.PHONY : CMakeFiles/ax3500.dir/requires

CMakeFiles/ax3500.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ax3500.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ax3500.dir/clean

CMakeFiles/ax3500.dir/depend:
	cd /home/yam/ros_workspace/labo/libax3500/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yam/ros_workspace/labo/libax3500 /home/yam/ros_workspace/labo/libax3500 /home/yam/ros_workspace/labo/libax3500/build /home/yam/ros_workspace/labo/libax3500/build /home/yam/ros_workspace/labo/libax3500/build/CMakeFiles/ax3500.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ax3500.dir/depend

