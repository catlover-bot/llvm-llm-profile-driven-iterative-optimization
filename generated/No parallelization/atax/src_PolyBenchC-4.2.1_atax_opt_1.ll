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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16800) %5, i8 0, i64 16800, i1 false), !tbaa !5
  %57 = getelementptr i8, ptr %5, i64 16800
  %58 = getelementptr i8, ptr %3, i64 31920000
  %59 = icmp ult ptr %5, %58
  %60 = icmp ult ptr %3, %57
  %61 = and i1 %59, %60
  br label %62

62:                                               ; preds = %151, %56
  %63 = phi i64 [ 0, %56 ], [ %152, %151 ]
  %64 = getelementptr inbounds [2100 x double], ptr %3, i64 %63
  br label %65

65:                                               ; preds = %65, %62
  %66 = phi i64 [ 0, %62 ], [ %97, %65 ]
  %67 = phi double [ 0.000000e+00, %62 ], [ %96, %65 ]
  %68 = getelementptr inbounds double, ptr %64, i64 %66
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds double, ptr %4, i64 %66
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = tail call double @llvm.fmuladd.f64(double %69, double %71, double %67)
  %73 = add nuw nsw i64 %66, 1
  %74 = getelementptr inbounds double, ptr %64, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds double, ptr %4, i64 %73
  %77 = load double, ptr %76, align 8, !tbaa !5
  %78 = tail call double @llvm.fmuladd.f64(double %75, double %77, double %72)
  %79 = add nuw nsw i64 %66, 2
  %80 = getelementptr inbounds double, ptr %64, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds double, ptr %4, i64 %79
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = tail call double @llvm.fmuladd.f64(double %81, double %83, double %78)
  %85 = add nuw nsw i64 %66, 3
  %86 = getelementptr inbounds double, ptr %64, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = getelementptr inbounds double, ptr %4, i64 %85
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = tail call double @llvm.fmuladd.f64(double %87, double %89, double %84)
  %91 = add nuw nsw i64 %66, 4
  %92 = getelementptr inbounds double, ptr %64, i64 %91
  %93 = load double, ptr %92, align 8, !tbaa !5
  %94 = getelementptr inbounds double, ptr %4, i64 %91
  %95 = load double, ptr %94, align 8, !tbaa !5
  %96 = tail call double @llvm.fmuladd.f64(double %93, double %95, double %90)
  %97 = add nuw nsw i64 %66, 5
  %98 = icmp eq i64 %97, 2100
  br i1 %98, label %99, label %65, !llvm.loop !15

99:                                               ; preds = %65
  %100 = getelementptr inbounds double, ptr %6, i64 %63
  store double %96, ptr %100, align 8, !tbaa !5
  br i1 %61, label %130, label %101

101:                                              ; preds = %99
  %102 = insertelement <2 x double> poison, double %96, i64 0
  %103 = shufflevector <2 x double> %102, <2 x double> poison, <2 x i32> zeroinitializer
  br label %104

104:                                              ; preds = %118, %101
  %105 = phi i64 [ 0, %101 ], [ %129, %118 ]
  %106 = getelementptr inbounds double, ptr %64, i64 %105
  %107 = getelementptr inbounds double, ptr %106, i64 2
  %108 = load <2 x double>, ptr %106, align 8, !tbaa !5, !alias.scope !16
  %109 = load <2 x double>, ptr %107, align 8, !tbaa !5, !alias.scope !16
  %110 = getelementptr inbounds double, ptr %5, i64 %105
  %111 = getelementptr inbounds double, ptr %110, i64 2
  %112 = load <2 x double>, ptr %110, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %113 = load <2 x double>, ptr %111, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %114 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %108, <2 x double> %103, <2 x double> %112)
  %115 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %109, <2 x double> %103, <2 x double> %113)
  store <2 x double> %114, ptr %110, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  store <2 x double> %115, ptr %111, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %116 = or disjoint i64 %105, 4
  %117 = icmp eq i64 %116, 2100
  br i1 %117, label %151, label %118, !llvm.loop !21

118:                                              ; preds = %104
  %119 = getelementptr inbounds double, ptr %64, i64 %116
  %120 = getelementptr inbounds double, ptr %119, i64 2
  %121 = load <2 x double>, ptr %119, align 8, !tbaa !5, !alias.scope !16
  %122 = load <2 x double>, ptr %120, align 8, !tbaa !5, !alias.scope !16
  %123 = getelementptr inbounds double, ptr %5, i64 %116
  %124 = getelementptr inbounds double, ptr %123, i64 2
  %125 = load <2 x double>, ptr %123, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %126 = load <2 x double>, ptr %124, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %127 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %121, <2 x double> %103, <2 x double> %125)
  %128 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %122, <2 x double> %103, <2 x double> %126)
  store <2 x double> %127, ptr %123, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  store <2 x double> %128, ptr %124, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %129 = add nuw nsw i64 %105, 8
  br label %104

130:                                              ; preds = %99, %130
  %131 = phi i64 [ %149, %130 ], [ 0, %99 ]
  %132 = getelementptr inbounds double, ptr %64, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = getelementptr inbounds double, ptr %5, i64 %131
  %135 = load double, ptr %134, align 8, !tbaa !5
  %136 = tail call double @llvm.fmuladd.f64(double %133, double %96, double %135)
  store double %136, ptr %134, align 8, !tbaa !5
  %137 = add nuw nsw i64 %131, 1
  %138 = getelementptr inbounds double, ptr %64, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = getelementptr inbounds double, ptr %5, i64 %137
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %139, double %96, double %141)
  store double %142, ptr %140, align 8, !tbaa !5
  %143 = add nuw nsw i64 %131, 2
  %144 = getelementptr inbounds double, ptr %64, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds double, ptr %5, i64 %143
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = tail call double @llvm.fmuladd.f64(double %145, double %96, double %147)
  store double %148, ptr %146, align 8, !tbaa !5
  %149 = add nuw nsw i64 %131, 3
  %150 = icmp eq i64 %149, 2100
  br i1 %150, label %151, label %130, !llvm.loop !22

151:                                              ; preds = %104, %130
  %152 = add nuw nsw i64 %63, 1
  %153 = icmp eq i64 %152, 1900
  br i1 %153, label %154, label %62, !llvm.loop !23

154:                                              ; preds = %151
  %155 = load ptr, ptr @stdout, align 8, !tbaa !24
  %156 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %155)
  %157 = load ptr, ptr @stdout, align 8, !tbaa !24
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %159

159:                                              ; preds = %167, %154
  %160 = phi i64 [ 0, %154 ], [ %172, %167 ]
  %161 = trunc i64 %160 to i16
  %162 = urem i16 %161, 20
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load ptr, ptr @stdout, align 8, !tbaa !24
  %166 = tail call i32 @fputc(i32 10, ptr %165)
  br label %167

167:                                              ; preds = %164, %159
  %168 = load ptr, ptr @stdout, align 8, !tbaa !24
  %169 = getelementptr inbounds double, ptr %5, i64 %160
  %170 = load double, ptr %169, align 8, !tbaa !5
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str.4, double noundef %170)
  %172 = add nuw nsw i64 %160, 1
  %173 = icmp eq i64 %172, 2100
  br i1 %173, label %174, label %159, !llvm.loop !26

174:                                              ; preds = %167
  %175 = load ptr, ptr @stdout, align 8, !tbaa !24
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %177 = load ptr, ptr @stdout, align 8, !tbaa !24
  %178 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %177)
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %4) #8
  tail call void @free(ptr noundef nonnull %5) #8
  tail call void @free(ptr noundef %6) #8
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
