# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/dongshin/code-repository/xti300_driver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dongshin/code-repository/xti300_driver/build

# Include any dependencies generated for this target.
include src/CMakeFiles/xti300_drv.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/xti300_drv.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/xti300_drv.dir/flags.make

src/CMakeFiles/xti300_drv.dir/xti300.cpp.o: src/CMakeFiles/xti300_drv.dir/flags.make
src/CMakeFiles/xti300_drv.dir/xti300.cpp.o: ../src/xti300.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dongshin/code-repository/xti300_driver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/xti300_drv.dir/xti300.cpp.o"
	cd /home/dongshin/code-repository/xti300_driver/build/src && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xti300_drv.dir/xti300.cpp.o -c /home/dongshin/code-repository/xti300_driver/src/xti300.cpp

src/CMakeFiles/xti300_drv.dir/xti300.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xti300_drv.dir/xti300.cpp.i"
	cd /home/dongshin/code-repository/xti300_driver/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dongshin/code-repository/xti300_driver/src/xti300.cpp > CMakeFiles/xti300_drv.dir/xti300.cpp.i

src/CMakeFiles/xti300_drv.dir/xti300.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xti300_drv.dir/xti300.cpp.s"
	cd /home/dongshin/code-repository/xti300_driver/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dongshin/code-repository/xti300_driver/src/xti300.cpp -o CMakeFiles/xti300_drv.dir/xti300.cpp.s

src/CMakeFiles/xti300_drv.dir/xti300.cpp.o.requires:

.PHONY : src/CMakeFiles/xti300_drv.dir/xti300.cpp.o.requires

src/CMakeFiles/xti300_drv.dir/xti300.cpp.o.provides: src/CMakeFiles/xti300_drv.dir/xti300.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/xti300_drv.dir/build.make src/CMakeFiles/xti300_drv.dir/xti300.cpp.o.provides.build
.PHONY : src/CMakeFiles/xti300_drv.dir/xti300.cpp.o.provides

src/CMakeFiles/xti300_drv.dir/xti300.cpp.o.provides.build: src/CMakeFiles/xti300_drv.dir/xti300.cpp.o


# Object files for target xti300_drv
xti300_drv_OBJECTS = \
"CMakeFiles/xti300_drv.dir/xti300.cpp.o"

# External object files for target xti300_drv
xti300_drv_EXTERNAL_OBJECTS =

src/xti300_drv: src/CMakeFiles/xti300_drv.dir/xti300.cpp.o
src/xti300_drv: src/CMakeFiles/xti300_drv.dir/build.make
src/xti300_drv: src/libxti300.a
src/xti300_drv: src/libxcommunication.a
src/xti300_drv: src/libxstypes.a
src/xti300_drv: src/CMakeFiles/xti300_drv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dongshin/code-repository/xti300_driver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable xti300_drv"
	cd /home/dongshin/code-repository/xti300_driver/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xti300_drv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/xti300_drv.dir/build: src/xti300_drv

.PHONY : src/CMakeFiles/xti300_drv.dir/build

src/CMakeFiles/xti300_drv.dir/requires: src/CMakeFiles/xti300_drv.dir/xti300.cpp.o.requires

.PHONY : src/CMakeFiles/xti300_drv.dir/requires

src/CMakeFiles/xti300_drv.dir/clean:
	cd /home/dongshin/code-repository/xti300_driver/build/src && $(CMAKE_COMMAND) -P CMakeFiles/xti300_drv.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/xti300_drv.dir/clean

src/CMakeFiles/xti300_drv.dir/depend:
	cd /home/dongshin/code-repository/xti300_driver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dongshin/code-repository/xti300_driver /home/dongshin/code-repository/xti300_driver/src /home/dongshin/code-repository/xti300_driver/build /home/dongshin/code-repository/xti300_driver/build/src /home/dongshin/code-repository/xti300_driver/build/src/CMakeFiles/xti300_drv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/xti300_drv.dir/depend
