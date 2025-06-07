; ModuleID = 'outputs/src_PolyBenchC-4.2.1_trisolv_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_trisolv_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  br label %6

6:                                                ; preds = %46, %2
  %7 = phi i64 [ 0, %2 ], [ %47, %46 ]
  %8 = phi i64 [ 1, %2 ], [ %48, %46 ]
  %9 = getelementptr inbounds double, ptr %4, i64 %7
  store double -9.990000e+02, ptr %9, align 8, !tbaa !5
  %10 = trunc i64 %7 to i32
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds double, ptr %5, i64 %7
  store double %11, ptr %12, align 8, !tbaa !5
  %13 = add i32 %10, 2001
  %14 = sitofp i32 %13 to double
  %15 = getelementptr inbounds [2000 x double], ptr %3, i64 %7
  %16 = icmp ult i64 %8, 2
  br i1 %16, label %34, label %17

17:                                               ; preds = %6
  %18 = and i64 %8, 9223372036854775806
  %19 = insertelement <2 x double> poison, double %14, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i64 [ 0, %17 ], [ %29, %21 ]
  %23 = phi <2 x i32> [ <i32 0, i32 1>, %17 ], [ %30, %21 ]
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = fsub <2 x double> %20, %24
  %26 = fmul <2 x double> %25, <double 2.000000e+00, double 2.000000e+00>
  %27 = fdiv <2 x double> %26, <double 2.000000e+03, double 2.000000e+03>
  %28 = getelementptr inbounds double, ptr %15, i64 %22
  store <2 x double> %27, ptr %28, align 8, !tbaa !5
  %29 = add nuw i64 %22, 2
  %30 = add <2 x i32> %23, <i32 2, i32 2>
  %31 = icmp eq i64 %29, %18
  br i1 %31, label %32, label %21, !llvm.loop !9

32:                                               ; preds = %21
  %33 = icmp eq i64 %8, %18
  br i1 %33, label %46, label %34

34:                                               ; preds = %6, %32
  %35 = phi i64 [ 0, %6 ], [ %18, %32 ]
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ %44, %36 ], [ %35, %34 ]
  %38 = trunc i64 %37 to i32
  %39 = sitofp i32 %38 to double
  %40 = fsub double %14, %39
  %41 = fmul double %40, 2.000000e+00
  %42 = fdiv double %41, 2.000000e+03
  %43 = getelementptr inbounds double, ptr %15, i64 %37
  store double %42, ptr %43, align 8, !tbaa !5
  %44 = add nuw nsw i64 %37, 1
  %45 = icmp eq i64 %44, %8
  br i1 %45, label %46, label %36, !llvm.loop !13

46:                                               ; preds = %36, %32
  %47 = add nuw nsw i64 %7, 1
  %48 = add nuw nsw i64 %8, 1
  %49 = icmp eq i64 %47, 2000
  br i1 %49, label %50, label %6, !llvm.loop !14

50:                                               ; preds = %46, %113
  %51 = phi i64 [ %119, %113 ], [ 0, %46 ]
  %52 = getelementptr inbounds double, ptr %5, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds [2000 x double], ptr %3, i64 %51
  %55 = icmp eq i64 %51, 0
  br i1 %55, label %113, label %56

56:                                               ; preds = %50
  %57 = and i64 %51, 3
  %58 = icmp ult i64 %51, 4
  br i1 %58, label %95, label %59

59:                                               ; preds = %56
  %60 = and i64 %51, 9223372036854775804
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i64 [ 0, %59 ], [ %92, %61 ]
  %63 = phi double [ %53, %59 ], [ %91, %61 ]
  %64 = phi i64 [ 0, %59 ], [ %93, %61 ]
  %65 = getelementptr inbounds double, ptr %54, i64 %62
  %66 = load double, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds double, ptr %4, i64 %62
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = fneg double %66
  %70 = tail call double @llvm.fmuladd.f64(double %69, double %68, double %63)
  %71 = or disjoint i64 %62, 1
  %72 = getelementptr inbounds double, ptr %54, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds double, ptr %4, i64 %71
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = fneg double %73
  %77 = tail call double @llvm.fmuladd.f64(double %76, double %75, double %70)
  %78 = or disjoint i64 %62, 2
  %79 = getelementptr inbounds double, ptr %54, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = getelementptr inbounds double, ptr %4, i64 %78
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = fneg double %80
  %84 = tail call double @llvm.fmuladd.f64(double %83, double %82, double %77)
  %85 = or disjoint i64 %62, 3
  %86 = getelementptr inbounds double, ptr %54, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = getelementptr inbounds double, ptr %4, i64 %85
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = fneg double %87
  %91 = tail call double @llvm.fmuladd.f64(double %90, double %89, double %84)
  %92 = add nuw nsw i64 %62, 4
  %93 = add i64 %64, 4
  %94 = icmp eq i64 %93, %60
  br i1 %94, label %95, label %61, !llvm.loop !15

95:                                               ; preds = %61, %56
  %96 = phi double [ undef, %56 ], [ %91, %61 ]
  %97 = phi i64 [ 0, %56 ], [ %92, %61 ]
  %98 = phi double [ %53, %56 ], [ %91, %61 ]
  %99 = icmp eq i64 %57, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %95, %100
  %101 = phi i64 [ %110, %100 ], [ %97, %95 ]
  %102 = phi double [ %109, %100 ], [ %98, %95 ]
  %103 = phi i64 [ %111, %100 ], [ 0, %95 ]
  %104 = getelementptr inbounds double, ptr %54, i64 %101
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds double, ptr %4, i64 %101
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = fneg double %105
  %109 = tail call double @llvm.fmuladd.f64(double %108, double %107, double %102)
  %110 = add nuw nsw i64 %101, 1
  %111 = add i64 %103, 1
  %112 = icmp eq i64 %111, %57
  br i1 %112, label %113, label %100, !llvm.loop !16

113:                                              ; preds = %95, %100, %50
  %114 = phi double [ %53, %50 ], [ %96, %95 ], [ %109, %100 ]
  %115 = getelementptr inbounds double, ptr %54, i64 %51
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = fdiv double %114, %116
  %118 = getelementptr inbounds double, ptr %4, i64 %51
  store double %117, ptr %118, align 8, !tbaa !5
  %119 = add nuw nsw i64 %51, 1
  %120 = icmp eq i64 %119, 2000
  br i1 %120, label %121, label %50, !llvm.loop !18

121:                                              ; preds = %113
  %122 = load ptr, ptr @stdout, align 8, !tbaa !19
  %123 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %122)
  %124 = load ptr, ptr @stdout, align 8, !tbaa !19
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %126

126:                                              ; preds = %138, %121
  %127 = phi i64 [ 0, %121 ], [ %139, %138 ]
  %128 = load ptr, ptr @stdout, align 8, !tbaa !19
  %129 = getelementptr inbounds double, ptr %4, i64 %127
  %130 = load double, ptr %129, align 8, !tbaa !5
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.3, double noundef %130)
  %132 = trunc i64 %127 to i16
  %133 = urem i16 %132, 20
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load ptr, ptr @stdout, align 8, !tbaa !19
  %137 = tail call i32 @fputc(i32 10, ptr %136)
  br label %138

138:                                              ; preds = %135, %126
  %139 = add nuw nsw i64 %127, 1
  %140 = icmp eq i64 %139, 2000
  br i1 %140, label %141, label %126, !llvm.loop !21

141:                                              ; preds = %138
  %142 = load ptr, ptr @stdout, align 8, !tbaa !19
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %144 = load ptr, ptr @stdout, align 8, !tbaa !19
  %145 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %144)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef nonnull %4) #6
  tail call void @free(ptr noundef %5) #6
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
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !10}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = distinct !{!21, !10}
