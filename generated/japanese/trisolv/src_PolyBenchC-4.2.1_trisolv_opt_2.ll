; ModuleID = 'outputs/src_PolyBenchC-4.2.1_trisolv_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_trisolv_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  br label %6

6:                                                ; preds = %45, %2
  %7 = phi i64 [ 0, %2 ], [ %46, %45 ]
  %8 = phi i64 [ 1, %2 ], [ %47, %45 ]
  %9 = getelementptr inbounds double, ptr %4, i64 %7
  store double -9.990000e+02, ptr %9, align 8, !tbaa !5
  %10 = trunc i64 %7 to i32
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds double, ptr %5, i64 %7
  store double %11, ptr %12, align 8, !tbaa !5
  %13 = add nuw nsw i64 %7, 2001
  %14 = icmp ult i64 %8, 2
  br i1 %14, label %33, label %15

15:                                               ; preds = %6
  %16 = and i64 %8, 9223372036854775806
  %17 = insertelement <2 x i64> poison, i64 %13, i64 0
  %18 = shufflevector <2 x i64> %17, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i64 [ 0, %15 ], [ %28, %19 ]
  %21 = phi <2 x i64> [ <i64 0, i64 1>, %15 ], [ %29, %19 ]
  %22 = sub nuw nsw <2 x i64> %18, %21
  %23 = trunc <2 x i64> %22 to <2 x i32>
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = fmul <2 x double> %24, <double 2.000000e+00, double 2.000000e+00>
  %26 = fdiv <2 x double> %25, <double 2.000000e+03, double 2.000000e+03>
  %27 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %20
  store <2 x double> %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw i64 %20, 2
  %29 = add <2 x i64> %21, <i64 2, i64 2>
  %30 = icmp eq i64 %28, %16
  br i1 %30, label %31, label %19, !llvm.loop !9

31:                                               ; preds = %19
  %32 = icmp eq i64 %8, %16
  br i1 %32, label %45, label %33

33:                                               ; preds = %6, %31
  %34 = phi i64 [ 0, %6 ], [ %16, %31 ]
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ %43, %35 ], [ %34, %33 ]
  %37 = sub nuw nsw i64 %13, %36
  %38 = trunc i64 %37 to i32
  %39 = sitofp i32 %38 to double
  %40 = fmul double %39, 2.000000e+00
  %41 = fdiv double %40, 2.000000e+03
  %42 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %36
  store double %41, ptr %42, align 8, !tbaa !5
  %43 = add nuw nsw i64 %36, 1
  %44 = icmp eq i64 %43, %8
  br i1 %44, label %45, label %35, !llvm.loop !13

45:                                               ; preds = %35, %31
  %46 = add nuw nsw i64 %7, 1
  %47 = add nuw nsw i64 %8, 1
  %48 = icmp eq i64 %46, 2000
  br i1 %48, label %49, label %6, !llvm.loop !14

49:                                               ; preds = %45, %91
  %50 = phi i64 [ %97, %91 ], [ 0, %45 ]
  %51 = getelementptr inbounds double, ptr %5, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = icmp eq i64 %50, 0
  br i1 %53, label %91, label %54

54:                                               ; preds = %49
  %55 = and i64 %50, 1
  %56 = icmp eq i64 %50, 1
  br i1 %56, label %79, label %57

57:                                               ; preds = %54
  %58 = and i64 %50, 9223372036854775806
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i64 [ 0, %57 ], [ %76, %59 ]
  %61 = phi double [ %52, %57 ], [ %75, %59 ]
  %62 = phi i64 [ 0, %57 ], [ %77, %59 ]
  %63 = getelementptr inbounds [2000 x double], ptr %3, i64 %50, i64 %60
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds double, ptr %4, i64 %60
  %66 = load double, ptr %65, align 8, !tbaa !5
  %67 = fneg double %64
  %68 = tail call double @llvm.fmuladd.f64(double %67, double %66, double %61)
  %69 = or disjoint i64 %60, 1
  %70 = getelementptr inbounds [2000 x double], ptr %3, i64 %50, i64 %69
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = getelementptr inbounds double, ptr %4, i64 %69
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = fneg double %71
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %73, double %68)
  %76 = add nuw nsw i64 %60, 2
  %77 = add i64 %62, 2
  %78 = icmp eq i64 %77, %58
  br i1 %78, label %79, label %59, !llvm.loop !15

79:                                               ; preds = %59, %54
  %80 = phi double [ undef, %54 ], [ %75, %59 ]
  %81 = phi i64 [ 0, %54 ], [ %76, %59 ]
  %82 = phi double [ %52, %54 ], [ %75, %59 ]
  %83 = icmp eq i64 %55, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds [2000 x double], ptr %3, i64 %50, i64 %81
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds double, ptr %4, i64 %81
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = fneg double %86
  %90 = tail call double @llvm.fmuladd.f64(double %89, double %88, double %82)
  br label %91

91:                                               ; preds = %84, %79, %49
  %92 = phi double [ %52, %49 ], [ %80, %79 ], [ %90, %84 ]
  %93 = getelementptr inbounds [2000 x double], ptr %3, i64 %50, i64 %50
  %94 = load double, ptr %93, align 8, !tbaa !5
  %95 = fdiv double %92, %94
  %96 = getelementptr inbounds double, ptr %4, i64 %50
  store double %95, ptr %96, align 8, !tbaa !5
  %97 = add nuw nsw i64 %50, 1
  %98 = icmp eq i64 %97, 2000
  br i1 %98, label %99, label %49, !llvm.loop !16

99:                                               ; preds = %91
  %100 = load ptr, ptr @stdout, align 8, !tbaa !17
  %101 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %100)
  %102 = load ptr, ptr @stdout, align 8, !tbaa !17
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %104

104:                                              ; preds = %116, %99
  %105 = phi i64 [ 0, %99 ], [ %117, %116 ]
  %106 = load ptr, ptr @stdout, align 8, !tbaa !17
  %107 = getelementptr inbounds double, ptr %4, i64 %105
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.3, double noundef %108)
  %110 = trunc i64 %105 to i16
  %111 = urem i16 %110, 20
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load ptr, ptr @stdout, align 8, !tbaa !17
  %115 = tail call i32 @fputc(i32 10, ptr %114)
  br label %116

116:                                              ; preds = %113, %104
  %117 = add nuw nsw i64 %105, 1
  %118 = icmp eq i64 %117, 2000
  br i1 %118, label %119, label %104, !llvm.loop !19

119:                                              ; preds = %116
  %120 = load ptr, ptr @stdout, align 8, !tbaa !17
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %122 = load ptr, ptr @stdout, align 8, !tbaa !17
  %123 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %122)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef nonnull %4) #6
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
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !10}
