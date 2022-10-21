# tinyReflection
A tiny C++ Reflection implementation project

use Cmake to run a .exe file before every time build system(or IDE like VS) try to compiling main.cpp.

This Project is for learning purpose

//Todo：use Clang

============Chinese Start===============

实现一个C++反射系统，采用LLVM Clang制作反射工具，构建系统选择Cmake，

实现了在编译main.cpp前执行precompile.exe。

============Chinese End===============

## compile llvm and metareflect

llvm version: 16.0.0git

put the metareflect folder to `you-path-to\llvm-project\clang-tools-extra\`

add following texts in CMakeLists.txt in `you-path-to\llvm-project\clang-tools-extra\`

`
add_subdirectory(metareflect/tooling)
`

move to `you-path-to\llvm-project\build `
type in (use VS for example, not gurantee other compiler or platform can build successfully)
`
cmake -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" -G "Visual Studio 17 2022" -A x64 -Thost=x64 ..\llvm
`

## use metareflect

`compile_commands.json` 
must in (use ninja to generate that file)
 `you-path-to\llvm-project\clang-tools-extra\metareflect\metareflect`

than use VS to biuld metareflect

command line:
`./metareflect.exe <path_to_file>`
<path_to_file> can be `you-path-to\llvm-project\clang-tools-extra\metareflect\metareflect\test.hxx`

after parse, build CMakeList.txt in `you-path-to\llvm-project\clang-tools-extra\metareflect\metareflect\`
run test program.

##Next
//TODO: integrate metareflect in my `tinyReflection` Cmake project