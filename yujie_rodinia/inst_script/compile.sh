Dirpath=/media/wjw/D6C3-3FEF/code/yujie_rodinia/cuda/
inputfile=hotspot
nowpath=$(pwd)

cd $Dirpath$inputfile

clang++ -S -emit-llvm -c  $inputfile.cu  --cuda-gpu-arch=sm_52   \
 -I/usr/local/cuda-11.4/include -L/usr/local/cuda-11.4/lib64\
 -lcudart_static 

llvm-dis $inputfile-cuda-nvptx64-nvidia-cuda-sm_52.bc
llc -mtriple=nvptx64-nvidia-cuda -mcpu=sm_52 -filetype=asm -o gpu_code.s $inputfile-cuda-nvptx64-nvidia-cuda-sm_52.bc
 "/usr/local/cuda/bin/ptxas" -m64 -O0 -v --gpu-name sm_52 --output-file gpu_code.cubin gpu_code.s

"/usr/local/cuda-11.4/bin/fatbinary" -64 --create gpu_code.fatbin --image=profile=sm_52,file=gpu_code.cubin --image=profile=compute_52,file=gpu_code.s


"/usr/local/bin/clang-17" -cc1 -triple aarch64-unknown-linux-gnu -target-sdk-version=11.4 -aux-triple nvptx64-nvidia-cuda -emit-obj -mrelax-all -disable-free -clear-ast-before-backend -disable-llvm-verifier -discard-value-names -main-file-name hotspot.cu -mrelocation-model pic -pic-level 2 -pic-is-pie -mframe-pointer=non-leaf -fmath-errno -ffp-contract=on -fno-rounding-math -mconstructor-aliases -funwind-tables=2 -target-cpu generic -target-feature +neon -target-feature +v8a -target-abi aapcs -debugger-tuning=gdb -v -fcoverage-compilation-dir=/media/wjw/D6C3-3FEF/code/yujie_rodinia/cuda/hotspot -resource-dir /usr/local/lib/clang/17 -internal-isystem /usr/local/lib/clang/17/include/cuda_wrappers -include __clang_cuda_runtime_wrapper.h -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/c++/9 -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/aarch64-linux-gnu/c++/9 -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/c++/9/backward -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/c++/9 -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/aarch64-linux-gnu/c++/9 -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/c++/9/backward -internal-isystem /usr/local/lib/clang/17/include -internal-isystem /usr/local/include -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include -internal-externc-isystem /usr/include/aarch64-linux-gnu -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /usr/local/lib/clang/17/include -internal-isystem /usr/local/include -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include -internal-externc-isystem /usr/include/aarch64-linux-gnu -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /usr/local/cuda-11.4/include -fdeprecated-macro -fdebug-compilation-dir=/media/wjw/D6C3-3FEF/code/yujie_rodinia/cuda/hotspot -ferror-limit 19 -pthread -fno-signed-char -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions -fcolor-diagnostics\
 -fcuda-include-gpubinary gpu_code.fatbin -cuid=ef96f16e8919b996 -target-feature +outline-atomics -target-feature -fmv -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o $inputfile.o -x cuda $inputfile.cu

clang++  $inputfile.o -o $inputfile --cuda-gpu-arch=sm_52 \
    -L/usr/local/cuda-11.4/lib64             \
    -lcudart_static -ldl -lrt -pthread
source ./run 

cd $nowpath