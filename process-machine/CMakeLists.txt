cmake_minimum_required(VERSION 3.1)

project(ocv)

# Find the required OpenCV package
find_package(OpenCV REQUIRED)

# Add the executable target for the ocv project
add_executable(ocv main.cpp)

# Link the OpenCV library to the ocv target
target_link_libraries(ocv ${OpenCV_LIBS})

