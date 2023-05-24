# clang++  axpy.cu -o axpy --cuda-gpu-arch=sm_87 \
#     -L/usr/local/cuda-11.4/lib64             \
#     -lcudart_static -ldl -lrt -pthread

# clang++  axpy.cu -v --cuda-gpu-arch=sm_87 \
#     -L/usr/local/cuda-11.4/lib64             \
#     -lcudart_static -ldl -lrt -pthread
clang++ -S -emit-llvm axpy.cu  --cuda-gpu-arch=sm_87 \
    -L/usr/local/cuda-11.4/lib64             \
    -lcudart_static -ldl -lrt -pthread

llc -filetype=obj\
 -o sw2.o axpy.ll
llc -mtriple=nvptx64-nvidia-cuda -mcpu=sm_87 -filetype=asm -o sw1.ptx axpy-cuda-nvptx64-nvidia-cuda-sm_87.ll

 "/usr/local/cuda/bin/ptxas" -m64 -O0 -v --gpu-name sm_87 --output-file sw1.cubin sw1.ptx

  "/usr/local/cuda/bin/fatbinary" -64 --create sw1.fatbin --image=profile=sm_87,file=sw1.cubin --image=profile=compute_87,file=sw1.ptx

 "/usr/local/bin/clang-17" -cc1 -triple aarch64-unknown-linux-gnu -target-sdk-version=11.8 -aux-triple nvptx64-nvidia-cuda -emit-obj -mrelax-all -disable-free -clear-ast-before-backend -disable-llvm-verifier -discard-value-names -main-file-name axpy.cu -mrelocation-model pic -pic-level 2 -pic-is-pie -mframe-pointer=non-leaf -fmath-errno -ffp-contract=on -fno-rounding-math -mconstructor-aliases -funwind-tables=2 -target-cpu generic -target-feature +neon -target-feature +v8a -target-abi aapcs -debugger-tuning=gdb -v -fcoverage-compilation-dir=/home/wjw/yujie -resource-dir /usr/local/lib/clang/17 -internal-isystem /usr/local/lib/clang/17/include/cuda_wrappers -include __clang_cuda_runtime_wrapper.h -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/c++/9 -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/aarch64-linux-gnu/c++/9 -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/c++/9/backward -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/c++/9 -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/aarch64-linux-gnu/c++/9 -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../include/c++/9/backward -internal-isystem /usr/local/lib/clang/17/include -internal-isystem /usr/local/include -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include -internal-externc-isystem /usr/include/aarch64-linux-gnu -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /usr/local/lib/clang/17/include -internal-isystem /usr/local/include -internal-isystem /usr/lib/gcc/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include -internal-externc-isystem /usr/include/aarch64-linux-gnu -internal-externc-isystem /include -internal-externc-isystem /usr/include -internal-isystem /usr/local/cuda/include -fdeprecated-macro -fdebug-compilation-dir=/home/wjw/yujie -ferror-limit 19 -pthread -fno-signed-char -fgnuc-version=4.2.1 -fcxx-exceptions -fexceptions\
  -fcuda-include-gpubinary sw1.fatbin -cuid=a255f63b843e6a2d -target-feature +outline-atomics -target-feature -fmv -faddrsig -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o axpy.o -x cuda axpy.cu

#  clang++  
 clang++  axpy.o -o w.out   \
    -L/usr/local/cuda-11.4/lib64             \
    -lcudart_static -ldl -lrt -pthread
# llc -mtriple=nvptx64-nvidia-cuda \
#  -o sw.s axpy-cuda-nvptx64-nvidia-cuda-sm_87.bc

