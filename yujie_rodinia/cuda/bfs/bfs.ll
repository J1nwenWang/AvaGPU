; ModuleID = 'bfs.cu'
source_filename = "bfs.cu"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%"struct.std::chrono::time_point" = type { %"struct.std::chrono::duration" }
%"struct.std::chrono::duration" = type { i64 }
%struct.Node = type { i32, i32 }

$_ZN4dim3C2Ejjj = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ = comdat any

$_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ = comdat any

$_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv = comdat any

@no_of_nodes = dso_local global i32 0, align 4
@edge_list_size = dso_local global i32 0, align 4
@fp = dso_local global ptr null, align 8
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <input_file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Reading File\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Read File\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Copied Everything to GPU memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Start traversing the tree\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Kernel Executed %d times\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"result.txt\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Result stored in result.txt\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Elapsed time in nanoseconds:%d\0A ns\00", align 1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z21__device_stub__KernelP4NodePiPbS2_S2_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca [2 x i64], align 8
  %20 = alloca [2 x i64], align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store i32 %6, ptr %14, align 4
  %21 = alloca ptr, i64 7, align 16
  %22 = getelementptr ptr, ptr %21, i32 0
  store ptr %8, ptr %22, align 8
  %23 = getelementptr ptr, ptr %21, i32 1
  store ptr %9, ptr %23, align 8
  %24 = getelementptr ptr, ptr %21, i32 2
  store ptr %10, ptr %24, align 8
  %25 = getelementptr ptr, ptr %21, i32 3
  store ptr %11, ptr %25, align 8
  %26 = getelementptr ptr, ptr %21, i32 4
  store ptr %12, ptr %26, align 8
  %27 = getelementptr ptr, ptr %21, i32 5
  store ptr %13, ptr %27, align 8
  %28 = getelementptr ptr, ptr %21, i32 6
  store ptr %14, ptr %28, align 8
  %29 = call i32 @__cudaPopCallConfiguration(ptr %15, ptr %16, ptr %17, ptr %18)
  %30 = load i64, ptr %17, align 8
  %31 = load ptr, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %15, i64 12, i1 false)
  %32 = load [2 x i64], ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %16, i64 12, i1 false)
  %33 = load [2 x i64], ptr %20, align 8
  %34 = call noundef i32 @cudaLaunchKernel(ptr noundef @_Z21__device_stub__KernelP4NodePiPbS2_S2_S1_i, [2 x i64] %32, [2 x i64] %33, ptr noundef %21, i64 noundef %30, ptr noundef %31)
  br label %35

35:                                               ; preds = %7
  ret void
}

declare i32 @__cudaPopCallConfiguration(ptr, ptr, ptr, ptr)

declare i32 @cudaLaunchKernel(ptr, [2 x i64], [2 x i64], ptr, i64, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z22__device_stub__Kernel2PbS_S_S_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [2 x i64], align 8
  %16 = alloca [2 x i64], align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i32 %4, ptr %10, align 4
  %17 = alloca ptr, i64 5, align 16
  %18 = getelementptr ptr, ptr %17, i32 0
  store ptr %6, ptr %18, align 8
  %19 = getelementptr ptr, ptr %17, i32 1
  store ptr %7, ptr %19, align 8
  %20 = getelementptr ptr, ptr %17, i32 2
  store ptr %8, ptr %20, align 8
  %21 = getelementptr ptr, ptr %17, i32 3
  store ptr %9, ptr %21, align 8
  %22 = getelementptr ptr, ptr %17, i32 4
  store ptr %10, ptr %22, align 8
  %23 = call i32 @__cudaPopCallConfiguration(ptr %11, ptr %12, ptr %13, ptr %14)
  %24 = load i64, ptr %13, align 8
  %25 = load ptr, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %11, i64 12, i1 false)
  %26 = load [2 x i64], ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %12, i64 12, i1 false)
  %27 = load [2 x i64], ptr %16, align 8
  %28 = call noundef i32 @cudaLaunchKernel(ptr noundef @_Z22__device_stub__Kernel2PbS_S_S_i, [2 x i64] %26, [2 x i64] %27, ptr noundef %17, i64 noundef %24, ptr noundef %25)
  br label %29

29:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 0, ptr @no_of_nodes, align 4
  store i32 0, ptr @edge_list_size, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load ptr, ptr %4, align 8
  call void @_Z8BFSGraphiPPc(i32 noundef %5, ptr noundef %6)
  ret i32 0
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8BFSGraphiPPc(i32 noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca %"struct.std::chrono::time_point", align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca %struct.dim3, align 4
  %31 = alloca %struct.dim3, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8, align 1
  %34 = alloca %struct.dim3, align 4
  %35 = alloca %struct.dim3, align 4
  %36 = alloca [2 x i64], align 8
  %37 = alloca [2 x i64], align 8
  %38 = alloca %struct.dim3, align 4
  %39 = alloca %struct.dim3, align 4
  %40 = alloca [2 x i64], align 8
  %41 = alloca [2 x i64], align 8
  %42 = alloca ptr, align 8
  %43 = alloca i32, align 4
  %44 = alloca %"struct.std::chrono::time_point", align 8
  %45 = alloca %"struct.std::chrono::duration", align 8
  %46 = alloca %"struct.std::chrono::duration", align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %47 = load i32, ptr %3, align 4
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load i32, ptr %3, align 4
  %51 = load ptr, ptr %4, align 8
  call void @_Z5UsageiPPc(i32 noundef %50, ptr noundef %51)
  call void @exit(i32 noundef 0) #11
  unreachable

52:                                               ; preds = %2
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = load ptr, ptr %54, align 8
  store ptr %55, ptr %5, align 8
  %56 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %57 = load ptr, ptr %5, align 8
  %58 = call ptr @fopen(ptr noundef %57, ptr noundef @.str.2)
  store ptr %58, ptr @fp, align 8
  %59 = load ptr, ptr @fp, align 8
  %60 = icmp ne ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %348

63:                                               ; preds = %52
  store i32 0, ptr %6, align 4
  %64 = load ptr, ptr @fp, align 8
  %65 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %64, ptr noundef @.str.4, ptr noundef @no_of_nodes)
  store i32 1, ptr %7, align 4
  %66 = load i32, ptr @no_of_nodes, align 4
  store i32 %66, ptr %8, align 4
  %67 = load i32, ptr @no_of_nodes, align 4
  %68 = icmp sgt i32 %67, 512
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, ptr @no_of_nodes, align 4
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %71, 5.120000e+02
  %73 = call double @llvm.ceil.f64(double %72)
  %74 = fptosi double %73 to i32
  store i32 %74, ptr %7, align 4
  store i32 512, ptr %8, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = load i32, ptr @no_of_nodes, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = call noalias ptr @malloc(i64 noundef %78) #12
  store ptr %79, ptr %9, align 8
  %80 = load i32, ptr @no_of_nodes, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 1, %81
  %83 = call noalias ptr @malloc(i64 noundef %82) #12
  store ptr %83, ptr %10, align 8
  %84 = load i32, ptr @no_of_nodes, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 1, %85
  %87 = call noalias ptr @malloc(i64 noundef %86) #12
  store ptr %87, ptr %11, align 8
  %88 = load i32, ptr @no_of_nodes, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 1, %89
  %91 = call noalias ptr @malloc(i64 noundef %90) #12
  store ptr %91, ptr %12, align 8
  store i32 0, ptr %15, align 4
  br label %92

92:                                               ; preds = %123, %75
  %93 = load i32, ptr %15, align 4
  %94 = load i32, ptr @no_of_nodes, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %92
  %97 = load ptr, ptr @fp, align 8
  %98 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %97, ptr noundef @.str.5, ptr noundef %13, ptr noundef %14)
  %99 = load i32, ptr %13, align 4
  %100 = load ptr, ptr %9, align 8
  %101 = load i32, ptr %15, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.Node, ptr %100, i64 %102
  %104 = getelementptr inbounds %struct.Node, ptr %103, i32 0, i32 0
  store i32 %99, ptr %104, align 4
  %105 = load i32, ptr %14, align 4
  %106 = load ptr, ptr %9, align 8
  %107 = load i32, ptr %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.Node, ptr %106, i64 %108
  %110 = getelementptr inbounds %struct.Node, ptr %109, i32 0, i32 1
  store i32 %105, ptr %110, align 4
  %111 = load ptr, ptr %10, align 8
  %112 = load i32, ptr %15, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %111, i64 %113
  store i8 0, ptr %114, align 1
  %115 = load ptr, ptr %11, align 8
  %116 = load i32, ptr %15, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %115, i64 %117
  store i8 0, ptr %118, align 1
  %119 = load ptr, ptr %12, align 8
  %120 = load i32, ptr %15, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %119, i64 %121
  store i8 0, ptr %122, align 1
  br label %123

123:                                              ; preds = %96
  %124 = load i32, ptr %15, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %15, align 4
  br label %92, !llvm.loop !7

126:                                              ; preds = %92
  %127 = load ptr, ptr @fp, align 8
  %128 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %127, ptr noundef @.str.4, ptr noundef %6)
  store i32 0, ptr %6, align 4
  %129 = load ptr, ptr %10, align 8
  %130 = load i32, ptr %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %129, i64 %131
  store i8 1, ptr %132, align 1
  %133 = load ptr, ptr %12, align 8
  %134 = load i32, ptr %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %133, i64 %135
  store i8 1, ptr %136, align 1
  %137 = load ptr, ptr @fp, align 8
  %138 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %137, ptr noundef @.str.4, ptr noundef @edge_list_size)
  %139 = load i32, ptr @edge_list_size, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 4, %140
  %142 = call noalias ptr @malloc(i64 noundef %141) #12
  store ptr %142, ptr %18, align 8
  store i32 0, ptr %19, align 4
  br label %143

143:                                              ; preds = %157, %126
  %144 = load i32, ptr %19, align 4
  %145 = load i32, ptr @edge_list_size, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = load ptr, ptr @fp, align 8
  %149 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %148, ptr noundef @.str.4, ptr noundef %16)
  %150 = load ptr, ptr @fp, align 8
  %151 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %150, ptr noundef @.str.4, ptr noundef %17)
  %152 = load i32, ptr %16, align 4
  %153 = load ptr, ptr %18, align 8
  %154 = load i32, ptr %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %153, i64 %155
  store i32 %152, ptr %156, align 4
  br label %157

157:                                              ; preds = %147
  %158 = load i32, ptr %19, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %19, align 4
  br label %143, !llvm.loop !9

160:                                              ; preds = %143
  %161 = load ptr, ptr @fp, align 8
  %162 = icmp ne ptr %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load ptr, ptr @fp, align 8
  %165 = call i32 @fclose(ptr noundef %164)
  br label %166

166:                                              ; preds = %163, %160
  %167 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %168 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  %169 = getelementptr inbounds %"struct.std::chrono::time_point", ptr %20, i32 0, i32 0
  %170 = getelementptr inbounds %"struct.std::chrono::duration", ptr %169, i32 0, i32 0
  store i64 %168, ptr %170, align 8
  %171 = load i32, ptr @no_of_nodes, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 8, %172
  %174 = call i32 @cudaMalloc(ptr noundef %21, i64 noundef %173)
  %175 = load ptr, ptr %21, align 8
  %176 = load ptr, ptr %9, align 8
  %177 = load i32, ptr @no_of_nodes, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 8, %178
  %180 = call i32 @cudaMemcpy(ptr noundef %175, ptr noundef %176, i64 noundef %179, i32 noundef 1)
  %181 = load i32, ptr @edge_list_size, align 4
  %182 = sext i32 %181 to i64
  %183 = mul i64 4, %182
  %184 = call i32 @cudaMalloc(ptr noundef %22, i64 noundef %183)
  %185 = load ptr, ptr %22, align 8
  %186 = load ptr, ptr %18, align 8
  %187 = load i32, ptr @edge_list_size, align 4
  %188 = sext i32 %187 to i64
  %189 = mul i64 4, %188
  %190 = call i32 @cudaMemcpy(ptr noundef %185, ptr noundef %186, i64 noundef %189, i32 noundef 1)
  %191 = load i32, ptr @no_of_nodes, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 1, %192
  %194 = call i32 @cudaMalloc(ptr noundef %23, i64 noundef %193)
  %195 = load ptr, ptr %23, align 8
  %196 = load ptr, ptr %10, align 8
  %197 = load i32, ptr @no_of_nodes, align 4
  %198 = sext i32 %197 to i64
  %199 = mul i64 1, %198
  %200 = call i32 @cudaMemcpy(ptr noundef %195, ptr noundef %196, i64 noundef %199, i32 noundef 1)
  %201 = load i32, ptr @no_of_nodes, align 4
  %202 = sext i32 %201 to i64
  %203 = mul i64 1, %202
  %204 = call i32 @cudaMalloc(ptr noundef %24, i64 noundef %203)
  %205 = load ptr, ptr %24, align 8
  %206 = load ptr, ptr %11, align 8
  %207 = load i32, ptr @no_of_nodes, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 1, %208
  %210 = call i32 @cudaMemcpy(ptr noundef %205, ptr noundef %206, i64 noundef %209, i32 noundef 1)
  %211 = load i32, ptr @no_of_nodes, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 1, %212
  %214 = call i32 @cudaMalloc(ptr noundef %25, i64 noundef %213)
  %215 = load ptr, ptr %25, align 8
  %216 = load ptr, ptr %12, align 8
  %217 = load i32, ptr @no_of_nodes, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 1, %218
  %220 = call i32 @cudaMemcpy(ptr noundef %215, ptr noundef %216, i64 noundef %219, i32 noundef 1)
  %221 = load i32, ptr @no_of_nodes, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 4, %222
  %224 = call noalias ptr @malloc(i64 noundef %223) #12
  store ptr %224, ptr %26, align 8
  store i32 0, ptr %27, align 4
  br label %225

225:                                              ; preds = %234, %166
  %226 = load i32, ptr %27, align 4
  %227 = load i32, ptr @no_of_nodes, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %225
  %230 = load ptr, ptr %26, align 8
  %231 = load i32, ptr %27, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %230, i64 %232
  store i32 -1, ptr %233, align 4
  br label %234

234:                                              ; preds = %229
  %235 = load i32, ptr %27, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, ptr %27, align 4
  br label %225, !llvm.loop !10

237:                                              ; preds = %225
  %238 = load ptr, ptr %26, align 8
  %239 = load i32, ptr %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, ptr %238, i64 %240
  store i32 0, ptr %241, align 4
  %242 = load i32, ptr @no_of_nodes, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 4, %243
  %245 = call i32 @cudaMalloc(ptr noundef %28, i64 noundef %244)
  %246 = load ptr, ptr %28, align 8
  %247 = load ptr, ptr %26, align 8
  %248 = load i32, ptr @no_of_nodes, align 4
  %249 = sext i32 %248 to i64
  %250 = mul i64 4, %249
  %251 = call i32 @cudaMemcpy(ptr noundef %246, ptr noundef %247, i64 noundef %250, i32 noundef 1)
  %252 = call i32 @cudaMalloc(ptr noundef %29, i64 noundef 1)
  %253 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %254 = load i32, ptr %7, align 4
  call void @_ZN4dim3C2Ejjj(ptr noundef nonnull align 4 dereferenceable(12) %30, i32 noundef %254, i32 noundef 1, i32 noundef 1)
  %255 = load i32, ptr %8, align 4
  call void @_ZN4dim3C2Ejjj(ptr noundef nonnull align 4 dereferenceable(12) %31, i32 noundef %255, i32 noundef 1, i32 noundef 1)
  store i32 0, ptr %32, align 4
  %256 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %257

257:                                              ; preds = %288, %237
  store i8 0, ptr %33, align 1
  %258 = load ptr, ptr %29, align 8
  %259 = call i32 @cudaMemcpy(ptr noundef %258, ptr noundef %33, i64 noundef 1, i32 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %34, ptr align 4 %30, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %35, ptr align 4 %31, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 4 %34, i64 12, i1 false)
  %260 = load [2 x i64], ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 4 %35, i64 12, i1 false)
  %261 = load [2 x i64], ptr %37, align 8
  %262 = call i32 @__cudaPushCallConfiguration([2 x i64] %260, [2 x i64] %261, i64 noundef 0, ptr noundef null)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %257
  %265 = load ptr, ptr %21, align 8
  %266 = load ptr, ptr %22, align 8
  %267 = load ptr, ptr %23, align 8
  %268 = load ptr, ptr %24, align 8
  %269 = load ptr, ptr %25, align 8
  %270 = load ptr, ptr %28, align 8
  %271 = load i32, ptr @no_of_nodes, align 4
  call void @_Z21__device_stub__KernelP4NodePiPbS2_S2_S1_i(ptr noundef %265, ptr noundef %266, ptr noundef %267, ptr noundef %268, ptr noundef %269, ptr noundef %270, i32 noundef %271)
  br label %272

272:                                              ; preds = %264, %257
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %38, ptr align 4 %30, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %39, ptr align 4 %31, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %40, ptr align 4 %38, i64 12, i1 false)
  %273 = load [2 x i64], ptr %40, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %41, ptr align 4 %39, i64 12, i1 false)
  %274 = load [2 x i64], ptr %41, align 8
  %275 = call i32 @__cudaPushCallConfiguration([2 x i64] %273, [2 x i64] %274, i64 noundef 0, ptr noundef null)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %272
  %278 = load ptr, ptr %23, align 8
  %279 = load ptr, ptr %24, align 8
  %280 = load ptr, ptr %25, align 8
  %281 = load ptr, ptr %29, align 8
  %282 = load i32, ptr @no_of_nodes, align 4
  call void @_Z22__device_stub__Kernel2PbS_S_S_i(ptr noundef %278, ptr noundef %279, ptr noundef %280, ptr noundef %281, i32 noundef %282)
  br label %283

283:                                              ; preds = %277, %272
  %284 = load ptr, ptr %29, align 8
  %285 = call i32 @cudaMemcpy(ptr noundef %33, ptr noundef %284, i64 noundef 1, i32 noundef 2)
  %286 = load i32, ptr %32, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, ptr %32, align 4
  br label %288

288:                                              ; preds = %283
  %289 = load i8, ptr %33, align 1
  %290 = trunc i8 %289 to i1
  br i1 %290, label %257, label %291, !llvm.loop !11

291:                                              ; preds = %288
  %292 = load i32, ptr %32, align 4
  %293 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %292)
  %294 = load ptr, ptr %26, align 8
  %295 = load ptr, ptr %28, align 8
  %296 = load i32, ptr @no_of_nodes, align 4
  %297 = sext i32 %296 to i64
  %298 = mul i64 4, %297
  %299 = call i32 @cudaMemcpy(ptr noundef %294, ptr noundef %295, i64 noundef %298, i32 noundef 2)
  %300 = call ptr @fopen(ptr noundef @.str.10, ptr noundef @.str.11)
  store ptr %300, ptr %42, align 8
  store i32 0, ptr %43, align 4
  br label %301

301:                                              ; preds = %314, %291
  %302 = load i32, ptr %43, align 4
  %303 = load i32, ptr @no_of_nodes, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %317

305:                                              ; preds = %301
  %306 = load ptr, ptr %42, align 8
  %307 = load i32, ptr %43, align 4
  %308 = load ptr, ptr %26, align 8
  %309 = load i32, ptr %43, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, ptr %308, i64 %310
  %312 = load i32, ptr %311, align 4
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %306, ptr noundef @.str.12, i32 noundef %307, i32 noundef %312)
  br label %314

314:                                              ; preds = %305
  %315 = load i32, ptr %43, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, ptr %43, align 4
  br label %301, !llvm.loop !12

317:                                              ; preds = %301
  %318 = load ptr, ptr %42, align 8
  %319 = call i32 @fclose(ptr noundef %318)
  %320 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %321 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %321) #13
  %322 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %322) #13
  %323 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %323) #13
  %324 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %324) #13
  %325 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %325) #13
  %326 = load ptr, ptr %26, align 8
  call void @free(ptr noundef %326) #13
  %327 = load ptr, ptr %21, align 8
  %328 = call i32 @cudaFree(ptr noundef %327)
  %329 = load ptr, ptr %22, align 8
  %330 = call i32 @cudaFree(ptr noundef %329)
  %331 = load ptr, ptr %23, align 8
  %332 = call i32 @cudaFree(ptr noundef %331)
  %333 = load ptr, ptr %24, align 8
  %334 = call i32 @cudaFree(ptr noundef %333)
  %335 = load ptr, ptr %25, align 8
  %336 = call i32 @cudaFree(ptr noundef %335)
  %337 = load ptr, ptr %28, align 8
  %338 = call i32 @cudaFree(ptr noundef %337)
  %339 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  %340 = getelementptr inbounds %"struct.std::chrono::time_point", ptr %44, i32 0, i32 0
  %341 = getelementptr inbounds %"struct.std::chrono::duration", ptr %340, i32 0, i32 0
  store i64 %339, ptr %341, align 8
  %342 = call i64 @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %343 = getelementptr inbounds %"struct.std::chrono::duration", ptr %46, i32 0, i32 0
  store i64 %342, ptr %343, align 8
  %344 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %46)
  %345 = getelementptr inbounds %"struct.std::chrono::duration", ptr %45, i32 0, i32 0
  store i64 %344, ptr %345, align 8
  %346 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %45)
  %347 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i64 noundef %346)
  br label %348

348:                                              ; preds = %317, %61
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5UsageiPPc(i32 noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr @stderr, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds ptr, ptr %6, i64 0
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef %8)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

declare i32 @printf(ptr noundef, ...) #4

declare ptr @fopen(ptr noundef, ptr noundef) #4

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

declare i32 @fclose(ptr noundef) #4

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #8

declare i32 @cudaMalloc(ptr noundef, i64 noundef) #4

declare i32 @cudaMemcpy(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.dim3, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %6, align 4
  store i32 %11, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dim3, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %7, align 4
  store i32 %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dim3, ptr %9, i32 0, i32 2
  %15 = load i32, ptr %8, align 4
  store i32 %15, ptr %14, align 4
  ret void
}

declare i32 @__cudaPushCallConfiguration([2 x i64], [2 x i64], i64 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #8

declare i32 @cudaFree(ptr noundef) #4

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat {
  %2 = alloca %"struct.std::chrono::duration", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %6 = getelementptr inbounds %"struct.std::chrono::duration", ptr %2, i32 0, i32 0
  store i64 %5, ptr %6, align 8
  %7 = getelementptr inbounds %"struct.std::chrono::duration", ptr %2, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  ret i64 %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat {
  %3 = alloca %"struct.std::chrono::duration", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::chrono::duration", align 8
  %7 = alloca %"struct.std::chrono::duration", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call i64 @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = getelementptr inbounds %"struct.std::chrono::duration", ptr %6, i32 0, i32 0
  store i64 %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call i64 @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %13 = getelementptr inbounds %"struct.std::chrono::duration", ptr %7, i32 0, i32 0
  store i64 %12, ptr %13, align 8
  %14 = call i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %15 = getelementptr inbounds %"struct.std::chrono::duration", ptr %3, i32 0, i32 0
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %"struct.std::chrono::duration", ptr %3, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  ret i64 %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::chrono::duration", ptr %3, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 {
  %2 = alloca %"struct.std::chrono::duration", align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  store i64 %6, ptr %4, align 8
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %7 = getelementptr inbounds %"struct.std::chrono::duration", ptr %2, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #9 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::chrono::duration", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat {
  %3 = alloca %"struct.std::chrono::duration", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"struct.std::chrono::duration", align 8
  %8 = alloca %"struct.std::chrono::duration", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 8, i1 false)
  %10 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %11 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %11, i64 8, i1 false)
  %12 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %13 = sub nsw i64 %10, %12
  store i64 %13, ptr %6, align 8
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %14 = getelementptr inbounds %"struct.std::chrono::duration", ptr %3, i32 0, i32 0
  %15 = load i64, ptr %14, align 8
  ret i64 %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10 comdat align 2 {
  %2 = alloca %"struct.std::chrono::duration", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::chrono::time_point", ptr %4, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %5, i64 8, i1 false)
  %6 = getelementptr inbounds %"struct.std::chrono::duration", ptr %2, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  ret i64 %7
}

attributes #0 = { noinline norecurse optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 8]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git d4de7c2e1e7954ea03545f1551fda9f6bb9387cf)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
