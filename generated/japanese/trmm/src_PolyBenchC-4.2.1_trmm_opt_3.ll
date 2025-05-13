; ModuleID = 'outputs/src_PolyBenchC-4.2.1_trmm_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_trmm_opt_3.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #6
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

65:                                               ; preds = %62, %104
  %66 = phi i64 [ %105, %104 ], [ 0, %62 ]
  %67 = icmp ult i64 %66, 999
  br i1 %67, label %85, label %68

68:                                               ; preds = %65, %68
  %69 = phi i64 [ %83, %68 ], [ 0, %65 ]
  %70 = getelementptr inbounds [1200 x double], ptr %4, i64 %66, i64 %69
  %71 = getelementptr inbounds double, ptr %70, i64 2
  %72 = load <2 x double>, ptr %70, align 8, !tbaa !5
  %73 = load <2 x double>, ptr %71, align 8, !tbaa !5
  %74 = fmul <2 x double> %72, <double 1.500000e+00, double 1.500000e+00>
  %75 = fmul <2 x double> %73, <double 1.500000e+00, double 1.500000e+00>
  store <2 x double> %74, ptr %70, align 8, !tbaa !5
  store <2 x double> %75, ptr %71, align 8, !tbaa !5
  %76 = or disjoint i64 %69, 4
  %77 = getelementptr inbounds [1200 x double], ptr %4, i64 %66, i64 %76
  %78 = getelementptr inbounds double, ptr %77, i64 2
  %79 = load <2 x double>, ptr %77, align 8, !tbaa !5
  %80 = load <2 x double>, ptr %78, align 8, !tbaa !5
  %81 = fmul <2 x double> %79, <double 1.500000e+00, double 1.500000e+00>
  %82 = fmul <2 x double> %80, <double 1.500000e+00, double 1.500000e+00>
  store <2 x double> %81, ptr %77, align 8, !tbaa !5
  store <2 x double> %82, ptr %78, align 8, !tbaa !5
  %83 = add nuw nsw i64 %69, 8
  %84 = icmp eq i64 %83, 1200
  br i1 %84, label %104, label %68, !llvm.loop !16

85:                                               ; preds = %65, %101
  %86 = phi i64 [ %102, %101 ], [ 0, %65 ]
  %87 = getelementptr inbounds [1200 x double], ptr %4, i64 %66, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = fmul double %88, 1.500000e+00
  store double %89, ptr %87, align 8, !tbaa !5
  br label %90

90:                                               ; preds = %90, %85
  %91 = phi i64 [ %66, %85 ], [ %93, %90 ]
  %92 = phi double [ %89, %85 ], [ %99, %90 ]
  %93 = add nuw nsw i64 %91, 1
  %94 = getelementptr inbounds [1000 x double], ptr %3, i64 %93, i64 %66
  %95 = load double, ptr %94, align 8, !tbaa !5
  %96 = fmul double %95, 1.500000e+00
  %97 = getelementptr inbounds [1200 x double], ptr %4, i64 %93, i64 %86
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = tail call double @llvm.fmuladd.f64(double %96, double %98, double %92)
  store double %99, ptr %87, align 8, !tbaa !5
  %100 = icmp eq i64 %93, 999
  br i1 %100, label %101, label %90, !llvm.loop !17

101:                                              ; preds = %90
  %102 = add nuw nsw i64 %86, 1
  %103 = icmp eq i64 %102, 1200
  br i1 %103, label %104, label %85, !llvm.loop !18

104:                                              ; preds = %68, %101
  %105 = add nuw nsw i64 %66, 1
  %106 = icmp eq i64 %105, 1000
  br i1 %106, label %107, label %65, !llvm.loop !19

107:                                              ; preds = %104
  %108 = load ptr, ptr @stdout, align 8, !tbaa !20
  %109 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %108)
  %110 = load ptr, ptr @stdout, align 8, !tbaa !20
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %112

112:                                              ; preds = %115, %107
  %113 = phi i64 [ 0, %107 ], [ %116, %115 ]
  %114 = mul nuw nsw i64 %113, 1000
  br label %118

115:                                              ; preds = %127
  %116 = add nuw nsw i64 %113, 1
  %117 = icmp eq i64 %116, 1000
  br i1 %117, label %134, label %112, !llvm.loop !22

118:                                              ; preds = %127, %112
  %119 = phi i64 [ 0, %112 ], [ %132, %127 ]
  %120 = add nuw nsw i64 %119, %114
  %121 = trunc i64 %120 to i32
  %122 = urem i32 %121, 20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load ptr, ptr @stdout, align 8, !tbaa !20
  %126 = tail call i32 @fputc(i32 10, ptr %125)
  br label %127

127:                                              ; preds = %124, %118
  %128 = load ptr, ptr @stdout, align 8, !tbaa !20
  %129 = getelementptr inbounds [1200 x double], ptr %4, i64 %113, i64 %119
  %130 = load double, ptr %129, align 8, !tbaa !5
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.4, double noundef %130)
  %132 = add nuw nsw i64 %119, 1
  %133 = icmp eq i64 %132, 1200
  br i1 %133, label %115, label %118, !llvm.loop !23

134:                                              ; preds = %115
  %135 = load ptr, ptr @stdout, align 8, !tbaa !20
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %137 = load ptr, ptr @stdout, align 8, !tbaa !20
  %138 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %137)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef nonnull %4) #6
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
