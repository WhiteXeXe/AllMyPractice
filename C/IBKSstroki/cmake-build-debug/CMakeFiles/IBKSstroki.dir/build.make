# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Clion\CLion 2020.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Clion\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles\IBKSstroki.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\IBKSstroki.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\IBKSstroki.dir\flags.make

CMakeFiles\IBKSstroki.dir\main.c.obj: CMakeFiles\IBKSstroki.dir\flags.make
CMakeFiles\IBKSstroki.dir\main.c.obj: ..\main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/IBKSstroki.dir/main.c.obj"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\IBKSstroki.dir\main.c.obj /FdCMakeFiles\IBKSstroki.dir\ /FS -c "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\main.c"
<<

CMakeFiles\IBKSstroki.dir\main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IBKSstroki.dir/main.c.i"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\IBKSstroki.dir\main.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\main.c"
<<

CMakeFiles\IBKSstroki.dir\main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IBKSstroki.dir/main.c.s"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\IBKSstroki.dir\main.c.s /c "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\main.c"
<<

# Object files for target IBKSstroki
IBKSstroki_OBJECTS = \
"CMakeFiles\IBKSstroki.dir\main.c.obj"

# External object files for target IBKSstroki
IBKSstroki_EXTERNAL_OBJECTS =

IBKSstroki.exe: CMakeFiles\IBKSstroki.dir\main.c.obj
IBKSstroki.exe: CMakeFiles\IBKSstroki.dir\build.make
IBKSstroki.exe: CMakeFiles\IBKSstroki.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable IBKSstroki.exe"
	"C:\Clion\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\IBKSstroki.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\IBKSstroki.dir\objects1.rsp @<<
 /out:IBKSstroki.exe /implib:IBKSstroki.lib /pdb:"C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\cmake-build-debug\IBKSstroki.pdb" /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\IBKSstroki.dir\build: IBKSstroki.exe

.PHONY : CMakeFiles\IBKSstroki.dir\build

CMakeFiles\IBKSstroki.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\IBKSstroki.dir\cmake_clean.cmake
.PHONY : CMakeFiles\IBKSstroki.dir\clean

CMakeFiles\IBKSstroki.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki" "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki" "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\cmake-build-debug" "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\cmake-build-debug" "C:\ALL MY PROJECTS\SPBPUPractice\C\IBKSstroki\cmake-build-debug\CMakeFiles\IBKSstroki.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\IBKSstroki.dir\depend

