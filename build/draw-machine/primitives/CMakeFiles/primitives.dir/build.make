# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/devtnascimento/workspace/tcc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/devtnascimento/workspace/tcc/build

# Include any dependencies generated for this target.
include draw-machine/primitives/CMakeFiles/primitives.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include draw-machine/primitives/CMakeFiles/primitives.dir/compiler_depend.make

# Include the progress variables for this target.
include draw-machine/primitives/CMakeFiles/primitives.dir/progress.make

# Include the compile flags for this target's objects.
include draw-machine/primitives/CMakeFiles/primitives.dir/flags.make

draw-machine/primitives/CMakeFiles/primitives.dir/triangle.cpp.o: draw-machine/primitives/CMakeFiles/primitives.dir/flags.make
draw-machine/primitives/CMakeFiles/primitives.dir/triangle.cpp.o: /home/devtnascimento/workspace/tcc/draw-machine/primitives/triangle.cpp
draw-machine/primitives/CMakeFiles/primitives.dir/triangle.cpp.o: draw-machine/primitives/CMakeFiles/primitives.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/devtnascimento/workspace/tcc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object draw-machine/primitives/CMakeFiles/primitives.dir/triangle.cpp.o"
	cd /home/devtnascimento/workspace/tcc/build/draw-machine/primitives && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT draw-machine/primitives/CMakeFiles/primitives.dir/triangle.cpp.o -MF CMakeFiles/primitives.dir/triangle.cpp.o.d -o CMakeFiles/primitives.dir/triangle.cpp.o -c /home/devtnascimento/workspace/tcc/draw-machine/primitives/triangle.cpp

draw-machine/primitives/CMakeFiles/primitives.dir/triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/primitives.dir/triangle.cpp.i"
	cd /home/devtnascimento/workspace/tcc/build/draw-machine/primitives && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/devtnascimento/workspace/tcc/draw-machine/primitives/triangle.cpp > CMakeFiles/primitives.dir/triangle.cpp.i

draw-machine/primitives/CMakeFiles/primitives.dir/triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/primitives.dir/triangle.cpp.s"
	cd /home/devtnascimento/workspace/tcc/build/draw-machine/primitives && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/devtnascimento/workspace/tcc/draw-machine/primitives/triangle.cpp -o CMakeFiles/primitives.dir/triangle.cpp.s

# Object files for target primitives
primitives_OBJECTS = \
"CMakeFiles/primitives.dir/triangle.cpp.o"

# External object files for target primitives
primitives_EXTERNAL_OBJECTS =

draw-machine/primitives/libprimitives.a: draw-machine/primitives/CMakeFiles/primitives.dir/triangle.cpp.o
draw-machine/primitives/libprimitives.a: draw-machine/primitives/CMakeFiles/primitives.dir/build.make
draw-machine/primitives/libprimitives.a: draw-machine/primitives/CMakeFiles/primitives.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/devtnascimento/workspace/tcc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libprimitives.a"
	cd /home/devtnascimento/workspace/tcc/build/draw-machine/primitives && $(CMAKE_COMMAND) -P CMakeFiles/primitives.dir/cmake_clean_target.cmake
	cd /home/devtnascimento/workspace/tcc/build/draw-machine/primitives && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/primitives.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
draw-machine/primitives/CMakeFiles/primitives.dir/build: draw-machine/primitives/libprimitives.a
.PHONY : draw-machine/primitives/CMakeFiles/primitives.dir/build

draw-machine/primitives/CMakeFiles/primitives.dir/clean:
	cd /home/devtnascimento/workspace/tcc/build/draw-machine/primitives && $(CMAKE_COMMAND) -P CMakeFiles/primitives.dir/cmake_clean.cmake
.PHONY : draw-machine/primitives/CMakeFiles/primitives.dir/clean

draw-machine/primitives/CMakeFiles/primitives.dir/depend:
	cd /home/devtnascimento/workspace/tcc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/devtnascimento/workspace/tcc /home/devtnascimento/workspace/tcc/draw-machine/primitives /home/devtnascimento/workspace/tcc/build /home/devtnascimento/workspace/tcc/build/draw-machine/primitives /home/devtnascimento/workspace/tcc/build/draw-machine/primitives/CMakeFiles/primitives.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : draw-machine/primitives/CMakeFiles/primitives.dir/depend
