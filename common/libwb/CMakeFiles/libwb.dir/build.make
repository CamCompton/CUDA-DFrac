# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/cam/templates/libwb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cam/templates/libwb

# Include any dependencies generated for this target.
include CMakeFiles/libwb.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libwb.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libwb.dir/flags.make

CMakeFiles/libwb.dir/wbFile.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbFile.cpp.o: wbFile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libwb.dir/wbFile.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbFile.cpp.o -c /home/cam/templates/libwb/wbFile.cpp

CMakeFiles/libwb.dir/wbFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbFile.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbFile.cpp > CMakeFiles/libwb.dir/wbFile.cpp.i

CMakeFiles/libwb.dir/wbFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbFile.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbFile.cpp -o CMakeFiles/libwb.dir/wbFile.cpp.s

CMakeFiles/libwb.dir/wbFile.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbFile.cpp.o.requires

CMakeFiles/libwb.dir/wbFile.cpp.o.provides: CMakeFiles/libwb.dir/wbFile.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbFile.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbFile.cpp.o.provides

CMakeFiles/libwb.dir/wbFile.cpp.o.provides.build: CMakeFiles/libwb.dir/wbFile.cpp.o


CMakeFiles/libwb.dir/wbExit.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbExit.cpp.o: wbExit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/libwb.dir/wbExit.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbExit.cpp.o -c /home/cam/templates/libwb/wbExit.cpp

CMakeFiles/libwb.dir/wbExit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbExit.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbExit.cpp > CMakeFiles/libwb.dir/wbExit.cpp.i

CMakeFiles/libwb.dir/wbExit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbExit.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbExit.cpp -o CMakeFiles/libwb.dir/wbExit.cpp.s

CMakeFiles/libwb.dir/wbExit.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbExit.cpp.o.requires

CMakeFiles/libwb.dir/wbExit.cpp.o.provides: CMakeFiles/libwb.dir/wbExit.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbExit.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbExit.cpp.o.provides

CMakeFiles/libwb.dir/wbExit.cpp.o.provides.build: CMakeFiles/libwb.dir/wbExit.cpp.o


CMakeFiles/libwb.dir/wbCUDA.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbCUDA.cpp.o: wbCUDA.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/libwb.dir/wbCUDA.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbCUDA.cpp.o -c /home/cam/templates/libwb/wbCUDA.cpp

CMakeFiles/libwb.dir/wbCUDA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbCUDA.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbCUDA.cpp > CMakeFiles/libwb.dir/wbCUDA.cpp.i

CMakeFiles/libwb.dir/wbCUDA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbCUDA.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbCUDA.cpp -o CMakeFiles/libwb.dir/wbCUDA.cpp.s

CMakeFiles/libwb.dir/wbCUDA.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbCUDA.cpp.o.requires

CMakeFiles/libwb.dir/wbCUDA.cpp.o.provides: CMakeFiles/libwb.dir/wbCUDA.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbCUDA.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbCUDA.cpp.o.provides

CMakeFiles/libwb.dir/wbCUDA.cpp.o.provides.build: CMakeFiles/libwb.dir/wbCUDA.cpp.o


CMakeFiles/libwb.dir/wbSparse.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbSparse.cpp.o: wbSparse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/libwb.dir/wbSparse.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbSparse.cpp.o -c /home/cam/templates/libwb/wbSparse.cpp

CMakeFiles/libwb.dir/wbSparse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbSparse.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbSparse.cpp > CMakeFiles/libwb.dir/wbSparse.cpp.i

CMakeFiles/libwb.dir/wbSparse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbSparse.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbSparse.cpp -o CMakeFiles/libwb.dir/wbSparse.cpp.s

CMakeFiles/libwb.dir/wbSparse.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbSparse.cpp.o.requires

CMakeFiles/libwb.dir/wbSparse.cpp.o.provides: CMakeFiles/libwb.dir/wbSparse.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbSparse.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbSparse.cpp.o.provides

CMakeFiles/libwb.dir/wbSparse.cpp.o.provides.build: CMakeFiles/libwb.dir/wbSparse.cpp.o


CMakeFiles/libwb.dir/wbPath.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbPath.cpp.o: wbPath.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/libwb.dir/wbPath.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbPath.cpp.o -c /home/cam/templates/libwb/wbPath.cpp

CMakeFiles/libwb.dir/wbPath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbPath.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbPath.cpp > CMakeFiles/libwb.dir/wbPath.cpp.i

CMakeFiles/libwb.dir/wbPath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbPath.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbPath.cpp -o CMakeFiles/libwb.dir/wbPath.cpp.s

CMakeFiles/libwb.dir/wbPath.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbPath.cpp.o.requires

CMakeFiles/libwb.dir/wbPath.cpp.o.provides: CMakeFiles/libwb.dir/wbPath.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbPath.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbPath.cpp.o.provides

CMakeFiles/libwb.dir/wbPath.cpp.o.provides.build: CMakeFiles/libwb.dir/wbPath.cpp.o


CMakeFiles/libwb.dir/wbPPM.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbPPM.cpp.o: wbPPM.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/libwb.dir/wbPPM.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbPPM.cpp.o -c /home/cam/templates/libwb/wbPPM.cpp

CMakeFiles/libwb.dir/wbPPM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbPPM.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbPPM.cpp > CMakeFiles/libwb.dir/wbPPM.cpp.i

CMakeFiles/libwb.dir/wbPPM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbPPM.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbPPM.cpp -o CMakeFiles/libwb.dir/wbPPM.cpp.s

CMakeFiles/libwb.dir/wbPPM.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbPPM.cpp.o.requires

CMakeFiles/libwb.dir/wbPPM.cpp.o.provides: CMakeFiles/libwb.dir/wbPPM.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbPPM.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbPPM.cpp.o.provides

CMakeFiles/libwb.dir/wbPPM.cpp.o.provides.build: CMakeFiles/libwb.dir/wbPPM.cpp.o


CMakeFiles/libwb.dir/wbSolution.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbSolution.cpp.o: wbSolution.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/libwb.dir/wbSolution.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbSolution.cpp.o -c /home/cam/templates/libwb/wbSolution.cpp

CMakeFiles/libwb.dir/wbSolution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbSolution.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbSolution.cpp > CMakeFiles/libwb.dir/wbSolution.cpp.i

CMakeFiles/libwb.dir/wbSolution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbSolution.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbSolution.cpp -o CMakeFiles/libwb.dir/wbSolution.cpp.s

CMakeFiles/libwb.dir/wbSolution.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbSolution.cpp.o.requires

CMakeFiles/libwb.dir/wbSolution.cpp.o.provides: CMakeFiles/libwb.dir/wbSolution.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbSolution.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbSolution.cpp.o.provides

CMakeFiles/libwb.dir/wbSolution.cpp.o.provides.build: CMakeFiles/libwb.dir/wbSolution.cpp.o


CMakeFiles/libwb.dir/wbUtils.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbUtils.cpp.o: wbUtils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/libwb.dir/wbUtils.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbUtils.cpp.o -c /home/cam/templates/libwb/wbUtils.cpp

CMakeFiles/libwb.dir/wbUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbUtils.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbUtils.cpp > CMakeFiles/libwb.dir/wbUtils.cpp.i

CMakeFiles/libwb.dir/wbUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbUtils.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbUtils.cpp -o CMakeFiles/libwb.dir/wbUtils.cpp.s

CMakeFiles/libwb.dir/wbUtils.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbUtils.cpp.o.requires

CMakeFiles/libwb.dir/wbUtils.cpp.o.provides: CMakeFiles/libwb.dir/wbUtils.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbUtils.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbUtils.cpp.o.provides

CMakeFiles/libwb.dir/wbUtils.cpp.o.provides.build: CMakeFiles/libwb.dir/wbUtils.cpp.o


CMakeFiles/libwb.dir/wbInit.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbInit.cpp.o: wbInit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/libwb.dir/wbInit.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbInit.cpp.o -c /home/cam/templates/libwb/wbInit.cpp

CMakeFiles/libwb.dir/wbInit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbInit.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbInit.cpp > CMakeFiles/libwb.dir/wbInit.cpp.i

CMakeFiles/libwb.dir/wbInit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbInit.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbInit.cpp -o CMakeFiles/libwb.dir/wbInit.cpp.s

CMakeFiles/libwb.dir/wbInit.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbInit.cpp.o.requires

CMakeFiles/libwb.dir/wbInit.cpp.o.provides: CMakeFiles/libwb.dir/wbInit.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbInit.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbInit.cpp.o.provides

CMakeFiles/libwb.dir/wbInit.cpp.o.provides.build: CMakeFiles/libwb.dir/wbInit.cpp.o


CMakeFiles/libwb.dir/wbDirectory.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbDirectory.cpp.o: wbDirectory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/libwb.dir/wbDirectory.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbDirectory.cpp.o -c /home/cam/templates/libwb/wbDirectory.cpp

CMakeFiles/libwb.dir/wbDirectory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbDirectory.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbDirectory.cpp > CMakeFiles/libwb.dir/wbDirectory.cpp.i

CMakeFiles/libwb.dir/wbDirectory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbDirectory.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbDirectory.cpp -o CMakeFiles/libwb.dir/wbDirectory.cpp.s

CMakeFiles/libwb.dir/wbDirectory.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbDirectory.cpp.o.requires

CMakeFiles/libwb.dir/wbDirectory.cpp.o.provides: CMakeFiles/libwb.dir/wbDirectory.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbDirectory.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbDirectory.cpp.o.provides

CMakeFiles/libwb.dir/wbDirectory.cpp.o.provides.build: CMakeFiles/libwb.dir/wbDirectory.cpp.o


CMakeFiles/libwb.dir/wbTimer.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbTimer.cpp.o: wbTimer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/libwb.dir/wbTimer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbTimer.cpp.o -c /home/cam/templates/libwb/wbTimer.cpp

CMakeFiles/libwb.dir/wbTimer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbTimer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbTimer.cpp > CMakeFiles/libwb.dir/wbTimer.cpp.i

CMakeFiles/libwb.dir/wbTimer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbTimer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbTimer.cpp -o CMakeFiles/libwb.dir/wbTimer.cpp.s

CMakeFiles/libwb.dir/wbTimer.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbTimer.cpp.o.requires

CMakeFiles/libwb.dir/wbTimer.cpp.o.provides: CMakeFiles/libwb.dir/wbTimer.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbTimer.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbTimer.cpp.o.provides

CMakeFiles/libwb.dir/wbTimer.cpp.o.provides.build: CMakeFiles/libwb.dir/wbTimer.cpp.o


CMakeFiles/libwb.dir/wbDataset.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbDataset.cpp.o: wbDataset.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/libwb.dir/wbDataset.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbDataset.cpp.o -c /home/cam/templates/libwb/wbDataset.cpp

CMakeFiles/libwb.dir/wbDataset.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbDataset.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbDataset.cpp > CMakeFiles/libwb.dir/wbDataset.cpp.i

CMakeFiles/libwb.dir/wbDataset.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbDataset.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbDataset.cpp -o CMakeFiles/libwb.dir/wbDataset.cpp.s

CMakeFiles/libwb.dir/wbDataset.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbDataset.cpp.o.requires

CMakeFiles/libwb.dir/wbDataset.cpp.o.provides: CMakeFiles/libwb.dir/wbDataset.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbDataset.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbDataset.cpp.o.provides

CMakeFiles/libwb.dir/wbDataset.cpp.o.provides.build: CMakeFiles/libwb.dir/wbDataset.cpp.o


CMakeFiles/libwb.dir/wbArg.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbArg.cpp.o: wbArg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/libwb.dir/wbArg.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbArg.cpp.o -c /home/cam/templates/libwb/wbArg.cpp

CMakeFiles/libwb.dir/wbArg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbArg.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbArg.cpp > CMakeFiles/libwb.dir/wbArg.cpp.i

CMakeFiles/libwb.dir/wbArg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbArg.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbArg.cpp -o CMakeFiles/libwb.dir/wbArg.cpp.s

CMakeFiles/libwb.dir/wbArg.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbArg.cpp.o.requires

CMakeFiles/libwb.dir/wbArg.cpp.o.provides: CMakeFiles/libwb.dir/wbArg.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbArg.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbArg.cpp.o.provides

CMakeFiles/libwb.dir/wbArg.cpp.o.provides.build: CMakeFiles/libwb.dir/wbArg.cpp.o


CMakeFiles/libwb.dir/wbImage.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbImage.cpp.o: wbImage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/libwb.dir/wbImage.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbImage.cpp.o -c /home/cam/templates/libwb/wbImage.cpp

CMakeFiles/libwb.dir/wbImage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbImage.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbImage.cpp > CMakeFiles/libwb.dir/wbImage.cpp.i

CMakeFiles/libwb.dir/wbImage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbImage.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbImage.cpp -o CMakeFiles/libwb.dir/wbImage.cpp.s

CMakeFiles/libwb.dir/wbImage.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbImage.cpp.o.requires

CMakeFiles/libwb.dir/wbImage.cpp.o.provides: CMakeFiles/libwb.dir/wbImage.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbImage.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbImage.cpp.o.provides

CMakeFiles/libwb.dir/wbImage.cpp.o.provides.build: CMakeFiles/libwb.dir/wbImage.cpp.o


CMakeFiles/libwb.dir/wbMPI.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbMPI.cpp.o: wbMPI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/libwb.dir/wbMPI.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbMPI.cpp.o -c /home/cam/templates/libwb/wbMPI.cpp

CMakeFiles/libwb.dir/wbMPI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbMPI.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbMPI.cpp > CMakeFiles/libwb.dir/wbMPI.cpp.i

CMakeFiles/libwb.dir/wbMPI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbMPI.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbMPI.cpp -o CMakeFiles/libwb.dir/wbMPI.cpp.s

CMakeFiles/libwb.dir/wbMPI.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbMPI.cpp.o.requires

CMakeFiles/libwb.dir/wbMPI.cpp.o.provides: CMakeFiles/libwb.dir/wbMPI.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbMPI.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbMPI.cpp.o.provides

CMakeFiles/libwb.dir/wbMPI.cpp.o.provides.build: CMakeFiles/libwb.dir/wbMPI.cpp.o


CMakeFiles/libwb.dir/wbExport.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbExport.cpp.o: wbExport.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/libwb.dir/wbExport.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbExport.cpp.o -c /home/cam/templates/libwb/wbExport.cpp

CMakeFiles/libwb.dir/wbExport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbExport.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbExport.cpp > CMakeFiles/libwb.dir/wbExport.cpp.i

CMakeFiles/libwb.dir/wbExport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbExport.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbExport.cpp -o CMakeFiles/libwb.dir/wbExport.cpp.s

CMakeFiles/libwb.dir/wbExport.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbExport.cpp.o.requires

CMakeFiles/libwb.dir/wbExport.cpp.o.provides: CMakeFiles/libwb.dir/wbExport.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbExport.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbExport.cpp.o.provides

CMakeFiles/libwb.dir/wbExport.cpp.o.provides.build: CMakeFiles/libwb.dir/wbExport.cpp.o


CMakeFiles/libwb.dir/wbLogger.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbLogger.cpp.o: wbLogger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/libwb.dir/wbLogger.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbLogger.cpp.o -c /home/cam/templates/libwb/wbLogger.cpp

CMakeFiles/libwb.dir/wbLogger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbLogger.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbLogger.cpp > CMakeFiles/libwb.dir/wbLogger.cpp.i

CMakeFiles/libwb.dir/wbLogger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbLogger.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbLogger.cpp -o CMakeFiles/libwb.dir/wbLogger.cpp.s

CMakeFiles/libwb.dir/wbLogger.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbLogger.cpp.o.requires

CMakeFiles/libwb.dir/wbLogger.cpp.o.provides: CMakeFiles/libwb.dir/wbLogger.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbLogger.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbLogger.cpp.o.provides

CMakeFiles/libwb.dir/wbLogger.cpp.o.provides.build: CMakeFiles/libwb.dir/wbLogger.cpp.o


CMakeFiles/libwb.dir/wbImport.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/wbImport.cpp.o: wbImport.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/libwb.dir/wbImport.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/wbImport.cpp.o -c /home/cam/templates/libwb/wbImport.cpp

CMakeFiles/libwb.dir/wbImport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/wbImport.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/wbImport.cpp > CMakeFiles/libwb.dir/wbImport.cpp.i

CMakeFiles/libwb.dir/wbImport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/wbImport.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/wbImport.cpp -o CMakeFiles/libwb.dir/wbImport.cpp.s

CMakeFiles/libwb.dir/wbImport.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/wbImport.cpp.o.requires

CMakeFiles/libwb.dir/wbImport.cpp.o.provides: CMakeFiles/libwb.dir/wbImport.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/wbImport.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/wbImport.cpp.o.provides

CMakeFiles/libwb.dir/wbImport.cpp.o.provides.build: CMakeFiles/libwb.dir/wbImport.cpp.o


CMakeFiles/libwb.dir/vendor/json11.cpp.o: CMakeFiles/libwb.dir/flags.make
CMakeFiles/libwb.dir/vendor/json11.cpp.o: vendor/json11.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/libwb.dir/vendor/json11.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libwb.dir/vendor/json11.cpp.o -c /home/cam/templates/libwb/vendor/json11.cpp

CMakeFiles/libwb.dir/vendor/json11.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwb.dir/vendor/json11.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cam/templates/libwb/vendor/json11.cpp > CMakeFiles/libwb.dir/vendor/json11.cpp.i

CMakeFiles/libwb.dir/vendor/json11.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwb.dir/vendor/json11.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cam/templates/libwb/vendor/json11.cpp -o CMakeFiles/libwb.dir/vendor/json11.cpp.s

CMakeFiles/libwb.dir/vendor/json11.cpp.o.requires:

.PHONY : CMakeFiles/libwb.dir/vendor/json11.cpp.o.requires

CMakeFiles/libwb.dir/vendor/json11.cpp.o.provides: CMakeFiles/libwb.dir/vendor/json11.cpp.o.requires
	$(MAKE) -f CMakeFiles/libwb.dir/build.make CMakeFiles/libwb.dir/vendor/json11.cpp.o.provides.build
.PHONY : CMakeFiles/libwb.dir/vendor/json11.cpp.o.provides

CMakeFiles/libwb.dir/vendor/json11.cpp.o.provides.build: CMakeFiles/libwb.dir/vendor/json11.cpp.o


# Object files for target libwb
libwb_OBJECTS = \
"CMakeFiles/libwb.dir/wbFile.cpp.o" \
"CMakeFiles/libwb.dir/wbExit.cpp.o" \
"CMakeFiles/libwb.dir/wbCUDA.cpp.o" \
"CMakeFiles/libwb.dir/wbSparse.cpp.o" \
"CMakeFiles/libwb.dir/wbPath.cpp.o" \
"CMakeFiles/libwb.dir/wbPPM.cpp.o" \
"CMakeFiles/libwb.dir/wbSolution.cpp.o" \
"CMakeFiles/libwb.dir/wbUtils.cpp.o" \
"CMakeFiles/libwb.dir/wbInit.cpp.o" \
"CMakeFiles/libwb.dir/wbDirectory.cpp.o" \
"CMakeFiles/libwb.dir/wbTimer.cpp.o" \
"CMakeFiles/libwb.dir/wbDataset.cpp.o" \
"CMakeFiles/libwb.dir/wbArg.cpp.o" \
"CMakeFiles/libwb.dir/wbImage.cpp.o" \
"CMakeFiles/libwb.dir/wbMPI.cpp.o" \
"CMakeFiles/libwb.dir/wbExport.cpp.o" \
"CMakeFiles/libwb.dir/wbLogger.cpp.o" \
"CMakeFiles/libwb.dir/wbImport.cpp.o" \
"CMakeFiles/libwb.dir/vendor/json11.cpp.o"

# External object files for target libwb
libwb_EXTERNAL_OBJECTS =

libwb.so: CMakeFiles/libwb.dir/wbFile.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbExit.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbCUDA.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbSparse.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbPath.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbPPM.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbSolution.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbUtils.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbInit.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbDirectory.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbTimer.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbDataset.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbArg.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbImage.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbMPI.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbExport.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbLogger.cpp.o
libwb.so: CMakeFiles/libwb.dir/wbImport.cpp.o
libwb.so: CMakeFiles/libwb.dir/vendor/json11.cpp.o
libwb.so: CMakeFiles/libwb.dir/build.make
libwb.so: CMakeFiles/libwb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cam/templates/libwb/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX shared library libwb.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libwb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libwb.dir/build: libwb.so

.PHONY : CMakeFiles/libwb.dir/build

CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbFile.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbExit.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbCUDA.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbSparse.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbPath.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbPPM.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbSolution.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbUtils.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbInit.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbDirectory.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbTimer.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbDataset.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbArg.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbImage.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbMPI.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbExport.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbLogger.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/wbImport.cpp.o.requires
CMakeFiles/libwb.dir/requires: CMakeFiles/libwb.dir/vendor/json11.cpp.o.requires

.PHONY : CMakeFiles/libwb.dir/requires

CMakeFiles/libwb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libwb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libwb.dir/clean

CMakeFiles/libwb.dir/depend:
	cd /home/cam/templates/libwb && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cam/templates/libwb /home/cam/templates/libwb /home/cam/templates/libwb /home/cam/templates/libwb /home/cam/templates/libwb/CMakeFiles/libwb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libwb.dir/depend

