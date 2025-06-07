; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syr2k_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syr2k_opt_2.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #6
  %5 = ptrtoint ptr %4 to i64
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #6
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %5
  %9 = icmp ult i64 %8, 16
  br label %10

10:                                               ; preds = %2, %65
  %11 = phi i64 [ 0, %2 ], [ %66, %65 ]
  br i1 %9, label %33, label %12

12:                                               ; preds = %10
  %13 = insertelement <2 x i64> poison, i64 %11, i64 0
  %14 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %30, %15 ]
  %17 = phi <2 x i64> [ <i64 0, i64 1>, %12 ], [ %31, %15 ]
  %18 = mul nuw nsw <2 x i64> %17, %14
  %19 = trunc <2 x i64> %18 to <2 x i32>
  %20 = add <2 x i32> %19, <i32 1, i32 1>
  %21 = urem <2 x i32> %20, <i32 1200, i32 1200>
  %22 = sitofp <2 x i32> %21 to <2 x double>
  %23 = fdiv <2 x double> %22, <double 1.200000e+03, double 1.200000e+03>
  %24 = getelementptr inbounds [1000 x double], ptr %4, i64 %11, i64 %16
  store <2 x double> %23, ptr %24, align 8, !tbaa !5
  %25 = add <2 x i32> %19, <i32 2, i32 2>
  %26 = urem <2 x i32> %25, <i32 1000, i32 1000>
  %27 = sitofp <2 x i32> %26 to <2 x double>
  %28 = fdiv <2 x double> %27, <double 1.000000e+03, double 1.000000e+03>
  %29 = getelementptr inbounds [1000 x double], ptr %6, i64 %11, i64 %16
  store <2 x double> %28, ptr %29, align 8, !tbaa !5
  %30 = add nuw i64 %16, 2
  %31 = add <2 x i64> %17, <i64 2, i64 2>
  %32 = icmp eq i64 %30, 1000
  br i1 %32, label %49, label %15, !llvm.loop !9

33:                                               ; preds = %10, %33
  %34 = phi i64 [ %47, %33 ], [ 0, %10 ]
  %35 = mul nuw nsw i64 %34, %11
  %36 = trunc i64 %35 to i32
  %37 = add i32 %36, 1
  %38 = urem i32 %37, 1200
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.200000e+03
  %41 = getelementptr inbounds [1000 x double], ptr %4, i64 %11, i64 %34
  store double %40, ptr %41, align 8, !tbaa !5
  %42 = add i32 %36, 2
  %43 = urem i32 %42, 1000
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+03
  %46 = getelementptr inbounds [1000 x double], ptr %6, i64 %11, i64 %34
  store double %45, ptr %46, align 8, !tbaa !5
  %47 = add nuw nsw i64 %34, 1
  %48 = icmp eq i64 %47, 1000
  br i1 %48, label %49, label %33, !llvm.loop !13

49:                                               ; preds = %15, %33
  %50 = insertelement <2 x i64> poison, i64 %11, i64 0
  %51 = shufflevector <2 x i64> %50, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi i64 [ 0, %49 ], [ %62, %52 ]
  %54 = phi <2 x i64> [ <i64 0, i64 1>, %49 ], [ %63, %52 ]
  %55 = mul nuw nsw <2 x i64> %54, %51
  %56 = trunc <2 x i64> %55 to <2 x i32>
  %57 = add <2 x i32> %56, <i32 3, i32 3>
  %58 = urem <2 x i32> %57, <i32 1200, i32 1200>
  %59 = sitofp <2 x i32> %58 to <2 x double>
  %60 = fdiv <2 x double> %59, <double 1.000000e+03, double 1.000000e+03>
  %61 = getelementptr inbounds [1200 x double], ptr %3, i64 %11, i64 %53
  store <2 x double> %60, ptr %61, align 8, !tbaa !5
  %62 = add nuw i64 %53, 2
  %63 = add <2 x i64> %54, <i64 2, i64 2>
  %64 = icmp eq i64 %62, 1200
  br i1 %64, label %65, label %52, !llvm.loop !14

65:                                               ; preds = %52
  %66 = add nuw nsw i64 %11, 1
  %67 = icmp eq i64 %66, 1200
  br i1 %67, label %68, label %10, !llvm.loop !15

68:                                               ; preds = %65, %133
  %69 = phi i64 [ %134, %133 ], [ 0, %65 ]
  %70 = phi i64 [ %135, %133 ], [ 1, %65 ]
  %71 = icmp ult i64 %70, 4
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = and i64 %70, 9223372036854775804
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %82, %74 ]
  %76 = getelementptr inbounds [1200 x double], ptr %3, i64 %69, i64 %75
  %77 = getelementptr inbounds double, ptr %76, i64 2
  %78 = load <2 x double>, ptr %76, align 8, !tbaa !5
  %79 = load <2 x double>, ptr %77, align 8, !tbaa !5
  %80 = fmul <2 x double> %78, <double 1.200000e+00, double 1.200000e+00>
  %81 = fmul <2 x double> %79, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %80, ptr %76, align 8, !tbaa !5
  store <2 x double> %81, ptr %77, align 8, !tbaa !5
  %82 = add nuw i64 %75, 4
  %83 = icmp eq i64 %82, %73
  br i1 %83, label %84, label %74, !llvm.loop !16

84:                                               ; preds = %74
  %85 = icmp eq i64 %70, %73
  br i1 %85, label %95, label %86

86:                                               ; preds = %68, %84
  %87 = phi i64 [ 0, %68 ], [ %73, %84 ]
  br label %88

88:                                               ; preds = %86, %88
  %89 = phi i64 [ %93, %88 ], [ %87, %86 ]
  %90 = getelementptr inbounds [1200 x double], ptr %3, i64 %69, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = fmul double %91, 1.200000e+00
  store double %92, ptr %90, align 8, !tbaa !5
  %93 = add nuw nsw i64 %89, 1
  %94 = icmp eq i64 %93, %70
  br i1 %94, label %95, label %88, !llvm.loop !17

95:                                               ; preds = %88, %84
  br label %96

96:                                               ; preds = %95, %130
  %97 = phi i64 [ %131, %130 ], [ 0, %95 ]
  %98 = getelementptr inbounds [1000 x double], ptr %6, i64 %69, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = fmul double %99, 1.500000e+00
  %101 = getelementptr inbounds [1000 x double], ptr %4, i64 %69, i64 %97
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = fmul double %102, 1.500000e+00
  br label %104

104:                                              ; preds = %127, %96
  %105 = phi i64 [ 0, %96 ], [ %128, %127 ]
  %106 = getelementptr inbounds [1000 x double], ptr %4, i64 %105, i64 %97
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds [1000 x double], ptr %6, i64 %105, i64 %97
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = fmul double %103, %109
  %111 = tail call double @llvm.fmuladd.f64(double %107, double %100, double %110)
  %112 = getelementptr inbounds [1200 x double], ptr %3, i64 %69, i64 %105
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = fadd double %113, %111
  store double %114, ptr %112, align 8, !tbaa !5
  %115 = icmp ult i64 %105, %69
  br i1 %115, label %116, label %127

116:                                              ; preds = %104
  %117 = or disjoint i64 %105, 1
  %118 = getelementptr inbounds [1000 x double], ptr %4, i64 %117, i64 %97
  %119 = load double, ptr %118, align 8, !tbaa !5
  %120 = getelementptr inbounds [1000 x double], ptr %6, i64 %117, i64 %97
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = fmul double %103, %121
  %123 = tail call double @llvm.fmuladd.f64(double %119, double %100, double %122)
  %124 = getelementptr inbounds [1200 x double], ptr %3, i64 %69, i64 %117
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = fadd double %125, %123
  store double %126, ptr %124, align 8, !tbaa !5
  br label %127

127:                                              ; preds = %116, %104
  %128 = add nuw nsw i64 %105, 2
  %129 = icmp ugt i64 %128, %69
  br i1 %129, label %130, label %104, !llvm.loop !18

130:                                              ; preds = %127
  %131 = add nuw nsw i64 %97, 1
  %132 = icmp eq i64 %131, 1000
  br i1 %132, label %133, label %96, !llvm.loop !19

133:                                              ; preds = %130
  %134 = add nuw nsw i64 %69, 1
  %135 = add nuw nsw i64 %70, 1
  %136 = icmp eq i64 %134, 1200
  br i1 %136, label %137, label %68, !llvm.loop !20

137:                                              ; preds = %133
  %138 = load ptr, ptr @stdout, align 8, !tbaa !21
  %139 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %138)
  %140 = load ptr, ptr @stdout, align 8, !tbaa !21
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %142

142:                                              ; preds = %161, %137
  %143 = phi i64 [ 0, %137 ], [ %162, %161 ]
  %144 = mul nuw nsw i64 %143, 1200
  br label %145

145:                                              ; preds = %154, %142
  %146 = phi i64 [ 0, %142 ], [ %159, %154 ]
  %147 = add nuw nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  %149 = urem i32 %148, 20
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load ptr, ptr @stdout, align 8, !tbaa !21
  %153 = tail call i32 @fputc(i32 10, ptr %152)
  br label %154

154:                                              ; preds = %151, %145
  %155 = load ptr, ptr @stdout, align 8, !tbaa !21
  %156 = getelementptr inbounds [1200 x double], ptr %3, i64 %143, i64 %146
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.4, double noundef %157)
  %159 = add nuw nsw i64 %146, 1
  %160 = icmp eq i64 %159, 1200
  br i1 %160, label %161, label %145, !llvm.loop !23

161:                                              ; preds = %154
  %162 = add nuw nsw i64 %143, 1
  %163 = icmp eq i64 %162, 1200
  br i1 %163, label %164, label %142, !llvm.loop !24

164:                                              ; preds = %161
  %165 = load ptr, ptr @stdout, align 8, !tbaa !21
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %167 = load ptr, ptr @stdout, align 8, !tbaa !21
  %168 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %167)
  tail call void @free(ptr noundef nonnull %3) #6
  tail call void @free(ptr noundef %4) #6
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !12, !11}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
