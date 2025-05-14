; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gemm_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gemm_opt_2.c"
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

76:                                               ; preds = %73
  %77 = getelementptr i8, ptr %5, i64 10560000
  %78 = getelementptr i8, ptr %3, i64 8800
  br label %79

79:                                               ; preds = %76, %106
  %80 = phi i64 [ %107, %106 ], [ 0, %76 ]
  %81 = mul nuw nsw i64 %80, 8800
  %82 = getelementptr i8, ptr %3, i64 %81
  %83 = getelementptr i8, ptr %78, i64 %81
  br label %84

84:                                               ; preds = %94, %79
  %85 = phi i64 [ 0, %79 ], [ %101, %94 ]
  %86 = getelementptr inbounds [1100 x double], ptr %3, i64 %80, i64 %85
  %87 = getelementptr inbounds double, ptr %86, i64 2
  %88 = load <2 x double>, ptr %86, align 8, !tbaa !5
  %89 = load <2 x double>, ptr %87, align 8, !tbaa !5
  %90 = fmul <2 x double> %88, <double 1.200000e+00, double 1.200000e+00>
  %91 = fmul <2 x double> %89, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %90, ptr %86, align 8, !tbaa !5
  store <2 x double> %91, ptr %87, align 8, !tbaa !5
  %92 = or disjoint i64 %85, 4
  %93 = icmp eq i64 %92, 1100
  br i1 %93, label %102, label %94, !llvm.loop !22

94:                                               ; preds = %84
  %95 = getelementptr inbounds [1100 x double], ptr %3, i64 %80, i64 %92
  %96 = getelementptr inbounds double, ptr %95, i64 2
  %97 = load <2 x double>, ptr %95, align 8, !tbaa !5
  %98 = load <2 x double>, ptr %96, align 8, !tbaa !5
  %99 = fmul <2 x double> %97, <double 1.200000e+00, double 1.200000e+00>
  %100 = fmul <2 x double> %98, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %99, ptr %95, align 8, !tbaa !5
  store <2 x double> %100, ptr %96, align 8, !tbaa !5
  %101 = add nuw nsw i64 %85, 8
  br label %84

102:                                              ; preds = %84
  %103 = icmp ult ptr %82, %77
  %104 = icmp ult ptr %5, %83
  %105 = and i1 %103, %104
  br label %109

106:                                              ; preds = %131
  %107 = add nuw nsw i64 %80, 1
  %108 = icmp eq i64 %107, 1000
  br i1 %108, label %149, label %79, !llvm.loop !23

109:                                              ; preds = %102, %131
  %110 = phi i64 [ %132, %131 ], [ 0, %102 ]
  %111 = getelementptr inbounds [1200 x double], ptr %4, i64 %80, i64 %110
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = fmul double %112, 1.500000e+00
  br i1 %105, label %134, label %114

114:                                              ; preds = %109
  %115 = insertelement <2 x double> poison, double %113, i64 0
  %116 = shufflevector <2 x double> %115, <2 x double> poison, <2 x i32> zeroinitializer
  br label %117

117:                                              ; preds = %117, %114
  %118 = phi i64 [ 0, %114 ], [ %129, %117 ]
  %119 = getelementptr inbounds [1100 x double], ptr %5, i64 %110, i64 %118
  %120 = getelementptr inbounds double, ptr %119, i64 2
  %121 = load <2 x double>, ptr %119, align 8, !tbaa !5, !alias.scope !24
  %122 = load <2 x double>, ptr %120, align 8, !tbaa !5, !alias.scope !24
  %123 = getelementptr inbounds [1100 x double], ptr %3, i64 %80, i64 %118
  %124 = getelementptr inbounds double, ptr %123, i64 2
  %125 = load <2 x double>, ptr %123, align 8, !tbaa !5, !alias.scope !27, !noalias !24
  %126 = load <2 x double>, ptr %124, align 8, !tbaa !5, !alias.scope !27, !noalias !24
  %127 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %116, <2 x double> %121, <2 x double> %125)
  %128 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %116, <2 x double> %122, <2 x double> %126)
  store <2 x double> %127, ptr %123, align 8, !tbaa !5, !alias.scope !27, !noalias !24
  store <2 x double> %128, ptr %124, align 8, !tbaa !5, !alias.scope !27, !noalias !24
  %129 = add nuw i64 %118, 4
  %130 = icmp eq i64 %129, 1100
  br i1 %130, label %131, label %117, !llvm.loop !29

131:                                              ; preds = %117, %134
  %132 = add nuw nsw i64 %110, 1
  %133 = icmp eq i64 %132, 1200
  br i1 %133, label %106, label %109, !llvm.loop !30

134:                                              ; preds = %109, %134
  %135 = phi i64 [ %147, %134 ], [ 0, %109 ]
  %136 = getelementptr inbounds [1100 x double], ptr %5, i64 %110, i64 %135
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds [1100 x double], ptr %3, i64 %80, i64 %135
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %113, double %137, double %139)
  store double %140, ptr %138, align 8, !tbaa !5
  %141 = or disjoint i64 %135, 1
  %142 = getelementptr inbounds [1100 x double], ptr %5, i64 %110, i64 %141
  %143 = load double, ptr %142, align 8, !tbaa !5
  %144 = getelementptr inbounds [1100 x double], ptr %3, i64 %80, i64 %141
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = tail call double @llvm.fmuladd.f64(double %113, double %143, double %145)
  store double %146, ptr %144, align 8, !tbaa !5
  %147 = add nuw nsw i64 %135, 2
  %148 = icmp eq i64 %147, 1100
  br i1 %148, label %131, label %134, !llvm.loop !31

149:                                              ; preds = %106
  %150 = load ptr, ptr @stdout, align 8, !tbaa !32
  %151 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %150)
  %152 = load ptr, ptr @stdout, align 8, !tbaa !32
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %154

154:                                              ; preds = %157, %149
  %155 = phi i64 [ 0, %149 ], [ %158, %157 ]
  %156 = mul nuw nsw i64 %155, 1000
  br label %160

157:                                              ; preds = %169
  %158 = add nuw nsw i64 %155, 1
  %159 = icmp eq i64 %158, 1000
  br i1 %159, label %176, label %154, !llvm.loop !34

160:                                              ; preds = %169, %154
  %161 = phi i64 [ 0, %154 ], [ %174, %169 ]
  %162 = add nuw nsw i64 %161, %156
  %163 = trunc i64 %162 to i32
  %164 = urem i32 %163, 20
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load ptr, ptr @stdout, align 8, !tbaa !32
  %168 = tail call i32 @fputc(i32 10, ptr %167)
  br label %169

169:                                              ; preds = %166, %160
  %170 = load ptr, ptr @stdout, align 8, !tbaa !32
  %171 = getelementptr inbounds [1100 x double], ptr %3, i64 %155, i64 %161
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef nonnull @.str.4, double noundef %172)
  %174 = add nuw nsw i64 %161, 1
  %175 = icmp eq i64 %174, 1100
  br i1 %175, label %157, label %160, !llvm.loop !35

176:                                              ; preds = %157
  %177 = load ptr, ptr @stdout, align 8, !tbaa !32
  %178 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %179 = load ptr, ptr @stdout, align 8, !tbaa !32
  %180 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %179)
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
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !15, !16, !17}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15, !16}
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !7, i64 0}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
