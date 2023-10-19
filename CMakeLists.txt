cmake_minimum_required(VERSION 3.23)  # Minimum CMake version required

project(Rtype)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
if (NOT WIN32)
    add_compile_options(-Wall -Wextra -g3)
endif()

include_directories(${CMAKE_INCLUDE_PATH})
include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)
include_directories(${CONAN_INCLUDE_DIRS})

# Find SFML
find_package(SFML 2.6.0 COMPONENTS graphics window system audio REQUIRED)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR})

add_executable(rtype src/main.cpp)
target_link_libraries(rtype sfml-window sfml-graphics sfml-system sfml-audio)
