# cmake -DLLVM_DIR=/mnt/toolchainllvm/llvm-project/llvm \
#       -DCMAKE_MODULE_PATH=/mnt/toolchainllvm/llvm-project/llvm/cmake/modules \
#       -DLLVM_BUILD_EXTERNAL_COMPILER_LIBS=./pt_pass.cpp \
#       /mnt/toolchainllvm/llvm-project/llvm \
#         -DCMAKE_BUILD_TYPE=Debug 

# cmake -DLLVM_DIR=/mnt/toolchainllvm/llvm-project/llvm \
#  -DCMAKE_BUILD_TYPE=Release ../pt_pass.cpp

Dirpath=/media/wjw/D6C3-3FEF/code/yujie_rodinia/cuda/
inputfile=hotspot

opt -load ./pt_pass.so -print-functions  < \
$Dirpath$inputfile/$inputfile-cuda-nvptx64-nvidia-cuda-sm_52.bc > output.bc