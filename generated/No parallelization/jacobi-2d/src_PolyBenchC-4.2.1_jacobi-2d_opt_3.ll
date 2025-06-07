; ModuleID = 'outputs/src_PolyBenchC-4.2.1_jacobi-2d_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_jacobi-2d_opt_3.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8) #7
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8) #7
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %4
  %8 = icmp ult i64 %7, 16
  br label %9

9:                                                ; preds = %45, %2
  %10 = phi i64 [ 0, %2 ], [ %46, %45 ]
  %11 = trunc i64 %10 to i32
  %12 = sitofp i32 %11 to double
  br i1 %8, label %31, label %13

13:                                               ; preds = %9
  %14 = insertelement <2 x double> poison, double %12, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %28, %16 ]
  %18 = phi <2 x i32> [ <i32 0, i32 1>, %13 ], [ %29, %16 ]
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fadd <2 x double> %19, <double 2.000000e+00, double 2.000000e+00>
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %20, <2 x double> <double 2.000000e+00, double 2.000000e+00>)
  %22 = fdiv <2 x double> %21, <double 1.300000e+03, double 1.300000e+03>
  %23 = getelementptr inbounds [1300 x double], ptr %3, i64 %10, i64 %17
  store <2 x double> %22, ptr %23, align 8, !tbaa !5
  %24 = fadd <2 x double> %19, <double 3.000000e+00, double 3.000000e+00>
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %24, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %26 = fdiv <2 x double> %25, <double 1.300000e+03, double 1.300000e+03>
  %27 = getelementptr inbounds [1300 x double], ptr %5, i64 %10, i64 %17
  store <2 x double> %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw i64 %17, 2
  %29 = add <2 x i32> %18, <i32 2, i32 2>
  %30 = icmp eq i64 %28, 1300
  br i1 %30, label %45, label %16, !llvm.loop !9

31:                                               ; preds = %9, %31
  %32 = phi i64 [ %43, %31 ], [ 0, %9 ]
  %33 = trunc i64 %32 to i32
  %34 = sitofp i32 %33 to double
  %35 = fadd double %34, 2.000000e+00
  %36 = tail call double @llvm.fmuladd.f64(double %12, double %35, double 2.000000e+00)
  %37 = fdiv double %36, 1.300000e+03
  %38 = getelementptr inbounds [1300 x double], ptr %3, i64 %10, i64 %32
  store double %37, ptr %38, align 8, !tbaa !5
  %39 = fadd double %34, 3.000000e+00
  %40 = tail call double @llvm.fmuladd.f64(double %12, double %39, double 3.000000e+00)
  %41 = fdiv double %40, 1.300000e+03
  %42 = getelementptr inbounds [1300 x double], ptr %5, i64 %10, i64 %32
  store double %41, ptr %42, align 8, !tbaa !5
  %43 = add nuw nsw i64 %32, 1
  %44 = icmp eq i64 %43, 1300
  br i1 %44, label %45, label %31, !llvm.loop !13

45:                                               ; preds = %16, %31
  %46 = add nuw nsw i64 %10, 1
  %47 = icmp eq i64 %46, 1300
  br i1 %47, label %48, label %9, !llvm.loop !14

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %3, i64 10408
  %50 = getelementptr i8, ptr %3, i64 13509592
  %51 = getelementptr i8, ptr %5, i64 8
  %52 = getelementptr i8, ptr %5, i64 13519992
  %53 = getelementptr i8, ptr %5, i64 10408
  %54 = getelementptr i8, ptr %5, i64 13509592
  %55 = getelementptr i8, ptr %3, i64 8
  %56 = getelementptr i8, ptr %3, i64 13519992
  %57 = icmp ult ptr %53, %56
  %58 = icmp ult ptr %55, %54
  %59 = and i1 %57, %58
  %60 = getelementptr double, ptr %3, i64 -1
  %61 = getelementptr double, ptr %5, i64 -1
  %62 = icmp ult ptr %49, %52
  %63 = icmp ult ptr %51, %50
  %64 = and i1 %62, %63
  %65 = getelementptr double, ptr %5, i64 -1
  %66 = getelementptr double, ptr %3, i64 -1
  br label %67

67:                                               ; preds = %48, %223
  %68 = phi i32 [ %224, %223 ], [ 0, %48 ]
  br label %69

69:                                               ; preds = %143, %67
  %70 = phi i64 [ 1, %67 ], [ %144, %143 ]
  %71 = getelementptr [1300 x double], ptr %3, i64 %70
  br i1 %59, label %107, label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ %105, %72 ], [ 0, %69 ]
  %74 = shl i64 %73, 1
  %75 = or disjoint i64 %74, 1
  %76 = getelementptr [1300 x double], ptr %60, i64 %70, i64 %75
  %77 = load <4 x double>, ptr %76, align 8, !tbaa !5
  %78 = shufflevector <4 x double> %77, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %79 = shufflevector <4 x double> %77, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %80 = or disjoint i64 %74, 2
  %81 = getelementptr inbounds [1300 x double], ptr %3, i64 %70, i64 %80
  %82 = load <4 x double>, ptr %81, align 8, !tbaa !5
  %83 = shufflevector <4 x double> %82, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %84 = shufflevector <4 x double> %82, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %85 = getelementptr [1300 x double], ptr %71, i64 1, i64 %75
  %86 = load <4 x double>, ptr %85, align 8, !tbaa !5
  %87 = shufflevector <4 x double> %86, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %88 = shufflevector <4 x double> %86, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %89 = getelementptr [1300 x double], ptr %71, i64 -1, i64 %75
  %90 = load <4 x double>, ptr %89, align 8, !tbaa !5
  %91 = shufflevector <4 x double> %90, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %92 = shufflevector <4 x double> %90, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %93 = fadd <2 x double> %79, %78
  %94 = fadd <2 x double> %83, %93
  %95 = fadd <2 x double> %87, %94
  %96 = fadd <2 x double> %91, %95
  %97 = fmul <2 x double> %96, <double 2.000000e-01, double 2.000000e-01>
  %98 = fadd <2 x double> %79, %83
  %99 = fadd <2 x double> %98, %84
  %100 = fadd <2 x double> %88, %99
  %101 = fadd <2 x double> %92, %100
  %102 = fmul <2 x double> %101, <double 2.000000e-01, double 2.000000e-01>
  %103 = getelementptr [1300 x double], ptr %61, i64 %70, i64 %80
  %104 = shufflevector <2 x double> %97, <2 x double> %102, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %104, ptr %103, align 8, !tbaa !5
  %105 = add nuw i64 %73, 2
  %106 = icmp eq i64 %105, 648
  br i1 %106, label %107, label %72, !llvm.loop !15

107:                                              ; preds = %72, %69
  %108 = phi i64 [ 1, %69 ], [ 1297, %72 ]
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi i64 [ %134, %109 ], [ %108, %107 ]
  %111 = getelementptr inbounds [1300 x double], ptr %3, i64 %70, i64 %110
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = add nuw nsw i64 %110, 1
  %114 = getelementptr inbounds [1300 x double], ptr %3, i64 %70, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !5
  %116 = add nsw i64 %110, -1
  %117 = getelementptr inbounds [1300 x double], ptr %3, i64 %70, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = getelementptr [1300 x double], ptr %71, i64 1, i64 %110
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = getelementptr [1300 x double], ptr %71, i64 -1, i64 %110
  %122 = load double, ptr %121, align 8, !tbaa !5
  %123 = getelementptr [1300 x double], ptr %71, i64 1, i64 %113
  %124 = load double, ptr %123, align 8, !tbaa !5
  %125 = getelementptr [1300 x double], ptr %71, i64 -1, i64 %113
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = fadd double %112, %118
  %128 = fadd double %115, %127
  %129 = fadd double %120, %128
  %130 = fadd double %122, %129
  %131 = fmul double %130, 2.000000e-01
  %132 = getelementptr inbounds [1300 x double], ptr %5, i64 %70, i64 %110
  store double %131, ptr %132, align 8, !tbaa !5
  %133 = fadd double %112, %115
  %134 = add nuw nsw i64 %110, 2
  %135 = getelementptr inbounds [1300 x double], ptr %3, i64 %70, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = fadd double %133, %136
  %138 = fadd double %124, %137
  %139 = fadd double %126, %138
  %140 = fmul double %139, 2.000000e-01
  %141 = getelementptr inbounds [1300 x double], ptr %5, i64 %70, i64 %113
  store double %140, ptr %141, align 8, !tbaa !5
  %142 = icmp ult i64 %110, 1297
  br i1 %142, label %109, label %143, !llvm.loop !16

143:                                              ; preds = %109
  %144 = add nuw nsw i64 %70, 1
  %145 = icmp eq i64 %144, 1299
  br i1 %145, label %146, label %69, !llvm.loop !17

146:                                              ; preds = %143, %220
  %147 = phi i64 [ %221, %220 ], [ 1, %143 ]
  %148 = getelementptr [1300 x double], ptr %5, i64 %147
  br i1 %64, label %184, label %149

149:                                              ; preds = %146, %149
  %150 = phi i64 [ %182, %149 ], [ 0, %146 ]
  %151 = shl i64 %150, 1
  %152 = or disjoint i64 %151, 1
  %153 = getelementptr [1300 x double], ptr %65, i64 %147, i64 %152
  %154 = load <4 x double>, ptr %153, align 8, !tbaa !5
  %155 = shufflevector <4 x double> %154, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %156 = shufflevector <4 x double> %154, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %157 = or disjoint i64 %151, 2
  %158 = getelementptr inbounds [1300 x double], ptr %5, i64 %147, i64 %157
  %159 = load <4 x double>, ptr %158, align 8, !tbaa !5
  %160 = shufflevector <4 x double> %159, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %161 = shufflevector <4 x double> %159, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %162 = getelementptr [1300 x double], ptr %148, i64 1, i64 %152
  %163 = load <4 x double>, ptr %162, align 8, !tbaa !5
  %164 = shufflevector <4 x double> %163, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %165 = shufflevector <4 x double> %163, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %166 = getelementptr [1300 x double], ptr %148, i64 -1, i64 %152
  %167 = load <4 x double>, ptr %166, align 8, !tbaa !5
  %168 = shufflevector <4 x double> %167, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %169 = shufflevector <4 x double> %167, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %170 = fadd <2 x double> %156, %155
  %171 = fadd <2 x double> %160, %170
  %172 = fadd <2 x double> %164, %171
  %173 = fadd <2 x double> %168, %172
  %174 = fmul <2 x double> %173, <double 2.000000e-01, double 2.000000e-01>
  %175 = fadd <2 x double> %156, %160
  %176 = fadd <2 x double> %175, %161
  %177 = fadd <2 x double> %165, %176
  %178 = fadd <2 x double> %169, %177
  %179 = fmul <2 x double> %178, <double 2.000000e-01, double 2.000000e-01>
  %180 = getelementptr [1300 x double], ptr %66, i64 %147, i64 %157
  %181 = shufflevector <2 x double> %174, <2 x double> %179, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %181, ptr %180, align 8, !tbaa !5
  %182 = add nuw i64 %150, 2
  %183 = icmp eq i64 %182, 648
  br i1 %183, label %184, label %149, !llvm.loop !18

184:                                              ; preds = %149, %146
  %185 = phi i64 [ 1, %146 ], [ 1297, %149 ]
  br label %186

186:                                              ; preds = %184, %186
  %187 = phi i64 [ %211, %186 ], [ %185, %184 ]
  %188 = getelementptr inbounds [1300 x double], ptr %5, i64 %147, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = add nuw nsw i64 %187, 1
  %191 = getelementptr inbounds [1300 x double], ptr %5, i64 %147, i64 %190
  %192 = load double, ptr %191, align 8, !tbaa !5
  %193 = add nsw i64 %187, -1
  %194 = getelementptr inbounds [1300 x double], ptr %5, i64 %147, i64 %193
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = getelementptr [1300 x double], ptr %148, i64 1, i64 %187
  %197 = load double, ptr %196, align 8, !tbaa !5
  %198 = getelementptr [1300 x double], ptr %148, i64 -1, i64 %187
  %199 = load double, ptr %198, align 8, !tbaa !5
  %200 = getelementptr [1300 x double], ptr %148, i64 1, i64 %190
  %201 = load double, ptr %200, align 8, !tbaa !5
  %202 = getelementptr [1300 x double], ptr %148, i64 -1, i64 %190
  %203 = load double, ptr %202, align 8, !tbaa !5
  %204 = fadd double %189, %195
  %205 = fadd double %192, %204
  %206 = fadd double %197, %205
  %207 = fadd double %199, %206
  %208 = fmul double %207, 2.000000e-01
  %209 = getelementptr inbounds [1300 x double], ptr %3, i64 %147, i64 %187
  store double %208, ptr %209, align 8, !tbaa !5
  %210 = fadd double %189, %192
  %211 = add nuw nsw i64 %187, 2
  %212 = getelementptr inbounds [1300 x double], ptr %5, i64 %147, i64 %211
  %213 = load double, ptr %212, align 8, !tbaa !5
  %214 = fadd double %210, %213
  %215 = fadd double %201, %214
  %216 = fadd double %203, %215
  %217 = fmul double %216, 2.000000e-01
  %218 = getelementptr inbounds [1300 x double], ptr %3, i64 %147, i64 %190
  store double %217, ptr %218, align 8, !tbaa !5
  %219 = icmp ult i64 %187, 1297
  br i1 %219, label %186, label %220, !llvm.loop !19

220:                                              ; preds = %186
  %221 = add nuw nsw i64 %147, 1
  %222 = icmp eq i64 %221, 1299
  br i1 %222, label %223, label %146, !llvm.loop !20

223:                                              ; preds = %220
  %224 = add nuw nsw i32 %68, 1
  %225 = icmp eq i32 %224, 500
  br i1 %225, label %226, label %67, !llvm.loop !21

226:                                              ; preds = %223
  %227 = load ptr, ptr @stdout, align 8, !tbaa !22
  %228 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %227)
  %229 = load ptr, ptr @stdout, align 8, !tbaa !22
  %230 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %229, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %231

231:                                              ; preds = %250, %226
  %232 = phi i64 [ 0, %226 ], [ %251, %250 ]
  %233 = mul nuw nsw i64 %232, 1300
  br label %234

234:                                              ; preds = %243, %231
  %235 = phi i64 [ 0, %231 ], [ %248, %243 ]
  %236 = add nuw nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  %238 = urem i32 %237, 20
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load ptr, ptr @stdout, align 8, !tbaa !22
  %242 = tail call i32 @fputc(i32 10, ptr %241)
  br label %243

243:                                              ; preds = %240, %234
  %244 = load ptr, ptr @stdout, align 8, !tbaa !22
  %245 = getelementptr inbounds [1300 x double], ptr %3, i64 %232, i64 %235
  %246 = load double, ptr %245, align 8, !tbaa !5
  %247 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.4, double noundef %246)
  %248 = add nuw nsw i64 %235, 1
  %249 = icmp eq i64 %248, 1300
  br i1 %249, label %250, label %234, !llvm.loop !24

250:                                              ; preds = %243
  %251 = add nuw nsw i64 %232, 1
  %252 = icmp eq i64 %251, 1300
  br i1 %252, label %253, label %231, !llvm.loop !25

253:                                              ; preds = %250
  %254 = load ptr, ptr @stdout, align 8, !tbaa !22
  %255 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %254, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %256 = load ptr, ptr @stdout, align 8, !tbaa !22
  %257 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %256)
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %5) #7
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
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
