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

# Include any dependencies generated for this target.
include CMakeFiles/heatmap_rendering.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/heatmap_rendering.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/heatmap_rendering.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/heatmap_rendering.dir/flags.make

CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.o: CMakeFiles/heatmap_rendering.dir/flags.make
CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.o: heatmap_rendering_autogen/mocs_compilation.cpp
CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.o: CMakeFiles/heatmap_rendering.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/vis-on-earth-bug-fix-2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.o -MF CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.o -c /data/vis-on-earth-bug-fix-2/heatmap_rendering_autogen/mocs_compilation.cpp

CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/vis-on-earth-bug-fix-2/heatmap_rendering_autogen/mocs_compilation.cpp > CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.i

CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/vis-on-earth-bug-fix-2/heatmap_rendering_autogen/mocs_compilation.cpp -o CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.s

CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.o: CMakeFiles/heatmap_rendering.dir/flags.make
CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.o: app/heatmap_rendering/main.cpp
CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.o: CMakeFiles/heatmap_rendering.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/vis-on-earth-bug-fix-2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.o -MF CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.o.d -o CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.o -c /data/vis-on-earth-bug-fix-2/app/heatmap_rendering/main.cpp

CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/vis-on-earth-bug-fix-2/app/heatmap_rendering/main.cpp > CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.i

CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/vis-on-earth-bug-fix-2/app/heatmap_rendering/main.cpp -o CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.s

# Object files for target heatmap_rendering
heatmap_rendering_OBJECTS = \
"CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.o"

# External object files for target heatmap_rendering
heatmap_rendering_EXTERNAL_OBJECTS =

bin/heatmap_rendering: CMakeFiles/heatmap_rendering.dir/heatmap_rendering_autogen/mocs_compilation.cpp.o
bin/heatmap_rendering: CMakeFiles/heatmap_rendering.dir/app/heatmap_rendering/main.cpp.o
bin/heatmap_rendering: CMakeFiles/heatmap_rendering.dir/build.make
bin/heatmap_rendering: libvis4earth.a
bin/heatmap_rendering: /usr/lib/aarch64-linux-gnu/libQt5Charts.so.5.12.12
bin/heatmap_rendering: /usr/lib/aarch64-linux-gnu/libQt5Widgets.so.5.12.12
bin/heatmap_rendering: /usr/lib/aarch64-linux-gnu/libQt5Gui.so.5.12.12
bin/heatmap_rendering: /usr/lib/aarch64-linux-gnu/libQt5Core.so.5.12.12
bin/heatmap_rendering: CMakeFiles/heatmap_rendering.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/vis-on-earth-bug-fix-2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable bin/heatmap_rendering"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/heatmap_rendering.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/heatmap_rendering.dir/build: bin/heatmap_rendering
.PHONY : CMakeFiles/heatmap_rendering.dir/build

CMakeFiles/heatmap_rendering.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/heatmap_rendering.dir/cmake_clean.cmake
.PHONY : CMakeFiles/heatmap_rendering.dir/clean

CMakeFiles/heatmap_rendering.dir/depend:
	cd /data/vis-on-earth-bug-fix-2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2 /data/vis-on-earth-bug-fix-2/CMakeFiles/heatmap_rendering.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/heatmap_rendering.dir/depend

