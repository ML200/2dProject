# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug

# Include any dependencies generated for this target.
include external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/compiler_depend.make

# Include the progress variables for this target.
include external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/flags.make

external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/cursor.c.obj: external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/flags.make
external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/cursor.c.obj: external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/includes_C.rsp
external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/cursor.c.obj: C:/Users/m/Documents/GitHub/2dProject/OpenGL-Template-master/external/glfw-3.1.2/tests/cursor.c
external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/cursor.c.obj: external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/cursor.c.obj"
	cd /d C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\tests && C:\PROGRA~1\JETBRA~1\CLION2~1.2\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/cursor.c.obj -MF CMakeFiles\cursor.dir\cursor.c.obj.d -o CMakeFiles\cursor.dir\cursor.c.obj -c C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\external\glfw-3.1.2\tests\cursor.c

external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/cursor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/cursor.c.i"
	cd /d C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\tests && C:\PROGRA~1\JETBRA~1\CLION2~1.2\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\external\glfw-3.1.2\tests\cursor.c > CMakeFiles\cursor.dir\cursor.c.i

external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/cursor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/cursor.c.s"
	cd /d C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\tests && C:\PROGRA~1\JETBRA~1\CLION2~1.2\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\external\glfw-3.1.2\tests\cursor.c -o CMakeFiles\cursor.dir\cursor.c.s

# Object files for target cursor
cursor_OBJECTS = \
"CMakeFiles/cursor.dir/cursor.c.obj"

# External object files for target cursor
cursor_EXTERNAL_OBJECTS =

external/glfw-3.1.2/tests/cursor.exe: external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/cursor.c.obj
external/glfw-3.1.2/tests/cursor.exe: external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/build.make
external/glfw-3.1.2/tests/cursor.exe: external/glfw-3.1.2/src/libglfw3.a
external/glfw-3.1.2/tests/cursor.exe: external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/linkLibs.rsp
external/glfw-3.1.2/tests/cursor.exe: external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/objects1.rsp
external/glfw-3.1.2/tests/cursor.exe: external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cursor.exe"
	cd /d C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cursor.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/build: external/glfw-3.1.2/tests/cursor.exe
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/build

external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/clean:
	cd /d C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\tests && $(CMAKE_COMMAND) -P CMakeFiles\cursor.dir\cmake_clean.cmake
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/clean

external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\external\glfw-3.1.2\tests C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\tests C:\Users\m\Documents\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\tests\CMakeFiles\cursor.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/cursor.dir/depend

