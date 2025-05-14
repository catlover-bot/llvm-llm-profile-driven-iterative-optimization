; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gesummv_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gesummv_opt_3.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8) #7
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8) #7
  %6 = ptrtoint ptr %5 to i64
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 1300, i32 noundef 8) #7
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 1300, i32 noundef 8) #7
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 1300, i32 noundef 8) #7
  %10 = sub i64 %6, %4
  %11 = icmp ult i64 %10, 16
  br label %12

12:                                               ; preds = %55, %2
  %13 = phi i64 [ 0, %2 ], [ %56, %55 ]
  %14 = trunc i64 %13 to i32
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 1.300000e+03
  %17 = getelementptr inbounds double, ptr %8, i64 %13
  store double %16, ptr %17, align 8, !tbaa !5
  br i1 %11, label %39, label %18

18:                                               ; preds = %12
  %19 = insertelement <2 x i64> poison, i64 %13, i64 0
  %20 = shufflevector <2 x i64> %19, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i64 [ 0, %18 ], [ %36, %21 ]
  %23 = phi <2 x i64> [ <i64 0, i64 1>, %18 ], [ %37, %21 ]
  %24 = mul nuw nsw <2 x i64> %23, %20
  %25 = trunc <2 x i64> %24 to <2 x i32>
  %26 = add <2 x i32> %25, <i32 1, i32 1>
  %27 = urem <2 x i32> %26, <i32 1300, i32 1300>
  %28 = sitofp <2 x i32> %27 to <2 x double>
  %29 = fdiv <2 x double> %28, <double 1.300000e+03, double 1.300000e+03>
  %30 = getelementptr inbounds [1300 x double], ptr %3, i64 %13, i64 %22
  store <2 x double> %29, ptr %30, align 8, !tbaa !5
  %31 = add <2 x i32> %25, <i32 2, i32 2>
  %32 = urem <2 x i32> %31, <i32 1300, i32 1300>
  %33 = sitofp <2 x i32> %32 to <2 x double>
  %34 = fdiv <2 x double> %33, <double 1.300000e+03, double 1.300000e+03>
  %35 = getelementptr inbounds [1300 x double], ptr %5, i64 %13, i64 %22
  store <2 x double> %34, ptr %35, align 8, !tbaa !5
  %36 = add nuw i64 %22, 2
  %37 = add <2 x i64> %23, <i64 2, i64 2>
  %38 = icmp eq i64 %36, 1300
  br i1 %38, label %55, label %21, !llvm.loop !9

39:                                               ; preds = %12, %39
  %40 = phi i64 [ %53, %39 ], [ 0, %12 ]
  %41 = mul nuw nsw i64 %40, %13
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, 1
  %44 = urem i32 %43, 1300
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.300000e+03
  %47 = getelementptr inbounds [1300 x double], ptr %3, i64 %13, i64 %40
  store double %46, ptr %47, align 8, !tbaa !5
  %48 = add i32 %42, 2
  %49 = urem i32 %48, 1300
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %50, 1.300000e+03
  %52 = getelementptr inbounds [1300 x double], ptr %5, i64 %13, i64 %40
  store double %51, ptr %52, align 8, !tbaa !5
  %53 = add nuw nsw i64 %40, 1
  %54 = icmp eq i64 %53, 1300
  br i1 %54, label %55, label %39, !llvm.loop !13

55:                                               ; preds = %21, %39
  %56 = add nuw nsw i64 %13, 1
  %57 = icmp eq i64 %56, 1300
  br i1 %57, label %58, label %12, !llvm.loop !14

58:                                               ; preds = %55, %88
  %59 = phi i64 [ %94, %88 ], [ 0, %55 ]
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i64 [ 0, %58 ], [ %86, %60 ]
  %62 = phi <2 x double> [ zeroinitializer, %58 ], [ %85, %60 ]
  %63 = getelementptr inbounds double, ptr %8, i64 %61
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds [1300 x double], ptr %3, i64 %59, i64 %61
  %66 = load double, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds [1300 x double], ptr %5, i64 %59, i64 %61
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = insertelement <2 x double> poison, double %68, i64 0
  %70 = insertelement <2 x double> %69, double %66, i64 1
  %71 = insertelement <2 x double> poison, double %64, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %70, <2 x double> %72, <2 x double> %62)
  %74 = or disjoint i64 %61, 1
  %75 = getelementptr inbounds double, ptr %8, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = getelementptr inbounds [1300 x double], ptr %3, i64 %59, i64 %74
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = getelementptr inbounds [1300 x double], ptr %5, i64 %59, i64 %74
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = insertelement <2 x double> poison, double %80, i64 0
  %82 = insertelement <2 x double> %81, double %78, i64 1
  %83 = insertelement <2 x double> poison, double %76, i64 0
  %84 = shufflevector <2 x double> %83, <2 x double> poison, <2 x i32> zeroinitializer
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %82, <2 x double> %84, <2 x double> %73)
  %86 = add nuw nsw i64 %61, 2
  %87 = icmp eq i64 %86, 1300
  br i1 %87, label %88, label %60, !llvm.loop !15

88:                                               ; preds = %60
  %89 = extractelement <2 x double> %85, i64 0
  %90 = fmul double %89, 1.200000e+00
  %91 = extractelement <2 x double> %85, i64 1
  %92 = tail call double @llvm.fmuladd.f64(double %91, double 1.500000e+00, double %90)
  %93 = getelementptr inbounds double, ptr %9, i64 %59
  store double %92, ptr %93, align 8, !tbaa !5
  %94 = add nuw nsw i64 %59, 1
  %95 = icmp eq i64 %94, 1300
  br i1 %95, label %96, label %58, !llvm.loop !16

96:                                               ; preds = %88
  %97 = load ptr, ptr @stdout, align 8, !tbaa !17
  %98 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %97)
  %99 = load ptr, ptr @stdout, align 8, !tbaa !17
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %101

101:                                              ; preds = %109, %96
  %102 = phi i64 [ 0, %96 ], [ %114, %109 ]
  %103 = trunc i64 %102 to i16
  %104 = urem i16 %103, 20
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load ptr, ptr @stdout, align 8, !tbaa !17
  %108 = tail call i32 @fputc(i32 10, ptr %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load ptr, ptr @stdout, align 8, !tbaa !17
  %111 = getelementptr inbounds double, ptr %9, i64 %102
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.4, double noundef %112)
  %114 = add nuw nsw i64 %102, 1
  %115 = icmp eq i64 %114, 1300
  br i1 %115, label %116, label %101, !llvm.loop !19

116:                                              ; preds = %109
  %117 = load ptr, ptr @stdout, align 8, !tbaa !17
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %119 = load ptr, ptr @stdout, align 8, !tbaa !17
  %120 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %119)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %7) #7
  tail call void @free(ptr noundef %8) #7
  tail call void @free(ptr noundef nonnull %9) #7
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !10}
