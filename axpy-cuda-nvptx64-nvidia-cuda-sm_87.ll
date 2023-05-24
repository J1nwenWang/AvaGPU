; ModuleID = 'axpy-cuda-nvptx64-nvidia-cuda-sm_87.bc'
source_filename = "axpy.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.__cuda_builtin_threadIdx_t = type { i8 }

@.str = private unnamed_addr constant [5 x i8] c"dcd\0A\00", align 1
@threadIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_threadIdx_t, align 1
@.str1 = private unnamed_addr constant [8 x i8] c"ssssss\0A\00", align 1

; Function Attrs: convergent mustprogress noinline nounwind optnone
define dso_local void @_Z4hiiiv() #0 {
  %1 = call i32 @vprintf(ptr @.str, ptr null)
  ret void
}

declare i32 @vprintf(ptr, ptr)

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local void @_Z4axpyfPfS_(float noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca float, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store float %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load float, ptr %4, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds float, ptr %8, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = fmul contract float %7, %12
  %14 = load ptr, ptr %6, align 8
  %15 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds float, ptr %14, i64 %16
  store float %13, ptr %17, align 4
  %18 = call i32 @vprintf(ptr @.str1, ptr null)
  call void @_Z4hiiiv() #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

attributes #0 = { convergent mustprogress noinline nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_87" "target-features"="+ptx78,+sm_87" }
attributes #1 = { convergent mustprogress noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_87" "target-features"="+ptx78,+sm_87" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4}
!llvm.ident = !{!5, !6}
!nvvmir.version = !{!7}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 8]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z4axpyfPfS_, !"kernel", i32 1}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git d4de7c2e1e7954ea03545f1551fda9f6bb9387cf)"}
!6 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!7 = !{i32 2, i32 0}
