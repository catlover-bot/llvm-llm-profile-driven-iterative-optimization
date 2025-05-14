; ModuleID = 'outputs/src_PolyBenchC-4.2.1_mvt_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_mvt_opt_2.c"
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

48:                                               ; preds = %47, %54
  %49 = phi i64 [ %55, %54 ], [ 0, %47 ]
  %50 = getelementptr inbounds double, ptr %4, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = getelementptr inbounds double, ptr %5, i64 %49
  %53 = load double, ptr %52, align 8, !tbaa !5
  br label %57

54:                                               ; preds = %57
  store double %76, ptr %50, align 8, !tbaa !5
  store double %81, ptr %52, align 8, !tbaa !5
  %55 = add nuw nsw i64 %49, 1
  %56 = icmp eq i64 %55, 2000
  br i1 %56, label %84, label %48, !llvm.loop !14

57:                                               ; preds = %57, %48
  %58 = phi i64 [ 0, %48 ], [ %82, %57 ]
  %59 = phi double [ %53, %48 ], [ %81, %57 ]
  %60 = phi double [ %51, %48 ], [ %76, %57 ]
  %61 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %58
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds double, ptr %6, i64 %58
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = tail call double @llvm.fmuladd.f64(double %62, double %64, double %60)
  %66 = getelementptr inbounds [2000 x double], ptr %3, i64 %58, i64 %49
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds double, ptr %7, i64 %58
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = tail call double @llvm.fmuladd.f64(double %67, double %69, double %59)
  %71 = or disjoint i64 %58, 1
  %72 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds double, ptr %6, i64 %71
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = tail call double @llvm.fmuladd.f64(double %73, double %75, double %65)
  %77 = getelementptr inbounds [2000 x double], ptr %3, i64 %71, i64 %49
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = getelementptr inbounds double, ptr %7, i64 %71
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = tail call double @llvm.fmuladd.f64(double %78, double %80, double %70)
  %82 = add nuw nsw i64 %58, 2
  %83 = icmp eq i64 %82, 2000
  br i1 %83, label %54, label %57, !llvm.loop !15

84:                                               ; preds = %54
  %85 = load ptr, ptr @stdout, align 8, !tbaa !16
  %86 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %85)
  %87 = load ptr, ptr @stdout, align 8, !tbaa !16
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %94

89:                                               ; preds = %102
  %90 = load ptr, ptr @stdout, align 8, !tbaa !16
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %92 = load ptr, ptr @stdout, align 8, !tbaa !16
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6)
  br label %109

94:                                               ; preds = %102, %84
  %95 = phi i64 [ 0, %84 ], [ %107, %102 ]
  %96 = trunc i64 %95 to i16
  %97 = urem i16 %96, 20
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load ptr, ptr @stdout, align 8, !tbaa !16
  %101 = tail call i32 @fputc(i32 10, ptr %100)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load ptr, ptr @stdout, align 8, !tbaa !16
  %104 = getelementptr inbounds double, ptr %4, i64 %95
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.4, double noundef %105)
  %107 = add nuw nsw i64 %95, 1
  %108 = icmp eq i64 %107, 2000
  br i1 %108, label %89, label %94, !llvm.loop !18

109:                                              ; preds = %117, %89
  %110 = phi i64 [ 0, %89 ], [ %122, %117 ]
  %111 = trunc i64 %110 to i16
  %112 = urem i16 %111, 20
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load ptr, ptr @stdout, align 8, !tbaa !16
  %116 = tail call i32 @fputc(i32 10, ptr %115)
  br label %117

117:                                              ; preds = %114, %109
  %118 = load ptr, ptr @stdout, align 8, !tbaa !16
  %119 = getelementptr inbounds double, ptr %5, i64 %110
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.4, double noundef %120)
  %122 = add nuw nsw i64 %110, 1
  %123 = icmp eq i64 %122, 2000
  br i1 %123, label %124, label %109, !llvm.loop !19

124:                                              ; preds = %117
  %125 = load ptr, ptr @stdout, align 8, !tbaa !16
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %127 = load ptr, ptr @stdout, align 8, !tbaa !16
  %128 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %127)
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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
