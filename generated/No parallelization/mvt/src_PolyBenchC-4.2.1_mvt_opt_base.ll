; ModuleID = 'src/PolyBenchC-4.2.1/mvt.c'
source_filename = "src/PolyBenchC-4.2.1/mvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  br label %8

8:                                                ; preds = %47, %2
  %9 = phi i64 [ 0, %2 ], [ %14, %47 ]
  %10 = trunc i64 %9 to i32
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %11, 2.000000e+03
  %13 = getelementptr inbounds double, ptr %4, i64 %9
  store double %12, ptr %13, align 8, !tbaa !5
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 2000
  %16 = trunc i64 %14 to i32
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 2.000000e+03
  %19 = select i1 %15, double 0.000000e+00, double %18
  %20 = getelementptr inbounds double, ptr %5, i64 %9
  store double %19, ptr %20, align 8, !tbaa !5
  %21 = icmp ult i64 %9, 1997
  %22 = select i1 %21, i32 3, i32 -1997
  %23 = add nsw i32 %22, %10
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 2.000000e+03
  %26 = getelementptr inbounds double, ptr %6, i64 %9
  store double %25, ptr %26, align 8, !tbaa !5
  %27 = icmp ult i64 %9, 1996
  %28 = select i1 %27, i32 4, i32 -1996
  %29 = add nsw i32 %28, %10
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 2.000000e+03
  %32 = getelementptr inbounds double, ptr %7, i64 %9
  store double %31, ptr %32, align 8, !tbaa !5
  %33 = insertelement <2 x i64> poison, i64 %9, i64 0
  %34 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %35

35:                                               ; preds = %35, %8
  %36 = phi i64 [ 0, %8 ], [ %44, %35 ]
  %37 = phi <2 x i64> [ <i64 0, i64 1>, %8 ], [ %45, %35 ]
  %38 = mul nuw nsw <2 x i64> %37, %34
  %39 = trunc <2 x i64> %38 to <2 x i32>
  %40 = urem <2 x i32> %39, <i32 2000, i32 2000>
  %41 = sitofp <2 x i32> %40 to <2 x double>
  %42 = fdiv <2 x double> %41, <double 2.000000e+03, double 2.000000e+03>
  %43 = getelementptr inbounds [2000 x double], ptr %3, i64 %9, i64 %36
  store <2 x double> %42, ptr %43, align 8, !tbaa !5
  %44 = add nuw i64 %36, 2
  %45 = add <2 x i64> %37, <i64 2, i64 2>
  %46 = icmp eq i64 %44, 2000
  br i1 %46, label %47, label %35, !llvm.loop !9

47:                                               ; preds = %35
  br i1 %15, label %48, label %8, !llvm.loop !13

48:                                               ; preds = %47, %68
  %49 = phi i64 [ %69, %68 ], [ 0, %47 ]
  %50 = getelementptr inbounds double, ptr %4, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !5
  br label %52

52:                                               ; preds = %52, %48
  %53 = phi i64 [ 0, %48 ], [ %66, %52 ]
  %54 = phi double [ %51, %48 ], [ %65, %52 ]
  %55 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %53
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds double, ptr %6, i64 %53
  %58 = load double, ptr %57, align 8, !tbaa !5
  %59 = tail call double @llvm.fmuladd.f64(double %56, double %58, double %54)
  store double %59, ptr %50, align 8, !tbaa !5
  %60 = or disjoint i64 %53, 1
  %61 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds double, ptr %6, i64 %60
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = tail call double @llvm.fmuladd.f64(double %62, double %64, double %59)
  store double %65, ptr %50, align 8, !tbaa !5
  %66 = add nuw nsw i64 %53, 2
  %67 = icmp eq i64 %66, 2000
  br i1 %67, label %68, label %52, !llvm.loop !14

68:                                               ; preds = %52
  %69 = add nuw nsw i64 %49, 1
  %70 = icmp eq i64 %69, 2000
  br i1 %70, label %71, label %48, !llvm.loop !15

71:                                               ; preds = %68, %91
  %72 = phi i64 [ %92, %91 ], [ 0, %68 ]
  %73 = getelementptr inbounds double, ptr %5, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !5
  br label %75

75:                                               ; preds = %75, %71
  %76 = phi i64 [ 0, %71 ], [ %89, %75 ]
  %77 = phi double [ %74, %71 ], [ %88, %75 ]
  %78 = getelementptr inbounds [2000 x double], ptr %3, i64 %76, i64 %72
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds double, ptr %7, i64 %76
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = tail call double @llvm.fmuladd.f64(double %79, double %81, double %77)
  store double %82, ptr %73, align 8, !tbaa !5
  %83 = or disjoint i64 %76, 1
  %84 = getelementptr inbounds [2000 x double], ptr %3, i64 %83, i64 %72
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = getelementptr inbounds double, ptr %7, i64 %83
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = tail call double @llvm.fmuladd.f64(double %85, double %87, double %82)
  store double %88, ptr %73, align 8, !tbaa !5
  %89 = add nuw nsw i64 %76, 2
  %90 = icmp eq i64 %89, 2000
  br i1 %90, label %91, label %75, !llvm.loop !16

91:                                               ; preds = %75
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 2000
  br i1 %93, label %94, label %71, !llvm.loop !17

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !tbaa !18
  %96 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %95) #7
  %97 = load ptr, ptr @stderr, align 8, !tbaa !18
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  br label %99

99:                                               ; preds = %107, %94
  %100 = phi i64 [ 0, %94 ], [ %112, %107 ]
  %101 = trunc i64 %100 to i16
  %102 = urem i16 %101, 20
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load ptr, ptr @stderr, align 8, !tbaa !18
  %106 = tail call i32 @fputc(i32 10, ptr %105)
  br label %107

107:                                              ; preds = %104, %99
  %108 = load ptr, ptr @stderr, align 8, !tbaa !18
  %109 = getelementptr inbounds double, ptr %4, i64 %100
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.4, double noundef %110) #7
  %112 = add nuw nsw i64 %100, 1
  %113 = icmp eq i64 %112, 2000
  br i1 %113, label %114, label %99, !llvm.loop !20

114:                                              ; preds = %107
  %115 = load ptr, ptr @stderr, align 8, !tbaa !18
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #7
  %117 = load ptr, ptr @stderr, align 8, !tbaa !18
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #7
  br label %119

119:                                              ; preds = %127, %114
  %120 = phi i64 [ 0, %114 ], [ %132, %127 ]
  %121 = trunc i64 %120 to i16
  %122 = urem i16 %121, 20
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load ptr, ptr @stderr, align 8, !tbaa !18
  %126 = tail call i32 @fputc(i32 10, ptr %125)
  br label %127

127:                                              ; preds = %124, %119
  %128 = load ptr, ptr @stderr, align 8, !tbaa !18
  %129 = getelementptr inbounds double, ptr %5, i64 %120
  %130 = load double, ptr %129, align 8, !tbaa !5
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.4, double noundef %130) #7
  %132 = add nuw nsw i64 %120, 1
  %133 = icmp eq i64 %132, 2000
  br i1 %133, label %134, label %119, !llvm.loop !21

134:                                              ; preds = %127
  %135 = load ptr, ptr @stderr, align 8, !tbaa !18
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  %137 = load ptr, ptr @stderr, align 8, !tbaa !18
  %138 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %137) #7
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef nonnull %5) #6
  tail call void @free(ptr noundef %6) #6
  tail call void @free(ptr noundef %7) #6
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
attributes #7 = { cold }

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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
