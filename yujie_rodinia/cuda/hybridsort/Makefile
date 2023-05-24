include ../../common/make.config
CC := $(CUDA_DIR)/bin/nvcc

#jinwen commend
# CC_FLAGS = -arch=sm_20

CC_FLAGS =

OPENGL = -I/usr/local/cuda-11.4/samples/common/inc/


ifdef VERIFY
override VERIFY = -DVERIFY
endif

ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

ifdef TIMER
override TIMER = -DTIMER
endif

hybridsort: main.cu  bucketsort.cu bucketsort.cuh bucketsort_kernel.cu histogram1024_kernel.cu  mergesort.cu mergesort.cuh mergesort_kernel.cu
	$(CC) $(CC_FLAGS) $(OPENGL) $(VERIFY) $(OUTPUT) $(TIMER) $(HISTO_WG_SIZE_0) $(BUCKET_WG_SIZE_0) $(BUCKET_WG_SIZE_1) $(MERGE_WG_SIZE_0) $(MERGE_WG_SIZE_1) bucketsort.cu mergesort.cu main.cu -o hybridsort
	# $(CC) -ptx $(CC_FLAGS) $(OPENGL) $(VERIFY) $(OUTPUT) $(TIMER) $(HISTO_WG_SIZE_0) $(BUCKET_WG_SIZE_0) $(BUCKET_WG_SIZE_1) $(MERGE_WG_SIZE_0) $(MERGE_WG_SIZE_1) bucketsort.cu -c -o hybridsort


clean:
	rm	*.o hybridsort
