; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syrk_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syrk_opt_3.c"
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

41:                                               ; preds = %38, %69
  %42 = phi i64 [ %70, %69 ], [ 0, %38 ]
  %43 = phi i64 [ %71, %69 ], [ 1, %38 ]
  br label %44

44:                                               ; preds = %65, %41
  %45 = phi i64 [ 0, %41 ], [ %67, %65 ]
  %46 = getelementptr inbounds [1200 x double], ptr %3, i64 %42, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = fmul double %47, 1.200000e+00
  store double %48, ptr %46, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %49, %44
  %50 = phi i64 [ 0, %44 ], [ %63, %49 ]
  %51 = phi double [ 0.000000e+00, %44 ], [ %62, %49 ]
  %52 = getelementptr inbounds [1000 x double], ptr %4, i64 %42, i64 %50
  %53 = load double, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds [1000 x double], ptr %4, i64 %45, i64 %50
  %55 = load double, ptr %54, align 8, !tbaa !5
  %56 = tail call double @llvm.fmuladd.f64(double %53, double %55, double %51)
  %57 = or disjoint i64 %50, 1
  %58 = getelementptr inbounds [1000 x double], ptr %4, i64 %42, i64 %57
  %59 = load double, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds [1000 x double], ptr %4, i64 %45, i64 %57
  %61 = load double, ptr %60, align 8, !tbaa !5
  %62 = tail call double @llvm.fmuladd.f64(double %59, double %61, double %56)
  %63 = add nuw nsw i64 %50, 2
  %64 = icmp eq i64 %63, 1000
  br i1 %64, label %65, label %49, !llvm.loop !15

65:                                               ; preds = %49
  %66 = tail call double @llvm.fmuladd.f64(double %62, double 1.500000e+00, double %48)
  store double %66, ptr %46, align 8, !tbaa !5
  %67 = add nuw nsw i64 %45, 1
  %68 = icmp eq i64 %67, %43
  br i1 %68, label %69, label %44, !llvm.loop !16

69:                                               ; preds = %65
  %70 = add nuw nsw i64 %42, 1
  %71 = add nuw nsw i64 %43, 1
  %72 = icmp eq i64 %70, 1200
  br i1 %72, label %73, label %41, !llvm.loop !17

73:                                               ; preds = %69
  %74 = load ptr, ptr @stdout, align 8, !tbaa !18
  %75 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %74)
  %76 = load ptr, ptr @stdout, align 8, !tbaa !18
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %78

78:                                               ; preds = %97, %73
  %79 = phi i64 [ 0, %73 ], [ %98, %97 ]
  %80 = mul nuw nsw i64 %79, 1200
  br label %81

81:                                               ; preds = %90, %78
  %82 = phi i64 [ 0, %78 ], [ %95, %90 ]
  %83 = add nuw nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  %85 = urem i32 %84, 20
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load ptr, ptr @stdout, align 8, !tbaa !18
  %89 = tail call i32 @fputc(i32 10, ptr %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load ptr, ptr @stdout, align 8, !tbaa !18
  %92 = getelementptr inbounds [1200 x double], ptr %3, i64 %79, i64 %82
  %93 = load double, ptr %92, align 8, !tbaa !5
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.4, double noundef %93)
  %95 = add nuw nsw i64 %82, 1
  %96 = icmp eq i64 %95, 1200
  br i1 %96, label %97, label %81, !llvm.loop !20

97:                                               ; preds = %90
  %98 = add nuw nsw i64 %79, 1
  %99 = icmp eq i64 %98, 1200
  br i1 %99, label %100, label %78, !llvm.loop !21

100:                                              ; preds = %97
  %101 = load ptr, ptr @stdout, align 8, !tbaa !18
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %103 = load ptr, ptr @stdout, align 8, !tbaa !18
  %104 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %103)
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
