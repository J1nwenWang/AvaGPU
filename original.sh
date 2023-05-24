# clang++  axpy.cu  --cuda-gpu-arch=sm_87 \
#     -L/usr/local/cuda-11.4/lib64             \
#     -lcudart_static -ldl -lrt -pthread

/usr/local/cuda-11.4/bin/nvcc -ptx axpy.cu -O0 -o axpy.ptx -I/usr/local/cuda-11.4/include -L/usr/local/cuda-11.4/lib64 

/usr/local/cuda-11.4/bin/nvcc  axpy.cu -O0 -o axpy -I/usr/local/cuda-11.4/include -L/usr/local/cuda-11.4/lib64 