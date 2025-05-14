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
  %74 = fadd <2 x double> %72, zeroinitializer
  %75 = fadd <2 x double> %73, zeroinitializer
  %76 = fmul <2 x double> %74, <double 1.500000e+00, double 1.500000e+00>
  %77 = fmul <2 x double> %75, <double 1.500000e+00, double 1.500000e+00>
  store <2 x double> %76, ptr %70, align 8, !tbaa !5
  store <2 x double> %77, ptr %71, align 8, !tbaa !5
  %78 = or disjoint i64 %69, 4
  %79 = getelementptr inbounds [1200 x double], ptr %4, i64 %66, i64 %78
  %80 = getelementptr inbounds double, ptr %79, i64 2
  %81 = load <2 x double>, ptr %79, align 8, !tbaa !5
  %82 = load <2 x double>, ptr %80, align 8, !tbaa !5
  %83 = fadd <2 x double> %81, zeroinitializer
  %84 = fadd <2 x double> %82, zeroinitializer
  %85 = fmul <2 x double> %83, <double 1.500000e+00, double 1.500000e+00>
  %86 = fmul <2 x double> %84, <double 1.500000e+00, double 1.500000e+00>
  store <2 x double> %85, ptr %79, align 8, !tbaa !5
  store <2 x double> %86, ptr %80, align 8, !tbaa !5
  %87 = add nuw nsw i64 %69, 8
  %88 = icmp eq i64 %87, 1200
  br i1 %88, label %108, label %68, !llvm.loop !16

89:                                               ; preds = %65, %101
  %90 = phi i64 [ %106, %101 ], [ 0, %65 ]
  br label %91

91:                                               ; preds = %91, %89
  %92 = phi i64 [ %66, %89 ], [ %94, %91 ]
  %93 = phi double [ 0.000000e+00, %89 ], [ %99, %91 ]
  %94 = add nuw nsw i64 %92, 1
  %95 = getelementptr inbounds [1000 x double], ptr %3, i64 %94, i64 %66
  %96 = load double, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds [1200 x double], ptr %4, i64 %94, i64 %90
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = tail call double @llvm.fmuladd.f64(double %96, double %98, double %93)
  %100 = icmp eq i64 %94, 999
  br i1 %100, label %101, label %91, !llvm.loop !17

101:                                              ; preds = %91
  %102 = getelementptr inbounds [1200 x double], ptr %4, i64 %66, i64 %90
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = fadd double %99, %103
  %105 = fmul double %104, 1.500000e+00
  store double %105, ptr %102, align 8, !tbaa !5
  %106 = add nuw nsw i64 %90, 1
  %107 = icmp eq i64 %106, 1200
  br i1 %107, label %108, label %89, !llvm.loop !18

108:                                              ; preds = %68, %101
  %109 = add nuw nsw i64 %66, 1
  %110 = icmp eq i64 %109, 1000
  br i1 %110, label %111, label %65, !llvm.loop !19

111:                                              ; preds = %108
  %112 = load ptr, ptr @stdout, align 8, !tbaa !20
  %113 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %112)
  %114 = load ptr, ptr @stdout, align 8, !tbaa !20
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %116

116:                                              ; preds = %135, %111
  %117 = phi i64 [ 0, %111 ], [ %136, %135 ]
  %118 = mul nuw nsw i64 %117, 1000
  br label %119

119:                                              ; preds = %128, %116
  %120 = phi i64 [ 0, %116 ], [ %133, %128 ]
  %121 = add nuw nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  %123 = urem i32 %122, 20
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load ptr, ptr @stdout, align 8, !tbaa !20
  %127 = tail call i32 @fputc(i32 10, ptr %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load ptr, ptr @stdout, align 8, !tbaa !20
  %130 = getelementptr inbounds [1200 x double], ptr %4, i64 %117, i64 %120
  %131 = load double, ptr %130, align 8, !tbaa !5
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.4, double noundef %131)
  %133 = add nuw nsw i64 %120, 1
  %134 = icmp eq i64 %133, 1200
  br i1 %134, label %135, label %119, !llvm.loop !22

135:                                              ; preds = %128
  %136 = add nuw nsw i64 %117, 1
  %137 = icmp eq i64 %136, 1000
  br i1 %137, label %138, label %116, !llvm.loop !23

138:                                              ; preds = %135
  %139 = load ptr, ptr @stdout, align 8, !tbaa !20
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %141 = load ptr, ptr @stdout, align 8, !tbaa !20
  %142 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %141)
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
