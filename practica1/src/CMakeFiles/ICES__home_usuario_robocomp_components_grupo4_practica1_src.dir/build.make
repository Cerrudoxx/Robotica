# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /snap/clion/296/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /snap/clion/296/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/usuario/robocomp/components/grupo4/practica1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/usuario/robocomp/components/grupo4/practica1

# Utility rule file for ICES__home_usuario_robocomp_components_grupo4_practica1_src.

# Include any custom commands dependencies for this target.
include src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/progress.make

ICES__home_usuario_robocomp_components_grupo4_practica1_src: src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "BU robocompdsl /home/robocomp/robocomp//interfaces/IDSLs/CommonBehavior.idsl /home/usuario/robocomp/components/grupo4/practica1/src/CommonBehavior.ice"
	cd /home/usuario/robocomp/components/grupo4/practica1/src && robocompdsl /home/robocomp/robocomp//interfaces/IDSLs/CommonBehavior.idsl /home/usuario/robocomp/components/grupo4/practica1/src/CommonBehavior.ice
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "BU robocompdsl /home/robocomp/robocomp//interfaces/IDSLs/GenericBase.idsl /home/usuario/robocomp/components/grupo4/practica1/src/GenericBase.ice"
	cd /home/usuario/robocomp/components/grupo4/practica1/src && robocompdsl /home/robocomp/robocomp//interfaces/IDSLs/GenericBase.idsl /home/usuario/robocomp/components/grupo4/practica1/src/GenericBase.ice
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "BU robocompdsl /home/robocomp/robocomp//interfaces/IDSLs/Lidar3D.idsl /home/usuario/robocomp/components/grupo4/practica1/src/Lidar3D.ice"
	cd /home/usuario/robocomp/components/grupo4/practica1/src && robocompdsl /home/robocomp/robocomp//interfaces/IDSLs/Lidar3D.idsl /home/usuario/robocomp/components/grupo4/practica1/src/Lidar3D.ice
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "BU robocompdsl /home/robocomp/robocomp//interfaces/IDSLs/OmniRobot.idsl /home/usuario/robocomp/components/grupo4/practica1/src/OmniRobot.ice"
	cd /home/usuario/robocomp/components/grupo4/practica1/src && robocompdsl /home/robocomp/robocomp//interfaces/IDSLs/OmniRobot.idsl /home/usuario/robocomp/components/grupo4/practica1/src/OmniRobot.ice
.PHONY : ICES__home_usuario_robocomp_components_grupo4_practica1_src

# Rule to build all files generated by this target.
src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/build: ICES__home_usuario_robocomp_components_grupo4_practica1_src
.PHONY : src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/build

src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/clean:
	cd /home/usuario/robocomp/components/grupo4/practica1/src && $(CMAKE_COMMAND) -P CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/clean

src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/depend:
	cd /home/usuario/robocomp/components/grupo4/practica1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/usuario/robocomp/components/grupo4/practica1 /home/usuario/robocomp/components/grupo4/practica1/src /home/usuario/robocomp/components/grupo4/practica1 /home/usuario/robocomp/components/grupo4/practica1/src /home/usuario/robocomp/components/grupo4/practica1/src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/ICES__home_usuario_robocomp_components_grupo4_practica1_src.dir/depend

