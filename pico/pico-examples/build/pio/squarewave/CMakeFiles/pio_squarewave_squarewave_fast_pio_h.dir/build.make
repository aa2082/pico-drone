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
CMAKE_SOURCE_DIR = /home/ali/pico-drone/pico/pico-examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ali/pico-drone/pico/pico-examples/build

# Utility rule file for pio_squarewave_squarewave_fast_pio_h.

# Include the progress variables for this target.
include pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/progress.make

pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h: pio/squarewave/squarewave_fast.pio.h


pio/squarewave/squarewave_fast.pio.h: ../pio/squarewave/squarewave_fast.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ali/pico-drone/pico/pico-examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating squarewave_fast.pio.h"
	cd /home/ali/pico-drone/pico/pico-examples/build/pio/squarewave && ../../pioasm/pioasm -o c-sdk /home/ali/pico-drone/pico/pico-examples/pio/squarewave/squarewave_fast.pio /home/ali/pico-drone/pico/pico-examples/build/pio/squarewave/squarewave_fast.pio.h

pio_squarewave_squarewave_fast_pio_h: pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h
pio_squarewave_squarewave_fast_pio_h: pio/squarewave/squarewave_fast.pio.h
pio_squarewave_squarewave_fast_pio_h: pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/build.make

.PHONY : pio_squarewave_squarewave_fast_pio_h

# Rule to build all files generated by this target.
pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/build: pio_squarewave_squarewave_fast_pio_h

.PHONY : pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/build

pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/clean:
	cd /home/ali/pico-drone/pico/pico-examples/build/pio/squarewave && $(CMAKE_COMMAND) -P CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/cmake_clean.cmake
.PHONY : pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/clean

pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/depend:
	cd /home/ali/pico-drone/pico/pico-examples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ali/pico-drone/pico/pico-examples /home/ali/pico-drone/pico/pico-examples/pio/squarewave /home/ali/pico-drone/pico/pico-examples/build /home/ali/pico-drone/pico/pico-examples/build/pio/squarewave /home/ali/pico-drone/pico/pico-examples/build/pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pio/squarewave/CMakeFiles/pio_squarewave_squarewave_fast_pio_h.dir/depend

