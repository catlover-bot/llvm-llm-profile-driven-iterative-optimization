; ModuleID = 'outputs/src_PolyBenchC-4.2.1_atax_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_atax_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 3990000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #7
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8) #7
  %7 = getelementptr double, ptr %4, i64 2
  %8 = getelementptr double, ptr %4, i64 4
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi i64 [ 0, %2 ], [ %26, %9 ]
  %11 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %27, %9 ]
  %12 = sitofp <2 x i32> %11 to <2 x double>
  %13 = fdiv <2 x double> %12, <double 2.100000e+03, double 2.100000e+03>
  %14 = fadd <2 x double> %13, <double 1.000000e+00, double 1.000000e+00>
  %15 = getelementptr inbounds double, ptr %4, i64 %10
  store <2 x double> %14, ptr %15, align 8, !tbaa !5
  %16 = add <2 x i32> %11, <i32 2, i32 2>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, <double 2.100000e+03, double 2.100000e+03>
  %19 = fadd <2 x double> %18, <double 1.000000e+00, double 1.000000e+00>
  %20 = getelementptr double, ptr %7, i64 %10
  store <2 x double> %19, ptr %20, align 8, !tbaa !5
  %21 = add <2 x i32> %11, <i32 4, i32 4>
  %22 = sitofp <2 x i32> %21 to <2 x double>
  %23 = fdiv <2 x double> %22, <double 2.100000e+03, double 2.100000e+03>
  %24 = fadd <2 x double> %23, <double 1.000000e+00, double 1.000000e+00>
  %25 = getelementptr double, ptr %8, i64 %10
  store <2 x double> %24, ptr %25, align 8, !tbaa !5
  %26 = add nuw nsw i64 %10, 6
  %27 = add <2 x i32> %11, <i32 6, i32 6>
  %28 = icmp eq i64 %26, 2100
  br i1 %28, label %29, label %9, !llvm.loop !9

29:                                               ; preds = %9, %54
  %30 = phi i64 [ %55, %54 ], [ 0, %9 ]
  %31 = getelementptr inbounds [2100 x double], ptr %3, i64 %30
  %32 = insertelement <2 x i64> poison, i64 %30, i64 0
  %33 = shufflevector <2 x i64> %32, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi i64 [ 0, %29 ], [ %51, %34 ]
  %36 = phi <2 x i64> [ <i64 0, i64 1>, %29 ], [ %52, %34 ]
  %37 = add nuw nsw <2 x i64> %36, %33
  %38 = trunc <2 x i64> %37 to <2 x i32>
  %39 = urem <2 x i32> %38, <i32 2100, i32 2100>
  %40 = sitofp <2 x i32> %39 to <2 x double>
  %41 = fdiv <2 x double> %40, <double 9.500000e+03, double 9.500000e+03>
  %42 = getelementptr inbounds double, ptr %31, i64 %35
  store <2 x double> %41, ptr %42, align 8, !tbaa !5
  %43 = or disjoint i64 %35, 2
  %44 = add <2 x i64> %36, <i64 2, i64 2>
  %45 = add nuw nsw <2 x i64> %44, %33
  %46 = trunc <2 x i64> %45 to <2 x i32>
  %47 = urem <2 x i32> %46, <i32 2100, i32 2100>
  %48 = sitofp <2 x i32> %47 to <2 x double>
  %49 = fdiv <2 x double> %48, <double 9.500000e+03, double 9.500000e+03>
  %50 = getelementptr inbounds double, ptr %31, i64 %43
  store <2 x double> %49, ptr %50, align 8, !tbaa !5
  %51 = add nuw nsw i64 %35, 4
  %52 = add <2 x i64> %36, <i64 4, i64 4>
  %53 = icmp eq i64 %51, 2100
  br i1 %53, label %54, label %34, !llvm.loop !13

54:                                               ; preds = %34
  %55 = add nuw nsw i64 %30, 1
  %56 = icmp eq i64 %55, 1900
  br i1 %56, label %57, label %29, !llvm.loop !14

57:                                               ; preds = %54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16800) %5, i8 0, i64 16800, i1 false)
  br label %58

58:                                               ; preds = %83, %57
  %59 = phi i64 [ 0, %57 ], [ %85, %83 ]
  %60 = getelementptr inbounds [2100 x double], ptr %3, i64 %59
  br label %61

61:                                               ; preds = %61, %58
  %62 = phi i64 [ 0, %58 ], [ %81, %61 ]
  %63 = phi double [ 0.000000e+00, %58 ], [ %77, %61 ]
  %64 = getelementptr inbounds double, ptr %60, i64 %62
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds double, ptr %4, i64 %62
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = tail call double @llvm.fmuladd.f64(double %65, double %67, double %63)
  %69 = getelementptr inbounds double, ptr %5, i64 %62
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = tail call double @llvm.fmuladd.f64(double %65, double 0.000000e+00, double %70)
  store double %71, ptr %69, align 8, !tbaa !5
  %72 = or disjoint i64 %62, 1
  %73 = getelementptr inbounds double, ptr %60, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !5
  %75 = getelementptr inbounds double, ptr %4, i64 %72
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = tail call double @llvm.fmuladd.f64(double %74, double %76, double %68)
  %78 = getelementptr inbounds double, ptr %5, i64 %72
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = tail call double @llvm.fmuladd.f64(double %74, double 0.000000e+00, double %79)
  store double %80, ptr %78, align 8, !tbaa !5
  %81 = add nuw nsw i64 %62, 2
  %82 = icmp eq i64 %81, 2100
  br i1 %82, label %83, label %61, !llvm.loop !15

83:                                               ; preds = %61
  %84 = getelementptr inbounds double, ptr %6, i64 %59
  store double %77, ptr %84, align 8, !tbaa !5
  %85 = add nuw nsw i64 %59, 1
  %86 = icmp eq i64 %85, 1900
  br i1 %86, label %87, label %58, !llvm.loop !16

87:                                               ; preds = %83
  %88 = load ptr, ptr @stdout, align 8, !tbaa !17
  %89 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %88)
  %90 = load ptr, ptr @stdout, align 8, !tbaa !17
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %92

92:                                               ; preds = %100, %87
  %93 = phi i64 [ 0, %87 ], [ %105, %100 ]
  %94 = trunc i64 %93 to i16
  %95 = urem i16 %94, 20
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load ptr, ptr @stdout, align 8, !tbaa !17
  %99 = tail call i32 @fputc(i32 10, ptr %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load ptr, ptr @stdout, align 8, !tbaa !17
  %102 = getelementptr inbounds double, ptr %5, i64 %93
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.4, double noundef %103)
  %105 = add nuw nsw i64 %93, 1
  %106 = icmp eq i64 %105, 2100
  br i1 %106, label %107, label %92, !llvm.loop !19

107:                                              ; preds = %100
  %108 = load ptr, ptr @stdout, align 8, !tbaa !17
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %110 = load ptr, ptr @stdout, align 8, !tbaa !17
  %111 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %110)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef nonnull %5) #7
  tail call void @free(ptr noundef %6) #7
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
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
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !10}
