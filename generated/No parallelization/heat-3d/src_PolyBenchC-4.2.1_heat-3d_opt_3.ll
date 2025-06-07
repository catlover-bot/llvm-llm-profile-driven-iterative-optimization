; ModuleID = 'outputs/src_PolyBenchC-4.2.1_heat-3d_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_heat-3d_opt_3.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1728000, i32 noundef 8) #7
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1728000, i32 noundef 8) #7
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %4, %6
  %8 = icmp ult i64 %7, 16
  br label %9

9:                                                ; preds = %62, %2
  %10 = phi i64 [ 0, %2 ], [ %63, %62 ]
  %11 = add nuw nsw i64 %10, 120
  br label %12

12:                                               ; preds = %59, %9
  %13 = phi i64 [ 0, %9 ], [ %60, %59 ]
  %14 = add nuw nsw i64 %11, %13
  br i1 %8, label %40, label %15

15:                                               ; preds = %12
  %16 = insertelement <2 x i64> poison, i64 %14, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i64 [ 0, %15 ], [ %37, %18 ]
  %20 = phi <2 x i64> [ <i64 0, i64 1>, %15 ], [ %38, %18 ]
  %21 = sub nuw nsw <2 x i64> %17, %20
  %22 = trunc <2 x i64> %21 to <2 x i32>
  %23 = sitofp <2 x i32> %22 to <2 x double>
  %24 = fmul <2 x double> %23, <double 1.000000e+01, double 1.000000e+01>
  %25 = fdiv <2 x double> %24, <double 1.200000e+02, double 1.200000e+02>
  %26 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %10, i64 %13, i64 %19
  store <2 x double> %25, ptr %26, align 8, !tbaa !5
  %27 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %10, i64 %13, i64 %19
  store <2 x double> %25, ptr %27, align 8, !tbaa !5
  %28 = or disjoint i64 %19, 2
  %29 = add <2 x i64> %20, <i64 2, i64 2>
  %30 = sub nuw nsw <2 x i64> %17, %29
  %31 = trunc <2 x i64> %30 to <2 x i32>
  %32 = sitofp <2 x i32> %31 to <2 x double>
  %33 = fmul <2 x double> %32, <double 1.000000e+01, double 1.000000e+01>
  %34 = fdiv <2 x double> %33, <double 1.200000e+02, double 1.200000e+02>
  %35 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %10, i64 %13, i64 %28
  store <2 x double> %34, ptr %35, align 8, !tbaa !5
  %36 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %10, i64 %13, i64 %28
  store <2 x double> %34, ptr %36, align 8, !tbaa !5
  %37 = add nuw nsw i64 %19, 4
  %38 = add <2 x i64> %20, <i64 4, i64 4>
  %39 = icmp eq i64 %37, 120
  br i1 %39, label %59, label %18, !llvm.loop !9

40:                                               ; preds = %12, %40
  %41 = phi i64 [ %57, %40 ], [ 0, %12 ]
  %42 = sub nuw nsw i64 %14, %41
  %43 = trunc i64 %42 to i32
  %44 = sitofp i32 %43 to double
  %45 = fmul double %44, 1.000000e+01
  %46 = fdiv double %45, 1.200000e+02
  %47 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %10, i64 %13, i64 %41
  store double %46, ptr %47, align 8, !tbaa !5
  %48 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %10, i64 %13, i64 %41
  store double %46, ptr %48, align 8, !tbaa !5
  %49 = or disjoint i64 %41, 1
  %50 = sub nuw nsw i64 %14, %49
  %51 = trunc i64 %50 to i32
  %52 = sitofp i32 %51 to double
  %53 = fmul double %52, 1.000000e+01
  %54 = fdiv double %53, 1.200000e+02
  %55 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %10, i64 %13, i64 %49
  store double %54, ptr %55, align 8, !tbaa !5
  %56 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %10, i64 %13, i64 %49
  store double %54, ptr %56, align 8, !tbaa !5
  %57 = add nuw nsw i64 %41, 2
  %58 = icmp eq i64 %57, 120
  br i1 %58, label %59, label %40, !llvm.loop !13

59:                                               ; preds = %18, %40
  %60 = add nuw nsw i64 %13, 1
  %61 = icmp eq i64 %60, 120
  br i1 %61, label %62, label %12, !llvm.loop !14

62:                                               ; preds = %59
  %63 = add nuw nsw i64 %10, 1
  %64 = icmp eq i64 %63, 120
  br i1 %64, label %65, label %9, !llvm.loop !15

65:                                               ; preds = %62
  %66 = getelementptr i8, ptr %5, i64 116168
  %67 = getelementptr i8, ptr %5, i64 229432
  %68 = getelementptr i8, ptr %3, i64 968
  %69 = getelementptr i8, ptr %3, i64 344632
  %70 = getelementptr i8, ptr %3, i64 116168
  %71 = getelementptr i8, ptr %3, i64 229432
  %72 = getelementptr i8, ptr %5, i64 968
  %73 = getelementptr i8, ptr %5, i64 344632
  br label %74

74:                                               ; preds = %65, %388
  %75 = phi i32 [ %389, %388 ], [ 1, %65 ]
  br label %76

76:                                               ; preds = %228, %74
  %77 = phi i64 [ %231, %228 ], [ 0, %74 ]
  %78 = phi i64 [ %229, %228 ], [ 1, %74 ]
  %79 = mul nuw nsw i64 %77, 115200
  %80 = getelementptr i8, ptr %66, i64 %79
  %81 = getelementptr i8, ptr %67, i64 %79
  %82 = getelementptr i8, ptr %68, i64 %79
  %83 = getelementptr i8, ptr %69, i64 %79
  %84 = getelementptr [120 x [120 x double]], ptr %3, i64 %78
  %85 = icmp ult ptr %80, %83
  %86 = icmp ult ptr %82, %81
  %87 = and i1 %85, %86
  br label %88

88:                                               ; preds = %226, %76
  %89 = phi i64 [ 1, %76 ], [ %94, %226 ]
  %90 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89
  %91 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 1
  %92 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %78, i64 %89, i64 1
  %93 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 2
  %94 = add nuw nsw i64 %89, 1
  %95 = add nsw i64 %89, -1
  br i1 %87, label %161, label %96

96:                                               ; preds = %88
  %97 = getelementptr i8, ptr %90, i64 928
  %98 = getelementptr i8, ptr %93, i64 928
  %99 = getelementptr i8, ptr %92, i64 928
  %100 = getelementptr i8, ptr %91, i64 928
  br label %101

101:                                              ; preds = %101, %96
  %102 = phi i64 [ 0, %96 ], [ %159, %101 ]
  %103 = shl i64 %102, 4
  %104 = getelementptr i8, ptr %90, i64 %103
  %105 = shl i64 %102, 4
  %106 = getelementptr i8, ptr %93, i64 %105
  %107 = shl i64 %102, 4
  %108 = getelementptr i8, ptr %92, i64 %107
  %109 = shl i64 %102, 4
  %110 = getelementptr i8, ptr %91, i64 %109
  %111 = shl i64 %102, 1
  %112 = or disjoint i64 %111, 1
  %113 = load <4 x double>, ptr %110, align 8, !tbaa !5
  %114 = shufflevector <4 x double> %113, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %115 = shufflevector <4 x double> %113, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %116 = getelementptr [120 x [120 x double]], ptr %84, i64 1, i64 %89, i64 %112
  %117 = load <4 x double>, ptr %116, align 8, !tbaa !5
  %118 = shufflevector <4 x double> %117, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %119 = shufflevector <4 x double> %117, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %120 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %114, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %118)
  %121 = getelementptr [120 x [120 x double]], ptr %84, i64 -1, i64 %89, i64 %112
  %122 = load <4 x double>, ptr %121, align 8, !tbaa !5
  %123 = shufflevector <4 x double> %122, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %124 = shufflevector <4 x double> %122, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %125 = fadd <2 x double> %120, %123
  %126 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %94, i64 %112
  %127 = load <4 x double>, ptr %126, align 8, !tbaa !5
  %128 = shufflevector <4 x double> %127, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %129 = shufflevector <4 x double> %127, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %130 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %114, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %128)
  %131 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %95, i64 %112
  %132 = load <4 x double>, ptr %131, align 8, !tbaa !5
  %133 = shufflevector <4 x double> %132, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %134 = shufflevector <4 x double> %132, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %135 = fadd <2 x double> %130, %133
  %136 = fmul <2 x double> %135, <double 1.250000e-01, double 1.250000e-01>
  %137 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %125, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %136)
  %138 = load <4 x double>, ptr %106, align 8, !tbaa !5
  %139 = shufflevector <4 x double> %138, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %140 = shufflevector <4 x double> %138, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %141 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %114, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %139)
  %142 = load <4 x double>, ptr %104, align 8, !tbaa !5
  %143 = shufflevector <4 x double> %142, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %144 = shufflevector <4 x double> %142, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %145 = fadd <2 x double> %141, %143
  %146 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %145, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %137)
  %147 = fadd <2 x double> %114, %146
  %148 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %115, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %119)
  %149 = fadd <2 x double> %148, %124
  %150 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %115, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %129)
  %151 = fadd <2 x double> %150, %134
  %152 = fmul <2 x double> %151, <double 1.250000e-01, double 1.250000e-01>
  %153 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %149, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %152)
  %154 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %115, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %140)
  %155 = fadd <2 x double> %154, %144
  %156 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %155, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %153)
  %157 = fadd <2 x double> %115, %156
  %158 = shufflevector <2 x double> %147, <2 x double> %157, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %158, ptr %108, align 8, !tbaa !5
  %159 = add nuw i64 %102, 2
  %160 = icmp eq i64 %159, 58
  br i1 %160, label %161, label %101, !llvm.loop !16

161:                                              ; preds = %101, %88
  %162 = phi i64 [ 1, %88 ], [ 117, %101 ]
  %163 = phi ptr [ %90, %88 ], [ %97, %101 ]
  %164 = phi ptr [ %93, %88 ], [ %98, %101 ]
  %165 = phi ptr [ %92, %88 ], [ %99, %101 ]
  %166 = phi ptr [ %91, %88 ], [ %100, %101 ]
  br label %167

167:                                              ; preds = %161, %167
  %168 = phi i64 [ %220, %167 ], [ %162, %161 ]
  %169 = phi ptr [ %224, %167 ], [ %163, %161 ]
  %170 = phi ptr [ %223, %167 ], [ %164, %161 ]
  %171 = phi ptr [ %222, %167 ], [ %165, %161 ]
  %172 = phi ptr [ %221, %167 ], [ %166, %161 ]
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = getelementptr inbounds double, ptr %172, i64 1
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = getelementptr [120 x [120 x double]], ptr %84, i64 1, i64 %89, i64 %168
  %177 = load double, ptr %176, align 8, !tbaa !5
  %178 = tail call double @llvm.fmuladd.f64(double %173, double -2.000000e+00, double %177)
  %179 = getelementptr [120 x [120 x double]], ptr %84, i64 -1, i64 %89, i64 %168
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = fadd double %178, %180
  %182 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %94, i64 %168
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = tail call double @llvm.fmuladd.f64(double %173, double -2.000000e+00, double %183)
  %185 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %95, i64 %168
  %186 = load double, ptr %185, align 8, !tbaa !5
  %187 = fadd double %184, %186
  %188 = fmul double %187, 1.250000e-01
  %189 = tail call double @llvm.fmuladd.f64(double %181, double 1.250000e-01, double %188)
  %190 = load double, ptr %170, align 8, !tbaa !5
  %191 = tail call double @llvm.fmuladd.f64(double %173, double -2.000000e+00, double %190)
  %192 = load double, ptr %169, align 8, !tbaa !5
  %193 = fadd double %191, %192
  %194 = tail call double @llvm.fmuladd.f64(double %193, double 1.250000e-01, double %189)
  %195 = fadd double %173, %194
  store double %195, ptr %171, align 8, !tbaa !5
  %196 = add nuw nsw i64 %168, 1
  %197 = getelementptr [120 x [120 x double]], ptr %84, i64 1, i64 %89, i64 %196
  %198 = load double, ptr %197, align 8, !tbaa !5
  %199 = tail call double @llvm.fmuladd.f64(double %175, double -2.000000e+00, double %198)
  %200 = getelementptr [120 x [120 x double]], ptr %84, i64 -1, i64 %89, i64 %196
  %201 = load double, ptr %200, align 8, !tbaa !5
  %202 = fadd double %199, %201
  %203 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %94, i64 %196
  %204 = load double, ptr %203, align 8, !tbaa !5
  %205 = tail call double @llvm.fmuladd.f64(double %175, double -2.000000e+00, double %204)
  %206 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %95, i64 %196
  %207 = load double, ptr %206, align 8, !tbaa !5
  %208 = fadd double %205, %207
  %209 = fmul double %208, 1.250000e-01
  %210 = tail call double @llvm.fmuladd.f64(double %202, double 1.250000e-01, double %209)
  %211 = getelementptr inbounds double, ptr %170, i64 1
  %212 = load double, ptr %211, align 8, !tbaa !5
  %213 = tail call double @llvm.fmuladd.f64(double %175, double -2.000000e+00, double %212)
  %214 = getelementptr inbounds double, ptr %169, i64 1
  %215 = load double, ptr %214, align 8, !tbaa !5
  %216 = fadd double %213, %215
  %217 = tail call double @llvm.fmuladd.f64(double %216, double 1.250000e-01, double %210)
  %218 = fadd double %175, %217
  %219 = getelementptr inbounds double, ptr %171, i64 1
  store double %218, ptr %219, align 8, !tbaa !5
  %220 = add nuw nsw i64 %168, 2
  %221 = getelementptr inbounds double, ptr %172, i64 2
  %222 = getelementptr inbounds double, ptr %171, i64 2
  %223 = getelementptr inbounds double, ptr %170, i64 2
  %224 = getelementptr inbounds double, ptr %169, i64 2
  %225 = icmp ult i64 %168, 117
  br i1 %225, label %167, label %226, !llvm.loop !17

226:                                              ; preds = %167
  %227 = icmp eq i64 %94, 119
  br i1 %227, label %228, label %88, !llvm.loop !18

228:                                              ; preds = %226
  %229 = add nuw nsw i64 %78, 1
  %230 = icmp eq i64 %229, 119
  %231 = add i64 %77, 1
  br i1 %230, label %232, label %76, !llvm.loop !19

232:                                              ; preds = %228, %384
  %233 = phi i64 [ %387, %384 ], [ 0, %228 ]
  %234 = phi i64 [ %385, %384 ], [ 1, %228 ]
  %235 = mul nuw nsw i64 %233, 115200
  %236 = getelementptr i8, ptr %70, i64 %235
  %237 = getelementptr i8, ptr %71, i64 %235
  %238 = getelementptr i8, ptr %72, i64 %235
  %239 = getelementptr i8, ptr %73, i64 %235
  %240 = getelementptr [120 x [120 x double]], ptr %5, i64 %234
  %241 = icmp ult ptr %236, %239
  %242 = icmp ult ptr %238, %237
  %243 = and i1 %241, %242
  br label %244

244:                                              ; preds = %382, %232
  %245 = phi i64 [ 1, %232 ], [ %250, %382 ]
  %246 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %234, i64 %245
  %247 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %234, i64 %245, i64 1
  %248 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %234, i64 %245, i64 1
  %249 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %234, i64 %245, i64 2
  %250 = add nuw nsw i64 %245, 1
  %251 = add nsw i64 %245, -1
  br i1 %243, label %317, label %252

252:                                              ; preds = %244
  %253 = getelementptr i8, ptr %246, i64 928
  %254 = getelementptr i8, ptr %249, i64 928
  %255 = getelementptr i8, ptr %248, i64 928
  %256 = getelementptr i8, ptr %247, i64 928
  br label %257

257:                                              ; preds = %257, %252
  %258 = phi i64 [ 0, %252 ], [ %315, %257 ]
  %259 = shl i64 %258, 4
  %260 = getelementptr i8, ptr %246, i64 %259
  %261 = shl i64 %258, 4
  %262 = getelementptr i8, ptr %249, i64 %261
  %263 = shl i64 %258, 4
  %264 = getelementptr i8, ptr %248, i64 %263
  %265 = shl i64 %258, 4
  %266 = getelementptr i8, ptr %247, i64 %265
  %267 = shl i64 %258, 1
  %268 = or disjoint i64 %267, 1
  %269 = load <4 x double>, ptr %266, align 8, !tbaa !5
  %270 = shufflevector <4 x double> %269, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %271 = shufflevector <4 x double> %269, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %272 = getelementptr [120 x [120 x double]], ptr %240, i64 1, i64 %245, i64 %268
  %273 = load <4 x double>, ptr %272, align 8, !tbaa !5
  %274 = shufflevector <4 x double> %273, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %275 = shufflevector <4 x double> %273, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %276 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %270, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %274)
  %277 = getelementptr [120 x [120 x double]], ptr %240, i64 -1, i64 %245, i64 %268
  %278 = load <4 x double>, ptr %277, align 8, !tbaa !5
  %279 = shufflevector <4 x double> %278, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %280 = shufflevector <4 x double> %278, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %281 = fadd <2 x double> %276, %279
  %282 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %234, i64 %250, i64 %268
  %283 = load <4 x double>, ptr %282, align 8, !tbaa !5
  %284 = shufflevector <4 x double> %283, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %285 = shufflevector <4 x double> %283, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %286 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %270, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %284)
  %287 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %234, i64 %251, i64 %268
  %288 = load <4 x double>, ptr %287, align 8, !tbaa !5
  %289 = shufflevector <4 x double> %288, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %290 = shufflevector <4 x double> %288, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %291 = fadd <2 x double> %286, %289
  %292 = fmul <2 x double> %291, <double 1.250000e-01, double 1.250000e-01>
  %293 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %281, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %292)
  %294 = load <4 x double>, ptr %262, align 8, !tbaa !5
  %295 = shufflevector <4 x double> %294, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %296 = shufflevector <4 x double> %294, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %297 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %270, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %295)
  %298 = load <4 x double>, ptr %260, align 8, !tbaa !5
  %299 = shufflevector <4 x double> %298, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %300 = shufflevector <4 x double> %298, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %301 = fadd <2 x double> %297, %299
  %302 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %301, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %293)
  %303 = fadd <2 x double> %270, %302
  %304 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %271, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %275)
  %305 = fadd <2 x double> %304, %280
  %306 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %271, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %285)
  %307 = fadd <2 x double> %306, %290
  %308 = fmul <2 x double> %307, <double 1.250000e-01, double 1.250000e-01>
  %309 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %305, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %308)
  %310 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %271, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %296)
  %311 = fadd <2 x double> %310, %300
  %312 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %311, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %309)
  %313 = fadd <2 x double> %271, %312
  %314 = shufflevector <2 x double> %303, <2 x double> %313, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %314, ptr %264, align 8, !tbaa !5
  %315 = add nuw i64 %258, 2
  %316 = icmp eq i64 %315, 58
  br i1 %316, label %317, label %257, !llvm.loop !20

317:                                              ; preds = %257, %244
  %318 = phi i64 [ 1, %244 ], [ 117, %257 ]
  %319 = phi ptr [ %246, %244 ], [ %253, %257 ]
  %320 = phi ptr [ %249, %244 ], [ %254, %257 ]
  %321 = phi ptr [ %248, %244 ], [ %255, %257 ]
  %322 = phi ptr [ %247, %244 ], [ %256, %257 ]
  br label %323

323:                                              ; preds = %317, %323
  %324 = phi i64 [ %376, %323 ], [ %318, %317 ]
  %325 = phi ptr [ %380, %323 ], [ %319, %317 ]
  %326 = phi ptr [ %379, %323 ], [ %320, %317 ]
  %327 = phi ptr [ %378, %323 ], [ %321, %317 ]
  %328 = phi ptr [ %377, %323 ], [ %322, %317 ]
  %329 = load double, ptr %328, align 8, !tbaa !5
  %330 = getelementptr inbounds double, ptr %328, i64 1
  %331 = load double, ptr %330, align 8, !tbaa !5
  %332 = getelementptr [120 x [120 x double]], ptr %240, i64 1, i64 %245, i64 %324
  %333 = load double, ptr %332, align 8, !tbaa !5
  %334 = tail call double @llvm.fmuladd.f64(double %329, double -2.000000e+00, double %333)
  %335 = getelementptr [120 x [120 x double]], ptr %240, i64 -1, i64 %245, i64 %324
  %336 = load double, ptr %335, align 8, !tbaa !5
  %337 = fadd double %334, %336
  %338 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %234, i64 %250, i64 %324
  %339 = load double, ptr %338, align 8, !tbaa !5
  %340 = tail call double @llvm.fmuladd.f64(double %329, double -2.000000e+00, double %339)
  %341 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %234, i64 %251, i64 %324
  %342 = load double, ptr %341, align 8, !tbaa !5
  %343 = fadd double %340, %342
  %344 = fmul double %343, 1.250000e-01
  %345 = tail call double @llvm.fmuladd.f64(double %337, double 1.250000e-01, double %344)
  %346 = load double, ptr %326, align 8, !tbaa !5
  %347 = tail call double @llvm.fmuladd.f64(double %329, double -2.000000e+00, double %346)
  %348 = load double, ptr %325, align 8, !tbaa !5
  %349 = fadd double %347, %348
  %350 = tail call double @llvm.fmuladd.f64(double %349, double 1.250000e-01, double %345)
  %351 = fadd double %329, %350
  store double %351, ptr %327, align 8, !tbaa !5
  %352 = add nuw nsw i64 %324, 1
  %353 = getelementptr [120 x [120 x double]], ptr %240, i64 1, i64 %245, i64 %352
  %354 = load double, ptr %353, align 8, !tbaa !5
  %355 = tail call double @llvm.fmuladd.f64(double %331, double -2.000000e+00, double %354)
  %356 = getelementptr [120 x [120 x double]], ptr %240, i64 -1, i64 %245, i64 %352
  %357 = load double, ptr %356, align 8, !tbaa !5
  %358 = fadd double %355, %357
  %359 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %234, i64 %250, i64 %352
  %360 = load double, ptr %359, align 8, !tbaa !5
  %361 = tail call double @llvm.fmuladd.f64(double %331, double -2.000000e+00, double %360)
  %362 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %234, i64 %251, i64 %352
  %363 = load double, ptr %362, align 8, !tbaa !5
  %364 = fadd double %361, %363
  %365 = fmul double %364, 1.250000e-01
  %366 = tail call double @llvm.fmuladd.f64(double %358, double 1.250000e-01, double %365)
  %367 = getelementptr inbounds double, ptr %326, i64 1
  %368 = load double, ptr %367, align 8, !tbaa !5
  %369 = tail call double @llvm.fmuladd.f64(double %331, double -2.000000e+00, double %368)
  %370 = getelementptr inbounds double, ptr %325, i64 1
  %371 = load double, ptr %370, align 8, !tbaa !5
  %372 = fadd double %369, %371
  %373 = tail call double @llvm.fmuladd.f64(double %372, double 1.250000e-01, double %366)
  %374 = fadd double %331, %373
  %375 = getelementptr inbounds double, ptr %327, i64 1
  store double %374, ptr %375, align 8, !tbaa !5
  %376 = add nuw nsw i64 %324, 2
  %377 = getelementptr inbounds double, ptr %328, i64 2
  %378 = getelementptr inbounds double, ptr %327, i64 2
  %379 = getelementptr inbounds double, ptr %326, i64 2
  %380 = getelementptr inbounds double, ptr %325, i64 2
  %381 = icmp ult i64 %324, 117
  br i1 %381, label %323, label %382, !llvm.loop !21

382:                                              ; preds = %323
  %383 = icmp eq i64 %250, 119
  br i1 %383, label %384, label %244, !llvm.loop !22

384:                                              ; preds = %382
  %385 = add nuw nsw i64 %234, 1
  %386 = icmp eq i64 %385, 119
  %387 = add i64 %233, 1
  br i1 %386, label %388, label %232, !llvm.loop !23

388:                                              ; preds = %384
  %389 = add nuw nsw i32 %75, 1
  %390 = icmp eq i32 %389, 501
  br i1 %390, label %391, label %74, !llvm.loop !24

391:                                              ; preds = %388
  %392 = load ptr, ptr @stdout, align 8, !tbaa !25
  %393 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %392)
  %394 = load ptr, ptr @stdout, align 8, !tbaa !25
  %395 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %394, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %396

396:                                              ; preds = %422, %391
  %397 = phi i64 [ 0, %391 ], [ %423, %422 ]
  %398 = mul nuw nsw i64 %397, 14400
  br label %399

399:                                              ; preds = %419, %396
  %400 = phi i64 [ 0, %396 ], [ %420, %419 ]
  %401 = mul nuw nsw i64 %400, 120
  %402 = add nuw nsw i64 %401, %398
  br label %403

403:                                              ; preds = %412, %399
  %404 = phi i64 [ 0, %399 ], [ %417, %412 ]
  %405 = add nuw nsw i64 %402, %404
  %406 = trunc i64 %405 to i32
  %407 = urem i32 %406, 20
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %403
  %410 = load ptr, ptr @stdout, align 8, !tbaa !25
  %411 = tail call i32 @fputc(i32 10, ptr %410)
  br label %412

412:                                              ; preds = %409, %403
  %413 = load ptr, ptr @stdout, align 8, !tbaa !25
  %414 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %397, i64 %400, i64 %404
  %415 = load double, ptr %414, align 8, !tbaa !5
  %416 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %413, ptr noundef nonnull @.str.4, double noundef %415)
  %417 = add nuw nsw i64 %404, 1
  %418 = icmp eq i64 %417, 120
  br i1 %418, label %419, label %403, !llvm.loop !27

419:                                              ; preds = %412
  %420 = add nuw nsw i64 %400, 1
  %421 = icmp eq i64 %420, 120
  br i1 %421, label %422, label %399, !llvm.loop !28

422:                                              ; preds = %419
  %423 = add nuw nsw i64 %397, 1
  %424 = icmp eq i64 %423, 120
  br i1 %424, label %425, label %396, !llvm.loop !29

425:                                              ; preds = %422
  %426 = load ptr, ptr @stdout, align 8, !tbaa !25
  %427 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %426, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %428 = load ptr, ptr @stdout, align 8, !tbaa !25
  %429 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %428)
  tail call void @free(ptr noundef nonnull %3) #7
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
