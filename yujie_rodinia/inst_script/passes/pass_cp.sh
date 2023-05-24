# clang++ -rdynamic -shared -fPIC  -o pass.so pt_pass.cpp ` llvm-config --cxxflags --ldflags --system-libs --libs core`
# clang++ -rdynamic -shared -fPIC -o pass.so pt_pass.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core`
# clang++ -shared -o pt_pass.so pt_pass.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core`
clang++ -shared -o pt_pass.so pt_pass.cpp \
 -I`llvm-config --includedir` -L/usr/local/lib -lLLVMCore -lLLVMSupport -Wall -fno-rtti
# -I/usr/local/include -std=c++17   -fno-exceptions  -funwind-tables -fno-rtti
#-fno-exceptions -funwind-tables -fno-rtti -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS
#  `llvm-config --ldflags  --libs `

Dirpath=/media/wjw/D6C3-3FEF/code/yujie_rodinia/cuda/
inputfile=hotspot

opt -load ./pt_pass.so -print-functions  < \
$Dirpath$inputfile/$inputfile-cuda-nvptx64-nvidia-cuda-sm_52.bc > output.bc