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
CMAKE_SOURCE_DIR = /home/ali/Documents/pico_drone/pico/pico-examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ali/Documents/pico_drone/pico/pico-examples/build

# Utility rule file for pio_spi_loopback_spi_pio_h.

# Include the progress variables for this target.
include pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h.dir/progress.make

pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h: pio/spi/spi.pio.h


pio/spi/spi.pio.h: ../pio/spi/spi.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ali/Documents/pico_drone/pico/pico-examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating spi.pio.h"
	cd /home/ali/Documents/pico_drone/pico/pico-examples/build/pio/spi && ../../pioasm/pioasm -o c-sdk /home/ali/Documents/pico_drone/pico/pico-examples/pio/spi/spi.pio /home/ali/Documents/pico_drone/pico/pico-examples/build/pio/spi/spi.pio.h

pio_spi_loopback_spi_pio_h: pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h
pio_spi_loopback_spi_pio_h: pio/spi/spi.pio.h
pio_spi_loopback_spi_pio_h: pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h.dir/build.make

.PHONY : pio_spi_loopback_spi_pio_h

# Rule to build all files generated by this target.
pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h.dir/build: pio_spi_loopback_spi_pio_h

.PHONY : pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h.dir/build

pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h.dir/clean:
	cd /home/ali/Documents/pico_drone/pico/pico-examples/build/pio/spi && $(CMAKE_COMMAND) -P CMakeFiles/pio_spi_loopback_spi_pio_h.dir/cmake_clean.cmake
.PHONY : pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h.dir/clean

pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h.dir/depend:
	cd /home/ali/Documents/pico_drone/pico/pico-examples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ali/Documents/pico_drone/pico/pico-examples /home/ali/Documents/pico_drone/pico/pico-examples/pio/spi /home/ali/Documents/pico_drone/pico/pico-examples/build /home/ali/Documents/pico_drone/pico/pico-examples/build/pio/spi /home/ali/Documents/pico_drone/pico/pico-examples/build/pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pio/spi/CMakeFiles/pio_spi_loopback_spi_pio_h.dir/depend

