; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gemver_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gemver_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %10 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %11 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  br label %23

12:                                               ; preds = %58
  %13 = getelementptr i8, ptr %3, i64 32000000
  %14 = getelementptr i8, ptr %5, i64 16000
  %15 = getelementptr i8, ptr %7, i64 16000
  %16 = icmp ult ptr %3, %14
  %17 = icmp ult ptr %5, %13
  %18 = and i1 %16, %17
  %19 = icmp ult ptr %3, %15
  %20 = icmp ult ptr %7, %13
  %21 = and i1 %19, %20
  %22 = or i1 %18, %21
  br label %60

23:                                               ; preds = %58, %2
  %24 = phi i64 [ 0, %2 ], [ %28, %58 ]
  %25 = trunc i64 %24 to i32
  %26 = sitofp i32 %25 to double
  %27 = getelementptr inbounds double, ptr %4, i64 %24
  store double %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw nsw i64 %24, 1
  %29 = trunc i64 %28 to i32
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 2.000000e+03
  %32 = fmul double %31, 5.000000e-01
  %33 = getelementptr inbounds double, ptr %6, i64 %24
  store double %32, ptr %33, align 8, !tbaa !5
  %34 = fmul double %31, 2.500000e-01
  %35 = getelementptr inbounds double, ptr %5, i64 %24
  store double %34, ptr %35, align 8, !tbaa !5
  %36 = fdiv double %31, 6.000000e+00
  %37 = getelementptr inbounds double, ptr %7, i64 %24
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = fmul double %31, 1.250000e-01
  %39 = getelementptr inbounds double, ptr %10, i64 %24
  store double %38, ptr %39, align 8, !tbaa !5
  %40 = fdiv double %31, 9.000000e+00
  %41 = getelementptr inbounds double, ptr %11, i64 %24
  store double %40, ptr %41, align 8, !tbaa !5
  %42 = getelementptr inbounds double, ptr %9, i64 %24
  store double 0.000000e+00, ptr %42, align 8, !tbaa !5
  %43 = getelementptr inbounds double, ptr %8, i64 %24
  store double 0.000000e+00, ptr %43, align 8, !tbaa !5
  %44 = insertelement <2 x i64> poison, i64 %24, i64 0
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %46

46:                                               ; preds = %46, %23
  %47 = phi i64 [ 0, %23 ], [ %55, %46 ]
  %48 = phi <2 x i64> [ <i64 0, i64 1>, %23 ], [ %56, %46 ]
  %49 = mul nuw nsw <2 x i64> %48, %45
  %50 = trunc <2 x i64> %49 to <2 x i32>
  %51 = urem <2 x i32> %50, <i32 2000, i32 2000>
  %52 = sitofp <2 x i32> %51 to <2 x double>
  %53 = fdiv <2 x double> %52, <double 2.000000e+03, double 2.000000e+03>
  %54 = getelementptr inbounds [2000 x double], ptr %3, i64 %24, i64 %47
  store <2 x double> %53, ptr %54, align 8, !tbaa !5
  %55 = add nuw i64 %47, 2
  %56 = add <2 x i64> %48, <i64 2, i64 2>
  %57 = icmp eq i64 %55, 2000
  br i1 %57, label %58, label %46, !llvm.loop !9

58:                                               ; preds = %46
  %59 = icmp eq i64 %28, 2000
  br i1 %59, label %12, label %23, !llvm.loop !13

60:                                               ; preds = %12, %117
  %61 = phi i64 [ %118, %117 ], [ 0, %12 ]
  %62 = getelementptr inbounds double, ptr %4, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds double, ptr %6, i64 %61
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds [2000 x double], ptr %3, i64 %61
  br i1 %22, label %94, label %67

67:                                               ; preds = %60
  %68 = insertelement <2 x double> poison, double %65, i64 0
  %69 = shufflevector <2 x double> %68, <2 x double> poison, <2 x i32> zeroinitializer
  %70 = insertelement <2 x double> poison, double %63, i64 0
  %71 = shufflevector <2 x double> %70, <2 x double> poison, <2 x i32> zeroinitializer
  br label %72

72:                                               ; preds = %72, %67
  %73 = phi i64 [ 0, %67 ], [ %92, %72 ]
  %74 = getelementptr inbounds double, ptr %5, i64 %73
  %75 = getelementptr inbounds double, ptr %74, i64 2
  %76 = load <2 x double>, ptr %74, align 8, !tbaa !5, !alias.scope !14
  %77 = load <2 x double>, ptr %75, align 8, !tbaa !5, !alias.scope !14
  %78 = getelementptr inbounds double, ptr %7, i64 %73
  %79 = getelementptr inbounds double, ptr %78, i64 2
  %80 = load <2 x double>, ptr %78, align 8, !tbaa !5, !alias.scope !17
  %81 = load <2 x double>, ptr %79, align 8, !tbaa !5, !alias.scope !17
  %82 = fmul <2 x double> %69, %80
  %83 = fmul <2 x double> %69, %81
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %71, <2 x double> %76, <2 x double> %82)
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %71, <2 x double> %77, <2 x double> %83)
  %86 = getelementptr inbounds double, ptr %66, i64 %73
  %87 = getelementptr inbounds double, ptr %86, i64 2
  %88 = load <2 x double>, ptr %86, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  %89 = load <2 x double>, ptr %87, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  %90 = fadd <2 x double> %88, %84
  %91 = fadd <2 x double> %89, %85
  store <2 x double> %90, ptr %86, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  store <2 x double> %91, ptr %87, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  %92 = add nuw i64 %73, 4
  %93 = icmp eq i64 %92, 2000
  br i1 %93, label %117, label %72, !llvm.loop !22

94:                                               ; preds = %60, %94
  %95 = phi i64 [ %115, %94 ], [ 0, %60 ]
  %96 = getelementptr inbounds double, ptr %5, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds double, ptr %7, i64 %95
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = fmul double %65, %99
  %101 = tail call double @llvm.fmuladd.f64(double %63, double %97, double %100)
  %102 = getelementptr inbounds double, ptr %66, i64 %95
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = fadd double %103, %101
  store double %104, ptr %102, align 8, !tbaa !5
  %105 = or disjoint i64 %95, 1
  %106 = getelementptr inbounds double, ptr %5, i64 %105
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds double, ptr %7, i64 %105
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = fmul double %65, %109
  %111 = tail call double @llvm.fmuladd.f64(double %63, double %107, double %110)
  %112 = getelementptr inbounds double, ptr %66, i64 %105
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = fadd double %113, %111
  store double %114, ptr %112, align 8, !tbaa !5
  %115 = add nuw nsw i64 %95, 2
  %116 = icmp eq i64 %115, 2000
  br i1 %116, label %117, label %94, !llvm.loop !23

117:                                              ; preds = %72, %94
  %118 = add nuw nsw i64 %61, 1
  %119 = icmp eq i64 %118, 2000
  br i1 %119, label %120, label %60, !llvm.loop !24

120:                                              ; preds = %117
  %121 = getelementptr i8, ptr %9, i64 16000
  %122 = getelementptr i8, ptr %3, i64 32000000
  %123 = icmp ult ptr %9, %122
  %124 = icmp ult ptr %3, %121
  %125 = and i1 %123, %124
  br label %126

126:                                              ; preds = %120, %174
  %127 = phi i64 [ %175, %174 ], [ 0, %120 ]
  %128 = getelementptr inbounds double, ptr %10, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = getelementptr inbounds [2000 x double], ptr %3, i64 %127
  br i1 %125, label %159, label %131

131:                                              ; preds = %126
  %132 = insertelement <2 x double> poison, double %129, i64 0
  %133 = shufflevector <2 x double> %132, <2 x double> poison, <2 x i32> zeroinitializer
  br label %134

134:                                              ; preds = %134, %131
  %135 = phi i64 [ 0, %131 ], [ %157, %134 ]
  %136 = getelementptr inbounds double, ptr %130, i64 %135
  %137 = getelementptr inbounds double, ptr %136, i64 2
  %138 = load <2 x double>, ptr %136, align 8, !tbaa !5, !alias.scope !25
  %139 = load <2 x double>, ptr %137, align 8, !tbaa !5, !alias.scope !25
  %140 = getelementptr inbounds double, ptr %9, i64 %135
  %141 = getelementptr inbounds double, ptr %140, i64 2
  %142 = load <2 x double>, ptr %140, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %143 = load <2 x double>, ptr %141, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %144 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %138, <2 x double> %133, <2 x double> %142)
  %145 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %139, <2 x double> %133, <2 x double> %143)
  store <2 x double> %144, ptr %140, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  store <2 x double> %145, ptr %141, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %146 = or disjoint i64 %135, 4
  %147 = getelementptr inbounds double, ptr %130, i64 %146
  %148 = getelementptr inbounds double, ptr %147, i64 2
  %149 = load <2 x double>, ptr %147, align 8, !tbaa !5, !alias.scope !25
  %150 = load <2 x double>, ptr %148, align 8, !tbaa !5, !alias.scope !25
  %151 = getelementptr inbounds double, ptr %9, i64 %146
  %152 = getelementptr inbounds double, ptr %151, i64 2
  %153 = load <2 x double>, ptr %151, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %154 = load <2 x double>, ptr %152, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %155 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %149, <2 x double> %133, <2 x double> %153)
  %156 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %150, <2 x double> %133, <2 x double> %154)
  store <2 x double> %155, ptr %151, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  store <2 x double> %156, ptr %152, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %157 = add nuw nsw i64 %135, 8
  %158 = icmp eq i64 %157, 2000
  br i1 %158, label %174, label %134, !llvm.loop !30

159:                                              ; preds = %126, %159
  %160 = phi i64 [ %172, %159 ], [ 0, %126 ]
  %161 = getelementptr inbounds double, ptr %130, i64 %160
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = getelementptr inbounds double, ptr %9, i64 %160
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = tail call double @llvm.fmuladd.f64(double %162, double %129, double %164)
  store double %165, ptr %163, align 8, !tbaa !5
  %166 = or disjoint i64 %160, 1
  %167 = getelementptr inbounds double, ptr %130, i64 %166
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = getelementptr inbounds double, ptr %9, i64 %166
  %170 = load double, ptr %169, align 8, !tbaa !5
  %171 = tail call double @llvm.fmuladd.f64(double %168, double %129, double %170)
  store double %171, ptr %169, align 8, !tbaa !5
  %172 = add nuw nsw i64 %160, 2
  %173 = icmp eq i64 %172, 2000
  br i1 %173, label %174, label %159, !llvm.loop !31

174:                                              ; preds = %134, %159
  %175 = add nuw nsw i64 %127, 1
  %176 = icmp eq i64 %175, 2000
  br i1 %176, label %177, label %126, !llvm.loop !32

177:                                              ; preds = %174, %207
  %178 = phi i64 [ %211, %207 ], [ 0, %174 ]
  br label %179

179:                                              ; preds = %179, %177
  %180 = phi i64 [ 0, %177 ], [ %205, %179 ]
  %181 = phi double [ 0.000000e+00, %177 ], [ %204, %179 ]
  %182 = getelementptr inbounds [2000 x double], ptr %3, i64 %178, i64 %180
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = getelementptr inbounds double, ptr %9, i64 %180
  %185 = load double, ptr %184, align 8, !tbaa !5
  %186 = tail call double @llvm.fmuladd.f64(double %183, double %185, double %181)
  %187 = or disjoint i64 %180, 1
  %188 = getelementptr inbounds [2000 x double], ptr %3, i64 %178, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = getelementptr inbounds double, ptr %9, i64 %187
  %191 = load double, ptr %190, align 8, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %189, double %191, double %186)
  %193 = or disjoint i64 %180, 2
  %194 = getelementptr inbounds [2000 x double], ptr %3, i64 %178, i64 %193
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = getelementptr inbounds double, ptr %9, i64 %193
  %197 = load double, ptr %196, align 8, !tbaa !5
  %198 = tail call double @llvm.fmuladd.f64(double %195, double %197, double %192)
  %199 = or disjoint i64 %180, 3
  %200 = getelementptr inbounds [2000 x double], ptr %3, i64 %178, i64 %199
  %201 = load double, ptr %200, align 8, !tbaa !5
  %202 = getelementptr inbounds double, ptr %9, i64 %199
  %203 = load double, ptr %202, align 8, !tbaa !5
  %204 = tail call double @llvm.fmuladd.f64(double %201, double %203, double %198)
  %205 = add nuw nsw i64 %180, 4
  %206 = icmp eq i64 %205, 2000
  br i1 %206, label %207, label %179, !llvm.loop !33

207:                                              ; preds = %179
  %208 = getelementptr inbounds double, ptr %8, i64 %178
  %209 = load double, ptr %208, align 8, !tbaa !5
  %210 = tail call double @llvm.fmuladd.f64(double %204, double 1.500000e+00, double %209)
  store double %210, ptr %208, align 8, !tbaa !5
  %211 = add nuw nsw i64 %178, 1
  %212 = icmp eq i64 %211, 2000
  br i1 %212, label %213, label %177, !llvm.loop !34

213:                                              ; preds = %207
  %214 = load ptr, ptr @stdout, align 8, !tbaa !35
  %215 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %214)
  %216 = load ptr, ptr @stdout, align 8, !tbaa !35
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %216, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %218

218:                                              ; preds = %226, %213
  %219 = phi i64 [ 0, %213 ], [ %231, %226 ]
  %220 = trunc i64 %219 to i16
  %221 = urem i16 %220, 20
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load ptr, ptr @stdout, align 8, !tbaa !35
  %225 = tail call i32 @fputc(i32 10, ptr %224)
  br label %226

226:                                              ; preds = %223, %218
  %227 = load ptr, ptr @stdout, align 8, !tbaa !35
  %228 = getelementptr inbounds double, ptr %8, i64 %219
  %229 = load double, ptr %228, align 8, !tbaa !5
  %230 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.4, double noundef %229)
  %231 = add nuw nsw i64 %219, 1
  %232 = icmp eq i64 %231, 2000
  br i1 %232, label %233, label %218, !llvm.loop !37

233:                                              ; preds = %226
  %234 = load ptr, ptr @stdout, align 8, !tbaa !35
  %235 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %234, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %236 = load ptr, ptr @stdout, align 8, !tbaa !35
  %237 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %236)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %6) #7
  tail call void @free(ptr noundef %7) #7
  tail call void @free(ptr noundef nonnull %8) #7
  tail call void @free(ptr noundef %9) #7
  tail call void @free(ptr noundef %10) #7
  tail call void @free(ptr noundef %11) #7
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
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = !{!20}
!20 = distinct !{!20, !16}
!21 = !{!15, !18}
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
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !7, i64 0}
!37 = distinct !{!37, !10}
