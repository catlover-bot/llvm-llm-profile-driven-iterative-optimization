; ModuleID = 'outputs/src_PolyBenchC-4.2.1_fdtd-2d_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_fdtd-2d_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"hz\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %6 = ptrtoint ptr %5 to i64
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %8 = ptrtoint ptr %7 to i64
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 500, i32 noundef 8) #7
  br label %10

10:                                               ; preds = %20, %2
  %11 = phi i64 [ 0, %2 ], [ %27, %20 ]
  %12 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %28, %20 ]
  %13 = add <2 x i32> %12, <i32 2, i32 2>
  %14 = sitofp <2 x i32> %12 to <2 x double>
  %15 = sitofp <2 x i32> %13 to <2 x double>
  %16 = getelementptr inbounds double, ptr %9, i64 %11
  %17 = getelementptr inbounds double, ptr %16, i64 2
  store <2 x double> %14, ptr %16, align 8, !tbaa !5
  store <2 x double> %15, ptr %17, align 8, !tbaa !5
  %18 = or disjoint i64 %11, 4
  %19 = icmp eq i64 %18, 500
  br i1 %19, label %29, label %20, !llvm.loop !9

20:                                               ; preds = %10
  %21 = add <2 x i32> %12, <i32 4, i32 4>
  %22 = add <2 x i32> %12, <i32 6, i32 6>
  %23 = sitofp <2 x i32> %21 to <2 x double>
  %24 = sitofp <2 x i32> %22 to <2 x double>
  %25 = getelementptr inbounds double, ptr %9, i64 %18
  %26 = getelementptr inbounds double, ptr %25, i64 2
  store <2 x double> %23, ptr %25, align 8, !tbaa !5
  store <2 x double> %24, ptr %26, align 8, !tbaa !5
  %27 = add nuw nsw i64 %11, 8
  %28 = add <2 x i32> %12, <i32 8, i32 8>
  br label %10

29:                                               ; preds = %10
  %30 = sub i64 %6, %4
  %31 = sub i64 %8, %4
  %32 = sub i64 %8, %6
  %33 = icmp ult i64 %30, 16
  %34 = icmp ult i64 %31, 16
  %35 = or i1 %33, %34
  %36 = icmp ult i64 %32, 16
  %37 = or i1 %35, %36
  br label %38

38:                                               ; preds = %29, %89
  %39 = phi i64 [ %90, %89 ], [ 0, %29 ]
  %40 = trunc i64 %39 to i32
  %41 = sitofp i32 %40 to double
  br i1 %37, label %69, label %42

42:                                               ; preds = %38
  %43 = insertelement <2 x double> poison, double %41, i64 0
  %44 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> zeroinitializer
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi i64 [ 0, %42 ], [ %65, %45 ]
  %47 = phi <2 x i64> [ <i64 0, i64 1>, %42 ], [ %66, %45 ]
  %48 = phi <2 x i32> [ <i32 0, i32 1>, %42 ], [ %67, %45 ]
  %49 = trunc <2 x i64> %47 to <2 x i32>
  %50 = add <2 x i32> %49, <i32 1, i32 1>
  %51 = sitofp <2 x i32> %50 to <2 x double>
  %52 = fmul <2 x double> %44, %51
  %53 = fdiv <2 x double> %52, <double 1.000000e+03, double 1.000000e+03>
  %54 = getelementptr inbounds [1200 x double], ptr %3, i64 %39, i64 %46
  store <2 x double> %53, ptr %54, align 8, !tbaa !5
  %55 = add <2 x i32> %48, <i32 2, i32 2>
  %56 = sitofp <2 x i32> %55 to <2 x double>
  %57 = fmul <2 x double> %44, %56
  %58 = fdiv <2 x double> %57, <double 1.200000e+03, double 1.200000e+03>
  %59 = getelementptr inbounds [1200 x double], ptr %5, i64 %39, i64 %46
  store <2 x double> %58, ptr %59, align 8, !tbaa !5
  %60 = add <2 x i32> %48, <i32 3, i32 3>
  %61 = sitofp <2 x i32> %60 to <2 x double>
  %62 = fmul <2 x double> %44, %61
  %63 = fdiv <2 x double> %62, <double 1.000000e+03, double 1.000000e+03>
  %64 = getelementptr inbounds [1200 x double], ptr %7, i64 %39, i64 %46
  store <2 x double> %63, ptr %64, align 8, !tbaa !5
  %65 = add nuw i64 %46, 2
  %66 = add <2 x i64> %47, <i64 2, i64 2>
  %67 = add <2 x i32> %48, <i32 2, i32 2>
  %68 = icmp eq i64 %65, 1200
  br i1 %68, label %89, label %45, !llvm.loop !13

69:                                               ; preds = %38, %69
  %70 = phi i64 [ %71, %69 ], [ 0, %38 ]
  %71 = add nuw nsw i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = sitofp i32 %72 to double
  %74 = fmul double %41, %73
  %75 = fdiv double %74, 1.000000e+03
  %76 = getelementptr inbounds [1200 x double], ptr %3, i64 %39, i64 %70
  store double %75, ptr %76, align 8, !tbaa !5
  %77 = trunc i64 %70 to i32
  %78 = add i32 %77, 2
  %79 = sitofp i32 %78 to double
  %80 = fmul double %41, %79
  %81 = fdiv double %80, 1.200000e+03
  %82 = getelementptr inbounds [1200 x double], ptr %5, i64 %39, i64 %70
  store double %81, ptr %82, align 8, !tbaa !5
  %83 = add i32 %77, 3
  %84 = sitofp i32 %83 to double
  %85 = fmul double %41, %84
  %86 = fdiv double %85, 1.000000e+03
  %87 = getelementptr inbounds [1200 x double], ptr %7, i64 %39, i64 %70
  store double %86, ptr %87, align 8, !tbaa !5
  %88 = icmp eq i64 %71, 1200
  br i1 %88, label %89, label %69, !llvm.loop !14

89:                                               ; preds = %45, %69
  %90 = add nuw nsw i64 %39, 1
  %91 = icmp eq i64 %90, 1000
  br i1 %91, label %92, label %38, !llvm.loop !15

92:                                               ; preds = %89
  %93 = getelementptr i8, ptr %3, i64 16
  %94 = getelementptr i8, ptr %3, i64 9600000
  %95 = getelementptr i8, ptr %7, i64 8
  %96 = getelementptr i8, ptr %7, i64 9600000
  %97 = getelementptr i8, ptr %5, i64 9600
  %98 = getelementptr i8, ptr %5, i64 9600000
  %99 = icmp ult ptr %97, %96
  %100 = icmp ult ptr %7, %98
  %101 = and i1 %99, %100
  %102 = getelementptr double, ptr %5, i64 -1
  %103 = icmp ult ptr %93, %96
  %104 = icmp ult ptr %95, %94
  %105 = and i1 %103, %104
  %106 = getelementptr double, ptr %7, i64 -1
  %107 = getelementptr double, ptr %7, i64 -1
  %108 = getelementptr double, ptr %3, i64 -1
  br label %109

109:                                              ; preds = %291, %92
  %110 = phi i64 [ %292, %291 ], [ 0, %92 ]
  %111 = getelementptr inbounds double, ptr %9, i64 %110
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = insertelement <2 x double> poison, double %112, i64 0
  %114 = shufflevector <2 x double> %113, <2 x double> poison, <2 x i32> zeroinitializer
  br label %115

115:                                              ; preds = %115, %109
  %116 = phi i64 [ 0, %109 ], [ %134, %115 ]
  %117 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %116
  %118 = getelementptr inbounds double, ptr %117, i64 2
  store <2 x double> %114, ptr %117, align 8, !tbaa !5
  store <2 x double> %114, ptr %118, align 8, !tbaa !5
  %119 = or disjoint i64 %116, 4
  %120 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %119
  %121 = getelementptr inbounds double, ptr %120, i64 2
  store <2 x double> %114, ptr %120, align 8, !tbaa !5
  store <2 x double> %114, ptr %121, align 8, !tbaa !5
  %122 = add nuw nsw i64 %116, 8
  %123 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %122
  %124 = getelementptr inbounds double, ptr %123, i64 2
  store <2 x double> %114, ptr %123, align 8, !tbaa !5
  store <2 x double> %114, ptr %124, align 8, !tbaa !5
  %125 = add nuw nsw i64 %116, 12
  %126 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %125
  %127 = getelementptr inbounds double, ptr %126, i64 2
  store <2 x double> %114, ptr %126, align 8, !tbaa !5
  store <2 x double> %114, ptr %127, align 8, !tbaa !5
  %128 = add nuw nsw i64 %116, 16
  %129 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %128
  %130 = getelementptr inbounds double, ptr %129, i64 2
  store <2 x double> %114, ptr %129, align 8, !tbaa !5
  store <2 x double> %114, ptr %130, align 8, !tbaa !5
  %131 = add nuw nsw i64 %116, 20
  %132 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %131
  %133 = getelementptr inbounds double, ptr %132, i64 2
  store <2 x double> %114, ptr %132, align 8, !tbaa !5
  store <2 x double> %114, ptr %133, align 8, !tbaa !5
  %134 = add nuw nsw i64 %116, 24
  %135 = icmp eq i64 %134, 1200
  br i1 %135, label %136, label %115, !llvm.loop !16

136:                                              ; preds = %115, %182
  %137 = phi i64 [ %183, %182 ], [ 1, %115 ]
  %138 = getelementptr [1200 x double], ptr %7, i64 %137
  br i1 %101, label %161, label %139

139:                                              ; preds = %136, %139
  %140 = phi i64 [ %159, %139 ], [ 0, %136 ]
  %141 = shl i64 %140, 1
  %142 = getelementptr inbounds [1200 x double], ptr %7, i64 %137, i64 %141
  %143 = load <4 x double>, ptr %142, align 8, !tbaa !5
  %144 = getelementptr [1200 x double], ptr %138, i64 -1, i64 %141
  %145 = load <4 x double>, ptr %144, align 8, !tbaa !5
  %146 = fsub <4 x double> %143, %145
  %147 = shufflevector <4 x double> %146, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %148 = getelementptr inbounds [1200 x double], ptr %5, i64 %137, i64 %141
  %149 = load <4 x double>, ptr %148, align 8, !tbaa !5
  %150 = shufflevector <4 x double> %149, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %151 = shufflevector <4 x double> %149, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %152 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %147, <2 x double> <double -5.000000e-01, double -5.000000e-01>, <2 x double> %150)
  %153 = or disjoint i64 %141, 1
  %154 = fsub <4 x double> %143, %145
  %155 = shufflevector <4 x double> %154, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %156 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %155, <2 x double> <double -5.000000e-01, double -5.000000e-01>, <2 x double> %151)
  %157 = getelementptr [1200 x double], ptr %102, i64 %137, i64 %153
  %158 = shufflevector <2 x double> %152, <2 x double> %156, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %158, ptr %157, align 8, !tbaa !5
  %159 = add nuw i64 %140, 2
  %160 = icmp eq i64 %159, 600
  br i1 %160, label %182, label %139, !llvm.loop !17

161:                                              ; preds = %136, %161
  %162 = phi i64 [ %180, %161 ], [ 0, %136 ]
  %163 = getelementptr inbounds [1200 x double], ptr %7, i64 %137, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = getelementptr [1200 x double], ptr %138, i64 -1, i64 %162
  %166 = load double, ptr %165, align 8, !tbaa !5
  %167 = fsub double %164, %166
  %168 = getelementptr inbounds [1200 x double], ptr %5, i64 %137, i64 %162
  %169 = load double, ptr %168, align 8, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %167, double -5.000000e-01, double %169)
  store double %170, ptr %168, align 8, !tbaa !5
  %171 = or disjoint i64 %162, 1
  %172 = getelementptr inbounds [1200 x double], ptr %7, i64 %137, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = getelementptr [1200 x double], ptr %138, i64 -1, i64 %171
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = fsub double %173, %175
  %177 = getelementptr inbounds [1200 x double], ptr %5, i64 %137, i64 %171
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = tail call double @llvm.fmuladd.f64(double %176, double -5.000000e-01, double %178)
  store double %179, ptr %177, align 8, !tbaa !5
  %180 = add nuw nsw i64 %162, 2
  %181 = icmp ult i64 %162, 1198
  br i1 %181, label %161, label %182, !llvm.loop !18

182:                                              ; preds = %139, %161
  %183 = add nuw nsw i64 %137, 1
  %184 = icmp eq i64 %183, 1000
  br i1 %184, label %185, label %136, !llvm.loop !19

185:                                              ; preds = %182, %247
  %186 = phi i64 [ %248, %247 ], [ 0, %182 ]
  %187 = getelementptr inbounds [1200 x double], ptr %7, i64 %186, i64 1
  %188 = load double, ptr %187, align 8, !tbaa !5
  %189 = getelementptr inbounds [1200 x double], ptr %7, i64 %186, i64 0
  %190 = load double, ptr %189, align 8, !tbaa !5
  %191 = fsub double %188, %190
  %192 = getelementptr inbounds [1200 x double], ptr %3, i64 %186, i64 1
  %193 = load double, ptr %192, align 8, !tbaa !5
  %194 = tail call double @llvm.fmuladd.f64(double %191, double -5.000000e-01, double %193)
  store double %194, ptr %192, align 8, !tbaa !5
  br i1 %105, label %222, label %195

195:                                              ; preds = %185
  %196 = getelementptr i8, ptr %187, i64 9568
  br label %197

197:                                              ; preds = %197, %195
  %198 = phi i64 [ 0, %195 ], [ %220, %197 ]
  %199 = shl i64 %198, 1
  %200 = or disjoint i64 %199, 2
  %201 = getelementptr [1200 x double], ptr %106, i64 %186, i64 %200
  %202 = load <4 x double>, ptr %201, align 8, !tbaa !5
  %203 = shufflevector <4 x double> %202, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %204 = shufflevector <4 x double> %202, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %205 = fsub <2 x double> %204, %203
  %206 = getelementptr inbounds [1200 x double], ptr %3, i64 %186, i64 %200
  %207 = load <4 x double>, ptr %206, align 8, !tbaa !5
  %208 = shufflevector <4 x double> %207, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %209 = shufflevector <4 x double> %207, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %210 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %205, <2 x double> <double -5.000000e-01, double -5.000000e-01>, <2 x double> %208)
  %211 = or disjoint i64 %199, 3
  %212 = getelementptr [1200 x double], ptr %107, i64 %186, i64 %211
  %213 = load <4 x double>, ptr %212, align 8, !tbaa !5
  %214 = shufflevector <4 x double> %213, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %215 = shufflevector <4 x double> %213, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %216 = fsub <2 x double> %215, %214
  %217 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %216, <2 x double> <double -5.000000e-01, double -5.000000e-01>, <2 x double> %209)
  %218 = getelementptr [1200 x double], ptr %108, i64 %186, i64 %211
  %219 = shufflevector <2 x double> %210, <2 x double> %217, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %219, ptr %218, align 8, !tbaa !5
  %220 = add nuw i64 %198, 2
  %221 = icmp eq i64 %220, 598
  br i1 %221, label %222, label %197, !llvm.loop !20

222:                                              ; preds = %197, %185
  %223 = phi ptr [ %187, %185 ], [ %196, %197 ]
  %224 = phi i64 [ 1, %185 ], [ 1197, %197 ]
  br label %225

225:                                              ; preds = %222, %225
  %226 = phi ptr [ %237, %225 ], [ %223, %222 ]
  %227 = phi i64 [ %236, %225 ], [ %224, %222 ]
  %228 = add nuw nsw i64 %227, 1
  %229 = getelementptr inbounds [1200 x double], ptr %7, i64 %186, i64 %228
  %230 = load double, ptr %229, align 8, !tbaa !5
  %231 = load double, ptr %226, align 8, !tbaa !5
  %232 = fsub double %230, %231
  %233 = getelementptr inbounds [1200 x double], ptr %3, i64 %186, i64 %228
  %234 = load double, ptr %233, align 8, !tbaa !5
  %235 = tail call double @llvm.fmuladd.f64(double %232, double -5.000000e-01, double %234)
  store double %235, ptr %233, align 8, !tbaa !5
  %236 = add nuw nsw i64 %227, 2
  %237 = getelementptr inbounds [1200 x double], ptr %7, i64 %186, i64 %236
  %238 = load double, ptr %237, align 8, !tbaa !5
  %239 = add nuw nsw i64 %227, 1
  %240 = getelementptr inbounds [1200 x double], ptr %7, i64 %186, i64 %239
  %241 = load double, ptr %240, align 8, !tbaa !5
  %242 = fsub double %238, %241
  %243 = getelementptr inbounds [1200 x double], ptr %3, i64 %186, i64 %236
  %244 = load double, ptr %243, align 8, !tbaa !5
  %245 = tail call double @llvm.fmuladd.f64(double %242, double -5.000000e-01, double %244)
  store double %245, ptr %243, align 8, !tbaa !5
  %246 = icmp eq i64 %236, 1199
  br i1 %246, label %247, label %225, !llvm.loop !21

247:                                              ; preds = %225
  %248 = add nuw nsw i64 %186, 1
  %249 = icmp eq i64 %248, 1000
  br i1 %249, label %250, label %185, !llvm.loop !22

250:                                              ; preds = %247, %288
  %251 = phi i64 [ %289, %288 ], [ 0, %247 ]
  %252 = getelementptr [1200 x double], ptr %5, i64 %251
  br label %253

253:                                              ; preds = %286, %250
  %254 = phi i64 [ 0, %250 ], [ %271, %286 ]
  %255 = or disjoint i64 %254, 1
  %256 = getelementptr inbounds [1200 x double], ptr %3, i64 %251, i64 %255
  %257 = load double, ptr %256, align 8, !tbaa !5
  %258 = getelementptr inbounds [1200 x double], ptr %3, i64 %251, i64 %254
  %259 = load double, ptr %258, align 8, !tbaa !5
  %260 = fsub double %257, %259
  %261 = getelementptr [1200 x double], ptr %252, i64 1, i64 %254
  %262 = load double, ptr %261, align 8, !tbaa !5
  %263 = fadd double %260, %262
  %264 = getelementptr inbounds [1200 x double], ptr %5, i64 %251, i64 %254
  %265 = load double, ptr %264, align 8, !tbaa !5
  %266 = fsub double %263, %265
  %267 = getelementptr inbounds [1200 x double], ptr %7, i64 %251, i64 %254
  %268 = load double, ptr %267, align 8, !tbaa !5
  %269 = tail call double @llvm.fmuladd.f64(double %266, double 0xBFE6666666666666, double %268)
  store double %269, ptr %267, align 8, !tbaa !5
  %270 = icmp ult i64 %255, 1199
  %271 = add nuw nsw i64 %254, 2
  br i1 %270, label %272, label %286

272:                                              ; preds = %253
  %273 = getelementptr inbounds [1200 x double], ptr %3, i64 %251, i64 %271
  %274 = load double, ptr %273, align 8, !tbaa !5
  %275 = load double, ptr %256, align 8, !tbaa !5
  %276 = fsub double %274, %275
  %277 = getelementptr [1200 x double], ptr %252, i64 1, i64 %255
  %278 = load double, ptr %277, align 8, !tbaa !5
  %279 = fadd double %276, %278
  %280 = getelementptr inbounds [1200 x double], ptr %5, i64 %251, i64 %255
  %281 = load double, ptr %280, align 8, !tbaa !5
  %282 = fsub double %279, %281
  %283 = getelementptr inbounds [1200 x double], ptr %7, i64 %251, i64 %255
  %284 = load double, ptr %283, align 8, !tbaa !5
  %285 = tail call double @llvm.fmuladd.f64(double %282, double 0xBFE6666666666666, double %284)
  store double %285, ptr %283, align 8, !tbaa !5
  br label %286

286:                                              ; preds = %272, %253
  %287 = icmp ult i64 %254, 1197
  br i1 %287, label %253, label %288, !llvm.loop !23

288:                                              ; preds = %286
  %289 = add nuw nsw i64 %251, 1
  %290 = icmp eq i64 %289, 999
  br i1 %290, label %291, label %250, !llvm.loop !24

291:                                              ; preds = %288
  %292 = add nuw nsw i64 %110, 1
  %293 = icmp eq i64 %292, 500
  br i1 %293, label %294, label %109, !llvm.loop !25

294:                                              ; preds = %291
  %295 = load ptr, ptr @stdout, align 8, !tbaa !26
  %296 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %295)
  %297 = load ptr, ptr @stdout, align 8, !tbaa !26
  %298 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %297, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %299

299:                                              ; preds = %318, %294
  %300 = phi i64 [ 0, %294 ], [ %319, %318 ]
  %301 = mul nuw nsw i64 %300, 1000
  br label %302

302:                                              ; preds = %311, %299
  %303 = phi i64 [ 0, %299 ], [ %316, %311 ]
  %304 = add nuw nsw i64 %303, %301
  %305 = trunc i64 %304 to i32
  %306 = urem i32 %305, 20
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %302
  %309 = load ptr, ptr @stdout, align 8, !tbaa !26
  %310 = tail call i32 @fputc(i32 10, ptr %309)
  br label %311

311:                                              ; preds = %308, %302
  %312 = load ptr, ptr @stdout, align 8, !tbaa !26
  %313 = getelementptr inbounds [1200 x double], ptr %3, i64 %300, i64 %303
  %314 = load double, ptr %313, align 8, !tbaa !5
  %315 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef nonnull @.str.4, double noundef %314)
  %316 = add nuw nsw i64 %303, 1
  %317 = icmp eq i64 %316, 1200
  br i1 %317, label %318, label %302, !llvm.loop !28

318:                                              ; preds = %311
  %319 = add nuw nsw i64 %300, 1
  %320 = icmp eq i64 %319, 1000
  br i1 %320, label %321, label %299, !llvm.loop !29

321:                                              ; preds = %318
  %322 = load ptr, ptr @stdout, align 8, !tbaa !26
  %323 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %322, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %324 = load ptr, ptr @stdout, align 8, !tbaa !26
  %325 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %324)
  %326 = load ptr, ptr @stdout, align 8, !tbaa !26
  %327 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %326, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7)
  br label %328

328:                                              ; preds = %347, %321
  %329 = phi i64 [ 0, %321 ], [ %348, %347 ]
  %330 = mul nuw nsw i64 %329, 1000
  br label %331

331:                                              ; preds = %340, %328
  %332 = phi i64 [ 0, %328 ], [ %345, %340 ]
  %333 = add nuw nsw i64 %332, %330
  %334 = trunc i64 %333 to i32
  %335 = urem i32 %334, 20
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load ptr, ptr @stdout, align 8, !tbaa !26
  %339 = tail call i32 @fputc(i32 10, ptr %338)
  br label %340

340:                                              ; preds = %337, %331
  %341 = load ptr, ptr @stdout, align 8, !tbaa !26
  %342 = getelementptr inbounds [1200 x double], ptr %5, i64 %329, i64 %332
  %343 = load double, ptr %342, align 8, !tbaa !5
  %344 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %341, ptr noundef nonnull @.str.4, double noundef %343)
  %345 = add nuw nsw i64 %332, 1
  %346 = icmp eq i64 %345, 1200
  br i1 %346, label %347, label %331, !llvm.loop !30

347:                                              ; preds = %340
  %348 = add nuw nsw i64 %329, 1
  %349 = icmp eq i64 %348, 1000
  br i1 %349, label %350, label %328, !llvm.loop !31

350:                                              ; preds = %347
  %351 = load ptr, ptr @stdout, align 8, !tbaa !26
  %352 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7)
  %353 = load ptr, ptr @stdout, align 8, !tbaa !26
  %354 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %353, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8)
  br label %355

355:                                              ; preds = %374, %350
  %356 = phi i64 [ 0, %350 ], [ %375, %374 ]
  %357 = mul nuw nsw i64 %356, 1000
  br label %358

358:                                              ; preds = %367, %355
  %359 = phi i64 [ 0, %355 ], [ %372, %367 ]
  %360 = add nuw nsw i64 %359, %357
  %361 = trunc i64 %360 to i32
  %362 = urem i32 %361, 20
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  %365 = load ptr, ptr @stdout, align 8, !tbaa !26
  %366 = tail call i32 @fputc(i32 10, ptr %365)
  br label %367

367:                                              ; preds = %364, %358
  %368 = load ptr, ptr @stdout, align 8, !tbaa !26
  %369 = getelementptr inbounds [1200 x double], ptr %7, i64 %356, i64 %359
  %370 = load double, ptr %369, align 8, !tbaa !5
  %371 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %368, ptr noundef nonnull @.str.4, double noundef %370)
  %372 = add nuw nsw i64 %359, 1
  %373 = icmp eq i64 %372, 1200
  br i1 %373, label %374, label %358, !llvm.loop !32

374:                                              ; preds = %367
  %375 = add nuw nsw i64 %356, 1
  %376 = icmp eq i64 %375, 1000
  br i1 %376, label %377, label %355, !llvm.loop !33

377:                                              ; preds = %374
  %378 = load ptr, ptr @stdout, align 8, !tbaa !26
  %379 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %378, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef nonnull %7) #7
  tail call void @free(ptr noundef %9) #7
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
!13 = distinct !{!13, !10, !11, !12}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
