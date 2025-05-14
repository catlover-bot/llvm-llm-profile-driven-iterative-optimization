; ModuleID = 'outputs/src_PolyBenchC-4.2.1_mvt_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_mvt_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  br label %8

8:                                                ; preds = %47, %2
  %9 = phi i64 [ 0, %2 ], [ %14, %47 ]
  %10 = trunc i64 %9 to i32
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %11, 2.000000e+03
  %13 = getelementptr inbounds double, ptr %4, i64 %9
  store double %12, ptr %13, align 8, !tbaa !5
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 2000
  %16 = trunc i64 %14 to i32
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 2.000000e+03
  %19 = select i1 %15, double 0.000000e+00, double %18
  %20 = getelementptr inbounds double, ptr %5, i64 %9
  store double %19, ptr %20, align 8, !tbaa !5
  %21 = icmp ult i64 %9, 1997
  %22 = select i1 %21, i32 3, i32 -1997
  %23 = add nsw i32 %22, %10
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 2.000000e+03
  %26 = getelementptr inbounds double, ptr %6, i64 %9
  store double %25, ptr %26, align 8, !tbaa !5
  %27 = icmp ult i64 %9, 1996
  %28 = select i1 %27, i32 4, i32 -1996
  %29 = add nsw i32 %28, %10
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 2.000000e+03
  %32 = getelementptr inbounds double, ptr %7, i64 %9
  store double %31, ptr %32, align 8, !tbaa !5
  %33 = insertelement <2 x i64> poison, i64 %9, i64 0
  %34 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %35

35:                                               ; preds = %35, %8
  %36 = phi i64 [ 0, %8 ], [ %44, %35 ]
  %37 = phi <2 x i64> [ <i64 0, i64 1>, %8 ], [ %45, %35 ]
  %38 = mul nuw nsw <2 x i64> %37, %34
  %39 = trunc <2 x i64> %38 to <2 x i32>
  %40 = urem <2 x i32> %39, <i32 2000, i32 2000>
  %41 = sitofp <2 x i32> %40 to <2 x double>
  %42 = fdiv <2 x double> %41, <double 2.000000e+03, double 2.000000e+03>
  %43 = getelementptr inbounds [2000 x double], ptr %3, i64 %9, i64 %36
  store <2 x double> %42, ptr %43, align 8, !tbaa !5
  %44 = add nuw i64 %36, 2
  %45 = add <2 x i64> %37, <i64 2, i64 2>
  %46 = icmp eq i64 %44, 2000
  br i1 %46, label %47, label %35, !llvm.loop !9

47:                                               ; preds = %35
  br i1 %15, label %48, label %8, !llvm.loop !13

48:                                               ; preds = %47, %50
  %49 = phi i64 [ %59, %50 ], [ 0, %47 ]
  br label %61

50:                                               ; preds = %61
  %51 = getelementptr inbounds double, ptr %4, i64 %49
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = extractelement <2 x double> %90, i64 1
  %54 = fadd double %53, %52
  store double %54, ptr %51, align 8, !tbaa !5
  %55 = getelementptr inbounds double, ptr %5, i64 %49
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = extractelement <2 x double> %90, i64 0
  %58 = fadd double %57, %56
  store double %58, ptr %55, align 8, !tbaa !5
  %59 = add nuw nsw i64 %49, 1
  %60 = icmp eq i64 %59, 2000
  br i1 %60, label %93, label %48, !llvm.loop !14

61:                                               ; preds = %61, %48
  %62 = phi i64 [ 0, %48 ], [ %91, %61 ]
  %63 = phi <2 x double> [ zeroinitializer, %48 ], [ %90, %61 ]
  %64 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %62
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds double, ptr %6, i64 %62
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds [2000 x double], ptr %3, i64 %62, i64 %49
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds double, ptr %7, i64 %62
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = insertelement <2 x double> poison, double %69, i64 0
  %73 = insertelement <2 x double> %72, double %65, i64 1
  %74 = insertelement <2 x double> poison, double %71, i64 0
  %75 = insertelement <2 x double> %74, double %67, i64 1
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %75, <2 x double> %63)
  %77 = or disjoint i64 %62, 1
  %78 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %77
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds double, ptr %6, i64 %77
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds [2000 x double], ptr %3, i64 %77, i64 %49
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = getelementptr inbounds double, ptr %7, i64 %77
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = insertelement <2 x double> poison, double %83, i64 0
  %87 = insertelement <2 x double> %86, double %79, i64 1
  %88 = insertelement <2 x double> poison, double %85, i64 0
  %89 = insertelement <2 x double> %88, double %81, i64 1
  %90 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> %89, <2 x double> %76)
  %91 = add nuw nsw i64 %62, 2
  %92 = icmp eq i64 %91, 2000
  br i1 %92, label %50, label %61, !llvm.loop !15

93:                                               ; preds = %50
  %94 = load ptr, ptr @stdout, align 8, !tbaa !16
  %95 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %94)
  %96 = load ptr, ptr @stdout, align 8, !tbaa !16
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %103

98:                                               ; preds = %111
  %99 = load ptr, ptr @stdout, align 8, !tbaa !16
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %101 = load ptr, ptr @stdout, align 8, !tbaa !16
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6)
  br label %118

103:                                              ; preds = %111, %93
  %104 = phi i64 [ 0, %93 ], [ %116, %111 ]
  %105 = trunc i64 %104 to i16
  %106 = urem i16 %105, 20
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load ptr, ptr @stdout, align 8, !tbaa !16
  %110 = tail call i32 @fputc(i32 10, ptr %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load ptr, ptr @stdout, align 8, !tbaa !16
  %113 = getelementptr inbounds double, ptr %4, i64 %104
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.4, double noundef %114)
  %116 = add nuw nsw i64 %104, 1
  %117 = icmp eq i64 %116, 2000
  br i1 %117, label %98, label %103, !llvm.loop !18

118:                                              ; preds = %126, %98
  %119 = phi i64 [ 0, %98 ], [ %131, %126 ]
  %120 = trunc i64 %119 to i16
  %121 = urem i16 %120, 20
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load ptr, ptr @stdout, align 8, !tbaa !16
  %125 = tail call i32 @fputc(i32 10, ptr %124)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load ptr, ptr @stdout, align 8, !tbaa !16
  %128 = getelementptr inbounds double, ptr %5, i64 %119
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.4, double noundef %129)
  %131 = add nuw nsw i64 %119, 1
  %132 = icmp eq i64 %131, 2000
  br i1 %132, label %133, label %118, !llvm.loop !19

133:                                              ; preds = %126
  %134 = load ptr, ptr @stdout, align 8, !tbaa !16
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %136 = load ptr, ptr @stdout, align 8, !tbaa !16
  %137 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %136)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef nonnull %5) #6
  tail call void @free(ptr noundef %6) #6
  tail call void @free(ptr noundef %7) #6
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!15 = distinct !{!15, !10}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
