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
CMAKE_SOURCE_DIR = /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/parallels/CLionProjects/Homeworks/robotics_v1/build/robo_cleaner_common

# Include any dependencies generated for this target.
include CMakeFiles/robo_cleaner_common.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/robo_cleaner_common.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/robo_cleaner_common.dir/flags.make

CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.o: CMakeFiles/robo_cleaner_common.dir/flags.make
CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.o: /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common/src/message_helpers/RoboCleanerMessageHelpers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/parallels/CLionProjects/Homeworks/robotics_v1/build/robo_cleaner_common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.o -c /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common/src/message_helpers/RoboCleanerMessageHelpers.cpp

CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common/src/message_helpers/RoboCleanerMessageHelpers.cpp > CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.i

CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common/src/message_helpers/RoboCleanerMessageHelpers.cpp -o CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.s

CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.o: CMakeFiles/robo_cleaner_common.dir/flags.make
CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.o: /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common/src/defines/RoboCleanerDefines.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/parallels/CLionProjects/Homeworks/robotics_v1/build/robo_cleaner_common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.o -c /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common/src/defines/RoboCleanerDefines.cpp

CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common/src/defines/RoboCleanerDefines.cpp > CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.i

CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common/src/defines/RoboCleanerDefines.cpp -o CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.s

# Object files for target robo_cleaner_common
robo_cleaner_common_OBJECTS = \
"CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.o" \
"CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.o"

# External object files for target robo_cleaner_common
robo_cleaner_common_EXTERNAL_OBJECTS =

librobo_cleaner_common.a: CMakeFiles/robo_cleaner_common.dir/src/message_helpers/RoboCleanerMessageHelpers.cpp.o
librobo_cleaner_common.a: CMakeFiles/robo_cleaner_common.dir/src/defines/RoboCleanerDefines.cpp.o
librobo_cleaner_common.a: CMakeFiles/robo_cleaner_common.dir/build.make
librobo_cleaner_common.a: CMakeFiles/robo_cleaner_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/parallels/CLionProjects/Homeworks/robotics_v1/build/robo_cleaner_common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library librobo_cleaner_common.a"
	$(CMAKE_COMMAND) -P CMakeFiles/robo_cleaner_common.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/robo_cleaner_common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/robo_cleaner_common.dir/build: librobo_cleaner_common.a

.PHONY : CMakeFiles/robo_cleaner_common.dir/build

CMakeFiles/robo_cleaner_common.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/robo_cleaner_common.dir/cmake_clean.cmake
.PHONY : CMakeFiles/robo_cleaner_common.dir/clean

CMakeFiles/robo_cleaner_common.dir/depend:
	cd /home/parallels/CLionProjects/Homeworks/robotics_v1/build/robo_cleaner_common && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common /home/parallels/CLionProjects/Homeworks/robotics_v1/src/robo_cleaner/robo_cleaner_common /home/parallels/CLionProjects/Homeworks/robotics_v1/build/robo_cleaner_common /home/parallels/CLionProjects/Homeworks/robotics_v1/build/robo_cleaner_common /home/parallels/CLionProjects/Homeworks/robotics_v1/build/robo_cleaner_common/CMakeFiles/robo_cleaner_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/robo_cleaner_common.dir/depend

