cmake_minimum_required(VERSION 3.0)

find_package(LLVM REQUIRED CONFIG)
add_definitions(${LLVM_DEFINITIONS})
include_directories(/mnt/toolchainllvm/llvm-project/llvm/include)

add_library(MyPass SHARED MyPass.cpp)
target_link_libraries(MyPass ${llvm_libs})