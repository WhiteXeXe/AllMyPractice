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
CMAKE_SOURCE_DIR = "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles\Taylor_Derdan.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\Taylor_Derdan.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Taylor_Derdan.dir\flags.make

CMakeFiles\Taylor_Derdan.dir\main.c.obj: CMakeFiles\Taylor_Derdan.dir\flags.make
CMakeFiles\Taylor_Derdan.dir\main.c.obj: ..\main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Taylor_Derdan.dir/main.c.obj"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\Taylor_Derdan.dir\main.c.obj /FdCMakeFiles\Taylor_Derdan.dir\ /FS -c "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\main.c"
<<

CMakeFiles\Taylor_Derdan.dir\main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Taylor_Derdan.dir/main.c.i"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\Taylor_Derdan.dir\main.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\main.c"
<<

CMakeFiles\Taylor_Derdan.dir\main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Taylor_Derdan.dir/main.c.s"
	C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\Taylor_Derdan.dir\main.c.s /c "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\main.c"
<<

# Object files for target Taylor_Derdan
Taylor_Derdan_OBJECTS = \
"CMakeFiles\Taylor_Derdan.dir\main.c.obj"

# External object files for target Taylor_Derdan
Taylor_Derdan_EXTERNAL_OBJECTS =

Taylor_Derdan.exe: CMakeFiles\Taylor_Derdan.dir\main.c.obj
Taylor_Derdan.exe: CMakeFiles\Taylor_Derdan.dir\build.make
Taylor_Derdan.exe: CMakeFiles\Taylor_Derdan.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Taylor_Derdan.exe"
	"C:\Clion\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\Taylor_Derdan.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~4\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\Taylor_Derdan.dir\objects1.rsp @<<
 /out:Taylor_Derdan.exe /implib:Taylor_Derdan.lib /pdb:"C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\cmake-build-debug\Taylor_Derdan.pdb" /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Taylor_Derdan.dir\build: Taylor_Derdan.exe

.PHONY : CMakeFiles\Taylor_Derdan.dir\build

CMakeFiles\Taylor_Derdan.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Taylor_Derdan.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Taylor_Derdan.dir\clean

CMakeFiles\Taylor_Derdan.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan" "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan" "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\cmake-build-debug" "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\cmake-build-debug" "C:\ALL MY PROJECTS\C\Taylor_Derdan\Taylor_Derdan\cmake-build-debug\CMakeFiles\Taylor_Derdan.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\Taylor_Derdan.dir\depend

