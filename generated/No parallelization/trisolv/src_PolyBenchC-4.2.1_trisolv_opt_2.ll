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
  %13 = add i32 %10, 2001
  %14 = sitofp i32 %13 to double
  %15 = icmp ult i64 %8, 2
  br i1 %15, label %33, label %16

16:                                               ; preds = %6
  %17 = and i64 %8, 9223372036854775806
  %18 = insertelement <2 x double> poison, double %14, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi i64 [ 0, %16 ], [ %28, %20 ]
  %22 = phi <2 x i32> [ <i32 0, i32 1>, %16 ], [ %29, %20 ]
  %23 = sitofp <2 x i32> %22 to <2 x double>
  %24 = fsub <2 x double> %19, %23
  %25 = fmul <2 x double> %24, <double 2.000000e+00, double 2.000000e+00>
  %26 = fdiv <2 x double> %25, <double 2.000000e+03, double 2.000000e+03>
  %27 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %21
  store <2 x double> %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw i64 %21, 2
  %29 = add <2 x i32> %22, <i32 2, i32 2>
  %30 = icmp eq i64 %28, %17
  br i1 %30, label %31, label %20, !llvm.loop !9

31:                                               ; preds = %20
  %32 = icmp eq i64 %8, %17
  br i1 %32, label %45, label %33

33:                                               ; preds = %6, %31
  %34 = phi i64 [ 0, %6 ], [ %17, %31 ]
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ %43, %35 ], [ %34, %33 ]
  %37 = trunc i64 %36 to i32
  %38 = sitofp i32 %37 to double
  %39 = fsub double %14, %38
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

49:                                               ; preds = %45, %112
  %50 = phi i64 [ %118, %112 ], [ 0, %45 ]
  %51 = getelementptr inbounds double, ptr %5, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds [2000 x double], ptr %3, i64 %50
  %54 = icmp eq i64 %50, 0
  br i1 %54, label %112, label %55

55:                                               ; preds = %49
  %56 = and i64 %50, 3
  %57 = icmp ult i64 %50, 4
  br i1 %57, label %94, label %58

58:                                               ; preds = %55
  %59 = and i64 %50, 9223372036854775804
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i64 [ 0, %58 ], [ %91, %60 ]
  %62 = phi double [ %52, %58 ], [ %90, %60 ]
  %63 = phi i64 [ 0, %58 ], [ %92, %60 ]
  %64 = getelementptr inbounds double, ptr %53, i64 %61
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds double, ptr %4, i64 %61
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = fneg double %65
  %69 = tail call double @llvm.fmuladd.f64(double %68, double %67, double %62)
  %70 = or disjoint i64 %61, 1
  %71 = getelementptr inbounds double, ptr %53, i64 %70
  %72 = load double, ptr %71, align 8, !tbaa !5
  %73 = getelementptr inbounds double, ptr %4, i64 %70
  %74 = load double, ptr %73, align 8, !tbaa !5
  %75 = fneg double %72
  %76 = tail call double @llvm.fmuladd.f64(double %75, double %74, double %69)
  %77 = or disjoint i64 %61, 2
  %78 = getelementptr inbounds double, ptr %53, i64 %77
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds double, ptr %4, i64 %77
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = fneg double %79
  %83 = tail call double @llvm.fmuladd.f64(double %82, double %81, double %76)
  %84 = or disjoint i64 %61, 3
  %85 = getelementptr inbounds double, ptr %53, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds double, ptr %4, i64 %84
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = fneg double %86
  %90 = tail call double @llvm.fmuladd.f64(double %89, double %88, double %83)
  %91 = add nuw nsw i64 %61, 4
  %92 = add i64 %63, 4
  %93 = icmp eq i64 %92, %59
  br i1 %93, label %94, label %60, !llvm.loop !15

94:                                               ; preds = %60, %55
  %95 = phi double [ undef, %55 ], [ %90, %60 ]
  %96 = phi i64 [ 0, %55 ], [ %91, %60 ]
  %97 = phi double [ %52, %55 ], [ %90, %60 ]
  %98 = icmp eq i64 %56, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %94, %99
  %100 = phi i64 [ %109, %99 ], [ %96, %94 ]
  %101 = phi double [ %108, %99 ], [ %97, %94 ]
  %102 = phi i64 [ %110, %99 ], [ 0, %94 ]
  %103 = getelementptr inbounds double, ptr %53, i64 %100
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds double, ptr %4, i64 %100
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = fneg double %104
  %108 = tail call double @llvm.fmuladd.f64(double %107, double %106, double %101)
  %109 = add nuw nsw i64 %100, 1
  %110 = add i64 %102, 1
  %111 = icmp eq i64 %110, %56
  br i1 %111, label %112, label %99, !llvm.loop !16

112:                                              ; preds = %94, %99, %49
  %113 = phi double [ %52, %49 ], [ %95, %94 ], [ %108, %99 ]
  %114 = getelementptr inbounds double, ptr %53, i64 %50
  %115 = load double, ptr %114, align 8, !tbaa !5
  %116 = fdiv double %113, %115
  %117 = getelementptr inbounds double, ptr %4, i64 %50
  store double %116, ptr %117, align 8, !tbaa !5
  %118 = add nuw nsw i64 %50, 1
  %119 = icmp eq i64 %118, 2000
  br i1 %119, label %120, label %49, !llvm.loop !18

120:                                              ; preds = %112
  %121 = load ptr, ptr @stdout, align 8, !tbaa !19
  %122 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %121)
  %123 = load ptr, ptr @stdout, align 8, !tbaa !19
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %125

125:                                              ; preds = %137, %120
  %126 = phi i64 [ 0, %120 ], [ %138, %137 ]
  %127 = load ptr, ptr @stdout, align 8, !tbaa !19
  %128 = getelementptr inbounds double, ptr %4, i64 %126
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.3, double noundef %129)
  %131 = trunc i64 %126 to i16
  %132 = urem i16 %131, 20
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load ptr, ptr @stdout, align 8, !tbaa !19
  %136 = tail call i32 @fputc(i32 10, ptr %135)
  br label %137

137:                                              ; preds = %134, %125
  %138 = add nuw nsw i64 %126, 1
  %139 = icmp eq i64 %138, 2000
  br i1 %139, label %140, label %125, !llvm.loop !21

140:                                              ; preds = %137
  %141 = load ptr, ptr @stdout, align 8, !tbaa !19
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %143 = load ptr, ptr @stdout, align 8, !tbaa !19
  %144 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %143)
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
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !10}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = distinct !{!21, !10}
