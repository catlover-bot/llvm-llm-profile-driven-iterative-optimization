; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syrk_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syrk_opt_2.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #6
  br label %5

5:                                                ; preds = %2, %38
  %6 = phi i64 [ 0, %2 ], [ %39, %38 ]
  %7 = insertelement <2 x i64> poison, i64 %6, i64 0
  %8 = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %19, %9 ]
  %11 = phi <2 x i64> [ <i64 0, i64 1>, %5 ], [ %20, %9 ]
  %12 = mul nuw nsw <2 x i64> %11, %8
  %13 = trunc <2 x i64> %12 to <2 x i32>
  %14 = add <2 x i32> %13, <i32 1, i32 1>
  %15 = urem <2 x i32> %14, <i32 1200, i32 1200>
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fdiv <2 x double> %16, <double 1.200000e+03, double 1.200000e+03>
  %18 = getelementptr inbounds [1000 x double], ptr %4, i64 %6, i64 %10
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = add nuw i64 %10, 2
  %20 = add <2 x i64> %11, <i64 2, i64 2>
  %21 = icmp eq i64 %19, 1000
  br i1 %21, label %22, label %9, !llvm.loop !9

22:                                               ; preds = %9
  %23 = insertelement <2 x i64> poison, i64 %6, i64 0
  %24 = shufflevector <2 x i64> %23, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i64 [ 0, %22 ], [ %35, %25 ]
  %27 = phi <2 x i64> [ <i64 0, i64 1>, %22 ], [ %36, %25 ]
  %28 = mul nuw nsw <2 x i64> %27, %24
  %29 = trunc <2 x i64> %28 to <2 x i32>
  %30 = add <2 x i32> %29, <i32 2, i32 2>
  %31 = urem <2 x i32> %30, <i32 1000, i32 1000>
  %32 = sitofp <2 x i32> %31 to <2 x double>
  %33 = fdiv <2 x double> %32, <double 1.000000e+03, double 1.000000e+03>
  %34 = getelementptr inbounds [1200 x double], ptr %3, i64 %6, i64 %26
  store <2 x double> %33, ptr %34, align 8, !tbaa !5
  %35 = add nuw i64 %26, 2
  %36 = add <2 x i64> %27, <i64 2, i64 2>
  %37 = icmp eq i64 %35, 1200
  br i1 %37, label %38, label %25, !llvm.loop !13

38:                                               ; preds = %25
  %39 = add nuw nsw i64 %6, 1
  %40 = icmp eq i64 %39, 1200
  br i1 %40, label %41, label %5, !llvm.loop !14

41:                                               ; preds = %38, %44
  %42 = phi i64 [ %45, %44 ], [ 0, %38 ]
  %43 = phi i64 [ %46, %44 ], [ 1, %38 ]
  br label %48

44:                                               ; preds = %53
  %45 = add nuw nsw i64 %42, 1
  %46 = add nuw nsw i64 %43, 1
  %47 = icmp eq i64 %45, 1200
  br i1 %47, label %74, label %41, !llvm.loop !15

48:                                               ; preds = %53, %41
  %49 = phi i64 [ 0, %41 ], [ %54, %53 ]
  %50 = getelementptr inbounds [1200 x double], ptr %3, i64 %42, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = fmul double %51, 1.200000e+00
  br label %56

53:                                               ; preds = %56
  store double %71, ptr %50, align 8, !tbaa !5
  %54 = add nuw nsw i64 %49, 1
  %55 = icmp eq i64 %54, %43
  br i1 %55, label %44, label %48, !llvm.loop !16

56:                                               ; preds = %56, %48
  %57 = phi i64 [ 0, %48 ], [ %72, %56 ]
  %58 = phi double [ %52, %48 ], [ %71, %56 ]
  %59 = getelementptr inbounds [1000 x double], ptr %4, i64 %42, i64 %57
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = fmul double %60, 1.500000e+00
  %62 = getelementptr inbounds [1000 x double], ptr %4, i64 %49, i64 %57
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = tail call double @llvm.fmuladd.f64(double %61, double %63, double %58)
  %65 = or disjoint i64 %57, 1
  %66 = getelementptr inbounds [1000 x double], ptr %4, i64 %42, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = fmul double %67, 1.500000e+00
  %69 = getelementptr inbounds [1000 x double], ptr %4, i64 %49, i64 %65
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = tail call double @llvm.fmuladd.f64(double %68, double %70, double %64)
  %72 = add nuw nsw i64 %57, 2
  %73 = icmp eq i64 %72, 1000
  br i1 %73, label %53, label %56, !llvm.loop !17

74:                                               ; preds = %44
  %75 = load ptr, ptr @stdout, align 8, !tbaa !18
  %76 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %75)
  %77 = load ptr, ptr @stdout, align 8, !tbaa !18
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %79

79:                                               ; preds = %82, %74
  %80 = phi i64 [ 0, %74 ], [ %83, %82 ]
  %81 = mul nuw nsw i64 %80, 1200
  br label %85

82:                                               ; preds = %94
  %83 = add nuw nsw i64 %80, 1
  %84 = icmp eq i64 %83, 1200
  br i1 %84, label %101, label %79, !llvm.loop !20

85:                                               ; preds = %94, %79
  %86 = phi i64 [ 0, %79 ], [ %99, %94 ]
  %87 = add nuw nsw i64 %86, %81
  %88 = trunc i64 %87 to i32
  %89 = urem i32 %88, 20
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load ptr, ptr @stdout, align 8, !tbaa !18
  %93 = tail call i32 @fputc(i32 10, ptr %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = load ptr, ptr @stdout, align 8, !tbaa !18
  %96 = getelementptr inbounds [1200 x double], ptr %3, i64 %80, i64 %86
  %97 = load double, ptr %96, align 8, !tbaa !5
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.4, double noundef %97)
  %99 = add nuw nsw i64 %86, 1
  %100 = icmp eq i64 %99, 1200
  br i1 %100, label %82, label %85, !llvm.loop !21

101:                                              ; preds = %82
  %102 = load ptr, ptr @stdout, align 8, !tbaa !18
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %104 = load ptr, ptr @stdout, align 8, !tbaa !18
  %105 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %104)
  tail call void @free(ptr noundef nonnull %3) #6
  tail call void @free(ptr noundef %4) #6
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
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
