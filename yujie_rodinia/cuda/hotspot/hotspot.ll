; ModuleID = 'hotspot.cu'
source_filename = "hotspot.cu"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%"struct.std::chrono::time_point" = type { %"struct.std::chrono::duration" }
%"struct.std::chrono::duration" = type { i64 }

$_ZN4dim3C2Ejjj = comdat any

$_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE = comdat any

$_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE = comdat any

$_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv = comdat any

$_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE = comdat any

$_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_ = comdat any

$_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_ = comdat any

$_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv = comdat any

@t_chip = dso_local global float 0x3F40624DE0000000, align 4
@chip_height = dso_local global float 0x3F90624DE0000000, align 4
@chip_width = dso_local global float 0x3F90624DE0000000, align 4
@amb_temp = dso_local global float 8.000000e+01, align 4
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"The file was not opened\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d\09%g\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"not enough lines in file\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"invalid file format\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"!!Elapsed time in nanoseconds:%d\0A ns\00", align 1
@.str.9 = private unnamed_addr constant [100 x i8] c"Usage: %s <grid_rows/grid_cols> <pyramid_height> <sim_time> <temp_file> <power_file> <output_file>\0A\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"\09<grid_rows/grid_cols>  - number of rows/cols in the grid (positive integer)\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"\09<pyramid_height> - pyramid heigh(positive integer)\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\09<sim_time>   - number of iterations\0A\00", align 1
@.str.13 = private unnamed_addr constant [89 x i8] c"\09<temp_file>  - name of the file containing the initial temperature values of each cell\0A\00", align 1
@.str.14 = private unnamed_addr constant [86 x i8] c"\09<power_file> - name of the file containing the dissipated power values of each cell\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\09<output_file> - name of the output file\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"WG size of kernel = %d X %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Elapsed time in nanoseconds:%d\0A ns\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"unable to allocate memory\00", align 1
@.str.19 = private unnamed_addr constant [94 x i8] c"pyramidHeight: %d\0AgridSize: [%d, %d]\0Aborder:[%d, %d]\0AblockGrid:[%d, %d]\0AtargetBlock:[%d, %d]\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Start computing the transient temperature\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Ending simulation\0A\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5fatalPc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @stderr, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef %4)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11writeoutputPfiiPc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca [256 x i8], align 1
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %11, align 4
  %14 = load ptr, ptr %8, align 8
  %15 = call ptr @fopen(ptr noundef %14, ptr noundef @.str.1)
  store ptr %15, ptr %12, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %19

19:                                               ; preds = %17, %4
  store i32 0, ptr %9, align 4
  br label %20

20:                                               ; preds = %52, %19
  %21 = load i32, ptr %9, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  store i32 0, ptr %10, align 4
  br label %25

25:                                               ; preds = %48, %24
  %26 = load i32, ptr %10, align 4
  %27 = load i32, ptr %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = getelementptr inbounds [256 x i8], ptr %13, i64 0, i64 0
  %31 = load i32, ptr %11, align 4
  %32 = load ptr, ptr %5, align 8
  %33 = load i32, ptr %9, align 4
  %34 = load i32, ptr %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, ptr %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, ptr %32, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = fpext float %40 to double
  %42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %30, ptr noundef @.str.3, i32 noundef %31, double noundef %41) #12
  %43 = getelementptr inbounds [256 x i8], ptr %13, i64 0, i64 0
  %44 = load ptr, ptr %12, align 8
  %45 = call i32 @fputs(ptr noundef %43, ptr noundef %44)
  %46 = load i32, ptr %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %11, align 4
  br label %48

48:                                               ; preds = %29
  %49 = load i32, ptr %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %10, align 4
  br label %25, !llvm.loop !7

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %9, align 4
  br label %20, !llvm.loop !9

55:                                               ; preds = %20
  %56 = load ptr, ptr %12, align 8
  %57 = call i32 @fclose(ptr noundef %56)
  ret void
}

declare ptr @fopen(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fputs(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z9readinputPfiiPc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca [256 x i8], align 1
  %13 = alloca float, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = call ptr @fopen(ptr noundef %14, ptr noundef @.str.4)
  store ptr %15, ptr %11, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %19

19:                                               ; preds = %17, %4
  store i32 0, ptr %9, align 4
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i32, ptr %9, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp sle i32 %21, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  store i32 0, ptr %10, align 4
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i32, ptr %10, align 4
  %28 = load i32, ptr %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp sle i32 %27, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = getelementptr inbounds [256 x i8], ptr %12, i64 0, i64 0
  %33 = load ptr, ptr %11, align 8
  %34 = call ptr @fgets(ptr noundef %32, i32 noundef 256, ptr noundef %33)
  %35 = load ptr, ptr %11, align 8
  %36 = call i32 @feof(ptr noundef %35) #12
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  call void @_Z5fatalPc(ptr noundef @.str.5)
  br label %39

39:                                               ; preds = %38, %31
  %40 = getelementptr inbounds [256 x i8], ptr %12, i64 0, i64 0
  %41 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %40, ptr noundef @.str.6, ptr noundef %13) #12
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @_Z5fatalPc(ptr noundef @.str.7)
  br label %44

44:                                               ; preds = %43, %39
  %45 = load float, ptr %13, align 4
  %46 = load ptr, ptr %5, align 8
  %47 = load i32, ptr %9, align 4
  %48 = load i32, ptr %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, ptr %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr %46, i64 %52
  store float %45, ptr %53, align 4
  br label %54

54:                                               ; preds = %44
  %55 = load i32, ptr %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %10, align 4
  br label %26, !llvm.loop !10

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %9, align 4
  br label %20, !llvm.loop !11

61:                                               ; preds = %20
  %62 = load ptr, ptr %11, align 8
  %63 = call i32 @fclose(ptr noundef %62)
  ret void
}

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z29__device_stub__calculate_tempiPfS_S_iiiiffffff(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13) #3 {
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca %struct.dim3, align 8
  %30 = alloca %struct.dim3, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  %33 = alloca [2 x i64], align 8
  %34 = alloca [2 x i64], align 8
  store i32 %0, ptr %15, align 4
  store ptr %1, ptr %16, align 8
  store ptr %2, ptr %17, align 8
  store ptr %3, ptr %18, align 8
  store i32 %4, ptr %19, align 4
  store i32 %5, ptr %20, align 4
  store i32 %6, ptr %21, align 4
  store i32 %7, ptr %22, align 4
  store float %8, ptr %23, align 4
  store float %9, ptr %24, align 4
  store float %10, ptr %25, align 4
  store float %11, ptr %26, align 4
  store float %12, ptr %27, align 4
  store float %13, ptr %28, align 4
  %35 = alloca ptr, i64 14, align 16
  %36 = getelementptr ptr, ptr %35, i32 0
  store ptr %15, ptr %36, align 8
  %37 = getelementptr ptr, ptr %35, i32 1
  store ptr %16, ptr %37, align 8
  %38 = getelementptr ptr, ptr %35, i32 2
  store ptr %17, ptr %38, align 8
  %39 = getelementptr ptr, ptr %35, i32 3
  store ptr %18, ptr %39, align 8
  %40 = getelementptr ptr, ptr %35, i32 4
  store ptr %19, ptr %40, align 8
  %41 = getelementptr ptr, ptr %35, i32 5
  store ptr %20, ptr %41, align 8
  %42 = getelementptr ptr, ptr %35, i32 6
  store ptr %21, ptr %42, align 8
  %43 = getelementptr ptr, ptr %35, i32 7
  store ptr %22, ptr %43, align 8
  %44 = getelementptr ptr, ptr %35, i32 8
  store ptr %23, ptr %44, align 8
  %45 = getelementptr ptr, ptr %35, i32 9
  store ptr %24, ptr %45, align 8
  %46 = getelementptr ptr, ptr %35, i32 10
  store ptr %25, ptr %46, align 8
  %47 = getelementptr ptr, ptr %35, i32 11
  store ptr %26, ptr %47, align 8
  %48 = getelementptr ptr, ptr %35, i32 12
  store ptr %27, ptr %48, align 8
  %49 = getelementptr ptr, ptr %35, i32 13
  store ptr %28, ptr %49, align 8
  %50 = call i32 @__cudaPopCallConfiguration(ptr %29, ptr %30, ptr %31, ptr %32)
  %51 = load i64, ptr %31, align 8
  %52 = load ptr, ptr %32, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %29, i64 12, i1 false)
  %53 = load [2 x i64], ptr %33, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %34, ptr align 8 %30, i64 12, i1 false)
  %54 = load [2 x i64], ptr %34, align 8
  %55 = call noundef i32 @cudaLaunchKernel(ptr noundef @_Z29__device_stub__calculate_tempiPfS_S_iiiiffffff, [2 x i64] %53, [2 x i64] %54, ptr noundef %35, i64 noundef %51, ptr noundef %52)
  br label %56

56:                                               ; preds = %14
  ret void
}

declare i32 @__cudaPopCallConfiguration(ptr, ptr, ptr, ptr)

declare i32 @cudaLaunchKernel(ptr, [2 x i64], [2 x i64], ptr, i64, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z17compute_tran_tempPfPS_iiiiiiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %"struct.std::chrono::time_point", align 8
  %22 = alloca %struct.dim3, align 4
  %23 = alloca %struct.dim3, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.dim3, align 4
  %38 = alloca %struct.dim3, align 4
  %39 = alloca [2 x i64], align 8
  %40 = alloca [2 x i64], align 8
  %41 = alloca %"struct.std::chrono::time_point", align 8
  %42 = alloca %"struct.std::chrono::duration", align 8
  %43 = alloca %"struct.std::chrono::duration", align 8
  store ptr %0, ptr %11, align 8
  store ptr %1, ptr %12, align 8
  store i32 %2, ptr %13, align 4
  store i32 %3, ptr %14, align 4
  store i32 %4, ptr %15, align 4
  store i32 %5, ptr %16, align 4
  store i32 %6, ptr %17, align 4
  store i32 %7, ptr %18, align 4
  store i32 %8, ptr %19, align 4
  store i32 %9, ptr %20, align 4
  %44 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  %45 = getelementptr inbounds %"struct.std::chrono::time_point", ptr %21, i32 0, i32 0
  %46 = getelementptr inbounds %"struct.std::chrono::duration", ptr %45, i32 0, i32 0
  store i64 %44, ptr %46, align 8
  call void @_ZN4dim3C2Ejjj(ptr noundef nonnull align 4 dereferenceable(12) %22, i32 noundef 16, i32 noundef 16, i32 noundef 1)
  %47 = load i32, ptr %17, align 4
  %48 = load i32, ptr %18, align 4
  call void @_ZN4dim3C2Ejjj(ptr noundef nonnull align 4 dereferenceable(12) %23, i32 noundef %47, i32 noundef %48, i32 noundef 1)
  %49 = load float, ptr @chip_height, align 4
  %50 = load i32, ptr %14, align 4
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %49, %51
  store float %52, ptr %24, align 4
  %53 = load float, ptr @chip_width, align 4
  %54 = load i32, ptr %13, align 4
  %55 = sitofp i32 %54 to float
  %56 = fdiv float %53, %55
  store float %56, ptr %25, align 4
  %57 = load float, ptr @t_chip, align 4
  %58 = fpext float %57 to double
  %59 = fmul double 8.750000e+05, %58
  %60 = load float, ptr %25, align 4
  %61 = fpext float %60 to double
  %62 = fmul double %59, %61
  %63 = load float, ptr %24, align 4
  %64 = fpext float %63 to double
  %65 = fmul double %62, %64
  %66 = fptrunc double %65 to float
  store float %66, ptr %26, align 4
  %67 = load float, ptr %25, align 4
  %68 = fpext float %67 to double
  %69 = load float, ptr @t_chip, align 4
  %70 = fpext float %69 to double
  %71 = fmul double 2.000000e+02, %70
  %72 = load float, ptr %24, align 4
  %73 = fpext float %72 to double
  %74 = fmul double %71, %73
  %75 = fdiv double %68, %74
  %76 = fptrunc double %75 to float
  store float %76, ptr %27, align 4
  %77 = load float, ptr %24, align 4
  %78 = fpext float %77 to double
  %79 = load float, ptr @t_chip, align 4
  %80 = fpext float %79 to double
  %81 = fmul double 2.000000e+02, %80
  %82 = load float, ptr %25, align 4
  %83 = fpext float %82 to double
  %84 = fmul double %81, %83
  %85 = fdiv double %78, %84
  %86 = fptrunc double %85 to float
  store float %86, ptr %28, align 4
  %87 = load float, ptr @t_chip, align 4
  %88 = load float, ptr %24, align 4
  %89 = fmul float 1.000000e+02, %88
  %90 = load float, ptr %25, align 4
  %91 = fmul float %89, %90
  %92 = fdiv float %87, %91
  store float %92, ptr %29, align 4
  %93 = load float, ptr @t_chip, align 4
  %94 = fpext float %93 to double
  %95 = fmul double 5.000000e-01, %94
  %96 = fmul double %95, 1.750000e+06
  %97 = fdiv double 3.000000e+06, %96
  %98 = fptrunc double %97 to float
  store float %98, ptr %30, align 4
  %99 = load float, ptr %30, align 4
  %100 = fpext float %99 to double
  %101 = fdiv double 1.000000e-03, %100
  %102 = fptrunc double %101 to float
  store float %102, ptr %31, align 4
  store float 0x3F50624DE0000000, ptr %33, align 4
  store i32 1, ptr %34, align 4
  store i32 0, ptr %35, align 4
  store float 0.000000e+00, ptr %32, align 4
  br label %103

103:                                              ; preds = %157, %10
  %104 = load float, ptr %32, align 4
  %105 = load i32, ptr %15, align 4
  %106 = sitofp i32 %105 to float
  %107 = fcmp olt float %104, %106
  br i1 %107, label %108, label %162

108:                                              ; preds = %103
  %109 = load i32, ptr %34, align 4
  store i32 %109, ptr %36, align 4
  %110 = load i32, ptr %35, align 4
  store i32 %110, ptr %34, align 4
  %111 = load i32, ptr %36, align 4
  store i32 %111, ptr %35, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %37, ptr align 4 %23, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %38, ptr align 4 %22, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %39, ptr align 4 %37, i64 12, i1 false)
  %112 = load [2 x i64], ptr %39, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %40, ptr align 4 %38, i64 12, i1 false)
  %113 = load [2 x i64], ptr %40, align 8
  %114 = call i32 @__cudaPushCallConfiguration([2 x i64] %112, [2 x i64] %113, i64 noundef 0, ptr noundef null)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %156, label %116

116:                                              ; preds = %108
  %117 = load i32, ptr %16, align 4
  %118 = sitofp i32 %117 to float
  %119 = load i32, ptr %15, align 4
  %120 = sitofp i32 %119 to float
  %121 = load float, ptr %32, align 4
  %122 = fsub float %120, %121
  %123 = fcmp ole float %118, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32, ptr %16, align 4
  %126 = sitofp i32 %125 to float
  br label %132

127:                                              ; preds = %116
  %128 = load i32, ptr %15, align 4
  %129 = sitofp i32 %128 to float
  %130 = load float, ptr %32, align 4
  %131 = fsub float %129, %130
  br label %132

132:                                              ; preds = %127, %124
  %133 = phi float [ %126, %124 ], [ %131, %127 ]
  %134 = fptosi float %133 to i32
  %135 = load ptr, ptr %11, align 8
  %136 = load ptr, ptr %12, align 8
  %137 = load i32, ptr %34, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds ptr, ptr %136, i64 %138
  %140 = load ptr, ptr %139, align 8
  %141 = load ptr, ptr %12, align 8
  %142 = load i32, ptr %35, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %141, i64 %143
  %145 = load ptr, ptr %144, align 8
  %146 = load i32, ptr %13, align 4
  %147 = load i32, ptr %14, align 4
  %148 = load i32, ptr %19, align 4
  %149 = load i32, ptr %20, align 4
  %150 = load float, ptr %26, align 4
  %151 = load float, ptr %27, align 4
  %152 = load float, ptr %28, align 4
  %153 = load float, ptr %29, align 4
  %154 = load float, ptr %31, align 4
  %155 = load float, ptr %33, align 4
  call void @_Z29__device_stub__calculate_tempiPfS_S_iiiiffffff(i32 noundef %134, ptr noundef %135, ptr noundef %140, ptr noundef %145, i32 noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef %149, float noundef %150, float noundef %151, float noundef %152, float noundef %153, float noundef %154, float noundef %155)
  br label %156

156:                                              ; preds = %132, %108
  br label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %16, align 4
  %159 = sitofp i32 %158 to float
  %160 = load float, ptr %32, align 4
  %161 = fadd float %160, %159
  store float %161, ptr %32, align 4
  br label %103, !llvm.loop !12

162:                                              ; preds = %103
  %163 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  %164 = getelementptr inbounds %"struct.std::chrono::time_point", ptr %41, i32 0, i32 0
  %165 = getelementptr inbounds %"struct.std::chrono::duration", ptr %164, i32 0, i32 0
  store i64 %163, ptr %165, align 8
  %166 = call i64 @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %167 = getelementptr inbounds %"struct.std::chrono::duration", ptr %43, i32 0, i32 0
  store i64 %166, ptr %167, align 8
  %168 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %43)
  %169 = getelementptr inbounds %"struct.std::chrono::duration", ptr %42, i32 0, i32 0
  store i64 %168, ptr %169, align 8
  %170 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %42)
  %171 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i64 noundef %170)
  %172 = load i32, ptr %35, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 comdat align 2 {
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

declare i32 @__cudaPushCallConfiguration([2 x i64], [2 x i64], i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
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
define linkonce_odr dso_local i64 @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::chrono::duration", ptr %3, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5usageiPPc(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr @stderr, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds ptr, ptr %6, i64 0
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.9, ptr noundef %8)
  %10 = load ptr, ptr @stderr, align 8
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.10)
  %12 = load ptr, ptr @stderr, align 8
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.11)
  %14 = load ptr, ptr @stderr, align 8
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.12)
  %16 = load ptr, ptr @stderr, align 8
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.13)
  %18 = load ptr, ptr @stderr, align 8
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.14)
  %20 = load ptr, ptr @stderr, align 8
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.15)
  call void @exit(i32 noundef 1) #13
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::chrono::time_point", align 8
  %7 = alloca %"struct.std::chrono::time_point", align 8
  %8 = alloca %"struct.std::chrono::duration", align 8
  %9 = alloca %"struct.std::chrono::duration", align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef 16, i32 noundef 16)
  %11 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  %12 = getelementptr inbounds %"struct.std::chrono::time_point", ptr %6, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::chrono::duration", ptr %12, i32 0, i32 0
  store i64 %11, ptr %13, align 8
  %14 = load i32, ptr %4, align 4
  %15 = load ptr, ptr %5, align 8
  call void @_Z3runiPPc(i32 noundef %14, ptr noundef %15)
  %16 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #12
  %17 = getelementptr inbounds %"struct.std::chrono::time_point", ptr %7, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::chrono::duration", ptr %17, i32 0, i32 0
  store i64 %16, ptr %18, align 8
  %19 = call i64 @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %20 = getelementptr inbounds %"struct.std::chrono::duration", ptr %9, i32 0, i32 0
  store i64 %19, ptr %20, align 8
  %21 = call i64 @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsr13__is_durationIT_EE5valueES6_E4typeERKNS1_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %22 = getelementptr inbounds %"struct.std::chrono::duration", ptr %8, i32 0, i32 0
  store i64 %21, ptr %22, align 8
  %23 = call noundef i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, i64 noundef %23)
  ret i32 0
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z3runiPPc(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x ptr], align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i32 60, ptr %14, align 4
  store i32 1, ptr %15, align 4
  %25 = load i32, ptr %3, align 4
  %26 = icmp ne i32 %25, 7
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, ptr %3, align 4
  %29 = load ptr, ptr %4, align 8
  call void @_Z5usageiPPc(i32 noundef %28, ptr noundef %29)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = call i32 @atoi(ptr noundef %33) #14
  store i32 %34, ptr %6, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @atoi(ptr noundef %39) #14
  store i32 %40, ptr %7, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @atoi(ptr noundef %45) #14
  store i32 %46, ptr %15, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  %52 = call i32 @atoi(ptr noundef %51) #14
  store i32 %52, ptr %14, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %42, %36, %30
  %55 = load i32, ptr %3, align 4
  %56 = load ptr, ptr %4, align 8
  call void @_Z5usageiPPc(i32 noundef %55, ptr noundef %56)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %11, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds ptr, ptr %61, i64 5
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %12, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds ptr, ptr %64, i64 6
  %66 = load ptr, ptr %65, align 8
  store ptr %66, ptr %13, align 8
  %67 = load i32, ptr %6, align 4
  %68 = load i32, ptr %7, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, ptr %5, align 4
  %70 = load i32, ptr %15, align 4
  %71 = mul nsw i32 %70, 2
  %72 = sdiv i32 %71, 2
  store i32 %72, ptr %16, align 4
  %73 = load i32, ptr %15, align 4
  %74 = mul nsw i32 %73, 2
  %75 = sdiv i32 %74, 2
  store i32 %75, ptr %17, align 4
  %76 = load i32, ptr %15, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sub nsw i32 16, %77
  store i32 %78, ptr %18, align 4
  %79 = load i32, ptr %15, align 4
  %80 = mul nsw i32 %79, 2
  %81 = sub nsw i32 16, %80
  store i32 %81, ptr %19, align 4
  %82 = load i32, ptr %7, align 4
  %83 = load i32, ptr %18, align 4
  %84 = sdiv i32 %82, %83
  %85 = load i32, ptr %7, align 4
  %86 = load i32, ptr %18, align 4
  %87 = srem i32 %85, %86
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 1
  %91 = add nsw i32 %84, %90
  store i32 %91, ptr %20, align 4
  %92 = load i32, ptr %6, align 4
  %93 = load i32, ptr %19, align 4
  %94 = sdiv i32 %92, %93
  %95 = load i32, ptr %6, align 4
  %96 = load i32, ptr %19, align 4
  %97 = srem i32 %95, %96
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 0, i32 1
  %101 = add nsw i32 %94, %100
  store i32 %101, ptr %21, align 4
  %102 = load i32, ptr %5, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = call noalias ptr @malloc(i64 noundef %104) #15
  store ptr %105, ptr %8, align 8
  %106 = load i32, ptr %5, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = call noalias ptr @malloc(i64 noundef %108) #15
  store ptr %109, ptr %9, align 8
  %110 = load i32, ptr %5, align 4
  %111 = sext i32 %110 to i64
  %112 = call noalias ptr @calloc(i64 noundef %111, i64 noundef 4) #16
  store ptr %112, ptr %10, align 8
  %113 = load ptr, ptr %9, align 8
  %114 = icmp ne ptr %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %57
  %116 = load ptr, ptr %8, align 8
  %117 = icmp ne ptr %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load ptr, ptr %10, align 8
  %120 = icmp ne ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118, %115, %57
  call void @_Z5fatalPc(ptr noundef @.str.18)
  br label %122

122:                                              ; preds = %121, %118
  %123 = load i32, ptr %15, align 4
  %124 = load i32, ptr %7, align 4
  %125 = load i32, ptr %6, align 4
  %126 = load i32, ptr %16, align 4
  %127 = load i32, ptr %17, align 4
  %128 = load i32, ptr %20, align 4
  %129 = load i32, ptr %21, align 4
  %130 = load i32, ptr %18, align 4
  %131 = load i32, ptr %19, align 4
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, i32 noundef %123, i32 noundef %124, i32 noundef %125, i32 noundef %126, i32 noundef %127, i32 noundef %128, i32 noundef %129, i32 noundef %130, i32 noundef %131)
  %133 = load ptr, ptr %8, align 8
  %134 = load i32, ptr %6, align 4
  %135 = load i32, ptr %7, align 4
  %136 = load ptr, ptr %11, align 8
  call void @_Z9readinputPfiiPc(ptr noundef %133, i32 noundef %134, i32 noundef %135, ptr noundef %136)
  %137 = load ptr, ptr %9, align 8
  %138 = load i32, ptr %6, align 4
  %139 = load i32, ptr %7, align 4
  %140 = load ptr, ptr %12, align 8
  call void @_Z9readinputPfiiPc(ptr noundef %137, i32 noundef %138, i32 noundef %139, ptr noundef %140)
  %141 = getelementptr inbounds [2 x ptr], ptr %22, i64 0, i64 0
  %142 = load i32, ptr %5, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 4, %143
  %145 = call i32 @cudaMalloc(ptr noundef %141, i64 noundef %144)
  %146 = getelementptr inbounds [2 x ptr], ptr %22, i64 0, i64 1
  %147 = load i32, ptr %5, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 4, %148
  %150 = call i32 @cudaMalloc(ptr noundef %146, i64 noundef %149)
  %151 = getelementptr inbounds [2 x ptr], ptr %22, i64 0, i64 0
  %152 = load ptr, ptr %151, align 8
  %153 = load ptr, ptr %8, align 8
  %154 = load i32, ptr %5, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 4, %155
  %157 = call i32 @cudaMemcpy(ptr noundef %152, ptr noundef %153, i64 noundef %156, i32 noundef 1)
  %158 = load i32, ptr %5, align 4
  %159 = sext i32 %158 to i64
  %160 = mul i64 4, %159
  %161 = call i32 @cudaMalloc(ptr noundef %23, i64 noundef %160)
  %162 = load ptr, ptr %23, align 8
  %163 = load ptr, ptr %9, align 8
  %164 = load i32, ptr %5, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 4, %165
  %167 = call i32 @cudaMemcpy(ptr noundef %162, ptr noundef %163, i64 noundef %166, i32 noundef 1)
  %168 = call i32 (ptr, ...) @printf(ptr noundef @.str.20)
  %169 = load ptr, ptr %23, align 8
  %170 = getelementptr inbounds [2 x ptr], ptr %22, i64 0, i64 0
  %171 = load i32, ptr %7, align 4
  %172 = load i32, ptr %6, align 4
  %173 = load i32, ptr %14, align 4
  %174 = load i32, ptr %15, align 4
  %175 = load i32, ptr %20, align 4
  %176 = load i32, ptr %21, align 4
  %177 = load i32, ptr %16, align 4
  %178 = load i32, ptr %17, align 4
  %179 = call noundef i32 @_Z17compute_tran_tempPfPS_iiiiiiii(ptr noundef %169, ptr noundef %170, i32 noundef %171, i32 noundef %172, i32 noundef %173, i32 noundef %174, i32 noundef %175, i32 noundef %176, i32 noundef %177, i32 noundef %178)
  store i32 %179, ptr %24, align 4
  %180 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %181 = load ptr, ptr %10, align 8
  %182 = load i32, ptr %24, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [2 x ptr], ptr %22, i64 0, i64 %183
  %185 = load ptr, ptr %184, align 8
  %186 = load i32, ptr %5, align 4
  %187 = sext i32 %186 to i64
  %188 = mul i64 4, %187
  %189 = call i32 @cudaMemcpy(ptr noundef %181, ptr noundef %185, i64 noundef %188, i32 noundef 2)
  %190 = load ptr, ptr %10, align 8
  %191 = load i32, ptr %6, align 4
  %192 = load i32, ptr %7, align 4
  %193 = load ptr, ptr %13, align 8
  call void @_Z11writeoutputPfiiPc(ptr noundef %190, i32 noundef %191, i32 noundef %192, ptr noundef %193)
  %194 = load ptr, ptr %23, align 8
  %195 = call i32 @cudaFree(ptr noundef %194)
  %196 = getelementptr inbounds [2 x ptr], ptr %22, i64 0, i64 0
  %197 = load ptr, ptr %196, align 8
  %198 = call i32 @cudaFree(ptr noundef %197)
  %199 = getelementptr inbounds [2 x ptr], ptr %22, i64 0, i64 1
  %200 = load ptr, ptr %199, align 8
  %201 = call i32 @cudaFree(ptr noundef %200)
  %202 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %202) #12
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #9

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #10

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #11

declare i32 @cudaMalloc(ptr noundef, i64 noundef) #1

declare i32 @cudaMemcpy(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @cudaFree(ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IlvEERKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
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
define linkonce_odr dso_local i64 @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local i64 @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
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

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { noinline norecurse optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nounwind allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { nounwind allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(0,1) }

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
