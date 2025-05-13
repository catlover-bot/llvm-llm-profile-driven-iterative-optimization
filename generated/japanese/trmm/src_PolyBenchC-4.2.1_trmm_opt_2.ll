; ModuleID = 'outputs/src_PolyBenchC-4.2.1_trmm_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_trmm_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  br label %5

5:                                                ; preds = %62, %2
  %6 = phi i64 [ 0, %2 ], [ %63, %62 ]
  switch i64 %6, label %7 [
    i64 0, label %27
    i64 1, label %25
  ]

7:                                                ; preds = %5
  %8 = and i64 %6, 9223372036854775806
  %9 = insertelement <2 x i64> poison, i64 %6, i64 0
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi i64 [ 0, %7 ], [ %20, %11 ]
  %13 = phi <2 x i64> [ <i64 0, i64 1>, %7 ], [ %21, %11 ]
  %14 = add nuw nsw <2 x i64> %13, %10
  %15 = trunc <2 x i64> %14 to <2 x i32>
  %16 = urem <2 x i32> %15, <i32 1000, i32 1000>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, <double 1.000000e+03, double 1.000000e+03>
  %19 = getelementptr inbounds [1000 x double], ptr %3, i64 %6, i64 %12
  store <2 x double> %18, ptr %19, align 8, !tbaa !5
  %20 = add nuw i64 %12, 2
  %21 = add <2 x i64> %13, <i64 2, i64 2>
  %22 = icmp eq i64 %20, %8
  br i1 %22, label %23, label %11, !llvm.loop !9

23:                                               ; preds = %11
  %24 = icmp eq i64 %6, %8
  br i1 %24, label %27, label %25

25:                                               ; preds = %5, %23
  %26 = phi i64 [ 0, %5 ], [ %8, %23 ]
  br label %52

27:                                               ; preds = %52, %23, %5
  %28 = getelementptr inbounds [1000 x double], ptr %3, i64 %6, i64 %6
  store double 1.000000e+00, ptr %28, align 8, !tbaa !5
  %29 = add nuw nsw i64 %6, 1200
  %30 = insertelement <2 x i64> poison, i64 %29, i64 0
  %31 = shufflevector <2 x i64> %30, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %32

32:                                               ; preds = %32, %27
  %33 = phi i64 [ 0, %27 ], [ %49, %32 ]
  %34 = phi <2 x i64> [ <i64 0, i64 1>, %27 ], [ %50, %32 ]
  %35 = sub nuw nsw <2 x i64> %31, %34
  %36 = trunc <2 x i64> %35 to <2 x i32>
  %37 = urem <2 x i32> %36, <i32 1200, i32 1200>
  %38 = sitofp <2 x i32> %37 to <2 x double>
  %39 = fdiv <2 x double> %38, <double 1.200000e+03, double 1.200000e+03>
  %40 = getelementptr inbounds [1200 x double], ptr %4, i64 %6, i64 %33
  store <2 x double> %39, ptr %40, align 8, !tbaa !5
  %41 = or disjoint i64 %33, 2
  %42 = add <2 x i64> %34, <i64 2, i64 2>
  %43 = sub nuw nsw <2 x i64> %31, %42
  %44 = trunc <2 x i64> %43 to <2 x i32>
  %45 = urem <2 x i32> %44, <i32 1200, i32 1200>
  %46 = sitofp <2 x i32> %45 to <2 x double>
  %47 = fdiv <2 x double> %46, <double 1.200000e+03, double 1.200000e+03>
  %48 = getelementptr inbounds [1200 x double], ptr %4, i64 %6, i64 %41
  store <2 x double> %47, ptr %48, align 8, !tbaa !5
  %49 = add nuw nsw i64 %33, 4
  %50 = add <2 x i64> %34, <i64 4, i64 4>
  %51 = icmp eq i64 %49, 1200
  br i1 %51, label %62, label %32, !llvm.loop !13

52:                                               ; preds = %25, %52
  %53 = phi i64 [ %60, %52 ], [ %26, %25 ]
  %54 = add nuw nsw i64 %53, %6
  %55 = trunc i64 %54 to i32
  %56 = urem i32 %55, 1000
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 1.000000e+03
  %59 = getelementptr inbounds [1000 x double], ptr %3, i64 %6, i64 %53
  store double %58, ptr %59, align 8, !tbaa !5
  %60 = add nuw nsw i64 %53, 1
  %61 = icmp eq i64 %60, %6
  br i1 %61, label %27, label %52, !llvm.loop !14

62:                                               ; preds = %32
  %63 = add nuw nsw i64 %6, 1
  %64 = icmp eq i64 %63, 1000
  br i1 %64, label %65, label %5, !llvm.loop !15

65:                                               ; preds = %62, %108
  %66 = phi i64 [ %109, %108 ], [ 0, %62 ]
  %67 = icmp ult i64 %66, 999
  br i1 %67, label %89, label %68

68:                                               ; preds = %65, %68
  %69 = phi i64 [ %87, %68 ], [ 0, %65 ]
  %70 = getelementptr inbounds [1200 x double], ptr %4, i64 %66, i64 %69
  %71 = getelementptr inbounds double, ptr %70, i64 2
  %72 = load <2 x double>, ptr %70, align 8, !tbaa !5
  %73 = load <2 x double>, ptr %71, align 8, !tbaa !5
  %74 = fmul <2 x double> %72, <double 1.500000e+00, double 1.500000e+00>
  %75 = fmul <2 x double> %73, <double 1.500000e+00, double 1.500000e+00>
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> <double 1.500000e+00, double 1.500000e+00>, <2 x double> %74)
  %77 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> <double 1.500000e+00, double 1.500000e+00>, <2 x double> %75)
  store <2 x double> %76, ptr %70, align 8, !tbaa !5
  store <2 x double> %77, ptr %71, align 8, !tbaa !5
  %78 = or disjoint i64 %69, 4
  %79 = getelementptr inbounds [1200 x double], ptr %4, i64 %66, i64 %78
  %80 = getelementptr inbounds double, ptr %79, i64 2
  %81 = load <2 x double>, ptr %79, align 8, !tbaa !5
  %82 = load <2 x double>, ptr %80, align 8, !tbaa !5
  %83 = fmul <2 x double> %81, <double 1.500000e+00, double 1.500000e+00>
  %84 = fmul <2 x double> %82, <double 1.500000e+00, double 1.500000e+00>
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %81, <2 x double> <double 1.500000e+00, double 1.500000e+00>, <2 x double> %83)
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %82, <2 x double> <double 1.500000e+00, double 1.500000e+00>, <2 x double> %84)
  store <2 x double> %85, ptr %79, align 8, !tbaa !5
  store <2 x double> %86, ptr %80, align 8, !tbaa !5
  %87 = add nuw nsw i64 %69, 8
  %88 = icmp eq i64 %87, 1200
  br i1 %88, label %108, label %68, !llvm.loop !16

89:                                               ; preds = %65, %103
  %90 = phi i64 [ %106, %103 ], [ 0, %65 ]
  %91 = getelementptr inbounds [1200 x double], ptr %4, i64 %66, i64 %90
  %92 = load double, ptr %91, align 8, !tbaa !5
  br label %93

93:                                               ; preds = %93, %89
  %94 = phi i64 [ %66, %89 ], [ %96, %93 ]
  %95 = phi double [ %92, %89 ], [ %101, %93 ]
  %96 = add nuw nsw i64 %94, 1
  %97 = getelementptr inbounds [1000 x double], ptr %3, i64 %96, i64 %66
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds [1200 x double], ptr %4, i64 %96, i64 %90
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = tail call double @llvm.fmuladd.f64(double %98, double %100, double %95)
  %102 = icmp eq i64 %96, 999
  br i1 %102, label %103, label %93, !llvm.loop !17

103:                                              ; preds = %93
  %104 = fmul double %92, 1.500000e+00
  %105 = tail call double @llvm.fmuladd.f64(double %101, double 1.500000e+00, double %104)
  store double %105, ptr %91, align 8, !tbaa !5
  %106 = add nuw nsw i64 %90, 1
  %107 = icmp eq i64 %106, 1200
  br i1 %107, label %108, label %89, !llvm.loop !18

108:                                              ; preds = %68, %103
  %109 = add nuw nsw i64 %66, 1
  %110 = icmp eq i64 %109, 1000
  br i1 %110, label %111, label %65, !llvm.loop !19

111:                                              ; preds = %108
  %112 = load ptr, ptr @stdout, align 8, !tbaa !20
  %113 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %112)
  %114 = load ptr, ptr @stdout, align 8, !tbaa !20
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %116

116:                                              ; preds = %119, %111
  %117 = phi i64 [ 0, %111 ], [ %120, %119 ]
  %118 = mul nuw nsw i64 %117, 1000
  br label %122

119:                                              ; preds = %131
  %120 = add nuw nsw i64 %117, 1
  %121 = icmp eq i64 %120, 1000
  br i1 %121, label %138, label %116, !llvm.loop !22

122:                                              ; preds = %131, %116
  %123 = phi i64 [ 0, %116 ], [ %136, %131 ]
  %124 = add nuw nsw i64 %123, %118
  %125 = trunc i64 %124 to i32
  %126 = urem i32 %125, 20
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load ptr, ptr @stdout, align 8, !tbaa !20
  %130 = tail call i32 @fputc(i32 10, ptr %129)
  br label %131

131:                                              ; preds = %128, %122
  %132 = load ptr, ptr @stdout, align 8, !tbaa !20
  %133 = getelementptr inbounds [1200 x double], ptr %4, i64 %117, i64 %123
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.4, double noundef %134)
  %136 = add nuw nsw i64 %123, 1
  %137 = icmp eq i64 %136, 1200
  br i1 %137, label %119, label %122, !llvm.loop !23

138:                                              ; preds = %119
  %139 = load ptr, ptr @stdout, align 8, !tbaa !20
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %141 = load ptr, ptr @stdout, align 8, !tbaa !20
  %142 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %141)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef nonnull %4) #7
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
!13 = distinct !{!13, !10, !11, !12}
!14 = distinct !{!14, !10, !12, !11}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
