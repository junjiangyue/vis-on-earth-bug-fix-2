# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /data/cmake-3.20.0-linux-aarch64/cmake-3.20.0-linux-aarch64/bin/cmake

# The command to remove a file.
RM = /data/cmake-3.20.0-linux-aarch64/cmake-3.20.0-linux-aarch64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data/vis-on-earth-bug-fix-2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/vis-on-earth-bug-fix-2

# Utility rule file for cylinder_chart_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/cylinder_chart_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cylinder_chart_autogen.dir/progress.make

CMakeFiles/cylinder_chart_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/data/vis-on-earth-bug-fix-2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target cylinder_chart"
	/data/cmake-3.20.0-linux-aarch64/cmake-3.20.0-linux-aarch64/bin/cmake -E cmake_autogen /data/vis-on-earth-bug-fix-2/CMakeFiles/cylinder_chart_autogen.dir/AutogenInfo.json ""

cylinder_chart_autogen: CMakeFiles/cylinder_chart_autogen
cylinder_chart_autogen: CMakeFiles/cylinder_chart_autogen.dir/build.make
.PHONY : cylinder_chart_autogen

# Rule to build all files generated by this target.
CMakeFiles/cylinder_chart_autogen.dir/build: cylinder_chart_autogen
.PHONY : CMakeFiles/cylinder_chart_autogen.dir/build

CMakeFiles/cylinder_chart_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cylinder_chart_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cylinder_chart_autogen.dir/clean

CMakeFiles/cylinder_chart_autogen.dir/depend:
	cd /data/vis-on-earth-bug-fix-2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2/CMakeFiles/cylinder_chart_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cylinder_chart_autogen.dir/depend

