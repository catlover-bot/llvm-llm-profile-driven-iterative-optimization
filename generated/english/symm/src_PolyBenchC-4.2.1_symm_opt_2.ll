; ModuleID = 'outputs/src_PolyBenchC-4.2.1_symm_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_symm_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = icmp ult i64 %8, 16
  br label %10

10:                                               ; preds = %52, %2
  %11 = phi i64 [ 0, %2 ], [ %53, %52 ]
  %12 = add nuw nsw i64 %11, 1200
  br i1 %9, label %36, label %13

13:                                               ; preds = %10
  %14 = insertelement <2 x i64> poison, i64 %11, i64 0
  %15 = shufflevector <2 x i64> %14, <2 x i64> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x i64> poison, i64 %12, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %18, %13
  %19 = phi i64 [ 0, %13 ], [ %33, %18 ]
  %20 = phi <2 x i64> [ <i64 0, i64 1>, %13 ], [ %34, %18 ]
  %21 = add nuw nsw <2 x i64> %20, %15
  %22 = trunc <2 x i64> %21 to <2 x i32>
  %23 = urem <2 x i32> %22, <i32 100, i32 100>
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, <double 1.000000e+03, double 1.000000e+03>
  %26 = getelementptr inbounds [1200 x double], ptr %3, i64 %11, i64 %19
  store <2 x double> %25, ptr %26, align 8, !tbaa !5
  %27 = sub nuw nsw <2 x i64> %17, %20
  %28 = trunc <2 x i64> %27 to <2 x i32>
  %29 = urem <2 x i32> %28, <i32 100, i32 100>
  %30 = sitofp <2 x i32> %29 to <2 x double>
  %31 = fdiv <2 x double> %30, <double 1.000000e+03, double 1.000000e+03>
  %32 = getelementptr inbounds [1200 x double], ptr %6, i64 %11, i64 %19
  store <2 x double> %31, ptr %32, align 8, !tbaa !5
  %33 = add nuw i64 %19, 2
  %34 = add <2 x i64> %20, <i64 2, i64 2>
  %35 = icmp eq i64 %33, 1200
  br i1 %35, label %52, label %18, !llvm.loop !9

36:                                               ; preds = %10, %36
  %37 = phi i64 [ %50, %36 ], [ 0, %10 ]
  %38 = add nuw nsw i64 %37, %11
  %39 = trunc i64 %38 to i32
  %40 = urem i32 %39, 100
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 1.000000e+03
  %43 = getelementptr inbounds [1200 x double], ptr %3, i64 %11, i64 %37
  store double %42, ptr %43, align 8, !tbaa !5
  %44 = sub nuw nsw i64 %12, %37
  %45 = trunc i64 %44 to i32
  %46 = urem i32 %45, 100
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+03
  %49 = getelementptr inbounds [1200 x double], ptr %6, i64 %11, i64 %37
  store double %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %37, 1
  %51 = icmp eq i64 %50, 1200
  br i1 %51, label %52, label %36, !llvm.loop !13

52:                                               ; preds = %18, %36
  %53 = add nuw nsw i64 %11, 1
  %54 = icmp eq i64 %53, 1000
  br i1 %54, label %69, label %10, !llvm.loop !14

55:                                               ; preds = %123, %119, %104
  %56 = add nuw nsw i64 %71, 1
  %57 = icmp eq i64 %105, 1000
  br i1 %57, label %58, label %69, !llvm.loop !15

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %3, i64 9600000
  %60 = getelementptr i8, ptr %6, i64 9600
  %61 = getelementptr i8, ptr %5, i64 8000000
  %62 = icmp ult ptr %3, %60
  %63 = icmp ult ptr %6, %59
  %64 = and i1 %62, %63
  %65 = icmp ult ptr %3, %61
  %66 = icmp ult ptr %5, %59
  %67 = and i1 %65, %66
  %68 = or i1 %64, %67
  br label %128

69:                                               ; preds = %52, %55
  %70 = phi i64 [ %105, %55 ], [ 0, %52 ]
  %71 = phi i64 [ %56, %55 ], [ 1, %52 ]
  %72 = sub nsw i64 999, %70
  %73 = icmp ult i64 %71, 2
  br i1 %73, label %92, label %74

74:                                               ; preds = %69
  %75 = and i64 %71, 9223372036854775806
  %76 = insertelement <2 x i64> poison, i64 %70, i64 0
  %77 = shufflevector <2 x i64> %76, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %78

78:                                               ; preds = %78, %74
  %79 = phi i64 [ 0, %74 ], [ %87, %78 ]
  %80 = phi <2 x i64> [ <i64 0, i64 1>, %74 ], [ %88, %78 ]
  %81 = add nuw nsw <2 x i64> %80, %77
  %82 = trunc <2 x i64> %81 to <2 x i32>
  %83 = urem <2 x i32> %82, <i32 100, i32 100>
  %84 = sitofp <2 x i32> %83 to <2 x double>
  %85 = fdiv <2 x double> %84, <double 1.000000e+03, double 1.000000e+03>
  %86 = getelementptr inbounds [1000 x double], ptr %5, i64 %70, i64 %79
  store <2 x double> %85, ptr %86, align 8, !tbaa !5
  %87 = add nuw i64 %79, 2
  %88 = add <2 x i64> %80, <i64 2, i64 2>
  %89 = icmp eq i64 %87, %75
  br i1 %89, label %90, label %78, !llvm.loop !16

90:                                               ; preds = %78
  %91 = icmp eq i64 %71, %75
  br i1 %91, label %104, label %92

92:                                               ; preds = %69, %90
  %93 = phi i64 [ 0, %69 ], [ %75, %90 ]
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi i64 [ %102, %94 ], [ %93, %92 ]
  %96 = add nuw nsw i64 %95, %70
  %97 = trunc i64 %96 to i32
  %98 = urem i32 %97, 100
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %99, 1.000000e+03
  %101 = getelementptr inbounds [1000 x double], ptr %5, i64 %70, i64 %95
  store double %100, ptr %101, align 8, !tbaa !5
  %102 = add nuw nsw i64 %95, 1
  %103 = icmp eq i64 %102, %71
  br i1 %103, label %104, label %94, !llvm.loop !17

104:                                              ; preds = %94, %90
  %105 = add nuw nsw i64 %70, 1
  %106 = icmp ult i64 %70, 999
  br i1 %106, label %107, label %55

107:                                              ; preds = %104
  %108 = icmp ult i64 %72, 4
  br i1 %108, label %121, label %109

109:                                              ; preds = %107
  %110 = and i64 %72, -4
  %111 = add i64 %71, %110
  br label %112

112:                                              ; preds = %112, %109
  %113 = phi i64 [ 0, %109 ], [ %117, %112 ]
  %114 = add i64 %71, %113
  %115 = getelementptr inbounds [1000 x double], ptr %5, i64 %70, i64 %114
  %116 = getelementptr inbounds double, ptr %115, i64 2
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, ptr %115, align 8, !tbaa !5
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, ptr %116, align 8, !tbaa !5
  %117 = add nuw i64 %113, 4
  %118 = icmp eq i64 %117, %110
  br i1 %118, label %119, label %112, !llvm.loop !18

119:                                              ; preds = %112
  %120 = icmp eq i64 %72, %110
  br i1 %120, label %55, label %121

121:                                              ; preds = %107, %119
  %122 = phi i64 [ %71, %107 ], [ %111, %119 ]
  br label %123

123:                                              ; preds = %121, %123
  %124 = phi i64 [ %126, %123 ], [ %122, %121 ]
  %125 = getelementptr inbounds [1000 x double], ptr %5, i64 %70, i64 %124
  store double -9.990000e+02, ptr %125, align 8, !tbaa !5
  %126 = add nuw nsw i64 %124, 1
  %127 = icmp eq i64 %126, 1000
  br i1 %127, label %55, label %123, !llvm.loop !19

128:                                              ; preds = %58, %242
  %129 = phi i64 [ %243, %242 ], [ 0, %58 ]
  %130 = getelementptr inbounds [1200 x double], ptr %3, i64 %129
  %131 = getelementptr inbounds [1000 x double], ptr %5, i64 %129
  %132 = icmp eq i64 %129, 0
  %133 = getelementptr inbounds double, ptr %131, i64 %129
  br i1 %132, label %139, label %134

134:                                              ; preds = %128
  %135 = and i64 %129, 1
  %136 = icmp eq i64 %129, 1
  %137 = and i64 %129, 9223372036854775806
  %138 = icmp eq i64 %135, 0
  br label %164

139:                                              ; preds = %128
  br i1 %68, label %219, label %140

140:                                              ; preds = %139
  %141 = load double, ptr %133, align 8, !tbaa !5, !alias.scope !20
  %142 = insertelement <2 x double> poison, double %141, i64 0
  %143 = shufflevector <2 x double> %142, <2 x double> poison, <2 x i32> zeroinitializer
  br label %144

144:                                              ; preds = %140, %144
  %145 = phi i64 [ %162, %144 ], [ 0, %140 ]
  %146 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %145
  %147 = getelementptr inbounds double, ptr %146, i64 2
  %148 = load <2 x double>, ptr %146, align 8, !tbaa !5, !alias.scope !23
  %149 = load <2 x double>, ptr %147, align 8, !tbaa !5, !alias.scope !23
  %150 = getelementptr inbounds double, ptr %130, i64 %145
  %151 = getelementptr inbounds double, ptr %150, i64 2
  %152 = load <2 x double>, ptr %150, align 8, !tbaa !5, !alias.scope !25, !noalias !27
  %153 = load <2 x double>, ptr %151, align 8, !tbaa !5, !alias.scope !25, !noalias !27
  %154 = fmul <2 x double> %148, <double 1.500000e+00, double 1.500000e+00>
  %155 = fmul <2 x double> %149, <double 1.500000e+00, double 1.500000e+00>
  %156 = fmul <2 x double> %154, %143
  %157 = fmul <2 x double> %155, %143
  %158 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %152, <2 x double> <double 1.200000e+00, double 1.200000e+00>, <2 x double> %156)
  %159 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %153, <2 x double> <double 1.200000e+00, double 1.200000e+00>, <2 x double> %157)
  %160 = fadd <2 x double> %158, zeroinitializer
  %161 = fadd <2 x double> %159, zeroinitializer
  store <2 x double> %160, ptr %150, align 8, !tbaa !5, !alias.scope !25, !noalias !27
  store <2 x double> %161, ptr %151, align 8, !tbaa !5, !alias.scope !25, !noalias !27
  %162 = add nuw i64 %145, 4
  %163 = icmp eq i64 %162, 1200
  br i1 %163, label %242, label %144, !llvm.loop !28

164:                                              ; preds = %134, %209
  %165 = phi i64 [ %217, %209 ], [ 0, %134 ]
  %166 = getelementptr inbounds [1200 x double], ptr %6, i64 %129, i64 %165
  %167 = load double, ptr %166, align 8, !tbaa !5
  %168 = fmul double %167, 1.500000e+00
  br i1 %136, label %195, label %169

169:                                              ; preds = %164, %169
  %170 = phi i64 [ %192, %169 ], [ 0, %164 ]
  %171 = phi double [ %191, %169 ], [ 0.000000e+00, %164 ]
  %172 = phi i64 [ %193, %169 ], [ 0, %164 ]
  %173 = getelementptr inbounds double, ptr %131, i64 %170
  %174 = load double, ptr %173, align 8, !tbaa !5
  %175 = getelementptr inbounds [1200 x double], ptr %3, i64 %170, i64 %165
  %176 = load double, ptr %175, align 8, !tbaa !5
  %177 = tail call double @llvm.fmuladd.f64(double %168, double %174, double %176)
  store double %177, ptr %175, align 8, !tbaa !5
  %178 = getelementptr inbounds [1200 x double], ptr %6, i64 %170, i64 %165
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = load double, ptr %173, align 8, !tbaa !5
  %181 = tail call double @llvm.fmuladd.f64(double %179, double %180, double %171)
  %182 = or disjoint i64 %170, 1
  %183 = getelementptr inbounds double, ptr %131, i64 %182
  %184 = load double, ptr %183, align 8, !tbaa !5
  %185 = getelementptr inbounds [1200 x double], ptr %3, i64 %182, i64 %165
  %186 = load double, ptr %185, align 8, !tbaa !5
  %187 = tail call double @llvm.fmuladd.f64(double %168, double %184, double %186)
  store double %187, ptr %185, align 8, !tbaa !5
  %188 = getelementptr inbounds [1200 x double], ptr %6, i64 %182, i64 %165
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = load double, ptr %183, align 8, !tbaa !5
  %191 = tail call double @llvm.fmuladd.f64(double %189, double %190, double %181)
  %192 = add nuw nsw i64 %170, 2
  %193 = add i64 %172, 2
  %194 = icmp eq i64 %193, %137
  br i1 %194, label %195, label %169, !llvm.loop !29

195:                                              ; preds = %169, %164
  %196 = phi double [ undef, %164 ], [ %191, %169 ]
  %197 = phi i64 [ 0, %164 ], [ %192, %169 ]
  %198 = phi double [ 0.000000e+00, %164 ], [ %191, %169 ]
  br i1 %138, label %209, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds double, ptr %131, i64 %197
  %201 = load double, ptr %200, align 8, !tbaa !5
  %202 = getelementptr inbounds [1200 x double], ptr %3, i64 %197, i64 %165
  %203 = load double, ptr %202, align 8, !tbaa !5
  %204 = tail call double @llvm.fmuladd.f64(double %168, double %201, double %203)
  store double %204, ptr %202, align 8, !tbaa !5
  %205 = getelementptr inbounds [1200 x double], ptr %6, i64 %197, i64 %165
  %206 = load double, ptr %205, align 8, !tbaa !5
  %207 = load double, ptr %200, align 8, !tbaa !5
  %208 = tail call double @llvm.fmuladd.f64(double %206, double %207, double %198)
  br label %209

209:                                              ; preds = %195, %199
  %210 = phi double [ %196, %195 ], [ %208, %199 ]
  %211 = getelementptr inbounds double, ptr %130, i64 %165
  %212 = load double, ptr %211, align 8, !tbaa !5
  %213 = load double, ptr %133, align 8, !tbaa !5
  %214 = fmul double %168, %213
  %215 = tail call double @llvm.fmuladd.f64(double %212, double 1.200000e+00, double %214)
  %216 = tail call double @llvm.fmuladd.f64(double %210, double 1.500000e+00, double %215)
  store double %216, ptr %211, align 8, !tbaa !5
  %217 = add nuw nsw i64 %165, 1
  %218 = icmp eq i64 %217, 1200
  br i1 %218, label %242, label %164, !llvm.loop !30

219:                                              ; preds = %139, %219
  %220 = phi i64 [ %240, %219 ], [ 0, %139 ]
  %221 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %220
  %222 = load double, ptr %221, align 8, !tbaa !5
  %223 = getelementptr inbounds double, ptr %130, i64 %220
  %224 = load double, ptr %223, align 8, !tbaa !5
  %225 = fmul double %222, 1.500000e+00
  %226 = load double, ptr %133, align 8, !tbaa !5
  %227 = fmul double %225, %226
  %228 = tail call double @llvm.fmuladd.f64(double %224, double 1.200000e+00, double %227)
  %229 = fadd double %228, 0.000000e+00
  store double %229, ptr %223, align 8, !tbaa !5
  %230 = or disjoint i64 %220, 1
  %231 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %230
  %232 = load double, ptr %231, align 8, !tbaa !5
  %233 = getelementptr inbounds double, ptr %130, i64 %230
  %234 = load double, ptr %233, align 8, !tbaa !5
  %235 = fmul double %232, 1.500000e+00
  %236 = load double, ptr %133, align 8, !tbaa !5
  %237 = fmul double %235, %236
  %238 = tail call double @llvm.fmuladd.f64(double %234, double 1.200000e+00, double %237)
  %239 = fadd double %238, 0.000000e+00
  store double %239, ptr %233, align 8, !tbaa !5
  %240 = add nuw nsw i64 %220, 2
  %241 = icmp eq i64 %240, 1200
  br i1 %241, label %242, label %219, !llvm.loop !31

242:                                              ; preds = %209, %144, %219
  %243 = add nuw nsw i64 %129, 1
  %244 = icmp eq i64 %243, 1000
  br i1 %244, label %245, label %128, !llvm.loop !32

245:                                              ; preds = %242
  %246 = load ptr, ptr @stdout, align 8, !tbaa !33
  %247 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %246)
  %248 = load ptr, ptr @stdout, align 8, !tbaa !33
  %249 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %248, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %250

250:                                              ; preds = %269, %245
  %251 = phi i64 [ 0, %245 ], [ %270, %269 ]
  %252 = mul nuw nsw i64 %251, 1000
  br label %253

253:                                              ; preds = %262, %250
  %254 = phi i64 [ 0, %250 ], [ %267, %262 ]
  %255 = add nuw nsw i64 %254, %252
  %256 = trunc i64 %255 to i32
  %257 = urem i32 %256, 20
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = load ptr, ptr @stdout, align 8, !tbaa !33
  %261 = tail call i32 @fputc(i32 10, ptr %260)
  br label %262

262:                                              ; preds = %259, %253
  %263 = load ptr, ptr @stdout, align 8, !tbaa !33
  %264 = getelementptr inbounds [1200 x double], ptr %3, i64 %251, i64 %254
  %265 = load double, ptr %264, align 8, !tbaa !5
  %266 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %263, ptr noundef nonnull @.str.4, double noundef %265)
  %267 = add nuw nsw i64 %254, 1
  %268 = icmp eq i64 %267, 1200
  br i1 %268, label %269, label %253, !llvm.loop !35

269:                                              ; preds = %262
  %270 = add nuw nsw i64 %251, 1
  %271 = icmp eq i64 %270, 1000
  br i1 %271, label %272, label %250, !llvm.loop !36

272:                                              ; preds = %269
  %273 = load ptr, ptr @stdout, align 8, !tbaa !33
  %274 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %275 = load ptr, ptr @stdout, align 8, !tbaa !33
  %276 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %275)
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %6) #7
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
!17 = distinct !{!17, !10, !12, !11}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !12, !11}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = !{!26}
!26 = distinct !{!26, !22}
!27 = !{!24, !21}
!28 = distinct !{!28, !10, !11, !12}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10}
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !7, i64 0}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
