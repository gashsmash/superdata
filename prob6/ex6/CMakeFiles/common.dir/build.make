# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /gpfs/shareapps/apps/modulessoftware/cmake/2.8.7/bin/cmake

# The command to remove a file.
RM = /gpfs/shareapps/apps/modulessoftware/cmake/2.8.7/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /gpfs/shareapps/apps/modulessoftware/cmake/2.8.7/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/siljeih/superdata/prob6/ex6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/siljeih/superdata/prob6/ex6

# Include any dependencies generated for this target.
include CMakeFiles/common.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/common.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/common.dir/flags.make

CMakeFiles/common.dir/fst.f.o: CMakeFiles/common.dir/flags.make
CMakeFiles/common.dir/fst.f.o: fst.f
	$(CMAKE_COMMAND) -E cmake_progress_report /home/siljeih/superdata/prob6/ex6/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building Fortran object CMakeFiles/common.dir/fst.f.o"
	/share/apps/modulessoftware/intel/compilers/11.1.059/bin/intel64/ifort  $(Fortran_DEFINES) $(Fortran_FLAGS) -c /home/siljeih/superdata/prob6/ex6/fst.f -o CMakeFiles/common.dir/fst.f.o

CMakeFiles/common.dir/fst.f.o.requires:
.PHONY : CMakeFiles/common.dir/fst.f.o.requires

CMakeFiles/common.dir/fst.f.o.provides: CMakeFiles/common.dir/fst.f.o.requires
	$(MAKE) -f CMakeFiles/common.dir/build.make CMakeFiles/common.dir/fst.f.o.provides.build
.PHONY : CMakeFiles/common.dir/fst.f.o.provides

CMakeFiles/common.dir/fst.f.o.provides.build: CMakeFiles/common.dir/fst.f.o

# Object files for target common
common_OBJECTS = \
"CMakeFiles/common.dir/fst.f.o"

# External object files for target common
common_EXTERNAL_OBJECTS =

libcommon.a: CMakeFiles/common.dir/fst.f.o
libcommon.a: CMakeFiles/common.dir/build.make
libcommon.a: CMakeFiles/common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking Fortran static library libcommon.a"
	$(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/common.dir/build: libcommon.a
.PHONY : CMakeFiles/common.dir/build

CMakeFiles/common.dir/requires: CMakeFiles/common.dir/fst.f.o.requires
.PHONY : CMakeFiles/common.dir/requires

CMakeFiles/common.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean.cmake
.PHONY : CMakeFiles/common.dir/clean

CMakeFiles/common.dir/depend:
	cd /home/siljeih/superdata/prob6/ex6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/siljeih/superdata/prob6/ex6 /home/siljeih/superdata/prob6/ex6 /home/siljeih/superdata/prob6/ex6 /home/siljeih/superdata/prob6/ex6 /home/siljeih/superdata/prob6/ex6/CMakeFiles/common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/common.dir/depend
