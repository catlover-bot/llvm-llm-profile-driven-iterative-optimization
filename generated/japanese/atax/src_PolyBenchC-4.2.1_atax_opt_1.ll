; ModuleID = 'outputs/src_PolyBenchC-4.2.1_atax_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_atax_opt_1.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 3990000, i32 noundef 8) #8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2100, i32 noundef 8) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1900, i32 noundef 8) #8
  %7 = getelementptr double, ptr %4, i64 2
  %8 = getelementptr double, ptr %4, i64 4
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi i64 [ 0, %2 ], [ %26, %9 ]
  %11 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %27, %9 ]
  %12 = sitofp <2 x i32> %11 to <2 x double>
  %13 = fdiv <2 x double> %12, <double 2.100000e+03, double 2.100000e+03>
  %14 = fadd <2 x double> %13, <double 1.000000e+00, double 1.000000e+00>
  %15 = getelementptr inbounds double, ptr %4, i64 %10
  store <2 x double> %14, ptr %15, align 8, !tbaa !5
  %16 = add <2 x i32> %11, <i32 2, i32 2>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, <double 2.100000e+03, double 2.100000e+03>
  %19 = fadd <2 x double> %18, <double 1.000000e+00, double 1.000000e+00>
  %20 = getelementptr double, ptr %7, i64 %10
  store <2 x double> %19, ptr %20, align 8, !tbaa !5
  %21 = add <2 x i32> %11, <i32 4, i32 4>
  %22 = sitofp <2 x i32> %21 to <2 x double>
  %23 = fdiv <2 x double> %22, <double 2.100000e+03, double 2.100000e+03>
  %24 = fadd <2 x double> %23, <double 1.000000e+00, double 1.000000e+00>
  %25 = getelementptr double, ptr %8, i64 %10
  store <2 x double> %24, ptr %25, align 8, !tbaa !5
  %26 = add nuw nsw i64 %10, 6
  %27 = add <2 x i32> %11, <i32 6, i32 6>
  %28 = icmp eq i64 %26, 2100
  br i1 %28, label %29, label %9, !llvm.loop !9

29:                                               ; preds = %9, %53
  %30 = phi i64 [ %54, %53 ], [ 0, %9 ]
  %31 = insertelement <2 x i64> poison, i64 %30, i64 0
  %32 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %33, %29
  %34 = phi i64 [ 0, %29 ], [ %50, %33 ]
  %35 = phi <2 x i64> [ <i64 0, i64 1>, %29 ], [ %51, %33 ]
  %36 = add nuw nsw <2 x i64> %35, %32
  %37 = trunc <2 x i64> %36 to <2 x i32>
  %38 = urem <2 x i32> %37, <i32 2100, i32 2100>
  %39 = sitofp <2 x i32> %38 to <2 x double>
  %40 = fdiv <2 x double> %39, <double 9.500000e+03, double 9.500000e+03>
  %41 = getelementptr inbounds [2100 x double], ptr %3, i64 %30, i64 %34
  store <2 x double> %40, ptr %41, align 8, !tbaa !5
  %42 = or disjoint i64 %34, 2
  %43 = add <2 x i64> %35, <i64 2, i64 2>
  %44 = add nuw nsw <2 x i64> %43, %32
  %45 = trunc <2 x i64> %44 to <2 x i32>
  %46 = urem <2 x i32> %45, <i32 2100, i32 2100>
  %47 = sitofp <2 x i32> %46 to <2 x double>
  %48 = fdiv <2 x double> %47, <double 9.500000e+03, double 9.500000e+03>
  %49 = getelementptr inbounds [2100 x double], ptr %3, i64 %30, i64 %42
  store <2 x double> %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %34, 4
  %51 = add <2 x i64> %35, <i64 4, i64 4>
  %52 = icmp eq i64 %50, 2100
  br i1 %52, label %53, label %33, !llvm.loop !13

53:                                               ; preds = %33
  %54 = add nuw nsw i64 %30, 1
  %55 = icmp eq i64 %54, 1900
  br i1 %55, label %56, label %29, !llvm.loop !14

56:                                               ; preds = %53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16800) %5, i8 0, i64 16800, i1 false)
  %57 = getelementptr i8, ptr %5, i64 16800
  %58 = getelementptr i8, ptr %3, i64 31920000
  %59 = icmp ult ptr %5, %58
  %60 = icmp ult ptr %3, %57
  %61 = and i1 %59, %60
  br label %62

62:                                               ; preds = %143, %56
  %63 = phi i64 [ 0, %56 ], [ %144, %143 ]
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i64 [ 0, %62 ], [ %90, %64 ]
  %66 = phi double [ 0.000000e+00, %62 ], [ %89, %64 ]
  %67 = getelementptr inbounds [2100 x double], ptr %3, i64 %63, i64 %65
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds double, ptr %4, i64 %65
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = tail call double @llvm.fmuladd.f64(double %68, double %70, double %66)
  %72 = or disjoint i64 %65, 1
  %73 = getelementptr inbounds [2100 x double], ptr %3, i64 %63, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !5
  %75 = getelementptr inbounds double, ptr %4, i64 %72
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = tail call double @llvm.fmuladd.f64(double %74, double %76, double %71)
  %78 = or disjoint i64 %65, 2
  %79 = getelementptr inbounds [2100 x double], ptr %3, i64 %63, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = getelementptr inbounds double, ptr %4, i64 %78
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = tail call double @llvm.fmuladd.f64(double %80, double %82, double %77)
  %84 = or disjoint i64 %65, 3
  %85 = getelementptr inbounds [2100 x double], ptr %3, i64 %63, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds double, ptr %4, i64 %84
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = tail call double @llvm.fmuladd.f64(double %86, double %88, double %83)
  %90 = add nuw nsw i64 %65, 4
  %91 = icmp eq i64 %90, 2100
  br i1 %91, label %92, label %64, !llvm.loop !15

92:                                               ; preds = %64
  br i1 %61, label %122, label %93

93:                                               ; preds = %92
  %94 = insertelement <2 x double> poison, double %89, i64 0
  %95 = shufflevector <2 x double> %94, <2 x double> poison, <2 x i32> zeroinitializer
  br label %96

96:                                               ; preds = %110, %93
  %97 = phi i64 [ 0, %93 ], [ %121, %110 ]
  %98 = getelementptr inbounds [2100 x double], ptr %3, i64 %63, i64 %97
  %99 = getelementptr inbounds double, ptr %98, i64 2
  %100 = load <2 x double>, ptr %98, align 8, !tbaa !5, !alias.scope !16
  %101 = load <2 x double>, ptr %99, align 8, !tbaa !5, !alias.scope !16
  %102 = getelementptr inbounds double, ptr %5, i64 %97
  %103 = getelementptr inbounds double, ptr %102, i64 2
  %104 = load <2 x double>, ptr %102, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %105 = load <2 x double>, ptr %103, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %106 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %100, <2 x double> %95, <2 x double> %104)
  %107 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %101, <2 x double> %95, <2 x double> %105)
  store <2 x double> %106, ptr %102, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  store <2 x double> %107, ptr %103, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %108 = or disjoint i64 %97, 4
  %109 = icmp eq i64 %108, 2100
  br i1 %109, label %143, label %110, !llvm.loop !21

110:                                              ; preds = %96
  %111 = getelementptr inbounds [2100 x double], ptr %3, i64 %63, i64 %108
  %112 = getelementptr inbounds double, ptr %111, i64 2
  %113 = load <2 x double>, ptr %111, align 8, !tbaa !5, !alias.scope !16
  %114 = load <2 x double>, ptr %112, align 8, !tbaa !5, !alias.scope !16
  %115 = getelementptr inbounds double, ptr %5, i64 %108
  %116 = getelementptr inbounds double, ptr %115, i64 2
  %117 = load <2 x double>, ptr %115, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %118 = load <2 x double>, ptr %116, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %119 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %113, <2 x double> %95, <2 x double> %117)
  %120 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %114, <2 x double> %95, <2 x double> %118)
  store <2 x double> %119, ptr %115, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  store <2 x double> %120, ptr %116, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %121 = add nuw nsw i64 %97, 8
  br label %96

122:                                              ; preds = %92, %122
  %123 = phi i64 [ %141, %122 ], [ 0, %92 ]
  %124 = getelementptr inbounds [2100 x double], ptr %3, i64 %63, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds double, ptr %5, i64 %123
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = tail call double @llvm.fmuladd.f64(double %125, double %89, double %127)
  store double %128, ptr %126, align 8, !tbaa !5
  %129 = add nuw nsw i64 %123, 1
  %130 = getelementptr inbounds [2100 x double], ptr %3, i64 %63, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !5
  %132 = getelementptr inbounds double, ptr %5, i64 %129
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = tail call double @llvm.fmuladd.f64(double %131, double %89, double %133)
  store double %134, ptr %132, align 8, !tbaa !5
  %135 = add nuw nsw i64 %123, 2
  %136 = getelementptr inbounds [2100 x double], ptr %3, i64 %63, i64 %135
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds double, ptr %5, i64 %135
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %137, double %89, double %139)
  store double %140, ptr %138, align 8, !tbaa !5
  %141 = add nuw nsw i64 %123, 3
  %142 = icmp eq i64 %141, 2100
  br i1 %142, label %143, label %122, !llvm.loop !22

143:                                              ; preds = %96, %122
  %144 = add nuw nsw i64 %63, 1
  %145 = icmp eq i64 %144, 1900
  br i1 %145, label %146, label %62, !llvm.loop !23

146:                                              ; preds = %143
  %147 = load ptr, ptr @stdout, align 8, !tbaa !24
  %148 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %147)
  %149 = load ptr, ptr @stdout, align 8, !tbaa !24
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %151

151:                                              ; preds = %159, %146
  %152 = phi i64 [ 0, %146 ], [ %164, %159 ]
  %153 = trunc i64 %152 to i16
  %154 = urem i16 %153, 20
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load ptr, ptr @stdout, align 8, !tbaa !24
  %158 = tail call i32 @fputc(i32 10, ptr %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load ptr, ptr @stdout, align 8, !tbaa !24
  %161 = getelementptr inbounds double, ptr %5, i64 %152
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.4, double noundef %162)
  %164 = add nuw nsw i64 %152, 1
  %165 = icmp eq i64 %164, 2100
  br i1 %165, label %166, label %151, !llvm.loop !26

166:                                              ; preds = %159
  %167 = load ptr, ptr @stdout, align 8, !tbaa !24
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %169 = load ptr, ptr @stdout, align 8, !tbaa !24
  %170 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %169)
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %4) #8
  tail call void @free(ptr noundef nonnull %5) #8
  tail call void @free(ptr noundef %6) #8
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
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
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = distinct !{!26, !10}
