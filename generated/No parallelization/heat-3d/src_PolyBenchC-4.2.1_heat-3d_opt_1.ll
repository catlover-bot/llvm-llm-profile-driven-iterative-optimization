; ModuleID = 'outputs/src_PolyBenchC-4.2.1_heat-3d_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_heat-3d_opt_1.c"
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

74:                                               ; preds = %65, %242
  %75 = phi i32 [ %243, %242 ], [ 1, %65 ]
  br label %76

76:                                               ; preds = %155, %74
  %77 = phi i64 [ %158, %155 ], [ 0, %74 ]
  %78 = phi i64 [ %156, %155 ], [ 1, %74 ]
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

88:                                               ; preds = %153, %76
  %89 = phi i64 [ 1, %76 ], [ %90, %153 ]
  %90 = add nuw nsw i64 %89, 1
  %91 = add nsw i64 %89, -1
  br i1 %87, label %123, label %92

92:                                               ; preds = %88, %92
  %93 = phi i64 [ %121, %92 ], [ 0, %88 ]
  %94 = or disjoint i64 %93, 1
  %95 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %94
  %96 = load <2 x double>, ptr %95, align 8, !tbaa !5, !alias.scope !16
  %97 = getelementptr [120 x [120 x double]], ptr %84, i64 1, i64 %89, i64 %94
  %98 = load <2 x double>, ptr %97, align 8, !tbaa !5, !alias.scope !16
  %99 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %98)
  %100 = getelementptr [120 x [120 x double]], ptr %84, i64 -1, i64 %89, i64 %94
  %101 = load <2 x double>, ptr %100, align 8, !tbaa !5, !alias.scope !16
  %102 = fadd <2 x double> %99, %101
  %103 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %90, i64 %94
  %104 = load <2 x double>, ptr %103, align 8, !tbaa !5, !alias.scope !16
  %105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %104)
  %106 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %91, i64 %94
  %107 = load <2 x double>, ptr %106, align 8, !tbaa !5, !alias.scope !16
  %108 = fadd <2 x double> %105, %107
  %109 = fmul <2 x double> %108, <double 1.250000e-01, double 1.250000e-01>
  %110 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %102, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %109)
  %111 = add i64 %93, 2
  %112 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %111
  %113 = load <2 x double>, ptr %112, align 8, !tbaa !5, !alias.scope !16
  %114 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %113)
  %115 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %93
  %116 = load <2 x double>, ptr %115, align 8, !tbaa !5, !alias.scope !16
  %117 = fadd <2 x double> %114, %116
  %118 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %117, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %110)
  %119 = fadd <2 x double> %96, %118
  %120 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %78, i64 %89, i64 %94
  store <2 x double> %119, ptr %120, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %121 = add nuw i64 %93, 2
  %122 = icmp eq i64 %121, 118
  br i1 %122, label %153, label %92, !llvm.loop !21

123:                                              ; preds = %88, %123
  %124 = phi i64 [ %141, %123 ], [ 1, %88 ]
  %125 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %124
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = getelementptr [120 x [120 x double]], ptr %84, i64 1, i64 %89, i64 %124
  %128 = load double, ptr %127, align 8, !tbaa !5
  %129 = tail call double @llvm.fmuladd.f64(double %126, double -2.000000e+00, double %128)
  %130 = getelementptr [120 x [120 x double]], ptr %84, i64 -1, i64 %89, i64 %124
  %131 = load double, ptr %130, align 8, !tbaa !5
  %132 = fadd double %129, %131
  %133 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %90, i64 %124
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = tail call double @llvm.fmuladd.f64(double %126, double -2.000000e+00, double %134)
  %136 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %91, i64 %124
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = fadd double %135, %137
  %139 = fmul double %138, 1.250000e-01
  %140 = tail call double @llvm.fmuladd.f64(double %132, double 1.250000e-01, double %139)
  %141 = add nuw nsw i64 %124, 1
  %142 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %141
  %143 = load double, ptr %142, align 8, !tbaa !5
  %144 = tail call double @llvm.fmuladd.f64(double %126, double -2.000000e+00, double %143)
  %145 = add nsw i64 %124, -1
  %146 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = fadd double %144, %147
  %149 = tail call double @llvm.fmuladd.f64(double %148, double 1.250000e-01, double %140)
  %150 = fadd double %126, %149
  %151 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %78, i64 %89, i64 %124
  store double %150, ptr %151, align 8, !tbaa !5
  %152 = icmp eq i64 %141, 119
  br i1 %152, label %153, label %123, !llvm.loop !22

153:                                              ; preds = %92, %123
  %154 = icmp eq i64 %90, 119
  br i1 %154, label %155, label %88, !llvm.loop !23

155:                                              ; preds = %153
  %156 = add nuw nsw i64 %78, 1
  %157 = icmp eq i64 %156, 119
  %158 = add i64 %77, 1
  br i1 %157, label %159, label %76, !llvm.loop !24

159:                                              ; preds = %155, %238
  %160 = phi i64 [ %241, %238 ], [ 0, %155 ]
  %161 = phi i64 [ %239, %238 ], [ 1, %155 ]
  %162 = mul nuw nsw i64 %160, 115200
  %163 = getelementptr i8, ptr %70, i64 %162
  %164 = getelementptr i8, ptr %71, i64 %162
  %165 = getelementptr i8, ptr %72, i64 %162
  %166 = getelementptr i8, ptr %73, i64 %162
  %167 = getelementptr [120 x [120 x double]], ptr %5, i64 %161
  %168 = icmp ult ptr %163, %166
  %169 = icmp ult ptr %165, %164
  %170 = and i1 %168, %169
  br label %171

171:                                              ; preds = %236, %159
  %172 = phi i64 [ 1, %159 ], [ %173, %236 ]
  %173 = add nuw nsw i64 %172, 1
  %174 = add nsw i64 %172, -1
  br i1 %170, label %206, label %175

175:                                              ; preds = %171, %175
  %176 = phi i64 [ %204, %175 ], [ 0, %171 ]
  %177 = or disjoint i64 %176, 1
  %178 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %172, i64 %177
  %179 = load <2 x double>, ptr %178, align 8, !tbaa !5, !alias.scope !25
  %180 = getelementptr [120 x [120 x double]], ptr %167, i64 1, i64 %172, i64 %177
  %181 = load <2 x double>, ptr %180, align 8, !tbaa !5, !alias.scope !25
  %182 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %179, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %181)
  %183 = getelementptr [120 x [120 x double]], ptr %167, i64 -1, i64 %172, i64 %177
  %184 = load <2 x double>, ptr %183, align 8, !tbaa !5, !alias.scope !25
  %185 = fadd <2 x double> %182, %184
  %186 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %173, i64 %177
  %187 = load <2 x double>, ptr %186, align 8, !tbaa !5, !alias.scope !25
  %188 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %179, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %187)
  %189 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %174, i64 %177
  %190 = load <2 x double>, ptr %189, align 8, !tbaa !5, !alias.scope !25
  %191 = fadd <2 x double> %188, %190
  %192 = fmul <2 x double> %191, <double 1.250000e-01, double 1.250000e-01>
  %193 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %185, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %192)
  %194 = add i64 %176, 2
  %195 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %172, i64 %194
  %196 = load <2 x double>, ptr %195, align 8, !tbaa !5, !alias.scope !25
  %197 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %179, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %196)
  %198 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %172, i64 %176
  %199 = load <2 x double>, ptr %198, align 8, !tbaa !5, !alias.scope !25
  %200 = fadd <2 x double> %197, %199
  %201 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %200, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %193)
  %202 = fadd <2 x double> %179, %201
  %203 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %161, i64 %172, i64 %177
  store <2 x double> %202, ptr %203, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %204 = add nuw i64 %176, 2
  %205 = icmp eq i64 %204, 118
  br i1 %205, label %236, label %175, !llvm.loop !30

206:                                              ; preds = %171, %206
  %207 = phi i64 [ %224, %206 ], [ 1, %171 ]
  %208 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %172, i64 %207
  %209 = load double, ptr %208, align 8, !tbaa !5
  %210 = getelementptr [120 x [120 x double]], ptr %167, i64 1, i64 %172, i64 %207
  %211 = load double, ptr %210, align 8, !tbaa !5
  %212 = tail call double @llvm.fmuladd.f64(double %209, double -2.000000e+00, double %211)
  %213 = getelementptr [120 x [120 x double]], ptr %167, i64 -1, i64 %172, i64 %207
  %214 = load double, ptr %213, align 8, !tbaa !5
  %215 = fadd double %212, %214
  %216 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %173, i64 %207
  %217 = load double, ptr %216, align 8, !tbaa !5
  %218 = tail call double @llvm.fmuladd.f64(double %209, double -2.000000e+00, double %217)
  %219 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %174, i64 %207
  %220 = load double, ptr %219, align 8, !tbaa !5
  %221 = fadd double %218, %220
  %222 = fmul double %221, 1.250000e-01
  %223 = tail call double @llvm.fmuladd.f64(double %215, double 1.250000e-01, double %222)
  %224 = add nuw nsw i64 %207, 1
  %225 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %172, i64 %224
  %226 = load double, ptr %225, align 8, !tbaa !5
  %227 = tail call double @llvm.fmuladd.f64(double %209, double -2.000000e+00, double %226)
  %228 = add nsw i64 %207, -1
  %229 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %172, i64 %228
  %230 = load double, ptr %229, align 8, !tbaa !5
  %231 = fadd double %227, %230
  %232 = tail call double @llvm.fmuladd.f64(double %231, double 1.250000e-01, double %223)
  %233 = fadd double %209, %232
  %234 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %161, i64 %172, i64 %207
  store double %233, ptr %234, align 8, !tbaa !5
  %235 = icmp eq i64 %224, 119
  br i1 %235, label %236, label %206, !llvm.loop !31

236:                                              ; preds = %175, %206
  %237 = icmp eq i64 %173, 119
  br i1 %237, label %238, label %171, !llvm.loop !32

238:                                              ; preds = %236
  %239 = add nuw nsw i64 %161, 1
  %240 = icmp eq i64 %239, 119
  %241 = add i64 %160, 1
  br i1 %240, label %242, label %159, !llvm.loop !33

242:                                              ; preds = %238
  %243 = add nuw nsw i32 %75, 1
  %244 = icmp eq i32 %243, 501
  br i1 %244, label %245, label %74, !llvm.loop !34

245:                                              ; preds = %242
  %246 = load ptr, ptr @stdout, align 8, !tbaa !35
  %247 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %246)
  %248 = load ptr, ptr @stdout, align 8, !tbaa !35
  %249 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %248, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %250

250:                                              ; preds = %276, %245
  %251 = phi i64 [ 0, %245 ], [ %277, %276 ]
  %252 = mul nuw nsw i64 %251, 14400
  br label %253

253:                                              ; preds = %273, %250
  %254 = phi i64 [ 0, %250 ], [ %274, %273 ]
  %255 = mul nuw nsw i64 %254, 120
  %256 = add nuw nsw i64 %255, %252
  br label %257

257:                                              ; preds = %266, %253
  %258 = phi i64 [ 0, %253 ], [ %271, %266 ]
  %259 = add nuw nsw i64 %256, %258
  %260 = trunc i64 %259 to i32
  %261 = urem i32 %260, 20
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %257
  %264 = load ptr, ptr @stdout, align 8, !tbaa !35
  %265 = tail call i32 @fputc(i32 10, ptr %264)
  br label %266

266:                                              ; preds = %263, %257
  %267 = load ptr, ptr @stdout, align 8, !tbaa !35
  %268 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %251, i64 %254, i64 %258
  %269 = load double, ptr %268, align 8, !tbaa !5
  %270 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %267, ptr noundef nonnull @.str.4, double noundef %269)
  %271 = add nuw nsw i64 %258, 1
  %272 = icmp eq i64 %271, 120
  br i1 %272, label %273, label %257, !llvm.loop !37

273:                                              ; preds = %266
  %274 = add nuw nsw i64 %254, 1
  %275 = icmp eq i64 %274, 120
  br i1 %275, label %276, label %253, !llvm.loop !38

276:                                              ; preds = %273
  %277 = add nuw nsw i64 %251, 1
  %278 = icmp eq i64 %277, 120
  br i1 %278, label %279, label %250, !llvm.loop !39

279:                                              ; preds = %276
  %280 = load ptr, ptr @stdout, align 8, !tbaa !35
  %281 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %282 = load ptr, ptr @stdout, align 8, !tbaa !35
  %283 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %282)
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
