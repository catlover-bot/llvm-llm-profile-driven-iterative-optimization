; ModuleID = 'outputs/src_PolyBenchC-4.2.1_bicg_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_bicg_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 3990000, i32 noundef 8) #8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8) #8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8) #8
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #8
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %19, %8 ]
  %10 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %20, %8 ]
  %11 = sitofp <2 x i32> %10 to <2 x double>
  %12 = fdiv <2 x double> %11, <double 1.900000e+03, double 1.900000e+03>
  %13 = getelementptr inbounds double, ptr %6, i64 %9
  store <2 x double> %12, ptr %13, align 8, !tbaa !5
  %14 = or disjoint i64 %9, 2
  %15 = add <2 x i32> %10, <i32 2, i32 2>
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fdiv <2 x double> %16, <double 1.900000e+03, double 1.900000e+03>
  %18 = getelementptr inbounds double, ptr %6, i64 %14
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = add nuw nsw i64 %9, 4
  %20 = add <2 x i32> %10, <i32 4, i32 4>
  %21 = icmp eq i64 %19, 1900
  br i1 %21, label %22, label %8, !llvm.loop !9

22:                                               ; preds = %8, %43
  %23 = phi i64 [ %44, %43 ], [ 0, %8 ]
  %24 = trunc i64 %23 to i32
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 2.100000e+03
  %27 = getelementptr inbounds double, ptr %7, i64 %23
  store double %26, ptr %27, align 8, !tbaa !5
  %28 = insertelement <2 x i64> poison, i64 %23, i64 0
  %29 = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %30

30:                                               ; preds = %30, %22
  %31 = phi i64 [ 0, %22 ], [ %40, %30 ]
  %32 = phi <2 x i64> [ <i64 0, i64 1>, %22 ], [ %41, %30 ]
  %33 = add nuw nsw <2 x i64> %32, <i64 1, i64 1>
  %34 = mul nuw nsw <2 x i64> %33, %29
  %35 = trunc <2 x i64> %34 to <2 x i32>
  %36 = urem <2 x i32> %35, <i32 2100, i32 2100>
  %37 = sitofp <2 x i32> %36 to <2 x double>
  %38 = fdiv <2 x double> %37, <double 2.100000e+03, double 2.100000e+03>
  %39 = getelementptr inbounds [1900 x double], ptr %3, i64 %23, i64 %31
  store <2 x double> %38, ptr %39, align 8, !tbaa !5
  %40 = add nuw i64 %31, 2
  %41 = add <2 x i64> %32, <i64 2, i64 2>
  %42 = icmp eq i64 %40, 1900
  br i1 %42, label %43, label %30, !llvm.loop !13

43:                                               ; preds = %30
  %44 = add nuw nsw i64 %23, 1
  %45 = icmp eq i64 %44, 2100
  br i1 %45, label %46, label %22, !llvm.loop !14

46:                                               ; preds = %43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15200) %4, i8 0, i64 15200, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16800) %5, i8 0, i64 16800, i1 false), !tbaa !5
  br label %47

47:                                               ; preds = %87, %46
  %48 = phi i64 [ 0, %46 ], [ %89, %87 ]
  %49 = getelementptr inbounds double, ptr %7, i64 %48
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi i64 [ 0, %47 ], [ %85, %50 ]
  %52 = phi double [ 0.000000e+00, %47 ], [ %84, %50 ]
  %53 = getelementptr inbounds [1900 x double], ptr %3, i64 %48, i64 %51
  %54 = or disjoint i64 %51, 1
  %55 = or disjoint i64 %51, 2
  %56 = getelementptr inbounds [1900 x double], ptr %3, i64 %48, i64 %55
  %57 = or disjoint i64 %51, 3
  %58 = load double, ptr %49, align 8, !tbaa !5
  %59 = getelementptr inbounds double, ptr %4, i64 %51
  %60 = load <2 x double>, ptr %53, align 8, !tbaa !5
  %61 = load <2 x double>, ptr %59, align 8, !tbaa !5
  %62 = insertelement <2 x double> poison, double %58, i64 0
  %63 = shufflevector <2 x double> %62, <2 x double> poison, <2 x i32> zeroinitializer
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %63, <2 x double> %60, <2 x double> %61)
  %65 = getelementptr inbounds double, ptr %4, i64 %55
  %66 = load <2 x double>, ptr %56, align 8, !tbaa !5
  store <2 x double> %64, ptr %59, align 8, !tbaa !5
  %67 = load <2 x double>, ptr %65, align 8, !tbaa !5
  %68 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %63, <2 x double> %66, <2 x double> %67)
  store <2 x double> %68, ptr %65, align 8, !tbaa !5
  %69 = getelementptr inbounds double, ptr %6, i64 %51
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = extractelement <2 x double> %60, i64 0
  %72 = tail call double @llvm.fmuladd.f64(double %71, double %70, double %52)
  %73 = getelementptr inbounds double, ptr %6, i64 %54
  %74 = load double, ptr %73, align 8, !tbaa !5
  %75 = extractelement <2 x double> %60, i64 1
  %76 = tail call double @llvm.fmuladd.f64(double %75, double %74, double %72)
  %77 = getelementptr inbounds double, ptr %6, i64 %55
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = extractelement <2 x double> %66, i64 0
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %78, double %76)
  %81 = getelementptr inbounds double, ptr %6, i64 %57
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = extractelement <2 x double> %66, i64 1
  %84 = tail call double @llvm.fmuladd.f64(double %83, double %82, double %80)
  %85 = add nuw nsw i64 %51, 4
  %86 = icmp ult i64 %51, 1896
  br i1 %86, label %50, label %87, !llvm.loop !15

87:                                               ; preds = %50
  %88 = getelementptr inbounds double, ptr %5, i64 %48
  store double %84, ptr %88, align 8, !tbaa !5
  %89 = add nuw nsw i64 %48, 1
  %90 = icmp eq i64 %89, 2100
  br i1 %90, label %91, label %47, !llvm.loop !16

91:                                               ; preds = %87
  %92 = load ptr, ptr @stdout, align 8, !tbaa !17
  %93 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %92)
  %94 = load ptr, ptr @stdout, align 8, !tbaa !17
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %96

96:                                               ; preds = %104, %91
  %97 = phi i64 [ 0, %91 ], [ %109, %104 ]
  %98 = trunc i64 %97 to i16
  %99 = urem i16 %98, 20
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load ptr, ptr @stdout, align 8, !tbaa !17
  %103 = tail call i32 @fputc(i32 10, ptr %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load ptr, ptr @stdout, align 8, !tbaa !17
  %106 = getelementptr inbounds double, ptr %4, i64 %97
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.4, double noundef %107)
  %109 = add nuw nsw i64 %97, 1
  %110 = icmp eq i64 %109, 1900
  br i1 %110, label %111, label %96, !llvm.loop !19

111:                                              ; preds = %104
  %112 = load ptr, ptr @stdout, align 8, !tbaa !17
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %114 = load ptr, ptr @stdout, align 8, !tbaa !17
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6)
  br label %116

116:                                              ; preds = %124, %111
  %117 = phi i64 [ 0, %111 ], [ %129, %124 ]
  %118 = trunc i64 %117 to i16
  %119 = urem i16 %118, 20
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load ptr, ptr @stdout, align 8, !tbaa !17
  %123 = tail call i32 @fputc(i32 10, ptr %122)
  br label %124

124:                                              ; preds = %121, %116
  %125 = load ptr, ptr @stdout, align 8, !tbaa !17
  %126 = getelementptr inbounds double, ptr %5, i64 %117
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.4, double noundef %127)
  %129 = add nuw nsw i64 %117, 1
  %130 = icmp eq i64 %129, 2100
  br i1 %130, label %131, label %116, !llvm.loop !20

131:                                              ; preds = %124
  %132 = load ptr, ptr @stdout, align 8, !tbaa !17
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %134 = load ptr, ptr @stdout, align 8, !tbaa !17
  %135 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %134)
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %4) #8
  tail call void @free(ptr noundef nonnull %5) #8
  tail call void @free(ptr noundef %6) #8
  tail call void @free(ptr noundef %7) #8
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!20 = distinct !{!20, !10}
