cmake_minimum_required(VERSION 3.21)
project(tinyReflection VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(FILE_TO_BE_REFLECT_DIR "${CMAKE_CURRENT_SOURCE_DIR}")

include(PreCompilePass/precompile.cmake)
add_executable(tinyReflection main.cpp  test.cxx test.generated.hxx metareflect_detail.hxx metareflect.cxx)



set(CODEGEN_TARGET "tinyPreCompile")
add_dependencies(tinyReflection "${CODEGEN_TARGET}")
