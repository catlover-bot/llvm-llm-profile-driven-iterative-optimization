; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gemver_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gemver_opt_2.c"
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

60:                                               ; preds = %12, %116
  %61 = phi i64 [ %117, %116 ], [ 0, %12 ]
  %62 = getelementptr inbounds double, ptr %4, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds double, ptr %6, i64 %61
  %65 = load double, ptr %64, align 8, !tbaa !5
  br i1 %22, label %93, label %66

66:                                               ; preds = %60
  %67 = insertelement <2 x double> poison, double %65, i64 0
  %68 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> zeroinitializer
  %69 = insertelement <2 x double> poison, double %63, i64 0
  %70 = shufflevector <2 x double> %69, <2 x double> poison, <2 x i32> zeroinitializer
  br label %71

71:                                               ; preds = %71, %66
  %72 = phi i64 [ 0, %66 ], [ %91, %71 ]
  %73 = getelementptr inbounds double, ptr %5, i64 %72
  %74 = getelementptr inbounds double, ptr %73, i64 2
  %75 = load <2 x double>, ptr %73, align 8, !tbaa !5, !alias.scope !14
  %76 = load <2 x double>, ptr %74, align 8, !tbaa !5, !alias.scope !14
  %77 = getelementptr inbounds double, ptr %7, i64 %72
  %78 = getelementptr inbounds double, ptr %77, i64 2
  %79 = load <2 x double>, ptr %77, align 8, !tbaa !5, !alias.scope !17
  %80 = load <2 x double>, ptr %78, align 8, !tbaa !5, !alias.scope !17
  %81 = fmul <2 x double> %68, %79
  %82 = fmul <2 x double> %68, %80
  %83 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %70, <2 x double> %75, <2 x double> %81)
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %70, <2 x double> %76, <2 x double> %82)
  %85 = getelementptr inbounds [2000 x double], ptr %3, i64 %61, i64 %72
  %86 = getelementptr inbounds double, ptr %85, i64 2
  %87 = load <2 x double>, ptr %85, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  %88 = load <2 x double>, ptr %86, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  %89 = fadd <2 x double> %87, %83
  %90 = fadd <2 x double> %88, %84
  store <2 x double> %89, ptr %85, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  store <2 x double> %90, ptr %86, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  %91 = add nuw i64 %72, 4
  %92 = icmp eq i64 %91, 2000
  br i1 %92, label %116, label %71, !llvm.loop !22

93:                                               ; preds = %60, %93
  %94 = phi i64 [ %114, %93 ], [ 0, %60 ]
  %95 = getelementptr inbounds double, ptr %5, i64 %94
  %96 = load double, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds double, ptr %7, i64 %94
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = fmul double %65, %98
  %100 = tail call double @llvm.fmuladd.f64(double %63, double %96, double %99)
  %101 = getelementptr inbounds [2000 x double], ptr %3, i64 %61, i64 %94
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = fadd double %102, %100
  store double %103, ptr %101, align 8, !tbaa !5
  %104 = or disjoint i64 %94, 1
  %105 = getelementptr inbounds double, ptr %5, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = getelementptr inbounds double, ptr %7, i64 %104
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = fmul double %65, %108
  %110 = tail call double @llvm.fmuladd.f64(double %63, double %106, double %109)
  %111 = getelementptr inbounds [2000 x double], ptr %3, i64 %61, i64 %104
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = fadd double %112, %110
  store double %113, ptr %111, align 8, !tbaa !5
  %114 = add nuw nsw i64 %94, 2
  %115 = icmp eq i64 %114, 2000
  br i1 %115, label %116, label %93, !llvm.loop !23

116:                                              ; preds = %71, %93
  %117 = add nuw nsw i64 %61, 1
  %118 = icmp eq i64 %117, 2000
  br i1 %118, label %119, label %60, !llvm.loop !24

119:                                              ; preds = %116, %149
  %120 = phi i64 [ %154, %149 ], [ 0, %116 ]
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi i64 [ 0, %119 ], [ %147, %121 ]
  %123 = phi double [ 0.000000e+00, %119 ], [ %146, %121 ]
  %124 = getelementptr inbounds [2000 x double], ptr %3, i64 %122, i64 %120
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds double, ptr %10, i64 %122
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = tail call double @llvm.fmuladd.f64(double %125, double %127, double %123)
  %129 = or disjoint i64 %122, 1
  %130 = getelementptr inbounds [2000 x double], ptr %3, i64 %129, i64 %120
  %131 = load double, ptr %130, align 8, !tbaa !5
  %132 = getelementptr inbounds double, ptr %10, i64 %129
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = tail call double @llvm.fmuladd.f64(double %131, double %133, double %128)
  %135 = or disjoint i64 %122, 2
  %136 = getelementptr inbounds [2000 x double], ptr %3, i64 %135, i64 %120
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds double, ptr %10, i64 %135
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %137, double %139, double %134)
  %141 = or disjoint i64 %122, 3
  %142 = getelementptr inbounds [2000 x double], ptr %3, i64 %141, i64 %120
  %143 = load double, ptr %142, align 8, !tbaa !5
  %144 = getelementptr inbounds double, ptr %10, i64 %141
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = tail call double @llvm.fmuladd.f64(double %143, double %145, double %140)
  %147 = add nuw nsw i64 %122, 4
  %148 = icmp eq i64 %147, 2000
  br i1 %148, label %149, label %121, !llvm.loop !25

149:                                              ; preds = %121
  %150 = getelementptr inbounds double, ptr %11, i64 %120
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %146, double 1.200000e+00, double %151)
  %153 = getelementptr inbounds double, ptr %9, i64 %120
  store double %152, ptr %153, align 8, !tbaa !5
  %154 = add nuw nsw i64 %120, 1
  %155 = icmp eq i64 %154, 2000
  br i1 %155, label %156, label %119, !llvm.loop !26

156:                                              ; preds = %149, %186
  %157 = phi i64 [ %189, %186 ], [ 0, %149 ]
  br label %158

158:                                              ; preds = %158, %156
  %159 = phi i64 [ 0, %156 ], [ %184, %158 ]
  %160 = phi double [ 0.000000e+00, %156 ], [ %183, %158 ]
  %161 = getelementptr inbounds [2000 x double], ptr %3, i64 %157, i64 %159
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = getelementptr inbounds double, ptr %9, i64 %159
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = tail call double @llvm.fmuladd.f64(double %162, double %164, double %160)
  %166 = or disjoint i64 %159, 1
  %167 = getelementptr inbounds [2000 x double], ptr %3, i64 %157, i64 %166
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = getelementptr inbounds double, ptr %9, i64 %166
  %170 = load double, ptr %169, align 8, !tbaa !5
  %171 = tail call double @llvm.fmuladd.f64(double %168, double %170, double %165)
  %172 = or disjoint i64 %159, 2
  %173 = getelementptr inbounds [2000 x double], ptr %3, i64 %157, i64 %172
  %174 = load double, ptr %173, align 8, !tbaa !5
  %175 = getelementptr inbounds double, ptr %9, i64 %172
  %176 = load double, ptr %175, align 8, !tbaa !5
  %177 = tail call double @llvm.fmuladd.f64(double %174, double %176, double %171)
  %178 = or disjoint i64 %159, 3
  %179 = getelementptr inbounds [2000 x double], ptr %3, i64 %157, i64 %178
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = getelementptr inbounds double, ptr %9, i64 %178
  %182 = load double, ptr %181, align 8, !tbaa !5
  %183 = tail call double @llvm.fmuladd.f64(double %180, double %182, double %177)
  %184 = add nuw nsw i64 %159, 4
  %185 = icmp eq i64 %184, 2000
  br i1 %185, label %186, label %158, !llvm.loop !27

186:                                              ; preds = %158
  %187 = fmul double %183, 1.500000e+00
  %188 = getelementptr inbounds double, ptr %8, i64 %157
  store double %187, ptr %188, align 8, !tbaa !5
  %189 = add nuw nsw i64 %157, 1
  %190 = icmp eq i64 %189, 2000
  br i1 %190, label %191, label %156, !llvm.loop !28

191:                                              ; preds = %186
  %192 = load ptr, ptr @stdout, align 8, !tbaa !29
  %193 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %192)
  %194 = load ptr, ptr @stdout, align 8, !tbaa !29
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %196

196:                                              ; preds = %204, %191
  %197 = phi i64 [ 0, %191 ], [ %209, %204 ]
  %198 = trunc i64 %197 to i16
  %199 = urem i16 %198, 20
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load ptr, ptr @stdout, align 8, !tbaa !29
  %203 = tail call i32 @fputc(i32 10, ptr %202)
  br label %204

204:                                              ; preds = %201, %196
  %205 = load ptr, ptr @stdout, align 8, !tbaa !29
  %206 = getelementptr inbounds double, ptr %8, i64 %197
  %207 = load double, ptr %206, align 8, !tbaa !5
  %208 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef nonnull @.str.4, double noundef %207)
  %209 = add nuw nsw i64 %197, 1
  %210 = icmp eq i64 %209, 2000
  br i1 %210, label %211, label %196, !llvm.loop !31

211:                                              ; preds = %204
  %212 = load ptr, ptr @stdout, align 8, !tbaa !29
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %214 = load ptr, ptr @stdout, align 8, !tbaa !29
  %215 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %214)
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
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = distinct !{!31, !10}
