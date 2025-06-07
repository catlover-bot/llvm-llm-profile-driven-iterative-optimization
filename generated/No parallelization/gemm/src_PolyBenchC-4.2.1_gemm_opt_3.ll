; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gemm_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gemm_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1100000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #7
  br label %6

6:                                                ; preds = %2, %23
  %7 = phi i64 [ 0, %2 ], [ %24, %23 ]
  %8 = insertelement <2 x i64> poison, i64 %7, i64 0
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %20, %10 ]
  %12 = phi <2 x i64> [ <i64 0, i64 1>, %6 ], [ %21, %10 ]
  %13 = mul nuw nsw <2 x i64> %12, %9
  %14 = trunc <2 x i64> %13 to <2 x i32>
  %15 = add <2 x i32> %14, <i32 1, i32 1>
  %16 = urem <2 x i32> %15, <i32 1000, i32 1000>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, <double 1.000000e+03, double 1.000000e+03>
  %19 = getelementptr inbounds [1100 x double], ptr %3, i64 %7, i64 %11
  store <2 x double> %18, ptr %19, align 8, !tbaa !5
  %20 = add nuw i64 %11, 2
  %21 = add <2 x i64> %12, <i64 2, i64 2>
  %22 = icmp eq i64 %20, 1100
  br i1 %22, label %23, label %10, !llvm.loop !9

23:                                               ; preds = %10
  %24 = add nuw nsw i64 %7, 1
  %25 = icmp eq i64 %24, 1000
  br i1 %25, label %26, label %6, !llvm.loop !13

26:                                               ; preds = %23, %43
  %27 = phi i64 [ %44, %43 ], [ 0, %23 ]
  %28 = insertelement <2 x i64> poison, i64 %27, i64 0
  %29 = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi i64 [ 0, %26 ], [ %40, %30 ]
  %32 = phi <2 x i64> [ <i64 0, i64 1>, %26 ], [ %41, %30 ]
  %33 = add nuw nsw <2 x i64> %32, <i64 1, i64 1>
  %34 = mul nuw nsw <2 x i64> %33, %29
  %35 = trunc <2 x i64> %34 to <2 x i32>
  %36 = urem <2 x i32> %35, <i32 1200, i32 1200>
  %37 = sitofp <2 x i32> %36 to <2 x double>
  %38 = fdiv <2 x double> %37, <double 1.200000e+03, double 1.200000e+03>
  %39 = getelementptr inbounds [1200 x double], ptr %4, i64 %27, i64 %31
  store <2 x double> %38, ptr %39, align 8, !tbaa !5
  %40 = add nuw i64 %31, 2
  %41 = add <2 x i64> %32, <i64 2, i64 2>
  %42 = icmp eq i64 %40, 1200
  br i1 %42, label %43, label %30, !llvm.loop !14

43:                                               ; preds = %30
  %44 = add nuw nsw i64 %27, 1
  %45 = icmp eq i64 %44, 1000
  br i1 %45, label %46, label %26, !llvm.loop !15

46:                                               ; preds = %43, %63
  %47 = phi i64 [ %64, %63 ], [ 0, %43 ]
  %48 = insertelement <2 x i64> poison, i64 %47, i64 0
  %49 = shufflevector <2 x i64> %48, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %50

50:                                               ; preds = %50, %46
  %51 = phi i64 [ 0, %46 ], [ %60, %50 ]
  %52 = phi <2 x i64> [ <i64 0, i64 1>, %46 ], [ %61, %50 ]
  %53 = add nuw nsw <2 x i64> %52, <i64 2, i64 2>
  %54 = mul nuw nsw <2 x i64> %53, %49
  %55 = trunc <2 x i64> %54 to <2 x i32>
  %56 = urem <2 x i32> %55, <i32 1100, i32 1100>
  %57 = sitofp <2 x i32> %56 to <2 x double>
  %58 = fdiv <2 x double> %57, <double 1.100000e+03, double 1.100000e+03>
  %59 = getelementptr inbounds [1100 x double], ptr %5, i64 %47, i64 %51
  store <2 x double> %58, ptr %59, align 8, !tbaa !5
  %60 = add nuw i64 %51, 2
  %61 = add <2 x i64> %52, <i64 2, i64 2>
  %62 = icmp eq i64 %60, 1100
  br i1 %62, label %63, label %50, !llvm.loop !16

63:                                               ; preds = %50
  %64 = add nuw nsw i64 %47, 1
  %65 = icmp eq i64 %64, 1200
  br i1 %65, label %66, label %46, !llvm.loop !17

66:                                               ; preds = %63
  %67 = getelementptr i8, ptr %5, i64 10560000
  %68 = getelementptr i8, ptr %3, i64 8800
  br label %69

69:                                               ; preds = %66, %136
  %70 = phi i64 [ %137, %136 ], [ 0, %66 ]
  %71 = mul nuw nsw i64 %70, 8800
  %72 = getelementptr i8, ptr %3, i64 %71
  %73 = getelementptr i8, ptr %68, i64 %71
  br label %74

74:                                               ; preds = %84, %69
  %75 = phi i64 [ 0, %69 ], [ %91, %84 ]
  %76 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %75
  %77 = getelementptr inbounds double, ptr %76, i64 2
  %78 = load <2 x double>, ptr %76, align 8, !tbaa !5
  %79 = load <2 x double>, ptr %77, align 8, !tbaa !5
  %80 = fmul <2 x double> %78, <double 1.200000e+00, double 1.200000e+00>
  %81 = fmul <2 x double> %79, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %80, ptr %76, align 8, !tbaa !5
  store <2 x double> %81, ptr %77, align 8, !tbaa !5
  %82 = or disjoint i64 %75, 4
  %83 = icmp eq i64 %82, 1100
  br i1 %83, label %92, label %84, !llvm.loop !18

84:                                               ; preds = %74
  %85 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %82
  %86 = getelementptr inbounds double, ptr %85, i64 2
  %87 = load <2 x double>, ptr %85, align 8, !tbaa !5
  %88 = load <2 x double>, ptr %86, align 8, !tbaa !5
  %89 = fmul <2 x double> %87, <double 1.200000e+00, double 1.200000e+00>
  %90 = fmul <2 x double> %88, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %89, ptr %85, align 8, !tbaa !5
  store <2 x double> %90, ptr %86, align 8, !tbaa !5
  %91 = add nuw nsw i64 %75, 8
  br label %74

92:                                               ; preds = %74
  %93 = icmp ult ptr %72, %67
  %94 = icmp ult ptr %5, %73
  %95 = and i1 %93, %94
  br label %96

96:                                               ; preds = %92, %133
  %97 = phi i64 [ %134, %133 ], [ 0, %92 ]
  %98 = getelementptr inbounds [1200 x double], ptr %4, i64 %70, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = fmul double %99, 1.500000e+00
  br i1 %95, label %118, label %101

101:                                              ; preds = %96
  %102 = insertelement <2 x double> poison, double %100, i64 0
  %103 = shufflevector <2 x double> %102, <2 x double> poison, <2 x i32> zeroinitializer
  br label %104

104:                                              ; preds = %104, %101
  %105 = phi i64 [ 0, %101 ], [ %116, %104 ]
  %106 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %105
  %107 = getelementptr inbounds double, ptr %106, i64 2
  %108 = load <2 x double>, ptr %106, align 8, !tbaa !5, !alias.scope !19
  %109 = load <2 x double>, ptr %107, align 8, !tbaa !5, !alias.scope !19
  %110 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %105
  %111 = getelementptr inbounds double, ptr %110, i64 2
  %112 = load <2 x double>, ptr %110, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %113 = load <2 x double>, ptr %111, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %114 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %103, <2 x double> %108, <2 x double> %112)
  %115 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %103, <2 x double> %109, <2 x double> %113)
  store <2 x double> %114, ptr %110, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  store <2 x double> %115, ptr %111, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %116 = add nuw i64 %105, 4
  %117 = icmp eq i64 %116, 1100
  br i1 %117, label %133, label %104, !llvm.loop !24

118:                                              ; preds = %96, %118
  %119 = phi i64 [ %131, %118 ], [ 0, %96 ]
  %120 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %119
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = tail call double @llvm.fmuladd.f64(double %100, double %121, double %123)
  store double %124, ptr %122, align 8, !tbaa !5
  %125 = or disjoint i64 %119, 1
  %126 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %125
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %100, double %127, double %129)
  store double %130, ptr %128, align 8, !tbaa !5
  %131 = add nuw nsw i64 %119, 2
  %132 = icmp eq i64 %131, 1100
  br i1 %132, label %133, label %118, !llvm.loop !25

133:                                              ; preds = %104, %118
  %134 = add nuw nsw i64 %97, 1
  %135 = icmp eq i64 %134, 1200
  br i1 %135, label %136, label %96, !llvm.loop !26

136:                                              ; preds = %133
  %137 = add nuw nsw i64 %70, 1
  %138 = icmp eq i64 %137, 1000
  br i1 %138, label %139, label %69, !llvm.loop !27

139:                                              ; preds = %136
  %140 = load ptr, ptr @stdout, align 8, !tbaa !28
  %141 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %140)
  %142 = load ptr, ptr @stdout, align 8, !tbaa !28
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %144

144:                                              ; preds = %163, %139
  %145 = phi i64 [ 0, %139 ], [ %164, %163 ]
  %146 = mul nuw nsw i64 %145, 1000
  br label %147

147:                                              ; preds = %156, %144
  %148 = phi i64 [ 0, %144 ], [ %161, %156 ]
  %149 = add nuw nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  %151 = urem i32 %150, 20
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load ptr, ptr @stdout, align 8, !tbaa !28
  %155 = tail call i32 @fputc(i32 10, ptr %154)
  br label %156

156:                                              ; preds = %153, %147
  %157 = load ptr, ptr @stdout, align 8, !tbaa !28
  %158 = getelementptr inbounds [1100 x double], ptr %3, i64 %145, i64 %148
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.4, double noundef %159)
  %161 = add nuw nsw i64 %148, 1
  %162 = icmp eq i64 %161, 1100
  br i1 %162, label %163, label %147, !llvm.loop !30

163:                                              ; preds = %156
  %164 = add nuw nsw i64 %145, 1
  %165 = icmp eq i64 %164, 1000
  br i1 %165, label %166, label %144, !llvm.loop !31

166:                                              ; preds = %163
  %167 = load ptr, ptr @stdout, align 8, !tbaa !28
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %169 = load ptr, ptr @stdout, align 8, !tbaa !28
  %170 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %169)
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef %5) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !11, !12}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !10, !11, !12}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !7, i64 0}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
