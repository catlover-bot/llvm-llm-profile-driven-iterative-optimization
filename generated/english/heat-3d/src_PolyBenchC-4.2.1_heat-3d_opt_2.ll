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

9:                                                ; preds = %40, %2
  %10 = phi i64 [ 0, %2 ], [ %41, %40 ]
  %11 = add nuw nsw i64 %10, 120
  br label %12

12:                                               ; preds = %52, %9
  %13 = phi i64 [ 0, %9 ], [ %53, %52 ]
  %14 = add nuw nsw i64 %11, %13
  br i1 %8, label %55, label %15

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
  br i1 %39, label %52, label %18, !llvm.loop !9

40:                                               ; preds = %52
  %41 = add nuw nsw i64 %10, 1
  %42 = icmp eq i64 %41, 120
  br i1 %42, label %43, label %9, !llvm.loop !13

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %5, i64 116168
  %45 = getelementptr i8, ptr %5, i64 229432
  %46 = getelementptr i8, ptr %3, i64 968
  %47 = getelementptr i8, ptr %3, i64 344632
  %48 = getelementptr i8, ptr %3, i64 116168
  %49 = getelementptr i8, ptr %3, i64 229432
  %50 = getelementptr i8, ptr %5, i64 968
  %51 = getelementptr i8, ptr %5, i64 344632
  br label %74

52:                                               ; preds = %18, %55
  %53 = add nuw nsw i64 %13, 1
  %54 = icmp eq i64 %53, 120
  br i1 %54, label %40, label %12, !llvm.loop !14

55:                                               ; preds = %12, %55
  %56 = phi i64 [ %72, %55 ], [ 0, %12 ]
  %57 = sub nuw nsw i64 %14, %56
  %58 = trunc i64 %57 to i32
  %59 = sitofp i32 %58 to double
  %60 = fmul double %59, 1.000000e+01
  %61 = fdiv double %60, 1.200000e+02
  %62 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %10, i64 %13, i64 %56
  store double %61, ptr %62, align 8, !tbaa !5
  %63 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %10, i64 %13, i64 %56
  store double %61, ptr %63, align 8, !tbaa !5
  %64 = or disjoint i64 %56, 1
  %65 = sub nuw nsw i64 %14, %64
  %66 = trunc i64 %65 to i32
  %67 = sitofp i32 %66 to double
  %68 = fmul double %67, 1.000000e+01
  %69 = fdiv double %68, 1.200000e+02
  %70 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %10, i64 %13, i64 %64
  store double %69, ptr %70, align 8, !tbaa !5
  %71 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %10, i64 %13, i64 %64
  store double %69, ptr %71, align 8, !tbaa !5
  %72 = add nuw nsw i64 %56, 2
  %73 = icmp eq i64 %72, 120
  br i1 %73, label %52, label %55, !llvm.loop !15

74:                                               ; preds = %43, %171
  %75 = phi i32 [ %172, %171 ], [ 1, %43 ]
  br label %76

76:                                               ; preds = %123, %74
  %77 = phi i64 [ %126, %123 ], [ 0, %74 ]
  %78 = phi i64 [ %124, %123 ], [ 1, %74 ]
  %79 = mul nuw nsw i64 %77, 115200
  %80 = getelementptr i8, ptr %44, i64 %79
  %81 = getelementptr i8, ptr %45, i64 %79
  %82 = getelementptr i8, ptr %46, i64 %79
  %83 = getelementptr i8, ptr %47, i64 %79
  %84 = getelementptr [120 x [120 x double]], ptr %3, i64 %78
  %85 = icmp ult ptr %80, %83
  %86 = icmp ult ptr %82, %81
  %87 = and i1 %85, %86
  br label %88

88:                                               ; preds = %127, %76
  %89 = phi i64 [ 1, %76 ], [ %90, %127 ]
  %90 = add nuw nsw i64 %89, 1
  %91 = add nsw i64 %89, -1
  br i1 %87, label %129, label %92

92:                                               ; preds = %88, %92
  %93 = phi i64 [ %121, %92 ], [ 0, %88 ]
  %94 = or disjoint i64 %93, 1
  %95 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %94
  %96 = load <2 x double>, ptr %95, align 8, !tbaa !5, !alias.scope !16
  %97 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %78, i64 %89, i64 %94
  %98 = getelementptr [120 x [120 x double]], ptr %84, i64 1, i64 %89, i64 %94
  %99 = load <2 x double>, ptr %98, align 8, !tbaa !5, !alias.scope !16
  %100 = getelementptr [120 x [120 x double]], ptr %84, i64 -1, i64 %89, i64 %94
  %101 = load <2 x double>, ptr %100, align 8, !tbaa !5, !alias.scope !16
  %102 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %90, i64 %94
  %103 = load <2 x double>, ptr %102, align 8, !tbaa !5, !alias.scope !16
  %104 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %91, i64 %94
  %105 = load <2 x double>, ptr %104, align 8, !tbaa !5, !alias.scope !16
  %106 = add i64 %93, 2
  %107 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %106
  %108 = load <2 x double>, ptr %107, align 8, !tbaa !5, !alias.scope !16
  %109 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %93
  %110 = load <2 x double>, ptr %109, align 8, !tbaa !5, !alias.scope !16
  %111 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %99)
  %112 = fadd <2 x double> %111, %101
  %113 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %103)
  %114 = fadd <2 x double> %113, %105
  %115 = fmul <2 x double> %114, <double 1.250000e-01, double 1.250000e-01>
  %116 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %112, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %115)
  %117 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %108)
  %118 = fadd <2 x double> %117, %110
  %119 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %118, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %116)
  %120 = fadd <2 x double> %96, %119
  store <2 x double> %120, ptr %97, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %121 = add nuw i64 %93, 2
  %122 = icmp eq i64 %121, 118
  br i1 %122, label %127, label %92, !llvm.loop !21

123:                                              ; preds = %127
  %124 = add nuw nsw i64 %78, 1
  %125 = icmp eq i64 %124, 119
  %126 = add i64 %77, 1
  br i1 %125, label %159, label %76, !llvm.loop !22

127:                                              ; preds = %92, %129
  %128 = icmp eq i64 %90, 119
  br i1 %128, label %123, label %88, !llvm.loop !23

129:                                              ; preds = %88, %129
  %130 = phi i64 [ %142, %129 ], [ 1, %88 ]
  %131 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %130
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %78, i64 %89, i64 %130
  %134 = getelementptr [120 x [120 x double]], ptr %84, i64 1, i64 %89, i64 %130
  %135 = load double, ptr %134, align 8, !tbaa !5
  %136 = getelementptr [120 x [120 x double]], ptr %84, i64 -1, i64 %89, i64 %130
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %90, i64 %130
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %91, i64 %130
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = add nuw nsw i64 %130, 1
  %143 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %142
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = add nsw i64 %130, -1
  %146 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %78, i64 %89, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = tail call double @llvm.fmuladd.f64(double %132, double -2.000000e+00, double %135)
  %149 = fadd double %148, %137
  %150 = tail call double @llvm.fmuladd.f64(double %132, double -2.000000e+00, double %139)
  %151 = fadd double %150, %141
  %152 = fmul double %151, 1.250000e-01
  %153 = tail call double @llvm.fmuladd.f64(double %149, double 1.250000e-01, double %152)
  %154 = tail call double @llvm.fmuladd.f64(double %132, double -2.000000e+00, double %144)
  %155 = fadd double %154, %147
  %156 = tail call double @llvm.fmuladd.f64(double %155, double 1.250000e-01, double %153)
  %157 = fadd double %132, %156
  store double %157, ptr %133, align 8, !tbaa !5
  %158 = icmp eq i64 %142, 119
  br i1 %158, label %127, label %129, !llvm.loop !24

159:                                              ; preds = %123, %209
  %160 = phi i64 [ %212, %209 ], [ 0, %123 ]
  %161 = phi i64 [ %210, %209 ], [ 1, %123 ]
  %162 = mul nuw nsw i64 %160, 115200
  %163 = getelementptr i8, ptr %48, i64 %162
  %164 = getelementptr i8, ptr %49, i64 %162
  %165 = getelementptr i8, ptr %50, i64 %162
  %166 = getelementptr i8, ptr %51, i64 %162
  %167 = getelementptr [120 x [120 x double]], ptr %5, i64 %161
  %168 = icmp ult ptr %163, %166
  %169 = icmp ult ptr %165, %164
  %170 = and i1 %168, %169
  br label %174

171:                                              ; preds = %209
  %172 = add nuw nsw i32 %75, 1
  %173 = icmp eq i32 %172, 501
  br i1 %173, label %245, label %74, !llvm.loop !25

174:                                              ; preds = %213, %159
  %175 = phi i64 [ 1, %159 ], [ %176, %213 ]
  %176 = add nuw nsw i64 %175, 1
  %177 = add nsw i64 %175, -1
  br i1 %170, label %215, label %178

178:                                              ; preds = %174, %178
  %179 = phi i64 [ %207, %178 ], [ 0, %174 ]
  %180 = or disjoint i64 %179, 1
  %181 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %175, i64 %180
  %182 = load <2 x double>, ptr %181, align 8, !tbaa !5, !alias.scope !26
  %183 = getelementptr [120 x [120 x double]], ptr %167, i64 1, i64 %175, i64 %180
  %184 = load <2 x double>, ptr %183, align 8, !tbaa !5, !alias.scope !26
  %185 = getelementptr [120 x [120 x double]], ptr %167, i64 -1, i64 %175, i64 %180
  %186 = load <2 x double>, ptr %185, align 8, !tbaa !5, !alias.scope !26
  %187 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %176, i64 %180
  %188 = load <2 x double>, ptr %187, align 8, !tbaa !5, !alias.scope !26
  %189 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %177, i64 %180
  %190 = load <2 x double>, ptr %189, align 8, !tbaa !5, !alias.scope !26
  %191 = add i64 %179, 2
  %192 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %175, i64 %191
  %193 = load <2 x double>, ptr %192, align 8, !tbaa !5, !alias.scope !26
  %194 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %175, i64 %179
  %195 = load <2 x double>, ptr %194, align 8, !tbaa !5, !alias.scope !26
  %196 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %184)
  %197 = fadd <2 x double> %196, %186
  %198 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %188)
  %199 = fadd <2 x double> %198, %190
  %200 = fmul <2 x double> %199, <double 1.250000e-01, double 1.250000e-01>
  %201 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %197, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %200)
  %202 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> <double -2.000000e+00, double -2.000000e+00>, <2 x double> %193)
  %203 = fadd <2 x double> %202, %195
  %204 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %203, <2 x double> <double 1.250000e-01, double 1.250000e-01>, <2 x double> %201)
  %205 = fadd <2 x double> %182, %204
  %206 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %161, i64 %175, i64 %180
  store <2 x double> %205, ptr %206, align 8, !tbaa !5, !alias.scope !29, !noalias !26
  %207 = add nuw i64 %179, 2
  %208 = icmp eq i64 %207, 118
  br i1 %208, label %213, label %178, !llvm.loop !31

209:                                              ; preds = %213
  %210 = add nuw nsw i64 %161, 1
  %211 = icmp eq i64 %210, 119
  %212 = add i64 %160, 1
  br i1 %211, label %171, label %159, !llvm.loop !32

213:                                              ; preds = %178, %215
  %214 = icmp eq i64 %176, 119
  br i1 %214, label %209, label %174, !llvm.loop !33

215:                                              ; preds = %174, %215
  %216 = phi i64 [ %227, %215 ], [ 1, %174 ]
  %217 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %175, i64 %216
  %218 = load double, ptr %217, align 8, !tbaa !5
  %219 = getelementptr [120 x [120 x double]], ptr %167, i64 1, i64 %175, i64 %216
  %220 = load double, ptr %219, align 8, !tbaa !5
  %221 = getelementptr [120 x [120 x double]], ptr %167, i64 -1, i64 %175, i64 %216
  %222 = load double, ptr %221, align 8, !tbaa !5
  %223 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %176, i64 %216
  %224 = load double, ptr %223, align 8, !tbaa !5
  %225 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %177, i64 %216
  %226 = load double, ptr %225, align 8, !tbaa !5
  %227 = add nuw nsw i64 %216, 1
  %228 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %175, i64 %227
  %229 = load double, ptr %228, align 8, !tbaa !5
  %230 = add nsw i64 %216, -1
  %231 = getelementptr inbounds [120 x [120 x double]], ptr %5, i64 %161, i64 %175, i64 %230
  %232 = load double, ptr %231, align 8, !tbaa !5
  %233 = tail call double @llvm.fmuladd.f64(double %218, double -2.000000e+00, double %220)
  %234 = fadd double %233, %222
  %235 = tail call double @llvm.fmuladd.f64(double %218, double -2.000000e+00, double %224)
  %236 = fadd double %235, %226
  %237 = fmul double %236, 1.250000e-01
  %238 = tail call double @llvm.fmuladd.f64(double %234, double 1.250000e-01, double %237)
  %239 = tail call double @llvm.fmuladd.f64(double %218, double -2.000000e+00, double %229)
  %240 = fadd double %239, %232
  %241 = tail call double @llvm.fmuladd.f64(double %240, double 1.250000e-01, double %238)
  %242 = fadd double %218, %241
  %243 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %161, i64 %175, i64 %216
  store double %242, ptr %243, align 8, !tbaa !5
  %244 = icmp eq i64 %227, 119
  br i1 %244, label %213, label %215, !llvm.loop !34

245:                                              ; preds = %171
  %246 = load ptr, ptr @stdout, align 8, !tbaa !35
  %247 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %246)
  %248 = load ptr, ptr @stdout, align 8, !tbaa !35
  %249 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %248, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %250

250:                                              ; preds = %257, %245
  %251 = phi i64 [ 0, %245 ], [ %258, %257 ]
  %252 = mul nuw nsw i64 %251, 14400
  br label %253

253:                                              ; preds = %260, %250
  %254 = phi i64 [ 0, %250 ], [ %261, %260 ]
  %255 = mul nuw nsw i64 %254, 120
  %256 = add nuw nsw i64 %255, %252
  br label %263

257:                                              ; preds = %260
  %258 = add nuw nsw i64 %251, 1
  %259 = icmp eq i64 %258, 120
  br i1 %259, label %279, label %250, !llvm.loop !37

260:                                              ; preds = %272
  %261 = add nuw nsw i64 %254, 1
  %262 = icmp eq i64 %261, 120
  br i1 %262, label %257, label %253, !llvm.loop !38

263:                                              ; preds = %272, %253
  %264 = phi i64 [ 0, %253 ], [ %277, %272 ]
  %265 = add nuw nsw i64 %256, %264
  %266 = trunc i64 %265 to i32
  %267 = urem i32 %266, 20
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load ptr, ptr @stdout, align 8, !tbaa !35
  %271 = tail call i32 @fputc(i32 10, ptr %270)
  br label %272

272:                                              ; preds = %269, %263
  %273 = load ptr, ptr @stdout, align 8, !tbaa !35
  %274 = getelementptr inbounds [120 x [120 x double]], ptr %3, i64 %251, i64 %254, i64 %264
  %275 = load double, ptr %274, align 8, !tbaa !5
  %276 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.4, double noundef %275)
  %277 = add nuw nsw i64 %264, 1
  %278 = icmp eq i64 %277, 120
  br i1 %278, label %260, label %263, !llvm.loop !39

279:                                              ; preds = %257
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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !11}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !10, !11, !12}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10, !11}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !7, i64 0}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
