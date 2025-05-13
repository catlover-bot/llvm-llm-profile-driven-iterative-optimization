; ModuleID = 'outputs/gemm_1.c'
source_filename = "outputs/gemm_1.c"
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

62:                                               ; preds = %59, %97
  %63 = phi i64 [ %98, %97 ], [ 0, %59 ]
  br label %64

64:                                               ; preds = %94, %62
  %65 = phi i64 [ 0, %62 ], [ %95, %94 ]
  %66 = getelementptr inbounds [1100 x double], ptr %3, i64 %63, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = fmul double %67, 1.200000e+00
  br label %69

69:                                               ; preds = %69, %64
  %70 = phi i64 [ 0, %64 ], [ %92, %69 ]
  %71 = phi double [ %68, %64 ], [ %91, %69 ]
  %72 = getelementptr inbounds [1200 x double], ptr %4, i64 %63, i64 %70
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = fmul double %73, 1.500000e+00
  %75 = getelementptr inbounds [1100 x double], ptr %5, i64 %70, i64 %65
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = tail call double @llvm.fmuladd.f64(double %74, double %76, double %71)
  %78 = add nuw nsw i64 %70, 1
  %79 = getelementptr inbounds [1200 x double], ptr %4, i64 %63, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = fmul double %80, 1.500000e+00
  %82 = getelementptr inbounds [1100 x double], ptr %5, i64 %78, i64 %65
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = tail call double @llvm.fmuladd.f64(double %81, double %83, double %77)
  %85 = add nuw nsw i64 %70, 2
  %86 = getelementptr inbounds [1200 x double], ptr %4, i64 %63, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = fmul double %87, 1.500000e+00
  %89 = getelementptr inbounds [1100 x double], ptr %5, i64 %85, i64 %65
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = tail call double @llvm.fmuladd.f64(double %88, double %90, double %84)
  %92 = add nuw nsw i64 %70, 3
  %93 = icmp eq i64 %92, 1200
  br i1 %93, label %94, label %69, !llvm.loop !17

94:                                               ; preds = %69
  store double %91, ptr %66, align 8, !tbaa !5
  %95 = add nuw nsw i64 %65, 1
  %96 = icmp eq i64 %95, 1100
  br i1 %96, label %97, label %64, !llvm.loop !18

97:                                               ; preds = %94
  %98 = add nuw nsw i64 %63, 1
  %99 = icmp eq i64 %98, 1000
  br i1 %99, label %100, label %62, !llvm.loop !19

100:                                              ; preds = %97
  %101 = load ptr, ptr @stdout, align 8, !tbaa !20
  %102 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %101)
  %103 = load ptr, ptr @stdout, align 8, !tbaa !20
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %105

105:                                              ; preds = %124, %100
  %106 = phi i64 [ 0, %100 ], [ %125, %124 ]
  %107 = mul nuw nsw i64 %106, 1000
  br label %108

108:                                              ; preds = %117, %105
  %109 = phi i64 [ 0, %105 ], [ %122, %117 ]
  %110 = add nuw nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  %112 = urem i32 %111, 20
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load ptr, ptr @stdout, align 8, !tbaa !20
  %116 = tail call i32 @fputc(i32 10, ptr %115)
  br label %117

117:                                              ; preds = %114, %108
  %118 = load ptr, ptr @stdout, align 8, !tbaa !20
  %119 = getelementptr inbounds [1100 x double], ptr %3, i64 %106, i64 %109
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.4, double noundef %120)
  %122 = add nuw nsw i64 %109, 1
  %123 = icmp eq i64 %122, 1100
  br i1 %123, label %124, label %108, !llvm.loop !22

124:                                              ; preds = %117
  %125 = add nuw nsw i64 %106, 1
  %126 = icmp eq i64 %125, 1000
  br i1 %126, label %127, label %105, !llvm.loop !23

127:                                              ; preds = %124
  %128 = load ptr, ptr @stdout, align 8, !tbaa !20
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %130 = load ptr, ptr @stdout, align 8, !tbaa !20
  %131 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %130)
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
