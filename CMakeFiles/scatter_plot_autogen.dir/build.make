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

# Utility rule file for scatter_plot_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/scatter_plot_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/scatter_plot_autogen.dir/progress.make

CMakeFiles/scatter_plot_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/data/vis-on-earth-bug-fix-2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target scatter_plot"
	/data/cmake-3.20.0-linux-aarch64/cmake-3.20.0-linux-aarch64/bin/cmake -E cmake_autogen /data/vis-on-earth-bug-fix-2/CMakeFiles/scatter_plot_autogen.dir/AutogenInfo.json ""

scatter_plot_autogen: CMakeFiles/scatter_plot_autogen
scatter_plot_autogen: CMakeFiles/scatter_plot_autogen.dir/build.make
.PHONY : scatter_plot_autogen

# Rule to build all files generated by this target.
CMakeFiles/scatter_plot_autogen.dir/build: scatter_plot_autogen
.PHONY : CMakeFiles/scatter_plot_autogen.dir/build

CMakeFiles/scatter_plot_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scatter_plot_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scatter_plot_autogen.dir/clean

CMakeFiles/scatter_plot_autogen.dir/depend:
	cd /data/vis-on-earth-bug-fix-2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2/CMakeFiles/scatter_plot_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/scatter_plot_autogen.dir/depend

