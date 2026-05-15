cmake_minimum_required(VERSION 3.7)

project(vsg_consumer LANGUAGES CXX)

include(CTest)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(vsg CONFIG REQUIRED)

add_executable(vsg_consumer main.cpp)
target_link_libraries(vsg_consumer PRIVATE vsg::vsg)
add_test(NAME vsg_consumer COMMAND vsg_consumer)
