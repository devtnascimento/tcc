cmake_minimum_required(VERSION 3.1)

project(DrawMachine)

add_executable(DrawMachine main.cpp)

find_package(OpenGL REQUIRED)

target_link_libraries(DrawMachine ${OPENGL_LIBRARIES})


