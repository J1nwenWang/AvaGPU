; ModuleID = 'hotspot-cuda-nvptx64-nvidia-cuda-sm_52.bc'
source_filename = "hotspot.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.__cuda_builtin_blockIdx_t = type { i8 }
%struct.__cuda_builtin_threadIdx_t = type { i8 }
%printf_args = type { i32 }

@_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda = internal addrspace(3) global [16 x [16 x float]] undef, align 4
@_ZZ14calculate_tempiPfS_S_iiiiffffffE13power_on_cuda = internal addrspace(3) global [16 x [16 x float]] undef, align 4
@_ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t = internal addrspace(3) global [16 x [16 x float]] undef, align 4
@blockIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockIdx_t, align 1
@.str = private unnamed_addr constant [13 x i8] c"lalalla %d \0A\00", align 1
@threadIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_threadIdx_t, align 1

; Function Attrs: convergent mustprogress noinline nounwind optnone
define dso_local noundef i32 @_Z10cspl__ssssi(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = mul nsw i32 %3, 2
  ret i32 %4
}

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local void @_Z14calculate_tempiPfS_S_iiiiffffff(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13) #1 {
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
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %printf_args, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i8, align 1
  %59 = alloca i32, align 4
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
  store float 8.000000e+01, ptr %29, align 4
  %60 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  store i32 %60, ptr %34, align 4
  %61 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  store i32 %61, ptr %35, align 4
  %62 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  %63 = getelementptr inbounds %printf_args, ptr %36, i32 0, i32 0
  store i32 %62, ptr %63, align 4
  %64 = call i32 @vprintf(ptr @.str, ptr %36)
  %65 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  store i32 %65, ptr %37, align 4
  %66 = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  store i32 %66, ptr %38, align 4
  %67 = load float, ptr %27, align 4
  %68 = load float, ptr %23, align 4
  %69 = fdiv contract float %67, %68
  store float %69, ptr %30, align 4
  %70 = load float, ptr %24, align 4
  %71 = fdiv contract float 1.000000e+00, %70
  store float %71, ptr %31, align 4
  %72 = load float, ptr %25, align 4
  %73 = fdiv contract float 1.000000e+00, %72
  store float %73, ptr %32, align 4
  %74 = load float, ptr %26, align 4
  %75 = fdiv contract float 1.000000e+00, %74
  store float %75, ptr %33, align 4
  %76 = load i32, ptr %15, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sub nsw i32 16, %77
  store i32 %78, ptr %39, align 4
  %79 = load i32, ptr %15, align 4
  %80 = mul nsw i32 %79, 2
  %81 = sub nsw i32 16, %80
  store i32 %81, ptr %40, align 4
  %82 = load i32, ptr %39, align 4
  %83 = load i32, ptr %35, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, ptr %22, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, ptr %41, align 4
  %87 = load i32, ptr %40, align 4
  %88 = load i32, ptr %34, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, ptr %21, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, ptr %42, align 4
  %92 = load i32, ptr %41, align 4
  %93 = add nsw i32 %92, 16
  %94 = sub nsw i32 %93, 1
  store i32 %94, ptr %43, align 4
  %95 = load i32, ptr %42, align 4
  %96 = add nsw i32 %95, 16
  %97 = sub nsw i32 %96, 1
  store i32 %97, ptr %44, align 4
  %98 = load i32, ptr %41, align 4
  %99 = load i32, ptr %38, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, ptr %45, align 4
  %101 = load i32, ptr %42, align 4
  %102 = load i32, ptr %37, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, ptr %46, align 4
  %104 = load i32, ptr %45, align 4
  store i32 %104, ptr %47, align 4
  %105 = load i32, ptr %46, align 4
  store i32 %105, ptr %48, align 4
  %106 = load i32, ptr %19, align 4
  %107 = load i32, ptr %47, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, ptr %48, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, ptr %49, align 4
  %111 = load i32, ptr %47, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %149

113:                                              ; preds = %14
  %114 = load i32, ptr %47, align 4
  %115 = load i32, ptr %20, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp sle i32 %114, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %113
  %119 = load i32, ptr %48, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %118
  %122 = load i32, ptr %48, align 4
  %123 = load i32, ptr %19, align 4
  %124 = sub nsw i32 %123, 1
  %125 = icmp sle i32 %122, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %121
  %127 = load ptr, ptr %17, align 8
  %128 = load i32, ptr %49, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, ptr %127, i64 %129
  %131 = load float, ptr %130, align 4
  %132 = load i32, ptr %38, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %133
  %135 = load i32, ptr %37, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [16 x float], ptr %134, i64 0, i64 %136
  store float %131, ptr %137, align 4
  %138 = load ptr, ptr %16, align 8
  %139 = load i32, ptr %49, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, ptr %138, i64 %140
  %142 = load float, ptr %141, align 4
  %143 = load i32, ptr %38, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE13power_on_cuda to ptr), i64 0, i64 %144
  %146 = load i32, ptr %37, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [16 x float], ptr %145, i64 0, i64 %147
  store float %142, ptr %148, align 4
  br label %149

149:                                              ; preds = %126, %121, %118, %113, %14
  call void @llvm.nvvm.barrier0()
  %150 = load i32, ptr %41, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, ptr %41, align 4
  %154 = sub nsw i32 0, %153
  br label %156

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %152
  %157 = phi i32 [ %154, %152 ], [ 0, %155 ]
  store i32 %157, ptr %50, align 4
  %158 = load i32, ptr %43, align 4
  %159 = load i32, ptr %20, align 4
  %160 = sub nsw i32 %159, 1
  %161 = icmp sgt i32 %158, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load i32, ptr %43, align 4
  %164 = load i32, ptr %20, align 4
  %165 = sub nsw i32 %163, %164
  %166 = add nsw i32 %165, 1
  %167 = sub nsw i32 15, %166
  br label %169

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %162
  %170 = phi i32 [ %167, %162 ], [ 15, %168 ]
  store i32 %170, ptr %51, align 4
  %171 = load i32, ptr %42, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, ptr %42, align 4
  %175 = sub nsw i32 0, %174
  br label %177

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %173
  %178 = phi i32 [ %175, %173 ], [ 0, %176 ]
  store i32 %178, ptr %52, align 4
  %179 = load i32, ptr %44, align 4
  %180 = load i32, ptr %19, align 4
  %181 = sub nsw i32 %180, 1
  %182 = icmp sgt i32 %179, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load i32, ptr %44, align 4
  %185 = load i32, ptr %19, align 4
  %186 = sub nsw i32 %184, %185
  %187 = add nsw i32 %186, 1
  %188 = sub nsw i32 15, %187
  br label %190

189:                                              ; preds = %177
  br label %190

190:                                              ; preds = %189, %183
  %191 = phi i32 [ %188, %183 ], [ 15, %189 ]
  store i32 %191, ptr %53, align 4
  %192 = load i32, ptr %38, align 4
  %193 = sub nsw i32 %192, 1
  store i32 %193, ptr %54, align 4
  %194 = load i32, ptr %38, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %55, align 4
  %196 = load i32, ptr %37, align 4
  %197 = sub nsw i32 %196, 1
  store i32 %197, ptr %56, align 4
  %198 = load i32, ptr %37, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %57, align 4
  %200 = load i32, ptr %54, align 4
  %201 = load i32, ptr %50, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %190
  %204 = load i32, ptr %50, align 4
  br label %207

205:                                              ; preds = %190
  %206 = load i32, ptr %54, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  store i32 %208, ptr %54, align 4
  %209 = load i32, ptr %55, align 4
  %210 = load i32, ptr %51, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, ptr %51, align 4
  br label %216

214:                                              ; preds = %207
  %215 = load i32, ptr %55, align 4
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i32 [ %213, %212 ], [ %215, %214 ]
  store i32 %217, ptr %55, align 4
  %218 = load i32, ptr %56, align 4
  %219 = load i32, ptr %52, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = load i32, ptr %52, align 4
  br label %225

223:                                              ; preds = %216
  %224 = load i32, ptr %56, align 4
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  store i32 %226, ptr %56, align 4
  %227 = load i32, ptr %57, align 4
  %228 = load i32, ptr %53, align 4
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, ptr %53, align 4
  br label %234

232:                                              ; preds = %225
  %233 = load i32, ptr %57, align 4
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi i32 [ %231, %230 ], [ %233, %232 ]
  store i32 %235, ptr %57, align 4
  store i32 0, ptr %59, align 4
  br label %236

236:                                              ; preds = %403, %234
  %237 = load i32, ptr %59, align 4
  %238 = load i32, ptr %15, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %406

240:                                              ; preds = %236
  store i8 0, ptr %58, align 1
  %241 = load i32, ptr %37, align 4
  %242 = load i32, ptr %59, align 4
  %243 = add nsw i32 %242, 1
  %244 = icmp sge i32 %241, %243
  br i1 %244, label %245, label %379

245:                                              ; preds = %240
  %246 = load i32, ptr %37, align 4
  %247 = load i32, ptr %59, align 4
  %248 = sub nsw i32 16, %247
  %249 = sub nsw i32 %248, 2
  %250 = icmp sle i32 %246, %249
  br i1 %250, label %251, label %379

251:                                              ; preds = %245
  %252 = load i32, ptr %38, align 4
  %253 = load i32, ptr %59, align 4
  %254 = add nsw i32 %253, 1
  %255 = icmp sge i32 %252, %254
  br i1 %255, label %256, label %379

256:                                              ; preds = %251
  %257 = load i32, ptr %38, align 4
  %258 = load i32, ptr %59, align 4
  %259 = sub nsw i32 16, %258
  %260 = sub nsw i32 %259, 2
  %261 = icmp sle i32 %257, %260
  br i1 %261, label %262, label %379

262:                                              ; preds = %256
  %263 = load i32, ptr %37, align 4
  %264 = load i32, ptr %52, align 4
  %265 = icmp sge i32 %263, %264
  br i1 %265, label %266, label %379

266:                                              ; preds = %262
  %267 = load i32, ptr %37, align 4
  %268 = load i32, ptr %53, align 4
  %269 = icmp sle i32 %267, %268
  br i1 %269, label %270, label %379

270:                                              ; preds = %266
  %271 = load i32, ptr %38, align 4
  %272 = load i32, ptr %50, align 4
  %273 = icmp sge i32 %271, %272
  br i1 %273, label %274, label %379

274:                                              ; preds = %270
  %275 = load i32, ptr %38, align 4
  %276 = load i32, ptr %51, align 4
  %277 = icmp sle i32 %275, %276
  br i1 %277, label %278, label %379

278:                                              ; preds = %274
  store i8 1, ptr %58, align 1
  %279 = load i32, ptr %38, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %280
  %282 = load i32, ptr %37, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [16 x float], ptr %281, i64 0, i64 %283
  %285 = load float, ptr %284, align 4
  %286 = fpext float %285 to double
  %287 = load float, ptr %30, align 4
  %288 = fpext float %287 to double
  %289 = load i32, ptr %38, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE13power_on_cuda to ptr), i64 0, i64 %290
  %292 = load i32, ptr %37, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [16 x float], ptr %291, i64 0, i64 %293
  %295 = load float, ptr %294, align 4
  %296 = fpext float %295 to double
  %297 = load i32, ptr %55, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %298
  %300 = load i32, ptr %37, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [16 x float], ptr %299, i64 0, i64 %301
  %303 = load float, ptr %302, align 4
  %304 = load i32, ptr %54, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %305
  %307 = load i32, ptr %37, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [16 x float], ptr %306, i64 0, i64 %308
  %310 = load float, ptr %309, align 4
  %311 = fadd contract float %303, %310
  %312 = fpext float %311 to double
  %313 = load i32, ptr %38, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %314
  %316 = load i32, ptr %37, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [16 x float], ptr %315, i64 0, i64 %317
  %319 = load float, ptr %318, align 4
  %320 = fpext float %319 to double
  %321 = fmul contract double 2.000000e+00, %320
  %322 = fsub contract double %312, %321
  %323 = load float, ptr %32, align 4
  %324 = fpext float %323 to double
  %325 = fmul contract double %322, %324
  %326 = fadd contract double %296, %325
  %327 = load i32, ptr %38, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %328
  %330 = load i32, ptr %57, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [16 x float], ptr %329, i64 0, i64 %331
  %333 = load float, ptr %332, align 4
  %334 = load i32, ptr %38, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %335
  %337 = load i32, ptr %56, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [16 x float], ptr %336, i64 0, i64 %338
  %340 = load float, ptr %339, align 4
  %341 = fadd contract float %333, %340
  %342 = fpext float %341 to double
  %343 = load i32, ptr %38, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %344
  %346 = load i32, ptr %37, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [16 x float], ptr %345, i64 0, i64 %347
  %349 = load float, ptr %348, align 4
  %350 = fpext float %349 to double
  %351 = fmul contract double 2.000000e+00, %350
  %352 = fsub contract double %342, %351
  %353 = load float, ptr %31, align 4
  %354 = fpext float %353 to double
  %355 = fmul contract double %352, %354
  %356 = fadd contract double %326, %355
  %357 = load float, ptr %29, align 4
  %358 = load i32, ptr %38, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %359
  %361 = load i32, ptr %37, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [16 x float], ptr %360, i64 0, i64 %362
  %364 = load float, ptr %363, align 4
  %365 = fsub contract float %357, %364
  %366 = load float, ptr %33, align 4
  %367 = fmul contract float %365, %366
  %368 = fpext float %367 to double
  %369 = fadd contract double %356, %368
  %370 = fmul contract double %288, %369
  %371 = fadd contract double %286, %370
  %372 = fptrunc double %371 to float
  %373 = load i32, ptr %38, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t to ptr), i64 0, i64 %374
  %376 = load i32, ptr %37, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [16 x float], ptr %375, i64 0, i64 %377
  store float %372, ptr %378, align 4
  br label %379

379:                                              ; preds = %278, %274, %270, %266, %262, %256, %251, %245, %240
  call void @llvm.nvvm.barrier0()
  %380 = load i32, ptr %59, align 4
  %381 = load i32, ptr %15, align 4
  %382 = sub nsw i32 %381, 1
  %383 = icmp eq i32 %380, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %379
  br label %406

385:                                              ; preds = %379
  %386 = load i8, ptr %58, align 1
  %387 = trunc i8 %386 to i1
  br i1 %387, label %388, label %402

388:                                              ; preds = %385
  %389 = load i32, ptr %38, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t to ptr), i64 0, i64 %390
  %392 = load i32, ptr %37, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [16 x float], ptr %391, i64 0, i64 %393
  %395 = load float, ptr %394, align 4
  %396 = load i32, ptr %38, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to ptr), i64 0, i64 %397
  %399 = load i32, ptr %37, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [16 x float], ptr %398, i64 0, i64 %400
  store float %395, ptr %401, align 4
  br label %402

402:                                              ; preds = %388, %385
  call void @llvm.nvvm.barrier0()
  br label %403

403:                                              ; preds = %402
  %404 = load i32, ptr %59, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, ptr %59, align 4
  br label %236, !llvm.loop !8

406:                                              ; preds = %384, %236
  %407 = load i8, ptr %58, align 1
  %408 = trunc i8 %407 to i1
  br i1 %408, label %409, label %421

409:                                              ; preds = %406
  %410 = load i32, ptr %38, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [16 x [16 x float]], ptr addrspacecast (ptr addrspace(3) @_ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t to ptr), i64 0, i64 %411
  %413 = load i32, ptr %37, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [16 x float], ptr %412, i64 0, i64 %414
  %416 = load float, ptr %415, align 4
  %417 = load ptr, ptr %18, align 8
  %418 = load i32, ptr %49, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds float, ptr %417, i64 %419
  store float %416, ptr %420, align 4
  br label %421

421:                                              ; preds = %409, %406
  ret void
}

declare i32 @vprintf(ptr, ptr)

; Function Attrs: convergent nocallback nounwind
declare void @llvm.nvvm.barrier0() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.x() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare noundef i32 @llvm.nvvm.read.ptx.sreg.tid.y() #3

attributes #0 = { convergent mustprogress noinline nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_52" "target-features"="+ptx78,+sm_52" }
attributes #1 = { convergent mustprogress noinline norecurse nounwind optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_52" "target-features"="+ptx78,+sm_52" }
attributes #2 = { convergent nocallback nounwind }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4}
!llvm.ident = !{!5, !6}
!nvvmir.version = !{!7}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 8]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{ptr @_Z14calculate_tempiPfS_S_iiiiffffff, !"kernel", i32 1}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git d4de7c2e1e7954ea03545f1551fda9f6bb9387cf)"}
!6 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!7 = !{i32 2, i32 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
