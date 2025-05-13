; ModuleID = 'src/PolyBenchC-4.2.1/bicg.c'
source_filename = "src/PolyBenchC-4.2.1/bicg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 3990000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8) #7
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8) #7
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #7
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
  br label %47

47:                                               ; preds = %66, %46
  %48 = phi i64 [ 0, %46 ], [ %67, %66 ]
  %49 = getelementptr inbounds double, ptr %5, i64 %48
  store double 0.000000e+00, ptr %49, align 8, !tbaa !5
  %50 = getelementptr inbounds double, ptr %7, i64 %48
  br label %51

51:                                               ; preds = %51, %47
  %52 = phi i64 [ 0, %47 ], [ %64, %51 ]
  %53 = getelementptr inbounds double, ptr %4, i64 %52
  %54 = load double, ptr %53, align 8, !tbaa !5
  %55 = load double, ptr %50, align 8, !tbaa !5
  %56 = getelementptr inbounds [1900 x double], ptr %3, i64 %48, i64 %52
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = tail call double @llvm.fmuladd.f64(double %55, double %57, double %54)
  store double %58, ptr %53, align 8, !tbaa !5
  %59 = load double, ptr %49, align 8, !tbaa !5
  %60 = load double, ptr %56, align 8, !tbaa !5
  %61 = getelementptr inbounds double, ptr %6, i64 %52
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = tail call double @llvm.fmuladd.f64(double %60, double %62, double %59)
  store double %63, ptr %49, align 8, !tbaa !5
  %64 = add nuw nsw i64 %52, 1
  %65 = icmp eq i64 %64, 1900
  br i1 %65, label %66, label %51, !llvm.loop !15

66:                                               ; preds = %51
  %67 = add nuw nsw i64 %48, 1
  %68 = icmp eq i64 %67, 2100
  br i1 %68, label %69, label %47, !llvm.loop !16

69:                                               ; preds = %66
  %70 = load ptr, ptr @stderr, align 8, !tbaa !17
  %71 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %70) #8
  %72 = load ptr, ptr @stderr, align 8, !tbaa !17
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %74

74:                                               ; preds = %82, %69
  %75 = phi i64 [ 0, %69 ], [ %87, %82 ]
  %76 = trunc i64 %75 to i16
  %77 = urem i16 %76, 20
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load ptr, ptr @stderr, align 8, !tbaa !17
  %81 = tail call i32 @fputc(i32 10, ptr %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load ptr, ptr @stderr, align 8, !tbaa !17
  %84 = getelementptr inbounds double, ptr %4, i64 %75
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.4, double noundef %85) #8
  %87 = add nuw nsw i64 %75, 1
  %88 = icmp eq i64 %87, 1900
  br i1 %88, label %89, label %74, !llvm.loop !19

89:                                               ; preds = %82
  %90 = load ptr, ptr @stderr, align 8, !tbaa !17
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #8
  %92 = load ptr, ptr @stderr, align 8, !tbaa !17
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #8
  br label %94

94:                                               ; preds = %102, %89
  %95 = phi i64 [ 0, %89 ], [ %107, %102 ]
  %96 = trunc i64 %95 to i16
  %97 = urem i16 %96, 20
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load ptr, ptr @stderr, align 8, !tbaa !17
  %101 = tail call i32 @fputc(i32 10, ptr %100)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load ptr, ptr @stderr, align 8, !tbaa !17
  %104 = getelementptr inbounds double, ptr %5, i64 %95
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.4, double noundef %105) #8
  %107 = add nuw nsw i64 %95, 1
  %108 = icmp eq i64 %107, 2100
  br i1 %108, label %109, label %94, !llvm.loop !20

109:                                              ; preds = %102
  %110 = load ptr, ptr @stderr, align 8, !tbaa !17
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #8
  %112 = load ptr, ptr @stderr, align 8, !tbaa !17
  %113 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %112) #8
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef nonnull %5) #7
  tail call void @free(ptr noundef %6) #7
  tail call void @free(ptr noundef %7) #7
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
attributes #8 = { cold }

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
