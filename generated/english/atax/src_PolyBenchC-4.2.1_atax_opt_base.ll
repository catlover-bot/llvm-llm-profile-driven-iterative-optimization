; ModuleID = 'src/PolyBenchC-4.2.1/atax.c'
source_filename = "src/PolyBenchC-4.2.1/atax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
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
  %59 = getelementptr i8, ptr %6, i64 15200
  %60 = icmp ult ptr %5, %58
  %61 = icmp ult ptr %3, %57
  %62 = and i1 %60, %61
  %63 = icmp ult ptr %5, %59
  %64 = icmp ult ptr %6, %57
  %65 = and i1 %63, %64
  %66 = or i1 %62, %65
  br label %67

67:                                               ; preds = %128, %56
  %68 = phi i64 [ 0, %56 ], [ %129, %128 ]
  %69 = getelementptr inbounds double, ptr %6, i64 %68
  store double 0.000000e+00, ptr %69, align 8, !tbaa !5
  br label %70

70:                                               ; preds = %70, %67
  %71 = phi i64 [ 0, %67 ], [ %90, %70 ]
  %72 = phi double [ 0.000000e+00, %67 ], [ %89, %70 ]
  %73 = getelementptr inbounds [2100 x double], ptr %3, i64 %68, i64 %71
  %74 = load double, ptr %73, align 8, !tbaa !5
  %75 = getelementptr inbounds double, ptr %4, i64 %71
  %76 = load double, ptr %75, align 8, !tbaa !5
  %77 = tail call double @llvm.fmuladd.f64(double %74, double %76, double %72)
  store double %77, ptr %69, align 8, !tbaa !5
  %78 = add nuw nsw i64 %71, 1
  %79 = getelementptr inbounds [2100 x double], ptr %3, i64 %68, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = getelementptr inbounds double, ptr %4, i64 %78
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = tail call double @llvm.fmuladd.f64(double %80, double %82, double %77)
  store double %83, ptr %69, align 8, !tbaa !5
  %84 = add nuw nsw i64 %71, 2
  %85 = getelementptr inbounds [2100 x double], ptr %3, i64 %68, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds double, ptr %4, i64 %84
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = tail call double @llvm.fmuladd.f64(double %86, double %88, double %83)
  store double %89, ptr %69, align 8, !tbaa !5
  %90 = add nuw nsw i64 %71, 3
  %91 = icmp eq i64 %90, 2100
  br i1 %91, label %92, label %70, !llvm.loop !15

92:                                               ; preds = %70
  br i1 %66, label %111, label %93

93:                                               ; preds = %92
  %94 = load double, ptr %69, align 8, !tbaa !5, !alias.scope !16
  %95 = insertelement <2 x double> poison, double %94, i64 0
  %96 = shufflevector <2 x double> %95, <2 x double> poison, <2 x i32> zeroinitializer
  br label %97

97:                                               ; preds = %93, %97
  %98 = phi i64 [ %109, %97 ], [ 0, %93 ]
  %99 = getelementptr inbounds double, ptr %5, i64 %98
  %100 = getelementptr inbounds double, ptr %99, i64 2
  %101 = load <2 x double>, ptr %99, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  %102 = load <2 x double>, ptr %100, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  %103 = getelementptr inbounds [2100 x double], ptr %3, i64 %68, i64 %98
  %104 = getelementptr inbounds double, ptr %103, i64 2
  %105 = load <2 x double>, ptr %103, align 8, !tbaa !5, !alias.scope !23
  %106 = load <2 x double>, ptr %104, align 8, !tbaa !5, !alias.scope !23
  %107 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %105, <2 x double> %96, <2 x double> %101)
  %108 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %106, <2 x double> %96, <2 x double> %102)
  store <2 x double> %107, ptr %99, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  store <2 x double> %108, ptr %100, align 8, !tbaa !5, !alias.scope !19, !noalias !21
  %109 = add nuw i64 %98, 4
  %110 = icmp eq i64 %109, 2100
  br i1 %110, label %128, label %97, !llvm.loop !24

111:                                              ; preds = %92, %111
  %112 = phi i64 [ %126, %111 ], [ 0, %92 ]
  %113 = getelementptr inbounds double, ptr %5, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds [2100 x double], ptr %3, i64 %68, i64 %112
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = load double, ptr %69, align 8, !tbaa !5
  %118 = tail call double @llvm.fmuladd.f64(double %116, double %117, double %114)
  store double %118, ptr %113, align 8, !tbaa !5
  %119 = or disjoint i64 %112, 1
  %120 = getelementptr inbounds double, ptr %5, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds [2100 x double], ptr %3, i64 %68, i64 %119
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = load double, ptr %69, align 8, !tbaa !5
  %125 = tail call double @llvm.fmuladd.f64(double %123, double %124, double %121)
  store double %125, ptr %120, align 8, !tbaa !5
  %126 = add nuw nsw i64 %112, 2
  %127 = icmp eq i64 %126, 2100
  br i1 %127, label %128, label %111, !llvm.loop !25

128:                                              ; preds = %97, %111
  %129 = add nuw nsw i64 %68, 1
  %130 = icmp eq i64 %129, 1900
  br i1 %130, label %131, label %67, !llvm.loop !26

131:                                              ; preds = %128
  %132 = load ptr, ptr @stderr, align 8, !tbaa !27
  %133 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %132) #9
  %134 = load ptr, ptr @stderr, align 8, !tbaa !27
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %136

136:                                              ; preds = %144, %131
  %137 = phi i64 [ 0, %131 ], [ %149, %144 ]
  %138 = trunc i64 %137 to i16
  %139 = urem i16 %138, 20
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load ptr, ptr @stderr, align 8, !tbaa !27
  %143 = tail call i32 @fputc(i32 10, ptr %142)
  br label %144

144:                                              ; preds = %141, %136
  %145 = load ptr, ptr @stderr, align 8, !tbaa !27
  %146 = getelementptr inbounds double, ptr %5, i64 %137
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.4, double noundef %147) #9
  %149 = add nuw nsw i64 %137, 1
  %150 = icmp eq i64 %149, 2100
  br i1 %150, label %151, label %136, !llvm.loop !29

151:                                              ; preds = %144
  %152 = load ptr, ptr @stderr, align 8, !tbaa !27
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #9
  %154 = load ptr, ptr @stderr, align 8, !tbaa !27
  %155 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %154) #9
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
attributes #9 = { cold }

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
!21 = !{!22, !17}
!22 = distinct !{!22, !18}
!23 = !{!22}
!24 = distinct !{!24, !10, !11, !12}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = distinct !{!29, !10}
