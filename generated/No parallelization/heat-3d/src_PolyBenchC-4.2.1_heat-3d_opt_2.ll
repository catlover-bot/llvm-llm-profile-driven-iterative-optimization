; ModuleID = 'outputs/src_PolyBenchC-4.2.1_heat-3d_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_heat-3d_opt_2.c"
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

74:                                               ; preds = %65, %262
  %75 = phi i32 [ %263, %262 ], [ 1, %65 ]
  br label %76

76:                                               ; preds = %165, %74
  %77 = phi i64 [ %168, %165 ], [ 0, %74 ]
  %78 = phi i64 [ %166, %165 ], [ 1, %74 ]
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

88:                                               ; preds = %163, %76
  %89 = phi i64 [ 1, %76 ], [ %94, %163 ]
  %90 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89
  %91 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 1
  %92 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %78, i64 %89, i64 1
  %93 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 2
  %94 = add nuw nsw i64 %89, 1
  %95 = add nsw i64 %89, -1
  br i1 %87, label %130, label %96

96:                                               ; preds = %88, %96
  %97 = phi i64 [ %128, %96 ], [ 0, %88 ]
  %98 = shl i64 %97, 3
  %99 = getelementptr i8, ptr %90, i64 %98
  %100 = shl i64 %97, 3
  %101 = getelementptr i8, ptr %93, i64 %100
  %102 = shl i64 %97, 3
  %103 = getelementptr i8, ptr %92, i64 %102
  %104 = shl i64 %97, 3
  %105 = getelementptr i8, ptr %91, i64 %104
  %106 = or disjoint i64 %97, 1
  %107 = load <2 x double>, ptr %105, align 8, !tbaa !5, !alias.scope !16
  %108 = getelementptr [120 x [120 x double]], ptr %84, i64 1, i64 %89, i64 %106
  %109 = load <2 x double>, ptr %108, align 8, !tbaa !5, !alias.scope !16
  %110 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %107, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %109)
  %111 = getelementptr [120 x [120 x double]], ptr %84, i64 -1, i64 %89, i64 %106
  %112 = load <2 x double>, ptr %111, align 8, !tbaa !5, !alias.scope !16
  %113 = fadd <2 x double> %110, %112
  %114 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %94, i64 %106
  %115 = load <2 x double>, ptr %114, align 8, !tbaa !5, !alias.scope !16
  %116 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %107, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %115)
  %117 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %95, i64 %106
  %118 = load <2 x double>, ptr %117, align 8, !tbaa !5, !alias.scope !16
  %119 = fadd <2 x double> %116, %118
  %120 = fmul <2 x double> %119, <double 1.250000e-01, double 1.250000e-01>
  %121 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %113, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %120)
  %122 = load <2 x double>, ptr %101, align 8, !tbaa !5, !alias.scope !16
  %123 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %107, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %122)
  %124 = load <2 x double>, ptr %99, align 8, !tbaa !5, !alias.scope !16
  %125 = fadd <2 x double> %123, %124
  %126 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %125, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %121)
  %127 = fadd <2 x double> %107, %126
  store <2 x double> %127, ptr %103, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %128 = add nuw i64 %97, 2
  %129 = icmp eq i64 %128, 118
  br i1 %129, label %163, label %96, !llvm.loop !21

130:                                              ; preds = %88, %130
  %131 = phi i64 [ %157, %130 ], [ 1, %88 ]
  %132 = phi ptr [ %161, %130 ], [ %90, %88 ]
  %133 = phi ptr [ %160, %130 ], [ %93, %88 ]
  %134 = phi ptr [ %159, %130 ], [ %92, %88 ]
  %135 = phi ptr [ %158, %130 ], [ %91, %88 ]
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = getelementptr [120 x [120 x double]], ptr %84, i64 1, i64 %89, i64 %131
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = tail call double @llvm.fmuladd.f64(double %136, double -2.000000e+00, double %138)
  %140 = getelementptr [120 x [120 x double]], ptr %84, i64 -1, i64 %89, i64 %131
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = fadd double %139, %141
  %143 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %94, i64 %131
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = tail call double @llvm.fmuladd.f64(double %136, double -2.000000e+00, double %144)
  %146 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %95, i64 %131
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = fadd double %145, %147
  %149 = fmul double %148, 1.250000e-01
  %150 = tail call double @llvm.fmuladd.f64(double %142, double 1.250000e-01, double %149)
  %151 = load double, ptr %133, align 8, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %136, double -2.000000e+00, double %151)
  %153 = load double, ptr %132, align 8, !tbaa !5
  %154 = fadd double %152, %153
  %155 = tail call double @llvm.fmuladd.f64(double %154, double 1.250000e-01, double %150)
  %156 = fadd double %136, %155
  store double %156, ptr %134, align 8, !tbaa !5
  %157 = add nuw nsw i64 %131, 1
  %158 = getelementptr inbounds double, ptr %135, i64 1
  %159 = getelementptr inbounds double, ptr %134, i64 1
  %160 = getelementptr inbounds double, ptr %133, i64 1
  %161 = getelementptr inbounds double, ptr %132, i64 1
  %162 = icmp eq i64 %157, 119
  br i1 %162, label %163, label %130, !llvm.loop !22

163:                                              ; preds = %96, %130
  %164 = icmp eq i64 %94, 119
  br i1 %164, label %165, label %88, !llvm.loop !23

165:                                              ; preds = %163
  %166 = add nuw nsw i64 %78, 1
  %167 = icmp eq i64 %166, 119
  %168 = add i64 %77, 1
  br i1 %167, label %169, label %76, !llvm.loop !24

169:                                              ; preds = %165, %258
  %170 = phi i64 [ %261, %258 ], [ 0, %165 ]
  %171 = phi i64 [ %259, %258 ], [ 1, %165 ]
  %172 = mul nuw nsw i64 %170, 115200
  %173 = getelementptr i8, ptr %70, i64 %172
  %174 = getelementptr i8, ptr %71, i64 %172
  %175 = getelementptr i8, ptr %72, i64 %172
  %176 = getelementptr i8, ptr %73, i64 %172
  %177 = getelementptr [120 x [120 x double]], ptr %5, i64 %171
  %178 = icmp ult ptr %173, %176
  %179 = icmp ult ptr %175, %174
  %180 = and i1 %178, %179
  br label %181

181:                                              ; preds = %256, %169
  %182 = phi i64 [ 1, %169 ], [ %187, %256 ]
  %183 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %171, i64 %182
  %184 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %171, i64 %182, i64 1
  %185 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %171, i64 %182, i64 1
  %186 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %171, i64 %182, i64 2
  %187 = add nuw nsw i64 %182, 1
  %188 = add nsw i64 %182, -1
  br i1 %180, label %223, label %189

189:                                              ; preds = %181, %189
  %190 = phi i64 [ %221, %189 ], [ 0, %181 ]
  %191 = shl i64 %190, 3
  %192 = getelementptr i8, ptr %183, i64 %191
  %193 = shl i64 %190, 3
  %194 = getelementptr i8, ptr %186, i64 %193
  %195 = shl i64 %190, 3
  %196 = getelementptr i8, ptr %185, i64 %195
  %197 = shl i64 %190, 3
  %198 = getelementptr i8, ptr %184, i64 %197
  %199 = or disjoint i64 %190, 1
  %200 = load <2 x double>, ptr %198, align 8, !tbaa !5, !alias.scope !25
  %201 = getelementptr [120 x [120 x double]], ptr %177, i64 1, i64 %182, i64 %199
  %202 = load <2 x double>, ptr %201, align 8, !tbaa !5, !alias.scope !25
  %203 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %200, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %202)
  %204 = getelementptr [120 x [120 x double]], ptr %177, i64 -1, i64 %182, i64 %199
  %205 = load <2 x double>, ptr %204, align 8, !tbaa !5, !alias.scope !25
  %206 = fadd <2 x double> %203, %205
  %207 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %171, i64 %187, i64 %199
  %208 = load <2 x double>, ptr %207, align 8, !tbaa !5, !alias.scope !25
  %209 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %200, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %208)
  %210 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %171, i64 %188, i64 %199
  %211 = load <2 x double>, ptr %210, align 8, !tbaa !5, !alias.scope !25
  %212 = fadd <2 x double> %209, %211
  %213 = fmul <2 x double> %212, <double 1.250000e-01, double 1.250000e-01>
  %214 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %206, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %213)
  %215 = load <2 x double>, ptr %194, align 8, !tbaa !5, !alias.scope !25
  %216 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %200, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %215)
  %217 = load <2 x double>, ptr %192, align 8, !tbaa !5, !alias.scope !25
  %218 = fadd <2 x double> %216, %217
  %219 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %218, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %214)
  %220 = fadd <2 x double> %200, %219
  store <2 x double> %220, ptr %196, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %221 = add nuw i64 %190, 2
  %222 = icmp eq i64 %221, 118
  br i1 %222, label %256, label %189, !llvm.loop !30

223:                                              ; preds = %181, %223
  %224 = phi i64 [ %250, %223 ], [ 1, %181 ]
  %225 = phi ptr [ %254, %223 ], [ %183, %181 ]
  %226 = phi ptr [ %253, %223 ], [ %186, %181 ]
  %227 = phi ptr [ %252, %223 ], [ %185, %181 ]
  %228 = phi ptr [ %251, %223 ], [ %184, %181 ]
  %229 = load double, ptr %228, align 8, !tbaa !5
  %230 = getelementptr [120 x [120 x double]], ptr %177, i64 1, i64 %182, i64 %224
  %231 = load double, ptr %230, align 8, !tbaa !5
  %232 = tail call double @llvm.fmuladd.f64(double %229, double -2.000000e+00, double %231)
  %233 = getelementptr [120 x [120 x double]], ptr %177, i64 -1, i64 %182, i64 %224
  %234 = load double, ptr %233, align 8, !tbaa !5
  %235 = fadd double %232, %234
  %236 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %171, i64 %187, i64 %224
  %237 = load double, ptr %236, align 8, !tbaa !5
  %238 = tail call double @llvm.fmuladd.f64(double %229, double -2.000000e+00, double %237)
  %239 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %171, i64 %188, i64 %224
  %240 = load double, ptr %239, align 8, !tbaa !5
  %241 = fadd double %238, %240
  %242 = fmul double %241, 1.250000e-01
  %243 = tail call double @llvm.fmuladd.f64(double %235, double 1.250000e-01, double %242)
  %244 = load double, ptr %226, align 8, !tbaa !5
  %245 = tail call double @llvm.fmuladd.f64(double %229, double -2.000000e+00, double %244)
  %246 = load double, ptr %225, align 8, !tbaa !5
  %247 = fadd double %245, %246
  %248 = tail call double @llvm.fmuladd.f64(double %247, double 1.250000e-01, double %243)
  %249 = fadd double %229, %248
  store double %249, ptr %227, align 8, !tbaa !5
  %250 = add nuw nsw i64 %224, 1
  %251 = getelementptr inbounds double, ptr %228, i64 1
  %252 = getelementptr inbounds double, ptr %227, i64 1
  %253 = getelementptr inbounds double, ptr %226, i64 1
  %254 = getelementptr inbounds double, ptr %225, i64 1
  %255 = icmp eq i64 %250, 119
  br i1 %255, label %256, label %223, !llvm.loop !31

256:                                              ; preds = %189, %223
  %257 = icmp eq i64 %187, 119
  br i1 %257, label %258, label %181, !llvm.loop !32

258:                                              ; preds = %256
  %259 = add nuw nsw i64 %171, 1
  %260 = icmp eq i64 %259, 119
  %261 = add i64 %170, 1
  br i1 %260, label %262, label %169, !llvm.loop !33

262:                                              ; preds = %258
  %263 = add nuw nsw i32 %75, 1
  %264 = icmp eq i32 %263, 501
  br i1 %264, label %265, label %74, !llvm.loop !34

265:                                              ; preds = %262
  %266 = load ptr, ptr @stdout, align 8, !tbaa !35
  %267 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %266)
  %268 = load ptr, ptr @stdout, align 8, !tbaa !35
  %269 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %270

270:                                              ; preds = %296, %265
  %271 = phi i64 [ 0, %265 ], [ %297, %296 ]
  %272 = mul nuw nsw i64 %271, 14400
  br label %273

273:                                              ; preds = %293, %270
  %274 = phi i64 [ 0, %270 ], [ %294, %293 ]
  %275 = mul nuw nsw i64 %274, 120
  %276 = add nuw nsw i64 %275, %272
  br label %277

277:                                              ; preds = %286, %273
  %278 = phi i64 [ 0, %273 ], [ %291, %286 ]
  %279 = add nuw nsw i64 %276, %278
  %280 = trunc i64 %279 to i32
  %281 = urem i32 %280, 20
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %277
  %284 = load ptr, ptr @stdout, align 8, !tbaa !35
  %285 = tail call i32 @fputc(i32 10, ptr %284)
  br label %286

286:                                              ; preds = %283, %277
  %287 = load ptr, ptr @stdout, align 8, !tbaa !35
  %288 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %271, i64 %274, i64 %278
  %289 = load double, ptr %288, align 8, !tbaa !5
  %290 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef nonnull @.str.4, double noundef %289)
  %291 = add nuw nsw i64 %278, 1
  %292 = icmp eq i64 %291, 120
  br i1 %292, label %293, label %277, !llvm.loop !37

293:                                              ; preds = %286
  %294 = add nuw nsw i64 %274, 1
  %295 = icmp eq i64 %294, 120
  br i1 %295, label %296, label %273, !llvm.loop !38

296:                                              ; preds = %293
  %297 = add nuw nsw i64 %271, 1
  %298 = icmp eq i64 %297, 120
  br i1 %298, label %299, label %270, !llvm.loop !39

299:                                              ; preds = %296
  %300 = load ptr, ptr @stdout, align 8, !tbaa !35
  %301 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %300, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %302 = load ptr, ptr @stdout, align 8, !tbaa !35
  %303 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %302)
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
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !10, !11, !12}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !7, i64 0}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
