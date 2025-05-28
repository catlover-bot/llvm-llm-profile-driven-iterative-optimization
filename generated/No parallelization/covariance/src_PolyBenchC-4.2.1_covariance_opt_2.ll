; ModuleID = 'outputs/src_PolyBenchC-4.2.1_covariance_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_covariance_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cov\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #6
  br label %6

6:                                                ; preds = %2, %35
  %7 = phi i64 [ 0, %2 ], [ %36, %35 ]
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 1.200000e+03
  %11 = insertelement <2 x double> poison, double %10, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  br label %13

13:                                               ; preds = %13, %6
  %14 = phi i64 [ 0, %6 ], [ %32, %13 ]
  %15 = phi <2 x i32> [ <i32 0, i32 1>, %6 ], [ %33, %13 ]
  %16 = add <2 x i32> %15, <i32 2, i32 2>
  %17 = sitofp <2 x i32> %15 to <2 x double>
  %18 = sitofp <2 x i32> %16 to <2 x double>
  %19 = fmul <2 x double> %12, %17
  %20 = fmul <2 x double> %12, %18
  %21 = getelementptr inbounds [1200 x double], ptr %3, i64 %7, i64 %14
  %22 = getelementptr inbounds double, ptr %21, i64 2
  store <2 x double> %19, ptr %21, align 8, !tbaa !5
  store <2 x double> %20, ptr %22, align 8, !tbaa !5
  %23 = or disjoint i64 %14, 4
  %24 = add <2 x i32> %15, <i32 4, i32 4>
  %25 = add <2 x i32> %15, <i32 6, i32 6>
  %26 = sitofp <2 x i32> %24 to <2 x double>
  %27 = sitofp <2 x i32> %25 to <2 x double>
  %28 = fmul <2 x double> %12, %26
  %29 = fmul <2 x double> %12, %27
  %30 = getelementptr inbounds [1200 x double], ptr %3, i64 %7, i64 %23
  %31 = getelementptr inbounds double, ptr %30, i64 2
  store <2 x double> %28, ptr %30, align 8, !tbaa !5
  store <2 x double> %29, ptr %31, align 8, !tbaa !5
  %32 = add nuw nsw i64 %14, 8
  %33 = add <2 x i32> %15, <i32 8, i32 8>
  %34 = icmp eq i64 %32, 1200
  br i1 %34, label %35, label %13, !llvm.loop !9

35:                                               ; preds = %13
  %36 = add nuw nsw i64 %7, 1
  %37 = icmp eq i64 %36, 1400
  br i1 %37, label %38, label %6, !llvm.loop !13

38:                                               ; preds = %35, %64
  %39 = phi i64 [ %67, %64 ], [ 0, %35 ]
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %62, %40 ]
  %42 = phi double [ 0.000000e+00, %38 ], [ %61, %40 ]
  %43 = getelementptr inbounds [1200 x double], ptr %3, i64 %41, i64 %39
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = fadd double %42, %44
  %46 = add nuw nsw i64 %41, 1
  %47 = getelementptr inbounds [1200 x double], ptr %3, i64 %46, i64 %39
  %48 = load double, ptr %47, align 8, !tbaa !5
  %49 = fadd double %45, %48
  %50 = add nuw nsw i64 %41, 2
  %51 = getelementptr inbounds [1200 x double], ptr %3, i64 %50, i64 %39
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = fadd double %49, %52
  %54 = add nuw nsw i64 %41, 3
  %55 = getelementptr inbounds [1200 x double], ptr %3, i64 %54, i64 %39
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = fadd double %53, %56
  %58 = add nuw nsw i64 %41, 4
  %59 = getelementptr inbounds [1200 x double], ptr %3, i64 %58, i64 %39
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = fadd double %57, %60
  %62 = add nuw nsw i64 %41, 5
  %63 = icmp eq i64 %62, 1400
  br i1 %63, label %64, label %40, !llvm.loop !14

64:                                               ; preds = %40
  %65 = fdiv double %61, 1.400000e+03
  %66 = getelementptr inbounds double, ptr %5, i64 %39
  store double %65, ptr %66, align 8, !tbaa !5
  %67 = add nuw nsw i64 %39, 1
  %68 = icmp eq i64 %67, 1200
  br i1 %68, label %69, label %38, !llvm.loop !15

69:                                               ; preds = %64, %109
  %70 = phi i64 [ %110, %109 ], [ 0, %64 ]
  %71 = getelementptr inbounds double, ptr %5, i64 %70
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi i64 [ 0, %69 ], [ %83, %72 ]
  %74 = load double, ptr %71, align 8, !tbaa !5
  %75 = getelementptr inbounds [1200 x double], ptr %3, i64 %73, i64 %70
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = fsub double %76, %74
  store double %77, ptr %75, align 8, !tbaa !5
  %78 = or disjoint i64 %73, 1
  %79 = load double, ptr %71, align 8, !tbaa !5
  %80 = getelementptr inbounds [1200 x double], ptr %3, i64 %78, i64 %70
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = fsub double %81, %79
  store double %82, ptr %80, align 8, !tbaa !5
  %83 = add nuw nsw i64 %73, 2
  %84 = icmp eq i64 %83, 1400
  br i1 %84, label %85, label %72, !llvm.loop !16

85:                                               ; preds = %72, %103
  %86 = phi i64 [ %107, %103 ], [ %70, %72 ]
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i64 [ 0, %85 ], [ %101, %87 ]
  %89 = phi double [ 0.000000e+00, %85 ], [ %100, %87 ]
  %90 = getelementptr inbounds [1200 x double], ptr %3, i64 %88, i64 %70
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = getelementptr inbounds [1200 x double], ptr %3, i64 %88, i64 %86
  %93 = load double, ptr %92, align 8, !tbaa !5
  %94 = tail call double @llvm.fmuladd.f64(double %91, double %93, double %89)
  %95 = or disjoint i64 %88, 1
  %96 = getelementptr inbounds [1200 x double], ptr %3, i64 %95, i64 %70
  %97 = load double, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds [1200 x double], ptr %3, i64 %95, i64 %86
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = tail call double @llvm.fmuladd.f64(double %97, double %99, double %94)
  %101 = add nuw nsw i64 %88, 2
  %102 = icmp eq i64 %101, 1400
  br i1 %102, label %103, label %87, !llvm.loop !17

103:                                              ; preds = %87
  %104 = fdiv double %100, 1.399000e+03
  %105 = getelementptr inbounds [1200 x double], ptr %4, i64 %70, i64 %86
  store double %104, ptr %105, align 8, !tbaa !5
  %106 = getelementptr inbounds [1200 x double], ptr %4, i64 %86, i64 %70
  store double %104, ptr %106, align 8, !tbaa !5
  %107 = add nuw nsw i64 %86, 1
  %108 = icmp eq i64 %107, 1200
  br i1 %108, label %109, label %85, !llvm.loop !18

109:                                              ; preds = %103
  %110 = add nuw nsw i64 %70, 1
  %111 = icmp eq i64 %110, 1200
  br i1 %111, label %112, label %69, !llvm.loop !19

112:                                              ; preds = %109
  %113 = load ptr, ptr @stdout, align 8, !tbaa !20
  %114 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %113)
  %115 = load ptr, ptr @stdout, align 8, !tbaa !20
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %117

117:                                              ; preds = %136, %112
  %118 = phi i64 [ 0, %112 ], [ %137, %136 ]
  %119 = mul nuw nsw i64 %118, 1200
  br label %120

120:                                              ; preds = %129, %117
  %121 = phi i64 [ 0, %117 ], [ %134, %129 ]
  %122 = add nuw nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  %124 = urem i32 %123, 20
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load ptr, ptr @stdout, align 8, !tbaa !20
  %128 = tail call i32 @fputc(i32 10, ptr %127)
  br label %129

129:                                              ; preds = %126, %120
  %130 = load ptr, ptr @stdout, align 8, !tbaa !20
  %131 = getelementptr inbounds [1200 x double], ptr %4, i64 %118, i64 %121
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.4, double noundef %132)
  %134 = add nuw nsw i64 %121, 1
  %135 = icmp eq i64 %134, 1200
  br i1 %135, label %136, label %120, !llvm.loop !22

136:                                              ; preds = %129
  %137 = add nuw nsw i64 %118, 1
  %138 = icmp eq i64 %137, 1200
  br i1 %138, label %139, label %117, !llvm.loop !23

139:                                              ; preds = %136
  %140 = load ptr, ptr @stdout, align 8, !tbaa !20
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %142 = load ptr, ptr @stdout, align 8, !tbaa !20
  %143 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %142)
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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
