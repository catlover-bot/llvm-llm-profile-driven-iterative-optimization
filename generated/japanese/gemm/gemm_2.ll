; ModuleID = 'outputs/gemm_2.c'
source_filename = "outputs/gemm_2.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1100000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #6
  br label %6

6:                                                ; preds = %2, %39
  %7 = phi i64 [ 0, %2 ], [ %40, %39 ]
  %8 = insertelement <2 x i64> poison, i64 %7, i64 0
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %20, %10 ]
  %12 = phi <2 x i64> [ <i64 0, i64 1>, %6 ], [ %21, %10 ]
  %13 = mul nuw nsw <2 x i64> %12, %9
  %14 = trunc <2 x i64> %13 to <2 x i32>
  %15 = add <2 x i32> %14, <i32 1, i32 1>
  %16 = urem <2 x i32> %15, <i32 1000, i32 1000>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, <double 1.000000e+03, double 1.000000e+03>
  %19 = getelementptr inbounds [1100 x double], ptr %3, i64 %7, i64 %11
  store <2 x double> %18, ptr %19, align 8, !tbaa !5
  %20 = add nuw i64 %11, 2
  %21 = add <2 x i64> %12, <i64 2, i64 2>
  %22 = icmp eq i64 %20, 1100
  br i1 %22, label %23, label %10, !llvm.loop !9

23:                                               ; preds = %10
  %24 = insertelement <2 x i64> poison, i64 %7, i64 0
  %25 = shufflevector <2 x i64> %24, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi i64 [ 0, %23 ], [ %36, %26 ]
  %28 = phi <2 x i64> [ <i64 0, i64 1>, %23 ], [ %37, %26 ]
  %29 = add nuw nsw <2 x i64> %28, <i64 1, i64 1>
  %30 = mul nuw nsw <2 x i64> %29, %25
  %31 = trunc <2 x i64> %30 to <2 x i32>
  %32 = urem <2 x i32> %31, <i32 1200, i32 1200>
  %33 = sitofp <2 x i32> %32 to <2 x double>
  %34 = fdiv <2 x double> %33, <double 1.200000e+03, double 1.200000e+03>
  %35 = getelementptr inbounds [1200 x double], ptr %4, i64 %7, i64 %27
  store <2 x double> %34, ptr %35, align 8, !tbaa !5
  %36 = add nuw i64 %27, 2
  %37 = add <2 x i64> %28, <i64 2, i64 2>
  %38 = icmp eq i64 %36, 1200
  br i1 %38, label %39, label %26, !llvm.loop !13

39:                                               ; preds = %26
  %40 = add nuw nsw i64 %7, 1
  %41 = icmp eq i64 %40, 1000
  br i1 %41, label %42, label %6, !llvm.loop !14

42:                                               ; preds = %39, %59
  %43 = phi i64 [ %60, %59 ], [ 0, %39 ]
  %44 = insertelement <2 x i64> poison, i64 %43, i64 0
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi i64 [ 0, %42 ], [ %56, %46 ]
  %48 = phi <2 x i64> [ <i64 0, i64 1>, %42 ], [ %57, %46 ]
  %49 = add nuw nsw <2 x i64> %48, <i64 2, i64 2>
  %50 = mul nuw nsw <2 x i64> %49, %45
  %51 = trunc <2 x i64> %50 to <2 x i32>
  %52 = urem <2 x i32> %51, <i32 1100, i32 1100>
  %53 = sitofp <2 x i32> %52 to <2 x double>
  %54 = fdiv <2 x double> %53, <double 1.100000e+03, double 1.100000e+03>
  %55 = getelementptr inbounds [1100 x double], ptr %5, i64 %43, i64 %47
  store <2 x double> %54, ptr %55, align 8, !tbaa !5
  %56 = add nuw i64 %47, 2
  %57 = add <2 x i64> %48, <i64 2, i64 2>
  %58 = icmp eq i64 %56, 1100
  br i1 %58, label %59, label %46, !llvm.loop !15

59:                                               ; preds = %46
  %60 = add nuw nsw i64 %43, 1
  %61 = icmp eq i64 %60, 1200
  br i1 %61, label %62, label %42, !llvm.loop !16

62:                                               ; preds = %59, %95
  %63 = phi i64 [ %96, %95 ], [ 0, %59 ]
  br label %64

64:                                               ; preds = %88, %62
  %65 = phi i64 [ 0, %62 ], [ %93, %88 ]
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi i64 [ 0, %64 ], [ %86, %66 ]
  %68 = phi double [ 0.000000e+00, %64 ], [ %85, %66 ]
  %69 = getelementptr inbounds [1200 x double], ptr %4, i64 %63, i64 %67
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds [1100 x double], ptr %5, i64 %67, i64 %65
  %72 = load double, ptr %71, align 8, !tbaa !5
  %73 = tail call double @llvm.fmuladd.f64(double %70, double %72, double %68)
  %74 = add nuw nsw i64 %67, 1
  %75 = getelementptr inbounds [1200 x double], ptr %4, i64 %63, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = getelementptr inbounds [1100 x double], ptr %5, i64 %74, i64 %65
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = tail call double @llvm.fmuladd.f64(double %76, double %78, double %73)
  %80 = add nuw nsw i64 %67, 2
  %81 = getelementptr inbounds [1200 x double], ptr %4, i64 %63, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds [1100 x double], ptr %5, i64 %80, i64 %65
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = tail call double @llvm.fmuladd.f64(double %82, double %84, double %79)
  %86 = add nuw nsw i64 %67, 3
  %87 = icmp eq i64 %86, 1200
  br i1 %87, label %88, label %66, !llvm.loop !17

88:                                               ; preds = %66
  %89 = getelementptr inbounds [1100 x double], ptr %3, i64 %63, i64 %65
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = fmul double %90, 1.200000e+00
  %92 = tail call double @llvm.fmuladd.f64(double %85, double 1.500000e+00, double %91)
  store double %92, ptr %89, align 8, !tbaa !5
  %93 = add nuw nsw i64 %65, 1
  %94 = icmp eq i64 %93, 1100
  br i1 %94, label %95, label %64, !llvm.loop !18

95:                                               ; preds = %88
  %96 = add nuw nsw i64 %63, 1
  %97 = icmp eq i64 %96, 1000
  br i1 %97, label %98, label %62, !llvm.loop !19

98:                                               ; preds = %95
  %99 = load ptr, ptr @stdout, align 8, !tbaa !20
  %100 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %99)
  %101 = load ptr, ptr @stdout, align 8, !tbaa !20
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %103

103:                                              ; preds = %122, %98
  %104 = phi i64 [ 0, %98 ], [ %123, %122 ]
  %105 = mul nuw nsw i64 %104, 1000
  br label %106

106:                                              ; preds = %115, %103
  %107 = phi i64 [ 0, %103 ], [ %120, %115 ]
  %108 = add nuw nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  %110 = urem i32 %109, 20
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load ptr, ptr @stdout, align 8, !tbaa !20
  %114 = tail call i32 @fputc(i32 10, ptr %113)
  br label %115

115:                                              ; preds = %112, %106
  %116 = load ptr, ptr @stdout, align 8, !tbaa !20
  %117 = getelementptr inbounds [1100 x double], ptr %3, i64 %104, i64 %107
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.4, double noundef %118)
  %120 = add nuw nsw i64 %107, 1
  %121 = icmp eq i64 %120, 1100
  br i1 %121, label %122, label %106, !llvm.loop !22

122:                                              ; preds = %115
  %123 = add nuw nsw i64 %104, 1
  %124 = icmp eq i64 %123, 1000
  br i1 %124, label %125, label %103, !llvm.loop !23

125:                                              ; preds = %122
  %126 = load ptr, ptr @stdout, align 8, !tbaa !20
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %128 = load ptr, ptr @stdout, align 8, !tbaa !20
  %129 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %128)
  tail call void @free(ptr noundef nonnull %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef %5) #6
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!13 = distinct !{!13, !10, !11, !12}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
