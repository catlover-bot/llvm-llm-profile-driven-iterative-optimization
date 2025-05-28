; ModuleID = 'outputs/src_PolyBenchC-4.2.1_covariance_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_covariance_opt_3.c"
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

69:                                               ; preds = %64, %115
  %70 = phi i64 [ %116, %115 ], [ 0, %64 ]
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

85:                                               ; preds = %72, %106
  %86 = phi i64 [ %113, %106 ], [ %70, %72 ]
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i64 [ 0, %85 ], [ %104, %87 ]
  %89 = phi <2 x double> [ zeroinitializer, %85 ], [ %103, %87 ]
  %90 = getelementptr inbounds [1200 x double], ptr %3, i64 %88, i64 %70
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = getelementptr inbounds [1200 x double], ptr %3, i64 %88, i64 %86
  %93 = load double, ptr %92, align 8, !tbaa !5
  %94 = or disjoint i64 %88, 1
  %95 = getelementptr inbounds [1200 x double], ptr %3, i64 %94, i64 %70
  %96 = load double, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds [1200 x double], ptr %3, i64 %94, i64 %86
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = insertelement <2 x double> poison, double %96, i64 0
  %100 = insertelement <2 x double> %99, double %91, i64 1
  %101 = insertelement <2 x double> poison, double %98, i64 0
  %102 = insertelement <2 x double> %101, double %93, i64 1
  %103 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %100, <2 x double> %102, <2 x double> %89)
  %104 = add nuw nsw i64 %88, 2
  %105 = icmp ult i64 %88, 1398
  br i1 %105, label %87, label %106, !llvm.loop !17

106:                                              ; preds = %87
  %107 = shufflevector <2 x double> %103, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %108 = fadd <2 x double> %107, %103
  %109 = extractelement <2 x double> %108, i64 0
  %110 = fdiv double %109, 1.399000e+03
  %111 = getelementptr inbounds [1200 x double], ptr %4, i64 %70, i64 %86
  store double %110, ptr %111, align 8, !tbaa !5
  %112 = getelementptr inbounds [1200 x double], ptr %4, i64 %86, i64 %70
  store double %110, ptr %112, align 8, !tbaa !5
  %113 = add nuw nsw i64 %86, 1
  %114 = icmp eq i64 %113, 1200
  br i1 %114, label %115, label %85, !llvm.loop !18

115:                                              ; preds = %106
  %116 = add nuw nsw i64 %70, 1
  %117 = icmp eq i64 %116, 1200
  br i1 %117, label %118, label %69, !llvm.loop !19

118:                                              ; preds = %115
  %119 = load ptr, ptr @stdout, align 8, !tbaa !20
  %120 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %119)
  %121 = load ptr, ptr @stdout, align 8, !tbaa !20
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %123

123:                                              ; preds = %142, %118
  %124 = phi i64 [ 0, %118 ], [ %143, %142 ]
  %125 = mul nuw nsw i64 %124, 1200
  br label %126

126:                                              ; preds = %135, %123
  %127 = phi i64 [ 0, %123 ], [ %140, %135 ]
  %128 = add nuw nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  %130 = urem i32 %129, 20
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load ptr, ptr @stdout, align 8, !tbaa !20
  %134 = tail call i32 @fputc(i32 10, ptr %133)
  br label %135

135:                                              ; preds = %132, %126
  %136 = load ptr, ptr @stdout, align 8, !tbaa !20
  %137 = getelementptr inbounds [1200 x double], ptr %4, i64 %124, i64 %127
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef nonnull @.str.4, double noundef %138)
  %140 = add nuw nsw i64 %127, 1
  %141 = icmp eq i64 %140, 1200
  br i1 %141, label %142, label %126, !llvm.loop !22

142:                                              ; preds = %135
  %143 = add nuw nsw i64 %124, 1
  %144 = icmp eq i64 %143, 1200
  br i1 %144, label %145, label %123, !llvm.loop !23

145:                                              ; preds = %142
  %146 = load ptr, ptr @stdout, align 8, !tbaa !20
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %148 = load ptr, ptr @stdout, align 8, !tbaa !20
  %149 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %148)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef nonnull %4) #6
  tail call void @free(ptr noundef %5) #6
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
