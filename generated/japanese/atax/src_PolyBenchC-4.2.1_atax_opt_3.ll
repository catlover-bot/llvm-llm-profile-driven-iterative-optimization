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

29:                                               ; preds = %9, %53
  %30 = phi i64 [ %54, %53 ], [ 0, %9 ]
  %31 = insertelement <2 x i64> poison, i64 %30, i64 0
  %32 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %33, %29
  %34 = phi i64 [ 0, %29 ], [ %50, %33 ]
  %35 = phi <2 x i64> [ <i64 0, i64 1>, %29 ], [ %51, %33 ]
  %36 = add nuw nsw <2 x i64> %35, %32
  %37 = trunc <2 x i64> %36 to <2 x i32>
  %38 = urem <2 x i32> %37, <i32 2100, i32 2100>
  %39 = sitofp <2 x i32> %38 to <2 x double>
  %40 = fdiv <2 x double> %39, <double 9.500000e+03, double 9.500000e+03>
  %41 = getelementptr inbounds [2100 x double], ptr %3, i64 %30, i64 %34
  store <2 x double> %40, ptr %41, align 8, !tbaa !5
  %42 = or disjoint i64 %34, 2
  %43 = add <2 x i64> %35, <i64 2, i64 2>
  %44 = add nuw nsw <2 x i64> %43, %32
  %45 = trunc <2 x i64> %44 to <2 x i32>
  %46 = urem <2 x i32> %45, <i32 2100, i32 2100>
  %47 = sitofp <2 x i32> %46 to <2 x double>
  %48 = fdiv <2 x double> %47, <double 9.500000e+03, double 9.500000e+03>
  %49 = getelementptr inbounds [2100 x double], ptr %3, i64 %30, i64 %42
  store <2 x double> %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %34, 4
  %51 = add <2 x i64> %35, <i64 4, i64 4>
  %52 = icmp eq i64 %50, 2100
  br i1 %52, label %53, label %33, !llvm.loop !13

53:                                               ; preds = %33
  %54 = add nuw nsw i64 %30, 1
  %55 = icmp eq i64 %54, 1900
  br i1 %55, label %56, label %29, !llvm.loop !14

56:                                               ; preds = %53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16800) %5, i8 0, i64 16800, i1 false), !tbaa !5
  br label %57

57:                                               ; preds = %87, %56
  %58 = phi i64 [ 0, %56 ], [ %89, %87 ]
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i64 [ 0, %57 ], [ %85, %59 ]
  %61 = phi double [ 0.000000e+00, %57 ], [ %84, %59 ]
  %62 = getelementptr inbounds [2100 x double], ptr %3, i64 %58, i64 %60
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds double, ptr %4, i64 %60
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = tail call double @llvm.fmuladd.f64(double %63, double %65, double %61)
  %67 = or disjoint i64 %60, 1
  %68 = getelementptr inbounds [2100 x double], ptr %3, i64 %58, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds double, ptr %4, i64 %67
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = tail call double @llvm.fmuladd.f64(double %69, double %71, double %66)
  %73 = or disjoint i64 %60, 2
  %74 = getelementptr inbounds [2100 x double], ptr %3, i64 %58, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds double, ptr %4, i64 %73
  %77 = load double, ptr %76, align 8, !tbaa !5
  %78 = tail call double @llvm.fmuladd.f64(double %75, double %77, double %72)
  %79 = or disjoint i64 %60, 3
  %80 = getelementptr inbounds [2100 x double], ptr %3, i64 %58, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds double, ptr %4, i64 %79
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = tail call double @llvm.fmuladd.f64(double %81, double %83, double %78)
  %85 = add nuw nsw i64 %60, 4
  %86 = icmp eq i64 %85, 2100
  br i1 %86, label %87, label %59, !llvm.loop !15

87:                                               ; preds = %59
  %88 = getelementptr inbounds double, ptr %6, i64 %58
  store double %84, ptr %88, align 8, !tbaa !5
  %89 = add nuw nsw i64 %58, 1
  %90 = icmp eq i64 %89, 1900
  br i1 %90, label %91, label %57, !llvm.loop !16

91:                                               ; preds = %87, %111
  %92 = phi i64 [ %112, %111 ], [ 0, %87 ]
  %93 = getelementptr inbounds double, ptr %5, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !5
  br label %95

95:                                               ; preds = %95, %91
  %96 = phi i64 [ 0, %91 ], [ %109, %95 ]
  %97 = phi double [ %94, %91 ], [ %108, %95 ]
  %98 = getelementptr inbounds [2100 x double], ptr %3, i64 %96, i64 %92
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = getelementptr inbounds double, ptr %6, i64 %96
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = tail call double @llvm.fmuladd.f64(double %99, double %101, double %97)
  store double %102, ptr %93, align 8, !tbaa !5
  %103 = or disjoint i64 %96, 1
  %104 = getelementptr inbounds [2100 x double], ptr %3, i64 %103, i64 %92
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds double, ptr %6, i64 %103
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = tail call double @llvm.fmuladd.f64(double %105, double %107, double %102)
  store double %108, ptr %93, align 8, !tbaa !5
  %109 = add nuw nsw i64 %96, 2
  %110 = icmp eq i64 %109, 1900
  br i1 %110, label %111, label %95, !llvm.loop !17

111:                                              ; preds = %95
  %112 = add nuw nsw i64 %92, 1
  %113 = icmp eq i64 %112, 2100
  br i1 %113, label %114, label %91, !llvm.loop !18

114:                                              ; preds = %111
  %115 = load ptr, ptr @stdout, align 8, !tbaa !19
  %116 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %115)
  %117 = load ptr, ptr @stdout, align 8, !tbaa !19
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %119

119:                                              ; preds = %127, %114
  %120 = phi i64 [ 0, %114 ], [ %132, %127 ]
  %121 = trunc i64 %120 to i16
  %122 = urem i16 %121, 20
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load ptr, ptr @stdout, align 8, !tbaa !19
  %126 = tail call i32 @fputc(i32 10, ptr %125)
  br label %127

127:                                              ; preds = %124, %119
  %128 = load ptr, ptr @stdout, align 8, !tbaa !19
  %129 = getelementptr inbounds double, ptr %5, i64 %120
  %130 = load double, ptr %129, align 8, !tbaa !5
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.4, double noundef %130)
  %132 = add nuw nsw i64 %120, 1
  %133 = icmp eq i64 %132, 2100
  br i1 %133, label %134, label %119, !llvm.loop !21

134:                                              ; preds = %127
  %135 = load ptr, ptr @stdout, align 8, !tbaa !19
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %137 = load ptr, ptr @stdout, align 8, !tbaa !19
  %138 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %137)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef nonnull %5) #7
  tail call void @free(ptr noundef %6) #7
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = distinct !{!21, !10}
