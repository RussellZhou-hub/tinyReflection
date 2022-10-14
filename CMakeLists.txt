cmake_minimum_required(VERSION 3.21)
project(tinyReflection)

set(CMAKE_CXX_STANDARD 17)

include(PreCompilePass/precompile.cmake)
add_executable(tinyReflection main.cpp)

set(CODEGEN_TARGET "tinyPreCompile")
add_dependencies(tinyReflection "${CODEGEN_TARGET}")
