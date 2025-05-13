; ModuleID = 'outputs/src_PolyBenchC-4.2.1_jacobi-1d_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_jacobi-1d_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #5
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #5
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %3 to i64
  %7 = sub i64 %5, %6
  %8 = icmp ult i64 %7, 16
  br i1 %8, label %31, label %9

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %28, %9 ], [ 0, %2 ]
  %11 = phi <2 x i32> [ %29, %9 ], [ <i32 0, i32 1>, %2 ]
  %12 = sitofp <2 x i32> %11 to <2 x double>
  %13 = fadd <2 x double> %12, <double 2.000000e+00, double 2.000000e+00>
  %14 = fdiv <2 x double> %13, <double 2.000000e+03, double 2.000000e+03>
  %15 = getelementptr inbounds double, ptr %3, i64 %10
  store <2 x double> %14, ptr %15, align 8, !tbaa !5
  %16 = fadd <2 x double> %12, <double 3.000000e+00, double 3.000000e+00>
  %17 = fdiv <2 x double> %16, <double 2.000000e+03, double 2.000000e+03>
  %18 = getelementptr inbounds double, ptr %4, i64 %10
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = or disjoint i64 %10, 2
  %20 = add <2 x i32> %11, <i32 2, i32 2>
  %21 = sitofp <2 x i32> %20 to <2 x double>
  %22 = fadd <2 x double> %21, <double 2.000000e+00, double 2.000000e+00>
  %23 = fdiv <2 x double> %22, <double 2.000000e+03, double 2.000000e+03>
  %24 = getelementptr inbounds double, ptr %3, i64 %19
  store <2 x double> %23, ptr %24, align 8, !tbaa !5
  %25 = fadd <2 x double> %21, <double 3.000000e+00, double 3.000000e+00>
  %26 = fdiv <2 x double> %25, <double 2.000000e+03, double 2.000000e+03>
  %27 = getelementptr inbounds double, ptr %4, i64 %19
  store <2 x double> %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw nsw i64 %10, 4
  %29 = add <2 x i32> %11, <i32 4, i32 4>
  %30 = icmp eq i64 %28, 2000
  br i1 %30, label %52, label %9, !llvm.loop !9

31:                                               ; preds = %2, %31
  %32 = phi i64 [ %50, %31 ], [ 0, %2 ]
  %33 = trunc i64 %32 to i32
  %34 = sitofp i32 %33 to double
  %35 = fadd double %34, 2.000000e+00
  %36 = fdiv double %35, 2.000000e+03
  %37 = getelementptr inbounds double, ptr %3, i64 %32
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = fadd double %34, 3.000000e+00
  %39 = fdiv double %38, 2.000000e+03
  %40 = getelementptr inbounds double, ptr %4, i64 %32
  store double %39, ptr %40, align 8, !tbaa !5
  %41 = or disjoint i64 %32, 1
  %42 = trunc i64 %41 to i32
  %43 = sitofp i32 %42 to double
  %44 = fadd double %43, 2.000000e+00
  %45 = fdiv double %44, 2.000000e+03
  %46 = getelementptr inbounds double, ptr %3, i64 %41
  store double %45, ptr %46, align 8, !tbaa !5
  %47 = fadd double %43, 3.000000e+00
  %48 = fdiv double %47, 2.000000e+03
  %49 = getelementptr inbounds double, ptr %4, i64 %41
  store double %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %32, 2
  %51 = icmp eq i64 %50, 2000
  br i1 %51, label %52, label %31, !llvm.loop !13

52:                                               ; preds = %9, %31
  %53 = getelementptr i8, ptr %3, i64 8
  %54 = getelementptr i8, ptr %3, i64 16008
  %55 = getelementptr i8, ptr %4, i64 16016
  %56 = getelementptr i8, ptr %4, i64 8
  %57 = getelementptr i8, ptr %4, i64 16008
  %58 = getelementptr i8, ptr %3, i64 16016
  %59 = icmp ult ptr %56, %58
  %60 = icmp ult ptr %3, %57
  %61 = and i1 %59, %60
  %62 = getelementptr double, ptr %3, i64 8
  %63 = getelementptr double, ptr %4, i64 -3
  %64 = icmp ult ptr %53, %55
  %65 = icmp ult ptr %4, %54
  %66 = and i1 %64, %65
  %67 = getelementptr double, ptr %4, i64 8
  %68 = getelementptr double, ptr %3, i64 -3
  br label %69

69:                                               ; preds = %304, %52
  %70 = phi i32 [ %305, %304 ], [ 0, %52 ]
  br i1 %61, label %146, label %71

71:                                               ; preds = %69, %71
  %72 = phi i64 [ %144, %71 ], [ 0, %69 ]
  %73 = shl i64 %72, 2
  %74 = or disjoint i64 %73, 1
  %75 = or disjoint i64 %73, 5
  %76 = getelementptr double, ptr %3, i64 %74
  %77 = getelementptr double, ptr %3, i64 %75
  %78 = getelementptr double, ptr %76, i64 -1
  %79 = getelementptr double, ptr %77, i64 -1
  %80 = load double, ptr %78, align 8, !tbaa !5, !alias.scope !14
  %81 = load double, ptr %79, align 8, !tbaa !5, !alias.scope !14
  %82 = insertelement <2 x double> poison, double %80, i64 0
  %83 = insertelement <2 x double> %82, double %81, i64 1
  %84 = load double, ptr %76, align 8, !tbaa !5, !alias.scope !14
  %85 = load double, ptr %77, align 8, !tbaa !5, !alias.scope !14
  %86 = insertelement <2 x double> poison, double %84, i64 0
  %87 = insertelement <2 x double> %86, double %85, i64 1
  %88 = fadd <2 x double> %83, %87
  %89 = or disjoint i64 %73, 2
  %90 = or disjoint i64 %73, 6
  %91 = getelementptr inbounds double, ptr %3, i64 %89
  %92 = getelementptr inbounds double, ptr %3, i64 %90
  %93 = load double, ptr %91, align 8, !tbaa !5, !alias.scope !14
  %94 = load double, ptr %92, align 8, !tbaa !5, !alias.scope !14
  %95 = insertelement <2 x double> poison, double %93, i64 0
  %96 = insertelement <2 x double> %95, double %94, i64 1
  %97 = fadd <2 x double> %88, %96
  %98 = fmul <2 x double> %97, <double 3.333300e-01, double 3.333300e-01>
  %99 = load double, ptr %76, align 8, !tbaa !5, !alias.scope !14
  %100 = load double, ptr %77, align 8, !tbaa !5, !alias.scope !14
  %101 = insertelement <2 x double> poison, double %99, i64 0
  %102 = insertelement <2 x double> %101, double %100, i64 1
  %103 = load double, ptr %91, align 8, !tbaa !5, !alias.scope !14
  %104 = load double, ptr %92, align 8, !tbaa !5, !alias.scope !14
  %105 = insertelement <2 x double> poison, double %103, i64 0
  %106 = insertelement <2 x double> %105, double %104, i64 1
  %107 = fadd <2 x double> %102, %106
  %108 = or disjoint i64 %73, 3
  %109 = or disjoint i64 %73, 7
  %110 = getelementptr inbounds double, ptr %3, i64 %108
  %111 = getelementptr inbounds double, ptr %3, i64 %109
  %112 = load double, ptr %110, align 8, !tbaa !5, !alias.scope !14
  %113 = load double, ptr %111, align 8, !tbaa !5, !alias.scope !14
  %114 = insertelement <2 x double> poison, double %112, i64 0
  %115 = insertelement <2 x double> %114, double %113, i64 1
  %116 = fadd <2 x double> %107, %115
  %117 = fmul <2 x double> %116, <double 3.333300e-01, double 3.333300e-01>
  %118 = load <8 x double>, ptr %91, align 8, !tbaa !5
  %119 = shufflevector <8 x double> %118, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %120 = shufflevector <8 x double> %118, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %121 = shufflevector <8 x double> %118, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %122 = shufflevector <8 x double> %118, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %123 = load double, ptr %110, align 8, !tbaa !5, !alias.scope !14
  %124 = load double, ptr %111, align 8, !tbaa !5, !alias.scope !14
  %125 = insertelement <2 x double> poison, double %123, i64 0
  %126 = insertelement <2 x double> %125, double %124, i64 1
  %127 = fadd <2 x double> %119, %126
  %128 = or disjoint i64 %73, 4
  %129 = getelementptr inbounds double, ptr %3, i64 %128
  %130 = getelementptr double, ptr %62, i64 %73
  %131 = load double, ptr %129, align 8, !tbaa !5, !alias.scope !14
  %132 = load double, ptr %130, align 8, !tbaa !5, !alias.scope !14
  %133 = insertelement <2 x double> poison, double %131, i64 0
  %134 = insertelement <2 x double> %133, double %132, i64 1
  %135 = fadd <2 x double> %127, %134
  %136 = fmul <2 x double> %135, <double 3.333300e-01, double 3.333300e-01>
  %137 = fadd <2 x double> %120, %121
  %138 = fadd <2 x double> %137, %122
  %139 = fmul <2 x double> %138, <double 3.333300e-01, double 3.333300e-01>
  %140 = getelementptr double, ptr %63, i64 %128
  %141 = shufflevector <2 x double> %98, <2 x double> %117, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %142 = shufflevector <2 x double> %136, <2 x double> %139, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %143 = shufflevector <4 x double> %141, <4 x double> %142, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %143, ptr %140, align 8, !tbaa !5
  %144 = add nuw i64 %72, 2
  %145 = icmp eq i64 %144, 500
  br i1 %145, label %187, label %71, !llvm.loop !17

146:                                              ; preds = %69, %146
  %147 = phi i64 [ %180, %146 ], [ 1, %69 ]
  %148 = getelementptr double, ptr %3, i64 %147
  %149 = getelementptr double, ptr %148, i64 -1
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = load double, ptr %148, align 8, !tbaa !5
  %152 = fadd double %150, %151
  %153 = add nuw nsw i64 %147, 1
  %154 = getelementptr inbounds double, ptr %3, i64 %153
  %155 = load double, ptr %154, align 8, !tbaa !5
  %156 = fadd double %152, %155
  %157 = fmul double %156, 3.333300e-01
  %158 = getelementptr inbounds double, ptr %4, i64 %147
  store double %157, ptr %158, align 8, !tbaa !5
  %159 = load double, ptr %148, align 8, !tbaa !5
  %160 = load double, ptr %154, align 8, !tbaa !5
  %161 = fadd double %159, %160
  %162 = add nuw nsw i64 %147, 2
  %163 = getelementptr inbounds double, ptr %3, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = fadd double %161, %164
  %166 = fmul double %165, 3.333300e-01
  %167 = getelementptr inbounds double, ptr %4, i64 %153
  store double %166, ptr %167, align 8, !tbaa !5
  %168 = load double, ptr %154, align 8, !tbaa !5
  %169 = load double, ptr %163, align 8, !tbaa !5
  %170 = fadd double %168, %169
  %171 = add nuw nsw i64 %147, 3
  %172 = getelementptr inbounds double, ptr %3, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = fadd double %170, %173
  %175 = fmul double %174, 3.333300e-01
  %176 = getelementptr inbounds double, ptr %4, i64 %162
  store double %175, ptr %176, align 8, !tbaa !5
  %177 = load double, ptr %163, align 8, !tbaa !5
  %178 = load double, ptr %172, align 8, !tbaa !5
  %179 = fadd double %177, %178
  %180 = add nuw nsw i64 %147, 4
  %181 = getelementptr inbounds double, ptr %3, i64 %180
  %182 = load double, ptr %181, align 8, !tbaa !5
  %183 = fadd double %179, %182
  %184 = fmul double %183, 3.333300e-01
  %185 = getelementptr inbounds double, ptr %4, i64 %171
  store double %184, ptr %185, align 8, !tbaa !5
  %186 = icmp ult i64 %147, 1995
  br i1 %186, label %146, label %187, !llvm.loop !18

187:                                              ; preds = %71, %146
  br i1 %66, label %263, label %188

188:                                              ; preds = %187, %188
  %189 = phi i64 [ %261, %188 ], [ 0, %187 ]
  %190 = shl i64 %189, 2
  %191 = or disjoint i64 %190, 1
  %192 = or disjoint i64 %190, 5
  %193 = getelementptr double, ptr %4, i64 %191
  %194 = getelementptr double, ptr %4, i64 %192
  %195 = getelementptr double, ptr %193, i64 -1
  %196 = getelementptr double, ptr %194, i64 -1
  %197 = load double, ptr %195, align 8, !tbaa !5, !alias.scope !19
  %198 = load double, ptr %196, align 8, !tbaa !5, !alias.scope !19
  %199 = insertelement <2 x double> poison, double %197, i64 0
  %200 = insertelement <2 x double> %199, double %198, i64 1
  %201 = load double, ptr %193, align 8, !tbaa !5, !alias.scope !19
  %202 = load double, ptr %194, align 8, !tbaa !5, !alias.scope !19
  %203 = insertelement <2 x double> poison, double %201, i64 0
  %204 = insertelement <2 x double> %203, double %202, i64 1
  %205 = fadd <2 x double> %200, %204
  %206 = or disjoint i64 %190, 2
  %207 = or disjoint i64 %190, 6
  %208 = getelementptr inbounds double, ptr %4, i64 %206
  %209 = getelementptr inbounds double, ptr %4, i64 %207
  %210 = load double, ptr %208, align 8, !tbaa !5, !alias.scope !19
  %211 = load double, ptr %209, align 8, !tbaa !5, !alias.scope !19
  %212 = insertelement <2 x double> poison, double %210, i64 0
  %213 = insertelement <2 x double> %212, double %211, i64 1
  %214 = fadd <2 x double> %205, %213
  %215 = fmul <2 x double> %214, <double 3.333300e-01, double 3.333300e-01>
  %216 = load double, ptr %193, align 8, !tbaa !5, !alias.scope !19
  %217 = load double, ptr %194, align 8, !tbaa !5, !alias.scope !19
  %218 = insertelement <2 x double> poison, double %216, i64 0
  %219 = insertelement <2 x double> %218, double %217, i64 1
  %220 = load double, ptr %208, align 8, !tbaa !5, !alias.scope !19
  %221 = load double, ptr %209, align 8, !tbaa !5, !alias.scope !19
  %222 = insertelement <2 x double> poison, double %220, i64 0
  %223 = insertelement <2 x double> %222, double %221, i64 1
  %224 = fadd <2 x double> %219, %223
  %225 = or disjoint i64 %190, 3
  %226 = or disjoint i64 %190, 7
  %227 = getelementptr inbounds double, ptr %4, i64 %225
  %228 = getelementptr inbounds double, ptr %4, i64 %226
  %229 = load double, ptr %227, align 8, !tbaa !5, !alias.scope !19
  %230 = load double, ptr %228, align 8, !tbaa !5, !alias.scope !19
  %231 = insertelement <2 x double> poison, double %229, i64 0
  %232 = insertelement <2 x double> %231, double %230, i64 1
  %233 = fadd <2 x double> %224, %232
  %234 = fmul <2 x double> %233, <double 3.333300e-01, double 3.333300e-01>
  %235 = load <8 x double>, ptr %208, align 8, !tbaa !5
  %236 = shufflevector <8 x double> %235, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %237 = shufflevector <8 x double> %235, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %238 = shufflevector <8 x double> %235, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %239 = shufflevector <8 x double> %235, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %240 = load double, ptr %227, align 8, !tbaa !5, !alias.scope !19
  %241 = load double, ptr %228, align 8, !tbaa !5, !alias.scope !19
  %242 = insertelement <2 x double> poison, double %240, i64 0
  %243 = insertelement <2 x double> %242, double %241, i64 1
  %244 = fadd <2 x double> %236, %243
  %245 = or disjoint i64 %190, 4
  %246 = getelementptr inbounds double, ptr %4, i64 %245
  %247 = getelementptr double, ptr %67, i64 %190
  %248 = load double, ptr %246, align 8, !tbaa !5, !alias.scope !19
  %249 = load double, ptr %247, align 8, !tbaa !5, !alias.scope !19
  %250 = insertelement <2 x double> poison, double %248, i64 0
  %251 = insertelement <2 x double> %250, double %249, i64 1
  %252 = fadd <2 x double> %244, %251
  %253 = fmul <2 x double> %252, <double 3.333300e-01, double 3.333300e-01>
  %254 = fadd <2 x double> %237, %238
  %255 = fadd <2 x double> %254, %239
  %256 = fmul <2 x double> %255, <double 3.333300e-01, double 3.333300e-01>
  %257 = getelementptr double, ptr %68, i64 %245
  %258 = shufflevector <2 x double> %215, <2 x double> %234, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %259 = shufflevector <2 x double> %253, <2 x double> %256, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %260 = shufflevector <4 x double> %258, <4 x double> %259, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %260, ptr %257, align 8, !tbaa !5
  %261 = add nuw i64 %189, 2
  %262 = icmp eq i64 %261, 500
  br i1 %262, label %304, label %188, !llvm.loop !22

263:                                              ; preds = %187, %263
  %264 = phi i64 [ %297, %263 ], [ 1, %187 ]
  %265 = getelementptr double, ptr %4, i64 %264
  %266 = getelementptr double, ptr %265, i64 -1
  %267 = load double, ptr %266, align 8, !tbaa !5
  %268 = load double, ptr %265, align 8, !tbaa !5
  %269 = fadd double %267, %268
  %270 = add nuw nsw i64 %264, 1
  %271 = getelementptr inbounds double, ptr %4, i64 %270
  %272 = load double, ptr %271, align 8, !tbaa !5
  %273 = fadd double %269, %272
  %274 = fmul double %273, 3.333300e-01
  %275 = getelementptr inbounds double, ptr %3, i64 %264
  store double %274, ptr %275, align 8, !tbaa !5
  %276 = load double, ptr %265, align 8, !tbaa !5
  %277 = load double, ptr %271, align 8, !tbaa !5
  %278 = fadd double %276, %277
  %279 = add nuw nsw i64 %264, 2
  %280 = getelementptr inbounds double, ptr %4, i64 %279
  %281 = load double, ptr %280, align 8, !tbaa !5
  %282 = fadd double %278, %281
  %283 = fmul double %282, 3.333300e-01
  %284 = getelementptr inbounds double, ptr %3, i64 %270
  store double %283, ptr %284, align 8, !tbaa !5
  %285 = load double, ptr %271, align 8, !tbaa !5
  %286 = load double, ptr %280, align 8, !tbaa !5
  %287 = fadd double %285, %286
  %288 = add nuw nsw i64 %264, 3
  %289 = getelementptr inbounds double, ptr %4, i64 %288
  %290 = load double, ptr %289, align 8, !tbaa !5
  %291 = fadd double %287, %290
  %292 = fmul double %291, 3.333300e-01
  %293 = getelementptr inbounds double, ptr %3, i64 %279
  store double %292, ptr %293, align 8, !tbaa !5
  %294 = load double, ptr %280, align 8, !tbaa !5
  %295 = load double, ptr %289, align 8, !tbaa !5
  %296 = fadd double %294, %295
  %297 = add nuw nsw i64 %264, 4
  %298 = getelementptr inbounds double, ptr %4, i64 %297
  %299 = load double, ptr %298, align 8, !tbaa !5
  %300 = fadd double %296, %299
  %301 = fmul double %300, 3.333300e-01
  %302 = getelementptr inbounds double, ptr %3, i64 %288
  store double %301, ptr %302, align 8, !tbaa !5
  %303 = icmp ult i64 %264, 1995
  br i1 %303, label %263, label %304, !llvm.loop !23

304:                                              ; preds = %188, %263
  %305 = add nuw nsw i32 %70, 1
  %306 = icmp eq i32 %305, 500
  br i1 %306, label %307, label %69, !llvm.loop !24

307:                                              ; preds = %304
  %308 = load ptr, ptr @stdout, align 8, !tbaa !25
  %309 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %308)
  %310 = load ptr, ptr @stdout, align 8, !tbaa !25
  %311 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %310, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %312

312:                                              ; preds = %320, %307
  %313 = phi i64 [ 0, %307 ], [ %325, %320 ]
  %314 = trunc i64 %313 to i16
  %315 = urem i16 %314, 20
  %316 = icmp eq i16 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %312
  %318 = load ptr, ptr @stdout, align 8, !tbaa !25
  %319 = tail call i32 @fputc(i32 10, ptr %318)
  br label %320

320:                                              ; preds = %317, %312
  %321 = load ptr, ptr @stdout, align 8, !tbaa !25
  %322 = getelementptr inbounds double, ptr %3, i64 %313
  %323 = load double, ptr %322, align 8, !tbaa !5
  %324 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %321, ptr noundef nonnull @.str.4, double noundef %323)
  %325 = add nuw nsw i64 %313, 1
  %326 = icmp eq i64 %325, 2000
  br i1 %326, label %327, label %312, !llvm.loop !27

327:                                              ; preds = %320
  %328 = load ptr, ptr @stdout, align 8, !tbaa !25
  %329 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %330 = load ptr, ptr @stdout, align 8, !tbaa !25
  %331 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %330)
  tail call void @free(ptr noundef nonnull %3) #5
  tail call void @free(ptr noundef %4) #5
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !11}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !11}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10}
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = distinct !{!27, !10}
