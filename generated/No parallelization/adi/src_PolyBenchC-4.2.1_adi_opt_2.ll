; ModuleID = 'outputs/src_PolyBenchC-4.2.1_adi_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_adi_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  br label %7

7:                                                ; preds = %2, %30
  %8 = phi i64 [ 0, %2 ], [ %31, %30 ]
  %9 = add nuw nsw i64 %8, 1000
  %10 = insertelement <2 x i64> poison, i64 %9, i64 0
  %11 = shufflevector <2 x i64> %10, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i64 [ 0, %7 ], [ %27, %12 ]
  %14 = phi <2 x i64> [ <i64 0, i64 1>, %7 ], [ %28, %12 ]
  %15 = sub nuw nsw <2 x i64> %11, %14
  %16 = trunc <2 x i64> %15 to <2 x i32>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, <double 1.000000e+03, double 1.000000e+03>
  %19 = getelementptr inbounds [1000 x double], ptr %3, i64 %8, i64 %13
  store <2 x double> %18, ptr %19, align 8, !tbaa !5
  %20 = or disjoint i64 %13, 2
  %21 = add <2 x i64> %14, <i64 2, i64 2>
  %22 = sub nuw nsw <2 x i64> %11, %21
  %23 = trunc <2 x i64> %22 to <2 x i32>
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, <double 1.000000e+03, double 1.000000e+03>
  %26 = getelementptr inbounds [1000 x double], ptr %3, i64 %8, i64 %20
  store <2 x double> %25, ptr %26, align 8, !tbaa !5
  %27 = add nuw nsw i64 %13, 4
  %28 = add <2 x i64> %14, <i64 4, i64 4>
  %29 = icmp eq i64 %27, 1000
  br i1 %29, label %30, label %12, !llvm.loop !9

30:                                               ; preds = %12
  %31 = add nuw nsw i64 %8, 1
  %32 = icmp eq i64 %31, 1000
  br i1 %32, label %33, label %7, !llvm.loop !13

33:                                               ; preds = %30, %143
  %34 = phi i32 [ %144, %143 ], [ 1, %30 ]
  br label %35

35:                                               ; preds = %89, %33
  %36 = phi i64 [ 1, %33 ], [ %43, %89 ]
  %37 = getelementptr inbounds [1000 x double], ptr %4, i64 0, i64 %36
  store double 1.000000e+00, ptr %37, align 8, !tbaa !5
  %38 = getelementptr inbounds [1000 x double], ptr %5, i64 %36
  store double 0.000000e+00, ptr %38, align 8, !tbaa !5
  %39 = load double, ptr %37, align 8, !tbaa !5
  %40 = getelementptr inbounds [1000 x double], ptr %6, i64 %36
  store double %39, ptr %40, align 8, !tbaa !5
  %41 = load double, ptr %38, align 8, !tbaa !5
  %42 = add nsw i64 %36, -1
  %43 = add nuw nsw i64 %36, 1
  br label %44

44:                                               ; preds = %44, %35
  %45 = phi i64 [ 1, %35 ], [ %63, %44 ]
  %46 = phi double [ %39, %35 ], [ %61, %44 ]
  %47 = phi double [ %41, %35 ], [ %49, %44 ]
  %48 = tail call double @llvm.fmuladd.f64(double %47, double 0xC09F400000000001, double 0x40AF420000000001)
  %49 = fdiv double 0x409F400000000001, %48
  %50 = getelementptr inbounds [1000 x double], ptr %5, i64 %36, i64 %45
  store double %49, ptr %50, align 8, !tbaa !5
  %51 = getelementptr inbounds [1000 x double], ptr %3, i64 %45, i64 %42
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds [1000 x double], ptr %3, i64 %45, i64 %36
  %54 = load double, ptr %53, align 8, !tbaa !5
  %55 = fmul double %54, 0xC09F3C0000000001
  %56 = tail call double @llvm.fmuladd.f64(double %52, double 0x408F400000000001, double %55)
  %57 = getelementptr inbounds [1000 x double], ptr %3, i64 %45, i64 %43
  %58 = load double, ptr %57, align 8, !tbaa !5
  %59 = tail call double @llvm.fmuladd.f64(double %58, double 0x408F400000000001, double %56)
  %60 = tail call double @llvm.fmuladd.f64(double %46, double 0x409F400000000001, double %59)
  %61 = fdiv double %60, %48
  %62 = getelementptr inbounds [1000 x double], ptr %6, i64 %36, i64 %45
  store double %61, ptr %62, align 8, !tbaa !5
  %63 = add nuw nsw i64 %45, 1
  %64 = icmp eq i64 %63, 999
  br i1 %64, label %65, label %44, !llvm.loop !14

65:                                               ; preds = %44
  %66 = getelementptr inbounds [1000 x double], ptr %4, i64 999, i64 %36
  store double 1.000000e+00, ptr %66, align 8, !tbaa !5
  %67 = getelementptr [1000 x double], ptr %4, i64 1, i64 %36
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i64 [ 998, %65 ], [ %87, %68 ]
  %70 = getelementptr inbounds [1000 x double], ptr %5, i64 %36, i64 %69
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = getelementptr [1000 x double], ptr %67, i64 %69
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds [1000 x double], ptr %6, i64 %36, i64 %69
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = tail call double @llvm.fmuladd.f64(double %71, double %73, double %75)
  %77 = getelementptr inbounds [1000 x double], ptr %4, i64 %69, i64 %36
  store double %76, ptr %77, align 8, !tbaa !5
  %78 = add nsw i64 %69, -1
  %79 = getelementptr inbounds [1000 x double], ptr %5, i64 %36, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = getelementptr [1000 x double], ptr %67, i64 %78
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds [1000 x double], ptr %6, i64 %36, i64 %78
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = tail call double @llvm.fmuladd.f64(double %80, double %82, double %84)
  %86 = getelementptr inbounds [1000 x double], ptr %4, i64 %78, i64 %36
  store double %85, ptr %86, align 8, !tbaa !5
  %87 = add nsw i64 %69, -2
  %88 = icmp eq i64 %78, 1
  br i1 %88, label %89, label %68, !llvm.loop !15

89:                                               ; preds = %68
  %90 = icmp eq i64 %43, 999
  br i1 %90, label %91, label %35, !llvm.loop !16

91:                                               ; preds = %89, %140
  %92 = phi i64 [ %141, %140 ], [ 1, %89 ]
  %93 = getelementptr inbounds [1000 x double], ptr %3, i64 %92
  store double 1.000000e+00, ptr %93, align 8, !tbaa !5
  %94 = getelementptr inbounds [1000 x double], ptr %5, i64 %92
  store double 0.000000e+00, ptr %94, align 8, !tbaa !5
  %95 = load double, ptr %93, align 8, !tbaa !5
  %96 = getelementptr inbounds [1000 x double], ptr %6, i64 %92
  store double %95, ptr %96, align 8, !tbaa !5
  %97 = load double, ptr %94, align 8, !tbaa !5
  %98 = getelementptr [1000 x double], ptr %4, i64 %92
  br label %99

99:                                               ; preds = %99, %91
  %100 = phi i64 [ 1, %91 ], [ %118, %99 ]
  %101 = phi double [ %95, %91 ], [ %116, %99 ]
  %102 = phi double [ %97, %91 ], [ %104, %99 ]
  %103 = tail call double @llvm.fmuladd.f64(double %102, double 0xC08F400000000001, double 0x409F440000000001)
  %104 = fdiv double 0x408F400000000001, %103
  %105 = getelementptr inbounds [1000 x double], ptr %5, i64 %92, i64 %100
  store double %104, ptr %105, align 8, !tbaa !5
  %106 = getelementptr [1000 x double], ptr %98, i64 -1, i64 %100
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds [1000 x double], ptr %4, i64 %92, i64 %100
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = fmul double %109, 0xC0AF3E0000000001
  %111 = tail call double @llvm.fmuladd.f64(double %107, double 0x409F400000000001, double %110)
  %112 = getelementptr [1000 x double], ptr %98, i64 1, i64 %100
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = tail call double @llvm.fmuladd.f64(double %113, double 0x409F400000000001, double %111)
  %115 = tail call double @llvm.fmuladd.f64(double %101, double 0x408F400000000001, double %114)
  %116 = fdiv double %115, %103
  %117 = getelementptr inbounds [1000 x double], ptr %6, i64 %92, i64 %100
  store double %116, ptr %117, align 8, !tbaa !5
  %118 = add nuw nsw i64 %100, 1
  %119 = icmp eq i64 %118, 999
  br i1 %119, label %120, label %99, !llvm.loop !17

120:                                              ; preds = %99
  %121 = getelementptr inbounds [1000 x double], ptr %3, i64 %92, i64 999
  store double 1.000000e+00, ptr %121, align 8, !tbaa !5
  br label %122

122:                                              ; preds = %122, %120
  %123 = phi double [ 1.000000e+00, %120 ], [ %136, %122 ]
  %124 = phi i64 [ 998, %120 ], [ %138, %122 ]
  %125 = getelementptr inbounds [1000 x double], ptr %5, i64 %92, i64 %124
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = getelementptr inbounds [1000 x double], ptr %6, i64 %92, i64 %124
  %128 = load double, ptr %127, align 8, !tbaa !5
  %129 = tail call double @llvm.fmuladd.f64(double %126, double %123, double %128)
  %130 = getelementptr inbounds [1000 x double], ptr %3, i64 %92, i64 %124
  store double %129, ptr %130, align 8, !tbaa !5
  %131 = add nsw i64 %124, -1
  %132 = getelementptr inbounds [1000 x double], ptr %5, i64 %92, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = getelementptr inbounds [1000 x double], ptr %6, i64 %92, i64 %131
  %135 = load double, ptr %134, align 8, !tbaa !5
  %136 = tail call double @llvm.fmuladd.f64(double %133, double %129, double %135)
  %137 = getelementptr inbounds [1000 x double], ptr %3, i64 %92, i64 %131
  store double %136, ptr %137, align 8, !tbaa !5
  %138 = add nsw i64 %124, -2
  %139 = icmp eq i64 %131, 1
  br i1 %139, label %140, label %122, !llvm.loop !18

140:                                              ; preds = %122
  %141 = add nuw nsw i64 %92, 1
  %142 = icmp eq i64 %141, 999
  br i1 %142, label %143, label %91, !llvm.loop !19

143:                                              ; preds = %140
  %144 = add nuw nsw i32 %34, 1
  %145 = icmp eq i32 %144, 501
  br i1 %145, label %146, label %33, !llvm.loop !20

146:                                              ; preds = %143
  %147 = load ptr, ptr @stdout, align 8, !tbaa !21
  %148 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %147)
  %149 = load ptr, ptr @stdout, align 8, !tbaa !21
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %151

151:                                              ; preds = %170, %146
  %152 = phi i64 [ 0, %146 ], [ %171, %170 ]
  %153 = mul nuw nsw i64 %152, 1000
  br label %154

154:                                              ; preds = %163, %151
  %155 = phi i64 [ 0, %151 ], [ %168, %163 ]
  %156 = add nuw nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  %158 = urem i32 %157, 20
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load ptr, ptr @stdout, align 8, !tbaa !21
  %162 = tail call i32 @fputc(i32 10, ptr %161)
  br label %163

163:                                              ; preds = %160, %154
  %164 = load ptr, ptr @stdout, align 8, !tbaa !21
  %165 = getelementptr inbounds [1000 x double], ptr %3, i64 %152, i64 %155
  %166 = load double, ptr %165, align 8, !tbaa !5
  %167 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef nonnull @.str.4, double noundef %166)
  %168 = add nuw nsw i64 %155, 1
  %169 = icmp eq i64 %168, 1000
  br i1 %169, label %170, label %154, !llvm.loop !23

170:                                              ; preds = %163
  %171 = add nuw nsw i64 %152, 1
  %172 = icmp eq i64 %171, 1000
  br i1 %172, label %173, label %151, !llvm.loop !24

173:                                              ; preds = %170
  %174 = load ptr, ptr @stdout, align 8, !tbaa !21
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %176 = load ptr, ptr @stdout, align 8, !tbaa !21
  %177 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %176)
  tail call void @free(ptr noundef nonnull %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef %5) #6
  tail call void @free(ptr noundef %6) #6
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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
