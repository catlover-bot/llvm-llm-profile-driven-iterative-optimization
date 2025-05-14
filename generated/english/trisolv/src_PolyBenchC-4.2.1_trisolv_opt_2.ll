; ModuleID = 'outputs/src_PolyBenchC-4.2.1_trisolv_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_trisolv_opt_2.c"
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

6:                                                ; preds = %49, %2
  %7 = phi i64 [ 0, %2 ], [ %50, %49 ]
  %8 = phi i64 [ 1, %2 ], [ %51, %49 ]
  %9 = getelementptr inbounds double, ptr %4, i64 %7
  store double -9.990000e+02, ptr %9, align 8, !tbaa !5
  %10 = trunc i64 %7 to i32
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds double, ptr %5, i64 %7
  store double %11, ptr %12, align 8, !tbaa !5
  %13 = add nuw nsw i64 %7, 2001
  %14 = icmp ult i64 %8, 4
  br i1 %14, label %38, label %15

15:                                               ; preds = %6
  %16 = and i64 %8, 9223372036854775804
  %17 = insertelement <2 x i64> poison, i64 %13, i64 0
  %18 = shufflevector <2 x i64> %17, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i64 [ 0, %15 ], [ %33, %19 ]
  %21 = phi <2 x i64> [ <i64 0, i64 1>, %15 ], [ %34, %19 ]
  %22 = add <2 x i64> %21, <i64 2, i64 2>
  %23 = sub nuw nsw <2 x i64> %18, %21
  %24 = sub nuw nsw <2 x i64> %18, %22
  %25 = trunc <2 x i64> %23 to <2 x i32>
  %26 = trunc <2 x i64> %24 to <2 x i32>
  %27 = sitofp <2 x i32> %25 to <2 x double>
  %28 = sitofp <2 x i32> %26 to <2 x double>
  %29 = fmul <2 x double> %27, <double 1.000000e-03, double 1.000000e-03>
  %30 = fmul <2 x double> %28, <double 1.000000e-03, double 1.000000e-03>
  %31 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %20
  %32 = getelementptr inbounds double, ptr %31, i64 2
  store <2 x double> %29, ptr %31, align 8, !tbaa !5
  store <2 x double> %30, ptr %32, align 8, !tbaa !5
  %33 = add nuw i64 %20, 4
  %34 = add <2 x i64> %21, <i64 4, i64 4>
  %35 = icmp eq i64 %33, %16
  br i1 %35, label %36, label %19, !llvm.loop !9

36:                                               ; preds = %19
  %37 = icmp eq i64 %8, %16
  br i1 %37, label %49, label %38

38:                                               ; preds = %6, %36
  %39 = phi i64 [ 0, %6 ], [ %16, %36 ]
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ %47, %40 ], [ %39, %38 ]
  %42 = sub nuw nsw i64 %13, %41
  %43 = trunc i64 %42 to i32
  %44 = sitofp i32 %43 to double
  %45 = fmul double %44, 1.000000e-03
  %46 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %41
  store double %45, ptr %46, align 8, !tbaa !5
  %47 = add nuw nsw i64 %41, 1
  %48 = icmp eq i64 %47, %8
  br i1 %48, label %49, label %40, !llvm.loop !13

49:                                               ; preds = %40, %36
  %50 = add nuw nsw i64 %7, 1
  %51 = add nuw nsw i64 %8, 1
  %52 = icmp eq i64 %50, 2000
  br i1 %52, label %53, label %6, !llvm.loop !14

53:                                               ; preds = %49, %116
  %54 = phi i64 [ %122, %116 ], [ 0, %49 ]
  %55 = getelementptr inbounds double, ptr %5, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds [2000 x double], ptr %3, i64 %54
  %58 = icmp eq i64 %54, 0
  br i1 %58, label %116, label %59

59:                                               ; preds = %53
  %60 = and i64 %54, 3
  %61 = icmp ult i64 %54, 4
  br i1 %61, label %98, label %62

62:                                               ; preds = %59
  %63 = and i64 %54, 9223372036854775804
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i64 [ 0, %62 ], [ %95, %64 ]
  %66 = phi double [ %56, %62 ], [ %94, %64 ]
  %67 = phi i64 [ 0, %62 ], [ %96, %64 ]
  %68 = getelementptr inbounds double, ptr %57, i64 %65
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds double, ptr %4, i64 %65
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = fneg double %69
  %73 = tail call double @llvm.fmuladd.f64(double %72, double %71, double %66)
  %74 = or disjoint i64 %65, 1
  %75 = getelementptr inbounds double, ptr %57, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = getelementptr inbounds double, ptr %4, i64 %74
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = fneg double %76
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %78, double %73)
  %81 = or disjoint i64 %65, 2
  %82 = getelementptr inbounds double, ptr %57, i64 %81
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = getelementptr inbounds double, ptr %4, i64 %81
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = fneg double %83
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %85, double %80)
  %88 = or disjoint i64 %65, 3
  %89 = getelementptr inbounds double, ptr %57, i64 %88
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = getelementptr inbounds double, ptr %4, i64 %88
  %92 = load double, ptr %91, align 8, !tbaa !5
  %93 = fneg double %90
  %94 = tail call double @llvm.fmuladd.f64(double %93, double %92, double %87)
  %95 = add nuw nsw i64 %65, 4
  %96 = add i64 %67, 4
  %97 = icmp eq i64 %96, %63
  br i1 %97, label %98, label %64, !llvm.loop !15

98:                                               ; preds = %64, %59
  %99 = phi double [ undef, %59 ], [ %94, %64 ]
  %100 = phi i64 [ 0, %59 ], [ %95, %64 ]
  %101 = phi double [ %56, %59 ], [ %94, %64 ]
  %102 = icmp eq i64 %60, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %98, %103
  %104 = phi i64 [ %113, %103 ], [ %100, %98 ]
  %105 = phi double [ %112, %103 ], [ %101, %98 ]
  %106 = phi i64 [ %114, %103 ], [ 0, %98 ]
  %107 = getelementptr inbounds double, ptr %57, i64 %104
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = getelementptr inbounds double, ptr %4, i64 %104
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = fneg double %108
  %112 = tail call double @llvm.fmuladd.f64(double %111, double %110, double %105)
  %113 = add nuw nsw i64 %104, 1
  %114 = add i64 %106, 1
  %115 = icmp eq i64 %114, %60
  br i1 %115, label %116, label %103, !llvm.loop !16

116:                                              ; preds = %98, %103, %53
  %117 = phi double [ %56, %53 ], [ %99, %98 ], [ %112, %103 ]
  %118 = getelementptr inbounds double, ptr %57, i64 %54
  %119 = load double, ptr %118, align 8, !tbaa !5
  %120 = fdiv double %117, %119
  %121 = getelementptr inbounds double, ptr %4, i64 %54
  store double %120, ptr %121, align 8, !tbaa !5
  %122 = add nuw nsw i64 %54, 1
  %123 = icmp eq i64 %122, 2000
  br i1 %123, label %124, label %53, !llvm.loop !18

124:                                              ; preds = %116
  %125 = load ptr, ptr @stdout, align 8, !tbaa !19
  %126 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %125)
  %127 = load ptr, ptr @stdout, align 8, !tbaa !19
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %129

129:                                              ; preds = %141, %124
  %130 = phi i64 [ 0, %124 ], [ %142, %141 ]
  %131 = load ptr, ptr @stdout, align 8, !tbaa !19
  %132 = getelementptr inbounds double, ptr %4, i64 %130
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.3, double noundef %133)
  %135 = trunc i64 %130 to i16
  %136 = urem i16 %135, 20
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load ptr, ptr @stdout, align 8, !tbaa !19
  %140 = tail call i32 @fputc(i32 10, ptr %139)
  br label %141

141:                                              ; preds = %138, %129
  %142 = add nuw nsw i64 %130, 1
  %143 = icmp eq i64 %142, 2000
  br i1 %143, label %144, label %129, !llvm.loop !21

144:                                              ; preds = %141
  %145 = load ptr, ptr @stdout, align 8, !tbaa !19
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %147 = load ptr, ptr @stdout, align 8, !tbaa !19
  %148 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %147)
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
