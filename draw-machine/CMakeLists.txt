add_executable(draw-machine main.cpp)

# link ogl lib
target_link_libraries(draw-machine PRIVATE OpenGL::GL glfw)

# add primitives lib
add_subdirectory(primitives)
add_subdirectory(window)
target_link_libraries(DrawMachine PRIVATE primitives)
target_link_libraries(DrawMachine PRIVATE window)



