#jinwen added
include ../../common/make.config

ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

#jinwen added
CC := $(CUDA_DIR)/bin/nvcc
INCLUDE := $(CUDA_DIR)/include

# link objects(binaries) together
# jinwen commend 
# heartwall: main.o ./AVI/avilib.o ./AVI/avimod.o 
# 	nvcc main.o ./AVI/avilib.o ./AVI/avimod.o -I/usr/local/cuda/include -lm -o heartwall

heartwall: main.o ./AVI/avilib.o ./AVI/avimod.o 
	$(CC) main.o ./AVI/avilib.o ./AVI/avimod.o -I$(INCLUDE) -L$(CUDA_LIB_DIR) -lm -o heartwall
	

# compile main function file into object (binary)
# Jinwen commend
# main.o: main.cu kernel.cu define.c
# 	nvcc $(OUTPUT) $(KERNEL_DIM) main.cu -I./AVI -c -O3

main.o: main.cu kernel.cu define.c
	$(CC) $(OUTPUT) $(KERNEL_DIM) main.cu -I./AVI -c -O3
	$(CC) -ptx  $(OUTPUT) $(KERNEL_DIM) main.cu -I./AVI -c -O3
	 

./AVI/avilib.o ./AVI/avimod.o:
	cd AVI; make;

# delete all object files
clean:
	rm -f *.o AVI/*.o heartwall *.linkinfo
