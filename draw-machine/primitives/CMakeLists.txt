
add_library(primitives 
  triangle.cpp
)

target_link_libraries(primitives PUBLIC OpenGL::GL)

target_include_directories(primitives PUBLIC ${OPENGL_INCLUDE_DIR})

