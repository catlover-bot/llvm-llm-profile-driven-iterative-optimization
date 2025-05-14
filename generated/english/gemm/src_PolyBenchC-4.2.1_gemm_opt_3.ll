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
  %6 = getelementptr i8, ptr %3, i64 8800000
  %7 = getelementptr i8, ptr %4, i64 9599200
  %8 = icmp ult ptr %3, %7
  %9 = icmp ult ptr %4, %6
  %10 = and i1 %8, %9
  br label %11

11:                                               ; preds = %2, %36
  %12 = phi i64 [ 0, %2 ], [ %37, %36 ]
  br i1 %10, label %39, label %13

13:                                               ; preds = %11
  %14 = insertelement <2 x i64> poison, i64 %12, i64 0
  %15 = shufflevector <2 x i64> %14, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %33, %16 ]
  %18 = phi <2 x i64> [ <i64 0, i64 1>, %13 ], [ %34, %16 ]
  %19 = mul nuw nsw <2 x i64> %18, %15
  %20 = trunc <2 x i64> %19 to <2 x i32>
  %21 = add <2 x i32> %20, <i32 1, i32 1>
  %22 = urem <2 x i32> %21, <i32 1000, i32 1000>
  %23 = sitofp <2 x i32> %22 to <2 x double>
  %24 = fdiv <2 x double> %23, <double 1.000000e+03, double 1.000000e+03>
  %25 = getelementptr inbounds [1100 x double], ptr %3, i64 %12, i64 %17
  store <2 x double> %24, ptr %25, align 8, !tbaa !5, !alias.scope !9, !noalias !12
  %26 = add nuw nsw <2 x i64> %18, <i64 1, i64 1>
  %27 = mul nuw nsw <2 x i64> %26, %15
  %28 = trunc <2 x i64> %27 to <2 x i32>
  %29 = urem <2 x i32> %28, <i32 1200, i32 1200>
  %30 = sitofp <2 x i32> %29 to <2 x double>
  %31 = fdiv <2 x double> %30, <double 1.200000e+03, double 1.200000e+03>
  %32 = getelementptr inbounds [1200 x double], ptr %4, i64 %12, i64 %17
  store <2 x double> %31, ptr %32, align 8, !tbaa !5, !alias.scope !12
  %33 = add nuw i64 %17, 2
  %34 = add <2 x i64> %18, <i64 2, i64 2>
  %35 = icmp eq i64 %33, 1100
  br i1 %35, label %36, label %16, !llvm.loop !14

36:                                               ; preds = %16, %39
  %37 = add nuw nsw i64 %12, 1
  %38 = icmp eq i64 %37, 1000
  br i1 %38, label %56, label %11, !llvm.loop !18

39:                                               ; preds = %11, %39
  %40 = phi i64 [ %48, %39 ], [ 0, %11 ]
  %41 = mul nuw nsw i64 %40, %12
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, 1
  %44 = urem i32 %43, 1000
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 1.000000e+03
  %47 = getelementptr inbounds [1100 x double], ptr %3, i64 %12, i64 %40
  store double %46, ptr %47, align 8, !tbaa !5
  %48 = add nuw nsw i64 %40, 1
  %49 = mul nuw nsw i64 %48, %12
  %50 = trunc i64 %49 to i32
  %51 = urem i32 %50, 1200
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 1.200000e+03
  %54 = getelementptr inbounds [1200 x double], ptr %4, i64 %12, i64 %40
  store double %53, ptr %54, align 8, !tbaa !5
  %55 = icmp eq i64 %48, 1100
  br i1 %55, label %36, label %39, !llvm.loop !19

56:                                               ; preds = %36, %73
  %57 = phi i64 [ %74, %73 ], [ 0, %36 ]
  %58 = insertelement <2 x i64> poison, i64 %57, i64 0
  %59 = shufflevector <2 x i64> %58, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %60

60:                                               ; preds = %60, %56
  %61 = phi i64 [ 0, %56 ], [ %70, %60 ]
  %62 = phi <2 x i64> [ <i64 0, i64 1>, %56 ], [ %71, %60 ]
  %63 = add nuw nsw <2 x i64> %62, <i64 2, i64 2>
  %64 = mul nuw nsw <2 x i64> %63, %59
  %65 = trunc <2 x i64> %64 to <2 x i32>
  %66 = urem <2 x i32> %65, <i32 1100, i32 1100>
  %67 = sitofp <2 x i32> %66 to <2 x double>
  %68 = fdiv <2 x double> %67, <double 1.100000e+03, double 1.100000e+03>
  %69 = getelementptr inbounds [1100 x double], ptr %5, i64 %57, i64 %61
  store <2 x double> %68, ptr %69, align 8, !tbaa !5
  %70 = add nuw i64 %61, 2
  %71 = add <2 x i64> %62, <i64 2, i64 2>
  %72 = icmp eq i64 %70, 1100
  br i1 %72, label %73, label %60, !llvm.loop !20

73:                                               ; preds = %60
  %74 = add nuw nsw i64 %57, 1
  %75 = icmp eq i64 %74, 1200
  br i1 %75, label %76, label %56, !llvm.loop !21

76:                                               ; preds = %73, %96
  %77 = phi i64 [ %97, %96 ], [ 0, %73 ]
  br label %78

78:                                               ; preds = %88, %76
  %79 = phi i64 [ 0, %76 ], [ %95, %88 ]
  %80 = getelementptr inbounds [1100 x double], ptr %3, i64 %77, i64 %79
  %81 = getelementptr inbounds double, ptr %80, i64 2
  %82 = load <2 x double>, ptr %80, align 8, !tbaa !5
  %83 = load <2 x double>, ptr %81, align 8, !tbaa !5
  %84 = fmul <2 x double> %82, <double 1.200000e+00, double 1.200000e+00>
  %85 = fmul <2 x double> %83, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %84, ptr %80, align 8, !tbaa !5
  store <2 x double> %85, ptr %81, align 8, !tbaa !5
  %86 = or disjoint i64 %79, 4
  %87 = icmp eq i64 %86, 1100
  br i1 %87, label %96, label %88, !llvm.loop !22

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1100 x double], ptr %3, i64 %77, i64 %86
  %90 = getelementptr inbounds double, ptr %89, i64 2
  %91 = load <2 x double>, ptr %89, align 8, !tbaa !5
  %92 = load <2 x double>, ptr %90, align 8, !tbaa !5
  %93 = fmul <2 x double> %91, <double 1.200000e+00, double 1.200000e+00>
  %94 = fmul <2 x double> %92, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %93, ptr %89, align 8, !tbaa !5
  store <2 x double> %94, ptr %90, align 8, !tbaa !5
  %95 = add nuw nsw i64 %79, 8
  br label %78

96:                                               ; preds = %78
  %97 = add nuw nsw i64 %77, 1
  %98 = icmp eq i64 %97, 1000
  br i1 %98, label %99, label %76, !llvm.loop !23

99:                                               ; preds = %96
  %100 = getelementptr i8, ptr %5, i64 10560000
  %101 = getelementptr i8, ptr %3, i64 8800
  br label %102

102:                                              ; preds = %99, %110
  %103 = phi i64 [ %111, %110 ], [ 0, %99 ]
  %104 = mul nuw nsw i64 %103, 8800
  %105 = getelementptr i8, ptr %3, i64 %104
  %106 = getelementptr i8, ptr %101, i64 %104
  %107 = icmp ult ptr %105, %100
  %108 = icmp ult ptr %5, %106
  %109 = and i1 %107, %108
  br label %113

110:                                              ; preds = %135
  %111 = add nuw nsw i64 %103, 1
  %112 = icmp eq i64 %111, 1000
  br i1 %112, label %153, label %102, !llvm.loop !24

113:                                              ; preds = %135, %102
  %114 = phi i64 [ 0, %102 ], [ %136, %135 ]
  %115 = getelementptr inbounds [1200 x double], ptr %4, i64 %103, i64 %114
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = fmul double %116, 1.500000e+00
  br i1 %109, label %138, label %118

118:                                              ; preds = %113
  %119 = insertelement <2 x double> poison, double %117, i64 0
  %120 = shufflevector <2 x double> %119, <2 x double> poison, <2 x i32> zeroinitializer
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi i64 [ 0, %118 ], [ %133, %121 ]
  %123 = getelementptr inbounds [1100 x double], ptr %5, i64 %114, i64 %122
  %124 = getelementptr inbounds double, ptr %123, i64 2
  %125 = load <2 x double>, ptr %123, align 8, !tbaa !5, !alias.scope !25
  %126 = load <2 x double>, ptr %124, align 8, !tbaa !5, !alias.scope !25
  %127 = getelementptr inbounds [1100 x double], ptr %3, i64 %103, i64 %122
  %128 = getelementptr inbounds double, ptr %127, i64 2
  %129 = load <2 x double>, ptr %127, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %130 = load <2 x double>, ptr %128, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %131 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %120, <2 x double> %125, <2 x double> %129)
  %132 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %120, <2 x double> %126, <2 x double> %130)
  store <2 x double> %131, ptr %127, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  store <2 x double> %132, ptr %128, align 8, !tbaa !5, !alias.scope !28, !noalias !25
  %133 = add nuw i64 %122, 4
  %134 = icmp eq i64 %133, 1100
  br i1 %134, label %135, label %121, !llvm.loop !30

135:                                              ; preds = %121, %138
  %136 = add nuw nsw i64 %114, 1
  %137 = icmp eq i64 %136, 1200
  br i1 %137, label %110, label %113, !llvm.loop !31

138:                                              ; preds = %113, %138
  %139 = phi i64 [ %151, %138 ], [ 0, %113 ]
  %140 = getelementptr inbounds [1100 x double], ptr %5, i64 %114, i64 %139
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = getelementptr inbounds [1100 x double], ptr %3, i64 %103, i64 %139
  %143 = load double, ptr %142, align 8, !tbaa !5
  %144 = tail call double @llvm.fmuladd.f64(double %117, double %141, double %143)
  store double %144, ptr %142, align 8, !tbaa !5
  %145 = or disjoint i64 %139, 1
  %146 = getelementptr inbounds [1100 x double], ptr %5, i64 %114, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = getelementptr inbounds [1100 x double], ptr %3, i64 %103, i64 %145
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %117, double %147, double %149)
  store double %150, ptr %148, align 8, !tbaa !5
  %151 = add nuw nsw i64 %139, 2
  %152 = icmp eq i64 %151, 1100
  br i1 %152, label %135, label %138, !llvm.loop !32

153:                                              ; preds = %110
  %154 = load ptr, ptr @stdout, align 8, !tbaa !33
  %155 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %154)
  %156 = load ptr, ptr @stdout, align 8, !tbaa !33
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %158

158:                                              ; preds = %161, %153
  %159 = phi i64 [ 0, %153 ], [ %162, %161 ]
  %160 = mul nuw nsw i64 %159, 1000
  br label %164

161:                                              ; preds = %173
  %162 = add nuw nsw i64 %159, 1
  %163 = icmp eq i64 %162, 1000
  br i1 %163, label %180, label %158, !llvm.loop !35

164:                                              ; preds = %173, %158
  %165 = phi i64 [ 0, %158 ], [ %178, %173 ]
  %166 = add nuw nsw i64 %165, %160
  %167 = trunc i64 %166 to i32
  %168 = urem i32 %167, 20
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load ptr, ptr @stdout, align 8, !tbaa !33
  %172 = tail call i32 @fputc(i32 10, ptr %171)
  br label %173

173:                                              ; preds = %170, %164
  %174 = load ptr, ptr @stdout, align 8, !tbaa !33
  %175 = getelementptr inbounds [1100 x double], ptr %3, i64 %159, i64 %165
  %176 = load double, ptr %175, align 8, !tbaa !5
  %177 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.4, double noundef %176)
  %178 = add nuw nsw i64 %165, 1
  %179 = icmp eq i64 %178, 1100
  br i1 %179, label %161, label %164, !llvm.loop !36

180:                                              ; preds = %161
  %181 = load ptr, ptr @stdout, align 8, !tbaa !33
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %183 = load ptr, ptr @stdout, align 8, !tbaa !33
  %184 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %183)
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
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15, !16}
!20 = distinct !{!20, !15, !16, !17}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15, !16, !17}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !15, !16, !17}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15, !16}
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !7, i64 0}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
