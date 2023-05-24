# clang++  axpy.cu -o axpy --cuda-gpu-arch=sm_87 \
#     -L/usr/local/cuda-11.4/lib64             \
#     -lcudart_static -ldl -lrt -pthread

clang++ -S -emit-llvm axpy.cu  --cuda-gpu-arch=sm_87 \
    -L/usr/local/cuda-11.4/lib64             \
    -lcudart_static -ldl -lrt -pthread

llc -mtriple=nvptx64-nvidia-cuda \
 -o sw.s axpy-cuda-nvptx64-nvidia-cuda-sm_87.bc

llc \
 -o sw2.s axpy.ll

/usr/local/cuda-11.4/bin/nvcc sw2.s -o shotspot\
 -I/usr/local/cuda-11.4/include -L/usr/local/cuda-11.4/lib64\
    -lcudart_static -ldl -lrt 