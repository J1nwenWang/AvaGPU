# clang++ -x cuda -S -emit-llvm hotspot.cu --cuda-path=/usr/local/cuda-11.4/  -I/usr/local/cuda-11.4/include -L/usr/local/cuda-11.4/lib64

rm *.o
# clang++ -c  hotspot.cu -o ss.o --cuda-gpu-arch=sm_87   \
#  -I/usr/local/cuda-11.4/include -L/usr/local/cuda-11.4/lib64\
#  -lcudart_static 
clang++ -S -emit-llvm -c  hotspot.cu  --cuda-gpu-arch=sm_52   \
 -I/usr/local/cuda-11.4/include -L/usr/local/cuda-11.4/lib64\
 -lcudart_static 

# llc \
#  -o sw2.s hotspot.ll 
 
 llc -filetype=obj\
 -o sw2.o hotspot.ll 

# llc -mtriple=nvptx64-nvidia-cuda -mcpu=sm_52 \
#  -o sw1.s hotspot-cuda-nvptx64-nvidia-cuda-sm_52.ll


# llc -mtriple=nvptx64-nvidia-cuda -mcpu=sm_52 -filetype=obj\
#  -o sw1.o hotspot-cuda-nvptx64-nvidia-cuda-sm_52.bc

llc -mtriple=nvptx64-nvidia-cuda -mcpu=sm_52 -filetype=asm -o sw1.ptx hotspot-cuda-nvptx64-nvidia-cuda-sm_52.bc

echo "here"
/usr/local/cuda-11.4/bin/nvcc sw1.s sw2.s -o hotspot -I/usr/local/cuda-11.4/include -L/usr/local/cuda-11.4/lib64
# /usr/local/cuda-11.4/bin/nvcc sw2.s sw1.ptx -o hotspot -I/usr/local/cuda-11.4/include -L/usr/local/cuda-11.4/lib64
  #-lcudart_static 
#/usr/local/cuda-11.4/bin/nvcc

# /usr/local/cuda-11.4/bin/ptxas -arch=sm_52 -m64  "sw1.ptx"  -o "sw1.cubin" 

./hotspot 512 2 2 ../../data/hotspot/temp_512 ../../data/hotspot/power_512 output.out