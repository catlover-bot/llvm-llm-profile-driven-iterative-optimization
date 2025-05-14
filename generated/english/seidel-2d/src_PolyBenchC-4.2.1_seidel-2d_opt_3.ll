; ModuleID = 'outputs/src_PolyBenchC-4.2.1_seidel-2d_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_seidel-2d_opt_3.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #6
  br label %4

4:                                                ; preds = %2, %27
  %5 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %6 = trunc i64 %5 to i32
  %7 = sitofp i32 %6 to double
  %8 = insertelement <2 x double> poison, double %7, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  br label %10

10:                                               ; preds = %10, %4
  %11 = phi i64 [ 0, %4 ], [ %24, %10 ]
  %12 = phi <2 x i32> [ <i32 0, i32 1>, %4 ], [ %25, %10 ]
  %13 = add <2 x i32> %12, <i32 2, i32 2>
  %14 = sitofp <2 x i32> %13 to <2 x double>
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %14, <2 x double> <double 2.000000e+00, double 2.000000e+00>)
  %16 = fdiv <2 x double> %15, <double 2.000000e+03, double 2.000000e+03>
  %17 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %11
  store <2 x double> %16, ptr %17, align 8, !tbaa !5
  %18 = or disjoint i64 %11, 2
  %19 = add <2 x i32> %12, <i32 4, i32 4>
  %20 = sitofp <2 x i32> %19 to <2 x double>
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %20, <2 x double> <double 2.000000e+00, double 2.000000e+00>)
  %22 = fdiv <2 x double> %21, <double 2.000000e+03, double 2.000000e+03>
  %23 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %18
  store <2 x double> %22, ptr %23, align 8, !tbaa !5
  %24 = add nuw nsw i64 %11, 4
  %25 = add <2 x i32> %12, <i32 4, i32 4>
  %26 = icmp eq i64 %24, 2000
  br i1 %26, label %27, label %10, !llvm.loop !9

27:                                               ; preds = %10
  %28 = add nuw nsw i64 %5, 1
  %29 = icmp eq i64 %28, 2000
  br i1 %29, label %30, label %4, !llvm.loop !13

30:                                               ; preds = %27, %75
  %31 = phi i32 [ %76, %75 ], [ 0, %27 ]
  br label %32

32:                                               ; preds = %72, %30
  %33 = phi i64 [ 1, %30 ], [ %73, %72 ]
  %34 = getelementptr [2000 x double], ptr %3, i64 %33
  %35 = getelementptr [2000 x double], ptr %34, i64 -1
  %36 = load double, ptr %35, align 8, !tbaa !5
  %37 = getelementptr [2000 x double], ptr %34, i64 -1, i64 1
  %38 = load double, ptr %37, align 8, !tbaa !5
  %39 = load double, ptr %34, align 8, !tbaa !5
  %40 = getelementptr inbounds [2000 x double], ptr %3, i64 %33, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !5
  %42 = getelementptr [2000 x double], ptr %34, i64 1, i64 0
  %43 = load double, ptr %42, align 8, !tbaa !5
  %44 = getelementptr [2000 x double], ptr %34, i64 1, i64 1
  %45 = load double, ptr %44, align 8, !tbaa !5
  br label %46

46:                                               ; preds = %46, %32
  %47 = phi double [ %45, %32 ], [ %68, %46 ]
  %48 = phi double [ %43, %32 ], [ %47, %46 ]
  %49 = phi double [ %41, %32 ], [ %63, %46 ]
  %50 = phi double [ %39, %32 ], [ %70, %46 ]
  %51 = phi double [ %38, %32 ], [ %57, %46 ]
  %52 = phi i64 [ 1, %32 ], [ %55, %46 ]
  %53 = phi double [ %36, %32 ], [ %49, %46 ]
  %54 = fadd double %51, %53
  %55 = add nuw nsw i64 %52, 1
  %56 = getelementptr [2000 x double], ptr %34, i64 -1, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = fadd double %54, %57
  %59 = fadd double %50, %58
  %60 = getelementptr inbounds [2000 x double], ptr %3, i64 %33, i64 %52
  %61 = fadd double %49, %59
  %62 = getelementptr inbounds [2000 x double], ptr %3, i64 %33, i64 %55
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = fadd double %63, %61
  %65 = fadd double %48, %64
  %66 = fadd double %47, %65
  %67 = getelementptr [2000 x double], ptr %34, i64 1, i64 %55
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = fadd double %68, %66
  %70 = fmul double %69, 0x3FBC71C71C71C71C
  store double %70, ptr %60, align 8, !tbaa !5
  %71 = icmp eq i64 %55, 1999
  br i1 %71, label %72, label %46, !llvm.loop !14

72:                                               ; preds = %46
  %73 = add nuw nsw i64 %33, 1
  %74 = icmp eq i64 %73, 1999
  br i1 %74, label %75, label %32, !llvm.loop !15

75:                                               ; preds = %72
  %76 = add nuw nsw i32 %31, 1
  %77 = icmp eq i32 %76, 500
  br i1 %77, label %78, label %30, !llvm.loop !16

78:                                               ; preds = %75
  %79 = load ptr, ptr @stdout, align 8, !tbaa !17
  %80 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %79)
  %81 = load ptr, ptr @stdout, align 8, !tbaa !17
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %83

83:                                               ; preds = %102, %78
  %84 = phi i64 [ 0, %78 ], [ %103, %102 ]
  %85 = mul nuw nsw i64 %84, 2000
  br label %86

86:                                               ; preds = %95, %83
  %87 = phi i64 [ 0, %83 ], [ %100, %95 ]
  %88 = add nuw nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  %90 = urem i32 %89, 20
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load ptr, ptr @stdout, align 8, !tbaa !17
  %94 = tail call i32 @fputc(i32 10, ptr %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = load ptr, ptr @stdout, align 8, !tbaa !17
  %97 = getelementptr inbounds [2000 x double], ptr %3, i64 %84, i64 %87
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.4, double noundef %98)
  %100 = add nuw nsw i64 %87, 1
  %101 = icmp eq i64 %100, 2000
  br i1 %101, label %102, label %86, !llvm.loop !19

102:                                              ; preds = %95
  %103 = add nuw nsw i64 %84, 1
  %104 = icmp eq i64 %103, 2000
  br i1 %104, label %105, label %83, !llvm.loop !20

105:                                              ; preds = %102
  %106 = load ptr, ptr @stdout, align 8, !tbaa !17
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %108 = load ptr, ptr @stdout, align 8, !tbaa !17
  %109 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %108)
  tail call void @free(ptr noundef nonnull %3) #6
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
!16 = distinct !{!16, !10}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
