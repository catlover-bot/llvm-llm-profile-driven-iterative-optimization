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
  %93 = getelementptr i8, ptr %7, i64 9590392
  %94 = getelementptr i8, ptr %3, i64 9590400
  %95 = getelementptr i8, ptr %5, i64 9599992
  %96 = getelementptr i8, ptr %3, i64 8
  %97 = getelementptr i8, ptr %3, i64 9600000
  %98 = getelementptr i8, ptr %7, i64 9600000
  %99 = getelementptr i8, ptr %5, i64 9600
  %100 = getelementptr i8, ptr %5, i64 9600000
  %101 = icmp ult ptr %99, %98
  %102 = icmp ult ptr %7, %100
  %103 = and i1 %101, %102
  %104 = icmp ult ptr %96, %98
  %105 = icmp ult ptr %7, %97
  %106 = and i1 %104, %105
  %107 = icmp ult ptr %7, %94
  %108 = icmp ult ptr %3, %93
  %109 = and i1 %107, %108
  %110 = icmp ult ptr %7, %95
  %111 = icmp ult ptr %5, %93
  %112 = and i1 %110, %111
  %113 = or i1 %109, %112
  br label %114

114:                                              ; preds = %307, %92
  %115 = phi i64 [ %308, %307 ], [ 0, %92 ]
  %116 = getelementptr inbounds double, ptr %9, i64 %115
  %117 = load double, ptr %116, align 8, !tbaa !5
  %118 = insertelement <2 x double> poison, double %117, i64 0
  %119 = shufflevector <2 x double> %118, <2 x double> poison, <2 x i32> zeroinitializer
  br label %120

120:                                              ; preds = %120, %114
  %121 = phi i64 [ 0, %114 ], [ %139, %120 ]
  %122 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %121
  %123 = getelementptr inbounds double, ptr %122, i64 2
  store <2 x double> %119, ptr %122, align 8, !tbaa !5
  store <2 x double> %119, ptr %123, align 8, !tbaa !5
  %124 = or disjoint i64 %121, 4
  %125 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %124
  %126 = getelementptr inbounds double, ptr %125, i64 2
  store <2 x double> %119, ptr %125, align 8, !tbaa !5
  store <2 x double> %119, ptr %126, align 8, !tbaa !5
  %127 = add nuw nsw i64 %121, 8
  %128 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %127
  %129 = getelementptr inbounds double, ptr %128, i64 2
  store <2 x double> %119, ptr %128, align 8, !tbaa !5
  store <2 x double> %119, ptr %129, align 8, !tbaa !5
  %130 = add nuw nsw i64 %121, 12
  %131 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %130
  %132 = getelementptr inbounds double, ptr %131, i64 2
  store <2 x double> %119, ptr %131, align 8, !tbaa !5
  store <2 x double> %119, ptr %132, align 8, !tbaa !5
  %133 = add nuw nsw i64 %121, 16
  %134 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %133
  %135 = getelementptr inbounds double, ptr %134, i64 2
  store <2 x double> %119, ptr %134, align 8, !tbaa !5
  store <2 x double> %119, ptr %135, align 8, !tbaa !5
  %136 = add nuw nsw i64 %121, 20
  %137 = getelementptr inbounds [1200 x double], ptr %5, i64 0, i64 %136
  %138 = getelementptr inbounds double, ptr %137, i64 2
  store <2 x double> %119, ptr %137, align 8, !tbaa !5
  store <2 x double> %119, ptr %138, align 8, !tbaa !5
  %139 = add nuw nsw i64 %121, 24
  %140 = icmp eq i64 %139, 1200
  br i1 %140, label %141, label %120, !llvm.loop !16

141:                                              ; preds = %120, %185
  %142 = phi i64 [ %186, %185 ], [ 1, %120 ]
  %143 = getelementptr [1200 x double], ptr %7, i64 %142
  br i1 %103, label %164, label %144

144:                                              ; preds = %141, %144
  %145 = phi i64 [ %162, %144 ], [ 0, %141 ]
  %146 = getelementptr inbounds [1200 x double], ptr %7, i64 %142, i64 %145
  %147 = getelementptr inbounds double, ptr %146, i64 2
  %148 = load <2 x double>, ptr %146, align 8, !tbaa !5, !alias.scope !17
  %149 = load <2 x double>, ptr %147, align 8, !tbaa !5, !alias.scope !17
  %150 = getelementptr [1200 x double], ptr %143, i64 -1, i64 %145
  %151 = getelementptr double, ptr %150, i64 2
  %152 = load <2 x double>, ptr %150, align 8, !tbaa !5, !alias.scope !17
  %153 = load <2 x double>, ptr %151, align 8, !tbaa !5, !alias.scope !17
  %154 = fsub <2 x double> %148, %152
  %155 = fsub <2 x double> %149, %153
  %156 = getelementptr inbounds [1200 x double], ptr %5, i64 %142, i64 %145
  %157 = getelementptr inbounds double, ptr %156, i64 2
  %158 = load <2 x double>, ptr %156, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %159 = load <2 x double>, ptr %157, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %160 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %154, <2 x double> <double -5.000000e-01, double -5.000000e-01>, <2 x double> %158)
  %161 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %155, <2 x double> <double -5.000000e-01, double -5.000000e-01>, <2 x double> %159)
  store <2 x double> %160, ptr %156, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  store <2 x double> %161, ptr %157, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %162 = add nuw i64 %145, 4
  %163 = icmp eq i64 %162, 1200
  br i1 %163, label %185, label %144, !llvm.loop !22

164:                                              ; preds = %141, %164
  %165 = phi i64 [ %183, %164 ], [ 0, %141 ]
  %166 = getelementptr inbounds [1200 x double], ptr %7, i64 %142, i64 %165
  %167 = load double, ptr %166, align 8, !tbaa !5
  %168 = getelementptr [1200 x double], ptr %143, i64 -1, i64 %165
  %169 = load double, ptr %168, align 8, !tbaa !5
  %170 = fsub double %167, %169
  %171 = getelementptr inbounds [1200 x double], ptr %5, i64 %142, i64 %165
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = tail call double @llvm.fmuladd.f64(double %170, double -5.000000e-01, double %172)
  store double %173, ptr %171, align 8, !tbaa !5
  %174 = or disjoint i64 %165, 1
  %175 = getelementptr inbounds [1200 x double], ptr %7, i64 %142, i64 %174
  %176 = load double, ptr %175, align 8, !tbaa !5
  %177 = getelementptr [1200 x double], ptr %143, i64 -1, i64 %174
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = fsub double %176, %178
  %180 = getelementptr inbounds [1200 x double], ptr %5, i64 %142, i64 %174
  %181 = load double, ptr %180, align 8, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %179, double -5.000000e-01, double %181)
  store double %182, ptr %180, align 8, !tbaa !5
  %183 = add nuw nsw i64 %165, 2
  %184 = icmp eq i64 %183, 1200
  br i1 %184, label %185, label %164, !llvm.loop !23

185:                                              ; preds = %144, %164
  %186 = add nuw nsw i64 %142, 1
  %187 = icmp eq i64 %186, 1000
  br i1 %187, label %188, label %141, !llvm.loop !24

188:                                              ; preds = %185, %245
  %189 = phi i64 [ %246, %245 ], [ 0, %185 ]
  br i1 %106, label %211, label %190

190:                                              ; preds = %188, %190
  %191 = phi i64 [ %209, %190 ], [ 0, %188 ]
  %192 = or disjoint i64 %191, 1
  %193 = getelementptr inbounds [1200 x double], ptr %7, i64 %189, i64 %192
  %194 = getelementptr inbounds double, ptr %193, i64 2
  %195 = load <2 x double>, ptr %193, align 8, !tbaa !5, !alias.scope !25
  %196 = load <2 x double>, ptr %194, align 8, !tbaa !5, !alias.scope !25
  %197 = getelementptr inbounds [1200 x double], ptr %7, i64 %189, i64 %191
  %198 = getelementptr inbounds double, ptr %197, i64 2
  %199 = load <2 x double>, ptr %197, align 8, !tbaa !5, !alias.scope !25
  %200 = load <2 x double>, ptr %198, align 8, !tbaa !5, !alias.scope !25
  %201 = fsub <2 x double> %195, %199
  %202 = fsub <2 x double> %196, %200
  %203 = getelementptr inbounds [1200 x double], ptr %3, i64 %189, i64 %192
  %204 = getelementptr inbounds double, ptr %203, i64 2
  %205 = load <2 x double>, ptr %203, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %206 = load <2 x double>, ptr %204, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %207 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %201, <2 x double> <double -5.000000e-01, double -5.000000e-01>, <2 x double> %205)
  %208 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %202, <2 x double> <double -5.000000e-01, double -5.000000e-01>, <2 x double> %206)
  store <2 x double> %207, ptr %203, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  store <2 x double> %208, ptr %204, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %209 = add nuw i64 %191, 4
  %210 = icmp eq i64 %209, 1196
  br i1 %210, label %211, label %190, !llvm.loop !30

211:                                              ; preds = %190, %188
  %212 = phi i64 [ 1, %188 ], [ 1197, %190 ]
  %213 = getelementptr inbounds [1200 x double], ptr %7, i64 %189, i64 %212
  %214 = load double, ptr %213, align 8, !tbaa !5
  %215 = add nsw i64 %212, -1
  %216 = getelementptr inbounds [1200 x double], ptr %7, i64 %189, i64 %215
  %217 = load double, ptr %216, align 8, !tbaa !5
  %218 = fsub double %214, %217
  %219 = getelementptr inbounds [1200 x double], ptr %3, i64 %189, i64 %212
  %220 = load double, ptr %219, align 8, !tbaa !5
  %221 = tail call double @llvm.fmuladd.f64(double %218, double -5.000000e-01, double %220)
  store double %221, ptr %219, align 8, !tbaa !5
  %222 = add nuw nsw i64 %212, 1
  br label %223

223:                                              ; preds = %223, %211
  %224 = phi i64 [ %222, %211 ], [ %243, %223 ]
  %225 = getelementptr inbounds [1200 x double], ptr %7, i64 %189, i64 %224
  %226 = load double, ptr %225, align 8, !tbaa !5
  %227 = add nsw i64 %224, -1
  %228 = getelementptr inbounds [1200 x double], ptr %7, i64 %189, i64 %227
  %229 = load double, ptr %228, align 8, !tbaa !5
  %230 = fsub double %226, %229
  %231 = getelementptr inbounds [1200 x double], ptr %3, i64 %189, i64 %224
  %232 = load double, ptr %231, align 8, !tbaa !5
  %233 = tail call double @llvm.fmuladd.f64(double %230, double -5.000000e-01, double %232)
  store double %233, ptr %231, align 8, !tbaa !5
  %234 = add nuw nsw i64 %224, 1
  %235 = getelementptr inbounds [1200 x double], ptr %7, i64 %189, i64 %234
  %236 = load double, ptr %235, align 8, !tbaa !5
  %237 = getelementptr inbounds [1200 x double], ptr %7, i64 %189, i64 %224
  %238 = load double, ptr %237, align 8, !tbaa !5
  %239 = fsub double %236, %238
  %240 = getelementptr inbounds [1200 x double], ptr %3, i64 %189, i64 %234
  %241 = load double, ptr %240, align 8, !tbaa !5
  %242 = tail call double @llvm.fmuladd.f64(double %239, double -5.000000e-01, double %241)
  store double %242, ptr %240, align 8, !tbaa !5
  %243 = add nuw nsw i64 %224, 2
  %244 = icmp eq i64 %243, 1200
  br i1 %244, label %245, label %223, !llvm.loop !31

245:                                              ; preds = %223
  %246 = add nuw nsw i64 %189, 1
  %247 = icmp eq i64 %246, 1000
  br i1 %247, label %248, label %188, !llvm.loop !32

248:                                              ; preds = %245, %304
  %249 = phi i64 [ %305, %304 ], [ 0, %245 ]
  %250 = getelementptr [1200 x double], ptr %5, i64 %249
  br i1 %113, label %284, label %251

251:                                              ; preds = %248, %251
  %252 = phi i64 [ %282, %251 ], [ 0, %248 ]
  %253 = or disjoint i64 %252, 1
  %254 = getelementptr inbounds [1200 x double], ptr %3, i64 %249, i64 %253
  %255 = getelementptr inbounds double, ptr %254, i64 2
  %256 = load <2 x double>, ptr %254, align 8, !tbaa !5, !alias.scope !33
  %257 = load <2 x double>, ptr %255, align 8, !tbaa !5, !alias.scope !33
  %258 = getelementptr inbounds [1200 x double], ptr %3, i64 %249, i64 %252
  %259 = getelementptr inbounds double, ptr %258, i64 2
  %260 = load <2 x double>, ptr %258, align 8, !tbaa !5, !alias.scope !33
  %261 = load <2 x double>, ptr %259, align 8, !tbaa !5, !alias.scope !33
  %262 = fsub <2 x double> %256, %260
  %263 = fsub <2 x double> %257, %261
  %264 = getelementptr [1200 x double], ptr %250, i64 1, i64 %252
  %265 = getelementptr double, ptr %264, i64 2
  %266 = load <2 x double>, ptr %264, align 8, !tbaa !5, !alias.scope !36
  %267 = load <2 x double>, ptr %265, align 8, !tbaa !5, !alias.scope !36
  %268 = fadd <2 x double> %262, %266
  %269 = fadd <2 x double> %263, %267
  %270 = getelementptr inbounds [1200 x double], ptr %5, i64 %249, i64 %252
  %271 = getelementptr inbounds double, ptr %270, i64 2
  %272 = load <2 x double>, ptr %270, align 8, !tbaa !5, !alias.scope !36
  %273 = load <2 x double>, ptr %271, align 8, !tbaa !5, !alias.scope !36
  %274 = fsub <2 x double> %268, %272
  %275 = fsub <2 x double> %269, %273
  %276 = getelementptr inbounds [1200 x double], ptr %7, i64 %249, i64 %252
  %277 = getelementptr inbounds double, ptr %276, i64 2
  %278 = load <2 x double>, ptr %276, align 8, !tbaa !5, !alias.scope !38, !noalias !40
  %279 = load <2 x double>, ptr %277, align 8, !tbaa !5, !alias.scope !38, !noalias !40
  %280 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %274, <2 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666>, <2 x double> %278)
  %281 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %275, <2 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666>, <2 x double> %279)
  store <2 x double> %280, ptr %276, align 8, !tbaa !5, !alias.scope !38, !noalias !40
  store <2 x double> %281, ptr %277, align 8, !tbaa !5, !alias.scope !38, !noalias !40
  %282 = add nuw i64 %252, 4
  %283 = icmp eq i64 %282, 1196
  br i1 %283, label %284, label %251, !llvm.loop !41

284:                                              ; preds = %251, %248
  %285 = phi i64 [ 0, %248 ], [ 1196, %251 ]
  br label %286

286:                                              ; preds = %284, %286
  %287 = phi i64 [ %288, %286 ], [ %285, %284 ]
  %288 = add nuw nsw i64 %287, 1
  %289 = getelementptr inbounds [1200 x double], ptr %3, i64 %249, i64 %288
  %290 = load double, ptr %289, align 8, !tbaa !5
  %291 = getelementptr inbounds [1200 x double], ptr %3, i64 %249, i64 %287
  %292 = load double, ptr %291, align 8, !tbaa !5
  %293 = fsub double %290, %292
  %294 = getelementptr [1200 x double], ptr %250, i64 1, i64 %287
  %295 = load double, ptr %294, align 8, !tbaa !5
  %296 = fadd double %293, %295
  %297 = getelementptr inbounds [1200 x double], ptr %5, i64 %249, i64 %287
  %298 = load double, ptr %297, align 8, !tbaa !5
  %299 = fsub double %296, %298
  %300 = getelementptr inbounds [1200 x double], ptr %7, i64 %249, i64 %287
  %301 = load double, ptr %300, align 8, !tbaa !5
  %302 = tail call double @llvm.fmuladd.f64(double %299, double 0xBFE6666666666666, double %301)
  store double %302, ptr %300, align 8, !tbaa !5
  %303 = icmp eq i64 %288, 1199
  br i1 %303, label %304, label %286, !llvm.loop !42

304:                                              ; preds = %286
  %305 = add nuw nsw i64 %249, 1
  %306 = icmp eq i64 %305, 999
  br i1 %306, label %307, label %248, !llvm.loop !43

307:                                              ; preds = %304
  %308 = add nuw nsw i64 %115, 1
  %309 = icmp eq i64 %308, 500
  br i1 %309, label %310, label %114, !llvm.loop !44

310:                                              ; preds = %307
  %311 = load ptr, ptr @stdout, align 8, !tbaa !45
  %312 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %311)
  %313 = load ptr, ptr @stdout, align 8, !tbaa !45
  %314 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %313, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %315

315:                                              ; preds = %334, %310
  %316 = phi i64 [ 0, %310 ], [ %335, %334 ]
  %317 = mul nuw nsw i64 %316, 1000
  br label %318

318:                                              ; preds = %327, %315
  %319 = phi i64 [ 0, %315 ], [ %332, %327 ]
  %320 = add nuw nsw i64 %319, %317
  %321 = trunc i64 %320 to i32
  %322 = urem i32 %321, 20
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %318
  %325 = load ptr, ptr @stdout, align 8, !tbaa !45
  %326 = tail call i32 @fputc(i32 10, ptr %325)
  br label %327

327:                                              ; preds = %324, %318
  %328 = load ptr, ptr @stdout, align 8, !tbaa !45
  %329 = getelementptr inbounds [1200 x double], ptr %3, i64 %316, i64 %319
  %330 = load double, ptr %329, align 8, !tbaa !5
  %331 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef nonnull @.str.4, double noundef %330)
  %332 = add nuw nsw i64 %319, 1
  %333 = icmp eq i64 %332, 1200
  br i1 %333, label %334, label %318, !llvm.loop !47

334:                                              ; preds = %327
  %335 = add nuw nsw i64 %316, 1
  %336 = icmp eq i64 %335, 1000
  br i1 %336, label %337, label %315, !llvm.loop !48

337:                                              ; preds = %334
  %338 = load ptr, ptr @stdout, align 8, !tbaa !45
  %339 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %338, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %340 = load ptr, ptr @stdout, align 8, !tbaa !45
  %341 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %340)
  %342 = load ptr, ptr @stdout, align 8, !tbaa !45
  %343 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %342, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7)
  br label %344

344:                                              ; preds = %363, %337
  %345 = phi i64 [ 0, %337 ], [ %364, %363 ]
  %346 = mul nuw nsw i64 %345, 1000
  br label %347

347:                                              ; preds = %356, %344
  %348 = phi i64 [ 0, %344 ], [ %361, %356 ]
  %349 = add nuw nsw i64 %348, %346
  %350 = trunc i64 %349 to i32
  %351 = urem i32 %350, 20
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %347
  %354 = load ptr, ptr @stdout, align 8, !tbaa !45
  %355 = tail call i32 @fputc(i32 10, ptr %354)
  br label %356

356:                                              ; preds = %353, %347
  %357 = load ptr, ptr @stdout, align 8, !tbaa !45
  %358 = getelementptr inbounds [1200 x double], ptr %5, i64 %345, i64 %348
  %359 = load double, ptr %358, align 8, !tbaa !5
  %360 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %357, ptr noundef nonnull @.str.4, double noundef %359)
  %361 = add nuw nsw i64 %348, 1
  %362 = icmp eq i64 %361, 1200
  br i1 %362, label %363, label %347, !llvm.loop !49

363:                                              ; preds = %356
  %364 = add nuw nsw i64 %345, 1
  %365 = icmp eq i64 %364, 1000
  br i1 %365, label %366, label %344, !llvm.loop !50

366:                                              ; preds = %363
  %367 = load ptr, ptr @stdout, align 8, !tbaa !45
  %368 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %367, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7)
  %369 = load ptr, ptr @stdout, align 8, !tbaa !45
  %370 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %369, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8)
  br label %371

371:                                              ; preds = %390, %366
  %372 = phi i64 [ 0, %366 ], [ %391, %390 ]
  %373 = mul nuw nsw i64 %372, 1000
  br label %374

374:                                              ; preds = %383, %371
  %375 = phi i64 [ 0, %371 ], [ %388, %383 ]
  %376 = add nuw nsw i64 %375, %373
  %377 = trunc i64 %376 to i32
  %378 = urem i32 %377, 20
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %374
  %381 = load ptr, ptr @stdout, align 8, !tbaa !45
  %382 = tail call i32 @fputc(i32 10, ptr %381)
  br label %383

383:                                              ; preds = %380, %374
  %384 = load ptr, ptr @stdout, align 8, !tbaa !45
  %385 = getelementptr inbounds [1200 x double], ptr %7, i64 %372, i64 %375
  %386 = load double, ptr %385, align 8, !tbaa !5
  %387 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %384, ptr noundef nonnull @.str.4, double noundef %386)
  %388 = add nuw nsw i64 %375, 1
  %389 = icmp eq i64 %388, 1200
  br i1 %389, label %390, label %374, !llvm.loop !51

390:                                              ; preds = %383
  %391 = add nuw nsw i64 %372, 1
  %392 = icmp eq i64 %391, 1000
  br i1 %392, label %393, label %371, !llvm.loop !52

393:                                              ; preds = %390
  %394 = load ptr, ptr @stdout, align 8, !tbaa !45
  %395 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %394, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8)
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
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !10, !11, !12}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = !{!39}
!39 = distinct !{!39, !35}
!40 = !{!34, !37}
!41 = distinct !{!41, !10, !11, !12}
!42 = distinct !{!42, !10, !11}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !7, i64 0}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
