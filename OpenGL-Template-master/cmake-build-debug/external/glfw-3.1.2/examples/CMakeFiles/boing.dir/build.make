# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2023.1.4\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2023.1.4\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug

# Include any dependencies generated for this target.
include external/glfw-3.1.2/examples/CMakeFiles/boing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/glfw-3.1.2/examples/CMakeFiles/boing.dir/compiler_depend.make

# Include the progress variables for this target.
include external/glfw-3.1.2/examples/CMakeFiles/boing.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw-3.1.2/examples/CMakeFiles/boing.dir/flags.make

external/glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.obj: external/glfw-3.1.2/examples/CMakeFiles/boing.dir/flags.make
external/glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.obj: external/glfw-3.1.2/examples/CMakeFiles/boing.dir/includes_C.rsp
external/glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.obj: C:/Users/m/OneDrive/Dokumente/GitHub/2dProject/OpenGL-Template-master/external/glfw-3.1.2/examples/boing.c
external/glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.obj: external/glfw-3.1.2/examples/CMakeFiles/boing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.obj"
	cd /d C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\examples && C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.obj -MF CMakeFiles\boing.dir\boing.c.obj.d -o CMakeFiles\boing.dir\boing.c.obj -c C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\external\glfw-3.1.2\examples\boing.c

external/glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/boing.c.i"
	cd /d C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\examples && C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\external\glfw-3.1.2\examples\boing.c > CMakeFiles\boing.dir\boing.c.i

external/glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/boing.c.s"
	cd /d C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\examples && C:\PROGRA~1\JETBRA~1\CLION2~1.4\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\external\glfw-3.1.2\examples\boing.c -o CMakeFiles\boing.dir\boing.c.s

# Object files for target boing
boing_OBJECTS = \
"CMakeFiles/boing.dir/boing.c.obj"

# External object files for target boing
boing_EXTERNAL_OBJECTS =

external/glfw-3.1.2/examples/boing.exe: external/glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.obj
external/glfw-3.1.2/examples/boing.exe: external/glfw-3.1.2/examples/CMakeFiles/boing.dir/build.make
external/glfw-3.1.2/examples/boing.exe: external/glfw-3.1.2/src/libglfw3.a
external/glfw-3.1.2/examples/boing.exe: external/glfw-3.1.2/examples/CMakeFiles/boing.dir/linkLibs.rsp
external/glfw-3.1.2/examples/boing.exe: external/glfw-3.1.2/examples/CMakeFiles/boing.dir/objects1
external/glfw-3.1.2/examples/boing.exe: external/glfw-3.1.2/examples/CMakeFiles/boing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable boing.exe"
	cd /d C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\boing.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw-3.1.2/examples/CMakeFiles/boing.dir/build: external/glfw-3.1.2/examples/boing.exe
.PHONY : external/glfw-3.1.2/examples/CMakeFiles/boing.dir/build

external/glfw-3.1.2/examples/CMakeFiles/boing.dir/clean:
	cd /d C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\examples && $(CMAKE_COMMAND) -P CMakeFiles\boing.dir\cmake_clean.cmake
.PHONY : external/glfw-3.1.2/examples/CMakeFiles/boing.dir/clean

external/glfw-3.1.2/examples/CMakeFiles/boing.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\external\glfw-3.1.2\examples C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\examples C:\Users\m\OneDrive\Dokumente\GitHub\2dProject\OpenGL-Template-master\cmake-build-debug\external\glfw-3.1.2\examples\CMakeFiles\boing.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw-3.1.2/examples/CMakeFiles/boing.dir/depend

