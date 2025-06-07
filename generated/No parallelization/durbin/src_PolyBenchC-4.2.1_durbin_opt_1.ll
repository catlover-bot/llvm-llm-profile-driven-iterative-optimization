; ModuleID = 'outputs/src_PolyBenchC-4.2.1_durbin_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_durbin_opt_1.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %21, %5 ]
  %7 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %22, %5 ]
  %8 = sub <2 x i32> <i32 2001, i32 2001>, %7
  %9 = sub <2 x i32> <i32 1999, i32 1999>, %7
  %10 = sitofp <2 x i32> %8 to <2 x double>
  %11 = sitofp <2 x i32> %9 to <2 x double>
  %12 = getelementptr inbounds double, ptr %3, i64 %6
  %13 = getelementptr inbounds double, ptr %12, i64 2
  store <2 x double> %10, ptr %12, align 8, !tbaa !5
  store <2 x double> %11, ptr %13, align 8, !tbaa !5
  %14 = or disjoint i64 %6, 4
  %15 = sub <2 x i32> <i32 1997, i32 1997>, %7
  %16 = sub <2 x i32> <i32 1995, i32 1995>, %7
  %17 = sitofp <2 x i32> %15 to <2 x double>
  %18 = sitofp <2 x i32> %16 to <2 x double>
  %19 = getelementptr inbounds double, ptr %3, i64 %14
  %20 = getelementptr inbounds double, ptr %19, i64 2
  store <2 x double> %17, ptr %19, align 8, !tbaa !5
  store <2 x double> %18, ptr %20, align 8, !tbaa !5
  %21 = add nuw nsw i64 %6, 8
  %22 = add <2 x i32> %7, <i32 8, i32 8>
  %23 = icmp eq i64 %21, 2000
  br i1 %23, label %24, label %5, !llvm.loop !9

24:                                               ; preds = %5
  %25 = load double, ptr %3, align 8, !tbaa !5
  %26 = fneg double %25
  store double %26, ptr %4, align 8, !tbaa !5
  %27 = load double, ptr %3, align 8, !tbaa !5
  %28 = fneg double %27
  br label %29

29:                                               ; preds = %115, %24
  %30 = phi i64 [ %118, %115 ], [ 0, %24 ]
  %31 = phi i64 [ %116, %115 ], [ 1, %24 ]
  %32 = phi double [ %36, %115 ], [ 1.000000e+00, %24 ]
  %33 = phi double [ %80, %115 ], [ %28, %24 ]
  %34 = fneg double %33
  %35 = tail call double @llvm.fmuladd.f64(double %34, double %33, double 1.000000e+00)
  %36 = fmul double %32, %35
  %37 = add nsw i64 %31, -1
  %38 = icmp ugt i64 %31, 1
  br i1 %38, label %39, label %62

39:                                               ; preds = %29, %39
  %40 = phi i64 [ %56, %39 ], [ 0, %29 ]
  %41 = phi double [ %55, %39 ], [ 0.000000e+00, %29 ]
  %42 = sub nsw i64 %31, %40
  %43 = getelementptr double, ptr %3, i64 %42
  %44 = getelementptr double, ptr %43, i64 -1
  %45 = load double, ptr %44, align 8, !tbaa !5
  %46 = getelementptr inbounds double, ptr %4, i64 %40
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = getelementptr double, ptr %43, i64 -2
  %49 = load double, ptr %48, align 8, !tbaa !5
  %50 = or disjoint i64 %40, 1
  %51 = getelementptr inbounds double, ptr %4, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = fmul double %49, %52
  %54 = tail call double @llvm.fmuladd.f64(double %45, double %47, double %53)
  %55 = fadd double %41, %54
  %56 = add nuw nsw i64 %40, 2
  %57 = icmp ult i64 %56, %37
  br i1 %57, label %39, label %58, !llvm.loop !13

58:                                               ; preds = %39
  %59 = trunc i64 %56 to i32
  %60 = and i64 %31, 1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %29, %58
  %63 = phi i32 [ %59, %58 ], [ 0, %29 ]
  %64 = phi double [ %55, %58 ], [ 0.000000e+00, %29 ]
  %65 = xor i32 %63, -1
  %66 = sext i32 %65 to i64
  %67 = getelementptr double, ptr %3, i64 %31
  %68 = getelementptr double, ptr %67, i64 %66
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = zext nneg i32 %63 to i64
  %71 = getelementptr inbounds double, ptr %4, i64 %70
  %72 = load double, ptr %71, align 8, !tbaa !5
  %73 = tail call double @llvm.fmuladd.f64(double %69, double %72, double %64)
  br label %74

74:                                               ; preds = %62, %58
  %75 = phi double [ %73, %62 ], [ %55, %58 ]
  %76 = getelementptr inbounds double, ptr %3, i64 %31
  %77 = load double, ptr %76, align 8, !tbaa !5
  %78 = fadd double %75, %77
  %79 = fneg double %78
  %80 = fdiv double %79, %36
  %81 = getelementptr double, ptr %4, i64 %31
  %82 = and i64 %31, 1
  %83 = icmp eq i64 %30, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %74
  %85 = and i64 %31, 9223372036854775806
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i64 [ 0, %84 ], [ %102, %86 ]
  %88 = phi i64 [ 0, %84 ], [ %103, %86 ]
  %89 = getelementptr inbounds double, ptr %4, i64 %87
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = xor i64 %87, -1
  %92 = getelementptr double, ptr %81, i64 %91
  %93 = load double, ptr %92, align 8, !tbaa !5
  %94 = tail call double @llvm.fmuladd.f64(double %80, double %93, double %90)
  store double %94, ptr %89, align 8, !tbaa !5
  %95 = or disjoint i64 %87, 1
  %96 = getelementptr inbounds double, ptr %4, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !5
  %98 = xor i64 %87, -2
  %99 = getelementptr double, ptr %81, i64 %98
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = tail call double @llvm.fmuladd.f64(double %80, double %100, double %97)
  store double %101, ptr %96, align 8, !tbaa !5
  %102 = add nuw nsw i64 %87, 2
  %103 = add i64 %88, 2
  %104 = icmp eq i64 %103, %85
  br i1 %104, label %105, label %86, !llvm.loop !14

105:                                              ; preds = %86, %74
  %106 = phi i64 [ 0, %74 ], [ %102, %86 ]
  %107 = icmp eq i64 %82, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds double, ptr %4, i64 %106
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = xor i64 %106, -1
  %112 = getelementptr double, ptr %81, i64 %111
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = tail call double @llvm.fmuladd.f64(double %80, double %113, double %110)
  store double %114, ptr %109, align 8, !tbaa !5
  br label %115

115:                                              ; preds = %105, %108
  store double %80, ptr %81, align 8, !tbaa !5
  %116 = add nuw nsw i64 %31, 1
  %117 = icmp eq i64 %116, 2000
  %118 = add i64 %30, 1
  br i1 %117, label %119, label %29, !llvm.loop !15

119:                                              ; preds = %115
  %120 = load ptr, ptr @stdout, align 8, !tbaa !16
  %121 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %120)
  %122 = load ptr, ptr @stdout, align 8, !tbaa !16
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %124

124:                                              ; preds = %132, %119
  %125 = phi i64 [ 0, %119 ], [ %137, %132 ]
  %126 = trunc i64 %125 to i16
  %127 = urem i16 %126, 20
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load ptr, ptr @stdout, align 8, !tbaa !16
  %131 = tail call i32 @fputc(i32 10, ptr %130)
  br label %132

132:                                              ; preds = %129, %124
  %133 = load ptr, ptr @stdout, align 8, !tbaa !16
  %134 = getelementptr inbounds double, ptr %4, i64 %125
  %135 = load double, ptr %134, align 8, !tbaa !5
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.4, double noundef %135)
  %137 = add nuw nsw i64 %125, 1
  %138 = icmp eq i64 %137, 2000
  br i1 %138, label %139, label %124, !llvm.loop !18

139:                                              ; preds = %132
  %140 = load ptr, ptr @stdout, align 8, !tbaa !16
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %142 = load ptr, ptr @stdout, align 8, !tbaa !16
  %143 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %142)
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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10}
