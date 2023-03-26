cmake_minimum_required(VERSION 3.26.1)

project(tcc)

# draw-machine dependencies
find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

add_subdirectory(draw-machine)
add_subdirectory(process-machine)

