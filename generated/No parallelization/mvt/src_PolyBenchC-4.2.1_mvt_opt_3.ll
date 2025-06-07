; ModuleID = 'outputs/src_PolyBenchC-4.2.1_mvt_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_mvt_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  br label %8

8:                                                ; preds = %47, %2
  %9 = phi i64 [ 0, %2 ], [ %13, %47 ]
  %10 = trunc i64 %9 to i32
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %11, 2.000000e+03
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 2000
  %15 = trunc i64 %13 to i32
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 2.000000e+03
  %18 = select i1 %14, double 0.000000e+00, double %17
  %19 = icmp ult i64 %9, 1997
  %20 = select i1 %19, i32 3, i32 -1997
  %21 = add nsw i32 %20, %10
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 2.000000e+03
  %24 = icmp ult i64 %9, 1996
  %25 = select i1 %24, i32 4, i32 -1996
  %26 = add nsw i32 %25, %10
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 2.000000e+03
  %29 = getelementptr inbounds double, ptr %4, i64 %9
  store double %12, ptr %29, align 8, !tbaa !5
  %30 = getelementptr inbounds double, ptr %5, i64 %9
  store double %18, ptr %30, align 8, !tbaa !5
  %31 = getelementptr inbounds double, ptr %6, i64 %9
  store double %23, ptr %31, align 8, !tbaa !5
  %32 = getelementptr inbounds double, ptr %7, i64 %9
  store double %28, ptr %32, align 8, !tbaa !5
  %33 = insertelement <2 x i64> poison, i64 %9, i64 0
  %34 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %35

35:                                               ; preds = %35, %8
  %36 = phi i64 [ 0, %8 ], [ %44, %35 ]
  %37 = phi <2 x i64> [ <i64 0, i64 1>, %8 ], [ %45, %35 ]
  %38 = mul nuw nsw <2 x i64> %37, %34
  %39 = trunc <2 x i64> %38 to <2 x i32>
  %40 = urem <2 x i32> %39, <i32 2000, i32 2000>
  %41 = sitofp <2 x i32> %40 to <2 x double>
  %42 = fdiv <2 x double> %41, <double 2.000000e+03, double 2.000000e+03>
  %43 = getelementptr inbounds [2000 x double], ptr %3, i64 %9, i64 %36
  store <2 x double> %42, ptr %43, align 8, !tbaa !5
  %44 = add nuw i64 %36, 2
  %45 = add <2 x i64> %37, <i64 2, i64 2>
  %46 = icmp eq i64 %44, 2000
  br i1 %46, label %47, label %35, !llvm.loop !9

47:                                               ; preds = %35
  br i1 %14, label %48, label %8, !llvm.loop !13

48:                                               ; preds = %47, %116
  %49 = phi i64 [ %119, %116 ], [ 0, %47 ]
  %50 = getelementptr inbounds double, ptr %4, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = getelementptr inbounds double, ptr %5, i64 %49
  %53 = load double, ptr %52, align 8, !tbaa !5
  %54 = insertelement <2 x double> poison, double %53, i64 0
  %55 = insertelement <2 x double> %54, double %51, i64 1
  br label %56

56:                                               ; preds = %56, %48
  %57 = phi i64 [ 0, %48 ], [ %114, %56 ]
  %58 = phi <2 x double> [ %55, %48 ], [ %113, %56 ]
  %59 = or disjoint i64 %57, 1
  %60 = getelementptr inbounds [2000 x double], ptr %3, i64 %57, i64 %49
  %61 = load double, ptr %60, align 8, !tbaa !5
  %62 = getelementptr inbounds double, ptr %7, i64 %57
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %57
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds double, ptr %6, i64 %57
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %59
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds double, ptr %6, i64 %59
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = getelementptr inbounds [2000 x double], ptr %3, i64 %59, i64 %49
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds double, ptr %7, i64 %59
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = or disjoint i64 %57, 2
  %77 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %76
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = getelementptr inbounds double, ptr %6, i64 %76
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = getelementptr inbounds [2000 x double], ptr %3, i64 %76, i64 %49
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds double, ptr %7, i64 %76
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = insertelement <2 x double> poison, double %61, i64 0
  %86 = insertelement <2 x double> %85, double %65, i64 1
  %87 = insertelement <2 x double> poison, double %63, i64 0
  %88 = insertelement <2 x double> %87, double %67, i64 1
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %86, <2 x double> %88, <2 x double> %58)
  %90 = insertelement <2 x double> poison, double %73, i64 0
  %91 = insertelement <2 x double> %90, double %69, i64 1
  %92 = insertelement <2 x double> poison, double %75, i64 0
  %93 = insertelement <2 x double> %92, double %71, i64 1
  %94 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %91, <2 x double> %93, <2 x double> %89)
  %95 = insertelement <2 x double> poison, double %82, i64 0
  %96 = insertelement <2 x double> %95, double %78, i64 1
  %97 = insertelement <2 x double> poison, double %84, i64 0
  %98 = insertelement <2 x double> %97, double %80, i64 1
  %99 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %98, <2 x double> %94)
  %100 = or disjoint i64 %57, 3
  %101 = getelementptr inbounds [2000 x double], ptr %3, i64 %49, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = getelementptr inbounds double, ptr %6, i64 %100
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds [2000 x double], ptr %3, i64 %100, i64 %49
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = getelementptr inbounds double, ptr %7, i64 %100
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = insertelement <2 x double> poison, double %106, i64 0
  %110 = insertelement <2 x double> %109, double %102, i64 1
  %111 = insertelement <2 x double> poison, double %108, i64 0
  %112 = insertelement <2 x double> %111, double %104, i64 1
  %113 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %110, <2 x double> %112, <2 x double> %99)
  %114 = add nuw nsw i64 %57, 4
  %115 = icmp ult i64 %57, 1996
  br i1 %115, label %56, label %116, !llvm.loop !14

116:                                              ; preds = %56
  %117 = extractelement <2 x double> %113, i64 1
  store double %117, ptr %50, align 8, !tbaa !5
  %118 = extractelement <2 x double> %113, i64 0
  store double %118, ptr %52, align 8, !tbaa !5
  %119 = add nuw nsw i64 %49, 1
  %120 = icmp eq i64 %119, 2000
  br i1 %120, label %121, label %48, !llvm.loop !15

121:                                              ; preds = %116
  %122 = load ptr, ptr @stdout, align 8, !tbaa !16
  %123 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %122)
  %124 = load ptr, ptr @stdout, align 8, !tbaa !16
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %131

126:                                              ; preds = %139
  %127 = load ptr, ptr @stdout, align 8, !tbaa !16
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %129 = load ptr, ptr @stdout, align 8, !tbaa !16
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6)
  br label %146

131:                                              ; preds = %139, %121
  %132 = phi i64 [ 0, %121 ], [ %144, %139 ]
  %133 = trunc i64 %132 to i16
  %134 = urem i16 %133, 20
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load ptr, ptr @stdout, align 8, !tbaa !16
  %138 = tail call i32 @fputc(i32 10, ptr %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load ptr, ptr @stdout, align 8, !tbaa !16
  %141 = getelementptr inbounds double, ptr %4, i64 %132
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.4, double noundef %142)
  %144 = add nuw nsw i64 %132, 1
  %145 = icmp eq i64 %144, 2000
  br i1 %145, label %126, label %131, !llvm.loop !18

146:                                              ; preds = %154, %126
  %147 = phi i64 [ 0, %126 ], [ %159, %154 ]
  %148 = trunc i64 %147 to i16
  %149 = urem i16 %148, 20
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load ptr, ptr @stdout, align 8, !tbaa !16
  %153 = tail call i32 @fputc(i32 10, ptr %152)
  br label %154

154:                                              ; preds = %151, %146
  %155 = load ptr, ptr @stdout, align 8, !tbaa !16
  %156 = getelementptr inbounds double, ptr %5, i64 %147
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.4, double noundef %157)
  %159 = add nuw nsw i64 %147, 1
  %160 = icmp eq i64 %159, 2000
  br i1 %160, label %161, label %146, !llvm.loop !19

161:                                              ; preds = %154
  %162 = load ptr, ptr @stdout, align 8, !tbaa !16
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %164 = load ptr, ptr @stdout, align 8, !tbaa !16
  %165 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %164)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef nonnull %5) #6
  tail call void @free(ptr noundef %6) #6
  tail call void @free(ptr noundef %7) #6
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
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
