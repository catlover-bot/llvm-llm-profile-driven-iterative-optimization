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

6:                                                ; preds = %50, %2
  %7 = phi i64 [ 0, %2 ], [ %51, %50 ]
  %8 = phi i64 [ 1, %2 ], [ %52, %50 ]
  %9 = getelementptr inbounds double, ptr %4, i64 %7
  store double -9.990000e+02, ptr %9, align 8, !tbaa !5
  %10 = trunc i64 %7 to i32
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds double, ptr %5, i64 %7
  store double %11, ptr %12, align 8, !tbaa !5
  %13 = getelementptr inbounds [2000 x double], ptr %3, i64 %7
  %14 = add nuw nsw i64 %7, 2001
  %15 = icmp ult i64 %8, 4
  br i1 %15, label %39, label %16

16:                                               ; preds = %6
  %17 = and i64 %8, 9223372036854775804
  %18 = insertelement <2 x i64> poison, i64 %14, i64 0
  %19 = shufflevector <2 x i64> %18, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi i64 [ 0, %16 ], [ %34, %20 ]
  %22 = phi <2 x i64> [ <i64 0, i64 1>, %16 ], [ %35, %20 ]
  %23 = add <2 x i64> %22, <i64 2, i64 2>
  %24 = sub nuw nsw <2 x i64> %19, %22
  %25 = sub nuw nsw <2 x i64> %19, %23
  %26 = trunc <2 x i64> %24 to <2 x i32>
  %27 = trunc <2 x i64> %25 to <2 x i32>
  %28 = sitofp <2 x i32> %26 to <2 x double>
  %29 = sitofp <2 x i32> %27 to <2 x double>
  %30 = fmul <2 x double> %28, <double 1.000000e-03, double 1.000000e-03>
  %31 = fmul <2 x double> %29, <double 1.000000e-03, double 1.000000e-03>
  %32 = getelementptr inbounds double, ptr %13, i64 %21
  %33 = getelementptr inbounds double, ptr %32, i64 2
  store <2 x double> %30, ptr %32, align 8, !tbaa !5
  store <2 x double> %31, ptr %33, align 8, !tbaa !5
  %34 = add nuw i64 %21, 4
  %35 = add <2 x i64> %22, <i64 4, i64 4>
  %36 = icmp eq i64 %34, %17
  br i1 %36, label %37, label %20, !llvm.loop !9

37:                                               ; preds = %20
  %38 = icmp eq i64 %8, %17
  br i1 %38, label %50, label %39

39:                                               ; preds = %6, %37
  %40 = phi i64 [ 0, %6 ], [ %17, %37 ]
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %48, %41 ], [ %40, %39 ]
  %43 = sub nuw nsw i64 %14, %42
  %44 = trunc i64 %43 to i32
  %45 = sitofp i32 %44 to double
  %46 = fmul double %45, 1.000000e-03
  %47 = getelementptr inbounds double, ptr %13, i64 %42
  store double %46, ptr %47, align 8, !tbaa !5
  %48 = add nuw nsw i64 %42, 1
  %49 = icmp eq i64 %48, %8
  br i1 %49, label %50, label %41, !llvm.loop !13

50:                                               ; preds = %41, %37
  %51 = add nuw nsw i64 %7, 1
  %52 = add nuw nsw i64 %8, 1
  %53 = icmp eq i64 %51, 2000
  br i1 %53, label %54, label %6, !llvm.loop !14

54:                                               ; preds = %50, %117
  %55 = phi i64 [ %123, %117 ], [ 0, %50 ]
  %56 = getelementptr inbounds double, ptr %5, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = getelementptr inbounds [2000 x double], ptr %3, i64 %55
  %59 = icmp eq i64 %55, 0
  br i1 %59, label %117, label %60

60:                                               ; preds = %54
  %61 = and i64 %55, 3
  %62 = icmp ult i64 %55, 4
  br i1 %62, label %99, label %63

63:                                               ; preds = %60
  %64 = and i64 %55, 9223372036854775804
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i64 [ 0, %63 ], [ %96, %65 ]
  %67 = phi double [ %57, %63 ], [ %95, %65 ]
  %68 = phi i64 [ 0, %63 ], [ %97, %65 ]
  %69 = getelementptr inbounds double, ptr %58, i64 %66
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds double, ptr %4, i64 %66
  %72 = load double, ptr %71, align 8, !tbaa !5
  %73 = fneg double %70
  %74 = tail call double @llvm.fmuladd.f64(double %73, double %72, double %67)
  %75 = or disjoint i64 %66, 1
  %76 = getelementptr inbounds double, ptr %58, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !5
  %78 = getelementptr inbounds double, ptr %4, i64 %75
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = fneg double %77
  %81 = tail call double @llvm.fmuladd.f64(double %80, double %79, double %74)
  %82 = or disjoint i64 %66, 2
  %83 = getelementptr inbounds double, ptr %58, i64 %82
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = getelementptr inbounds double, ptr %4, i64 %82
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = fneg double %84
  %88 = tail call double @llvm.fmuladd.f64(double %87, double %86, double %81)
  %89 = or disjoint i64 %66, 3
  %90 = getelementptr inbounds double, ptr %58, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = getelementptr inbounds double, ptr %4, i64 %89
  %93 = load double, ptr %92, align 8, !tbaa !5
  %94 = fneg double %91
  %95 = tail call double @llvm.fmuladd.f64(double %94, double %93, double %88)
  %96 = add nuw nsw i64 %66, 4
  %97 = add i64 %68, 4
  %98 = icmp eq i64 %97, %64
  br i1 %98, label %99, label %65, !llvm.loop !15

99:                                               ; preds = %65, %60
  %100 = phi double [ undef, %60 ], [ %95, %65 ]
  %101 = phi i64 [ 0, %60 ], [ %96, %65 ]
  %102 = phi double [ %57, %60 ], [ %95, %65 ]
  %103 = icmp eq i64 %61, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %99, %104
  %105 = phi i64 [ %114, %104 ], [ %101, %99 ]
  %106 = phi double [ %113, %104 ], [ %102, %99 ]
  %107 = phi i64 [ %115, %104 ], [ 0, %99 ]
  %108 = getelementptr inbounds double, ptr %58, i64 %105
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = getelementptr inbounds double, ptr %4, i64 %105
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = fneg double %109
  %113 = tail call double @llvm.fmuladd.f64(double %112, double %111, double %106)
  %114 = add nuw nsw i64 %105, 1
  %115 = add i64 %107, 1
  %116 = icmp eq i64 %115, %61
  br i1 %116, label %117, label %104, !llvm.loop !16

117:                                              ; preds = %99, %104, %54
  %118 = phi double [ %57, %54 ], [ %100, %99 ], [ %113, %104 ]
  %119 = getelementptr inbounds double, ptr %58, i64 %55
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = fdiv double %118, %120
  %122 = getelementptr inbounds double, ptr %4, i64 %55
  store double %121, ptr %122, align 8, !tbaa !5
  %123 = add nuw nsw i64 %55, 1
  %124 = icmp eq i64 %123, 2000
  br i1 %124, label %125, label %54, !llvm.loop !18

125:                                              ; preds = %117
  %126 = load ptr, ptr @stdout, align 8, !tbaa !19
  %127 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %126)
  %128 = load ptr, ptr @stdout, align 8, !tbaa !19
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %130

130:                                              ; preds = %143, %125
  %131 = phi i64 [ 0, %125 ], [ %136, %143 ]
  %132 = load ptr, ptr @stdout, align 8, !tbaa !19
  %133 = getelementptr inbounds double, ptr %4, i64 %131
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.3, double noundef %134)
  %136 = add nuw nsw i64 %131, 1
  %137 = trunc i64 %136 to i16
  %138 = urem i16 %137, 20
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load ptr, ptr @stdout, align 8, !tbaa !19
  %142 = tail call i32 @fputc(i32 10, ptr %141)
  br label %143

143:                                              ; preds = %140, %130
  %144 = icmp eq i64 %136, 2000
  br i1 %144, label %145, label %130, !llvm.loop !21

145:                                              ; preds = %143
  %146 = load ptr, ptr @stdout, align 8, !tbaa !19
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %148 = load ptr, ptr @stdout, align 8, !tbaa !19
  %149 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %148)
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
