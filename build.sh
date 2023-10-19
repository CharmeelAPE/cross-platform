#!/bin/sh
mkdir -p build/ && cd build/ && conan install .. --output-folder=. --build=missing && cmake -DCMAKE_BUILD_TYPE=Release .. && cmake --build .
#  –DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake