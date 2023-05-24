; ModuleID = 'axpy.cu'
source_filename = "axpy.cu"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.dim3 = type { i32, i32, i32 }

$_ZN4dim3C2Ejjj = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@gg = internal global i32 undef, align 4
@__const.main.host_x = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00], align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"y[\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"] = \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_axpy.cu, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z19__device_stub__axpyfPfS_(float noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = alloca float, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [2 x i64], align 8
  %12 = alloca [2 x i64], align 8
  store float %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %13 = alloca ptr, i64 3, align 16
  %14 = getelementptr ptr, ptr %13, i32 0
  store ptr %4, ptr %14, align 8
  %15 = getelementptr ptr, ptr %13, i32 1
  store ptr %5, ptr %15, align 8
  %16 = getelementptr ptr, ptr %13, i32 2
  store ptr %6, ptr %16, align 8
  %17 = call i32 @__cudaPopCallConfiguration(ptr %7, ptr %8, ptr %9, ptr %10)
  %18 = load i64, ptr %9, align 8
  %19 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %7, i64 12, i1 false)
  %20 = load [2 x i64], ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %8, i64 12, i1 false)
  %21 = load [2 x i64], ptr %12, align 8
  %22 = call noundef i32 @cudaLaunchKernel(ptr noundef @_Z19__device_stub__axpyfPfS_, [2 x i64] %20, [2 x i64] %21, ptr noundef %13, i64 noundef %18, ptr noundef %19)
  br label %23

23:                                               ; preds = %3
  ret void
}

declare i32 @__cudaPopCallConfiguration(ptr, ptr, ptr, ptr)

declare i32 @cudaLaunchKernel(ptr, [2 x i64], [2 x i64], ptr, i64, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x float], align 4
  %9 = alloca [4 x float], align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.dim3, align 4
  %13 = alloca %struct.dim3, align 4
  %14 = alloca [2 x i64], align 8
  %15 = alloca [2 x i64], align 8
  %16 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 4, ptr %6, align 4
  store float 2.000000e+00, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 @__const.main.host_x, i64 16, i1 false)
  %17 = call noundef i32 @_ZL10cudaMallocIfE9cudaErrorPPT_m(ptr noundef %10, i64 noundef 16)
  %18 = call noundef i32 @_ZL10cudaMallocIfE9cudaErrorPPT_m(ptr noundef %11, i64 noundef 16)
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 0
  %21 = call i32 @cudaMemcpy(ptr noundef %19, ptr noundef %20, i64 noundef 16, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(ptr noundef nonnull align 4 dereferenceable(12) %12, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(ptr noundef nonnull align 4 dereferenceable(12) %13, i32 noundef 4, i32 noundef 1, i32 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 4 %12, i64 12, i1 false)
  %22 = load [2 x i64], ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 4 %13, i64 12, i1 false)
  %23 = load [2 x i64], ptr %15, align 8
  %24 = call i32 @__cudaPushCallConfiguration([2 x i64] %22, [2 x i64] %23, i64 noundef 0, ptr noundef null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load float, ptr %7, align 4
  %28 = load ptr, ptr %10, align 8
  %29 = load ptr, ptr %11, align 8
  call void @_Z19__device_stub__axpyfPfS_(float noundef %27, ptr noundef %28, ptr noundef %29)
  br label %30

30:                                               ; preds = %26, %2
  %31 = call i32 @cudaDeviceSynchronize()
  %32 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 0
  %33 = load ptr, ptr %11, align 8
  %34 = call i32 @cudaMemcpy(ptr noundef %32, ptr noundef %33, i64 noundef 16, i32 noundef 2)
  store i32 0, ptr %16, align 4
  br label %35

35:                                               ; preds = %49, %30
  %36 = load i32, ptr %16, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %40 = load i32, ptr %16, align 4
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %39, i32 noundef %40)
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef @.str.1)
  %43 = load i32, ptr %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEf(ptr noundef nonnull align 8 dereferenceable(8) %42, float noundef %46)
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef @.str.2)
  br label %49

49:                                               ; preds = %38
  %50 = load i32, ptr %16, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %16, align 4
  br label %35, !llvm.loop !7

52:                                               ; preds = %35
  %53 = call i32 @cudaDeviceReset()
  ret i32 0
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @_ZL10cudaMallocIfE9cudaErrorPPT_m(ptr noundef %0, i64 noundef %1) #7 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i32 @cudaMalloc(ptr noundef %5, i64 noundef %6)
  ret i32 %7
}

declare i32 @cudaMemcpy(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @__cudaPushCallConfiguration([2 x i64], [2 x i64], i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 comdat align 2 {
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

declare i32 @cudaDeviceSynchronize() #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEf(ptr noundef nonnull align 8 dereferenceable(8), float noundef) #1

declare i32 @cudaDeviceReset() #1

declare i32 @cudaMalloc(ptr noundef, i64 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_axpy.cu() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { mustprogress noinline optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }

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
