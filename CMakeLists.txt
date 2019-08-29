cmake_minimum_required(VERSION 3.8)
project(vlkdemo)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS ON)


find_package(Vulkan REQUIRED)


find_package(glfw3 REQUIRED)
if(glfw3_FOUND)
message(STATUS "GLFW3 Found")
endif()



add_executable(vlkdemo )
target_sources(vlkdemo PRIVATE "main.cpp")
target_link_libraries(vlkdemo ${Vulkan_LIBRARIES} glfw)
target_include_directories(vlkdemo PRIVATE ${Vulkan_INCLUDE_DIRS})