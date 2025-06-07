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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #6
  br label %5

5:                                                ; preds = %62, %2
  %6 = phi i64 [ 0, %2 ], [ %63, %62 ]
  switch i64 %6, label %7 [
    i64 0, label %37
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
  br i1 %24, label %37, label %25

25:                                               ; preds = %5, %23
  %26 = phi i64 [ 0, %5 ], [ %8, %23 ]
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ %35, %27 ], [ %26, %25 ]
  %29 = add nuw nsw i64 %28, %6
  %30 = trunc i64 %29 to i32
  %31 = urem i32 %30, 1000
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 1.000000e+03
  %34 = getelementptr inbounds [1000 x double], ptr %3, i64 %6, i64 %28
  store double %33, ptr %34, align 8, !tbaa !5
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp eq i64 %35, %6
  br i1 %36, label %37, label %27, !llvm.loop !13

37:                                               ; preds = %27, %23, %5
  %38 = getelementptr inbounds [1000 x double], ptr %3, i64 %6, i64 %6
  store double 1.000000e+00, ptr %38, align 8, !tbaa !5
  %39 = add nuw nsw i64 %6, 1200
  %40 = insertelement <2 x i64> poison, i64 %39, i64 0
  %41 = shufflevector <2 x i64> %40, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %42, %37
  %43 = phi i64 [ 0, %37 ], [ %59, %42 ]
  %44 = phi <2 x i64> [ <i64 0, i64 1>, %37 ], [ %60, %42 ]
  %45 = sub nuw nsw <2 x i64> %41, %44
  %46 = trunc <2 x i64> %45 to <2 x i32>
  %47 = urem <2 x i32> %46, <i32 1200, i32 1200>
  %48 = sitofp <2 x i32> %47 to <2 x double>
  %49 = fdiv <2 x double> %48, <double 1.200000e+03, double 1.200000e+03>
  %50 = getelementptr inbounds [1200 x double], ptr %4, i64 %6, i64 %43
  store <2 x double> %49, ptr %50, align 8, !tbaa !5
  %51 = or disjoint i64 %43, 2
  %52 = add <2 x i64> %44, <i64 2, i64 2>
  %53 = sub nuw nsw <2 x i64> %41, %52
  %54 = trunc <2 x i64> %53 to <2 x i32>
  %55 = urem <2 x i32> %54, <i32 1200, i32 1200>
  %56 = sitofp <2 x i32> %55 to <2 x double>
  %57 = fdiv <2 x double> %56, <double 1.200000e+03, double 1.200000e+03>
  %58 = getelementptr inbounds [1200 x double], ptr %4, i64 %6, i64 %51
  store <2 x double> %57, ptr %58, align 8, !tbaa !5
  %59 = add nuw nsw i64 %43, 4
  %60 = add <2 x i64> %44, <i64 4, i64 4>
  %61 = icmp eq i64 %59, 1200
  br i1 %61, label %62, label %42, !llvm.loop !14

62:                                               ; preds = %42
  %63 = add nuw nsw i64 %6, 1
  %64 = icmp eq i64 %63, 1000
  br i1 %64, label %65, label %5, !llvm.loop !15

65:                                               ; preds = %62, %103
  %66 = phi i64 [ %104, %103 ], [ 0, %62 ]
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
  br i1 %84, label %103, label %68, !llvm.loop !16

85:                                               ; preds = %65, %99
  %86 = phi i64 [ %101, %99 ], [ 0, %65 ]
  %87 = getelementptr inbounds [1200 x double], ptr %4, i64 %66, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !5
  br label %89

89:                                               ; preds = %89, %85
  %90 = phi i64 [ %66, %85 ], [ %92, %89 ]
  %91 = phi double [ %88, %85 ], [ %97, %89 ]
  %92 = add nuw nsw i64 %90, 1
  %93 = getelementptr inbounds [1000 x double], ptr %3, i64 %92, i64 %66
  %94 = load double, ptr %93, align 8, !tbaa !5
  %95 = getelementptr inbounds [1200 x double], ptr %4, i64 %92, i64 %86
  %96 = load double, ptr %95, align 8, !tbaa !5
  %97 = tail call double @llvm.fmuladd.f64(double %94, double %96, double %91)
  %98 = icmp eq i64 %92, 999
  br i1 %98, label %99, label %89, !llvm.loop !17

99:                                               ; preds = %89
  %100 = fmul double %97, 1.500000e+00
  store double %100, ptr %87, align 8, !tbaa !5
  %101 = add nuw nsw i64 %86, 1
  %102 = icmp eq i64 %101, 1200
  br i1 %102, label %103, label %85, !llvm.loop !18

103:                                              ; preds = %68, %99
  %104 = add nuw nsw i64 %66, 1
  %105 = icmp eq i64 %104, 1000
  br i1 %105, label %106, label %65, !llvm.loop !19

106:                                              ; preds = %103
  %107 = load ptr, ptr @stdout, align 8, !tbaa !20
  %108 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %107)
  %109 = load ptr, ptr @stdout, align 8, !tbaa !20
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %111

111:                                              ; preds = %130, %106
  %112 = phi i64 [ 0, %106 ], [ %131, %130 ]
  %113 = mul nuw nsw i64 %112, 1000
  br label %114

114:                                              ; preds = %123, %111
  %115 = phi i64 [ 0, %111 ], [ %128, %123 ]
  %116 = add nuw nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  %118 = urem i32 %117, 20
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load ptr, ptr @stdout, align 8, !tbaa !20
  %122 = tail call i32 @fputc(i32 10, ptr %121)
  br label %123

123:                                              ; preds = %120, %114
  %124 = load ptr, ptr @stdout, align 8, !tbaa !20
  %125 = getelementptr inbounds [1200 x double], ptr %4, i64 %112, i64 %115
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.4, double noundef %126)
  %128 = add nuw nsw i64 %115, 1
  %129 = icmp eq i64 %128, 1200
  br i1 %129, label %130, label %114, !llvm.loop !22

130:                                              ; preds = %123
  %131 = add nuw nsw i64 %112, 1
  %132 = icmp eq i64 %131, 1000
  br i1 %132, label %133, label %111, !llvm.loop !23

133:                                              ; preds = %130
  %134 = load ptr, ptr @stdout, align 8, !tbaa !20
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %136 = load ptr, ptr @stdout, align 8, !tbaa !20
  %137 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %136)
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
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
