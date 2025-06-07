; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syrk_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syrk_opt_3.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  br label %5

5:                                                ; preds = %2, %38
  %6 = phi i64 [ 0, %2 ], [ %39, %38 ]
  %7 = insertelement <2 x i64> poison, i64 %6, i64 0
  %8 = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %19, %9 ]
  %11 = phi <2 x i64> [ <i64 0, i64 1>, %5 ], [ %20, %9 ]
  %12 = mul nuw nsw <2 x i64> %11, %8
  %13 = trunc <2 x i64> %12 to <2 x i32>
  %14 = add <2 x i32> %13, <i32 1, i32 1>
  %15 = urem <2 x i32> %14, <i32 1200, i32 1200>
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fmul <2 x double> %16, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %18 = getelementptr inbounds [1000 x double], ptr %4, i64 %6, i64 %10
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = add nuw i64 %10, 2
  %20 = add <2 x i64> %11, <i64 2, i64 2>
  %21 = icmp eq i64 %19, 1000
  br i1 %21, label %22, label %9, !llvm.loop !9

22:                                               ; preds = %9
  %23 = insertelement <2 x i64> poison, i64 %6, i64 0
  %24 = shufflevector <2 x i64> %23, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i64 [ 0, %22 ], [ %35, %25 ]
  %27 = phi <2 x i64> [ <i64 0, i64 1>, %22 ], [ %36, %25 ]
  %28 = mul nuw nsw <2 x i64> %27, %24
  %29 = trunc <2 x i64> %28 to <2 x i32>
  %30 = add <2 x i32> %29, <i32 2, i32 2>
  %31 = urem <2 x i32> %30, <i32 1000, i32 1000>
  %32 = sitofp <2 x i32> %31 to <2 x double>
  %33 = fmul <2 x double> %32, <double 1.000000e-03, double 1.000000e-03>
  %34 = getelementptr inbounds [1200 x double], ptr %3, i64 %6, i64 %26
  store <2 x double> %33, ptr %34, align 8, !tbaa !5
  %35 = add nuw i64 %26, 2
  %36 = add <2 x i64> %27, <i64 2, i64 2>
  %37 = icmp eq i64 %35, 1200
  br i1 %37, label %38, label %25, !llvm.loop !13

38:                                               ; preds = %25
  %39 = add nuw nsw i64 %6, 1
  %40 = icmp eq i64 %39, 1200
  br i1 %40, label %41, label %5, !llvm.loop !14

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %3, i64 8
  %43 = getelementptr i8, ptr %4, i64 8000
  br label %44

44:                                               ; preds = %41, %142
  %45 = phi i64 [ %143, %142 ], [ 0, %41 ]
  %46 = phi i64 [ %144, %142 ], [ 1, %41 ]
  %47 = mul nuw nsw i64 %45, 9600
  %48 = getelementptr i8, ptr %3, i64 %47
  %49 = mul nuw nsw i64 %45, 9608
  %50 = getelementptr i8, ptr %42, i64 %49
  %51 = shl nuw nsw i64 %45, 3
  %52 = getelementptr i8, ptr %43, i64 %51
  %53 = getelementptr inbounds [1200 x double], ptr %3, i64 %45
  %54 = icmp ult i64 %46, 4
  br i1 %54, label %69, label %55

55:                                               ; preds = %44
  %56 = and i64 %46, 9223372036854775804
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i64 [ 0, %55 ], [ %65, %57 ]
  %59 = getelementptr inbounds double, ptr %53, i64 %58
  %60 = getelementptr inbounds double, ptr %59, i64 2
  %61 = load <2 x double>, ptr %59, align 8, !tbaa !5
  %62 = load <2 x double>, ptr %60, align 8, !tbaa !5
  %63 = fmul <2 x double> %61, <double 1.200000e+00, double 1.200000e+00>
  %64 = fmul <2 x double> %62, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %63, ptr %59, align 8, !tbaa !5
  store <2 x double> %64, ptr %60, align 8, !tbaa !5
  %65 = add nuw i64 %58, 4
  %66 = icmp eq i64 %65, %56
  br i1 %66, label %67, label %57, !llvm.loop !15

67:                                               ; preds = %57
  %68 = icmp eq i64 %46, %56
  br i1 %68, label %78, label %69

69:                                               ; preds = %44, %67
  %70 = phi i64 [ 0, %44 ], [ %56, %67 ]
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i64 [ %76, %71 ], [ %70, %69 ]
  %73 = getelementptr inbounds double, ptr %53, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !5
  %75 = fmul double %74, 1.200000e+00
  store double %75, ptr %73, align 8, !tbaa !5
  %76 = add nuw nsw i64 %72, 1
  %77 = icmp eq i64 %76, %46
  br i1 %77, label %78, label %71, !llvm.loop !16

78:                                               ; preds = %71, %67
  %79 = icmp ult i64 %46, 4
  %80 = icmp ult ptr %48, %52
  %81 = icmp ult ptr %4, %50
  %82 = and i1 %80, %81
  %83 = and i64 %46, 9223372036854775804
  %84 = icmp eq i64 %46, %83
  %85 = and i64 %46, 1
  %86 = icmp eq i64 %85, 0
  br label %87

87:                                               ; preds = %78, %139
  %88 = phi i64 [ %140, %139 ], [ 0, %78 ]
  %89 = getelementptr inbounds [1000 x double], ptr %4, i64 %45, i64 %88
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = getelementptr inbounds [1000 x double], ptr %4, i64 0, i64 %88
  %92 = fmul double %90, 1.500000e+00
  %93 = select i1 %79, i1 true, i1 %82
  br i1 %93, label %112, label %94

94:                                               ; preds = %87
  %95 = insertelement <2 x double> poison, double %92, i64 0
  %96 = shufflevector <2 x double> %95, <2 x double> poison, <2 x i32> zeroinitializer
  br label %97

97:                                               ; preds = %97, %94
  %98 = phi i64 [ 0, %94 ], [ %109, %97 ]
  %99 = getelementptr inbounds double, ptr %91, i64 %98
  %100 = getelementptr inbounds double, ptr %99, i64 2
  %101 = load <2 x double>, ptr %99, align 8, !tbaa !5, !alias.scope !17
  %102 = load <2 x double>, ptr %100, align 8, !tbaa !5, !alias.scope !17
  %103 = getelementptr inbounds double, ptr %53, i64 %98
  %104 = getelementptr inbounds double, ptr %103, i64 2
  %105 = load <2 x double>, ptr %103, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %106 = load <2 x double>, ptr %104, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %107 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %101, <2 x double> %105)
  %108 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %102, <2 x double> %106)
  store <2 x double> %107, ptr %103, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  store <2 x double> %108, ptr %104, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %109 = add nuw i64 %98, 4
  %110 = icmp eq i64 %109, %83
  br i1 %110, label %111, label %97, !llvm.loop !22

111:                                              ; preds = %97
  br i1 %84, label %139, label %112

112:                                              ; preds = %87, %111
  %113 = phi i64 [ 0, %87 ], [ %83, %111 ]
  br i1 %86, label %121, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds double, ptr %91, i64 %113
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = getelementptr inbounds double, ptr %53, i64 %113
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = tail call double @llvm.fmuladd.f64(double %92, double %116, double %118)
  store double %119, ptr %117, align 8, !tbaa !5
  %120 = or disjoint i64 %113, 1
  br label %121

121:                                              ; preds = %114, %112
  %122 = phi i64 [ %113, %112 ], [ %120, %114 ]
  %123 = icmp eq i64 %45, %113
  br i1 %123, label %139, label %124

124:                                              ; preds = %121, %124
  %125 = phi i64 [ %137, %124 ], [ %122, %121 ]
  %126 = getelementptr inbounds double, ptr %91, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = getelementptr inbounds double, ptr %53, i64 %125
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %92, double %127, double %129)
  store double %130, ptr %128, align 8, !tbaa !5
  %131 = add nuw nsw i64 %125, 1
  %132 = getelementptr inbounds double, ptr %91, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = getelementptr inbounds double, ptr %53, i64 %131
  %135 = load double, ptr %134, align 8, !tbaa !5
  %136 = tail call double @llvm.fmuladd.f64(double %92, double %133, double %135)
  store double %136, ptr %134, align 8, !tbaa !5
  %137 = add nuw nsw i64 %125, 2
  %138 = icmp eq i64 %137, %46
  br i1 %138, label %139, label %124, !llvm.loop !23

139:                                              ; preds = %121, %124, %111
  %140 = add nuw nsw i64 %88, 1
  %141 = icmp eq i64 %140, 1000
  br i1 %141, label %142, label %87, !llvm.loop !24

142:                                              ; preds = %139
  %143 = add nuw nsw i64 %45, 1
  %144 = add nuw nsw i64 %46, 1
  %145 = icmp eq i64 %143, 1200
  br i1 %145, label %146, label %44, !llvm.loop !25

146:                                              ; preds = %142
  %147 = load ptr, ptr @stdout, align 8, !tbaa !26
  %148 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %147)
  %149 = load ptr, ptr @stdout, align 8, !tbaa !26
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %151

151:                                              ; preds = %170, %146
  %152 = phi i64 [ 0, %146 ], [ %171, %170 ]
  %153 = mul nuw nsw i64 %152, 1200
  br label %154

154:                                              ; preds = %163, %151
  %155 = phi i64 [ 0, %151 ], [ %168, %163 ]
  %156 = add nuw nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  %158 = urem i32 %157, 20
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load ptr, ptr @stdout, align 8, !tbaa !26
  %162 = tail call i32 @fputc(i32 10, ptr %161)
  br label %163

163:                                              ; preds = %160, %154
  %164 = load ptr, ptr @stdout, align 8, !tbaa !26
  %165 = getelementptr inbounds [1200 x double], ptr %3, i64 %152, i64 %155
  %166 = load double, ptr %165, align 8, !tbaa !5
  %167 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef nonnull @.str.4, double noundef %166)
  %168 = add nuw nsw i64 %155, 1
  %169 = icmp eq i64 %168, 1200
  br i1 %169, label %170, label %154, !llvm.loop !28

170:                                              ; preds = %163
  %171 = add nuw nsw i64 %152, 1
  %172 = icmp eq i64 %171, 1200
  br i1 %172, label %173, label %151, !llvm.loop !29

173:                                              ; preds = %170
  %174 = load ptr, ptr @stdout, align 8, !tbaa !26
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %176 = load ptr, ptr @stdout, align 8, !tbaa !26
  %177 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %176)
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %4) #7
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
!13 = distinct !{!13, !10, !11, !12}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !12, !11}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
