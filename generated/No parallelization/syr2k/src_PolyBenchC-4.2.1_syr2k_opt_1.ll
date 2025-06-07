; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syr2k_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syr2k_opt_1.c"
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

10:                                               ; preds = %2, %49
  %11 = phi i64 [ 0, %2 ], [ %50, %49 ]
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
  %50 = add nuw nsw i64 %11, 1
  %51 = icmp eq i64 %50, 1200
  br i1 %51, label %52, label %10, !llvm.loop !14

52:                                               ; preds = %49, %69
  %53 = phi i64 [ %70, %69 ], [ 0, %49 ]
  %54 = insertelement <2 x i64> poison, i64 %53, i64 0
  %55 = shufflevector <2 x i64> %54, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %56

56:                                               ; preds = %56, %52
  %57 = phi i64 [ 0, %52 ], [ %66, %56 ]
  %58 = phi <2 x i64> [ <i64 0, i64 1>, %52 ], [ %67, %56 ]
  %59 = mul nuw nsw <2 x i64> %58, %55
  %60 = trunc <2 x i64> %59 to <2 x i32>
  %61 = add <2 x i32> %60, <i32 3, i32 3>
  %62 = urem <2 x i32> %61, <i32 1200, i32 1200>
  %63 = sitofp <2 x i32> %62 to <2 x double>
  %64 = fdiv <2 x double> %63, <double 1.000000e+03, double 1.000000e+03>
  %65 = getelementptr inbounds [1200 x double], ptr %3, i64 %53, i64 %57
  store <2 x double> %64, ptr %65, align 8, !tbaa !5
  %66 = add nuw i64 %57, 2
  %67 = add <2 x i64> %58, <i64 2, i64 2>
  %68 = icmp eq i64 %66, 1200
  br i1 %68, label %69, label %56, !llvm.loop !15

69:                                               ; preds = %56
  %70 = add nuw nsw i64 %53, 1
  %71 = icmp eq i64 %70, 1200
  br i1 %71, label %72, label %52, !llvm.loop !16

72:                                               ; preds = %69, %137
  %73 = phi i64 [ %138, %137 ], [ 0, %69 ]
  %74 = phi i64 [ %139, %137 ], [ 1, %69 ]
  %75 = icmp ult i64 %74, 4
  br i1 %75, label %90, label %76

76:                                               ; preds = %72
  %77 = and i64 %74, 9223372036854775804
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi i64 [ 0, %76 ], [ %86, %78 ]
  %80 = getelementptr inbounds [1200 x double], ptr %3, i64 %73, i64 %79
  %81 = getelementptr inbounds double, ptr %80, i64 2
  %82 = load <2 x double>, ptr %80, align 8, !tbaa !5
  %83 = load <2 x double>, ptr %81, align 8, !tbaa !5
  %84 = fmul <2 x double> %82, <double 1.200000e+00, double 1.200000e+00>
  %85 = fmul <2 x double> %83, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %84, ptr %80, align 8, !tbaa !5
  store <2 x double> %85, ptr %81, align 8, !tbaa !5
  %86 = add nuw i64 %79, 4
  %87 = icmp eq i64 %86, %77
  br i1 %87, label %88, label %78, !llvm.loop !17

88:                                               ; preds = %78
  %89 = icmp eq i64 %74, %77
  br i1 %89, label %99, label %90

90:                                               ; preds = %72, %88
  %91 = phi i64 [ 0, %72 ], [ %77, %88 ]
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i64 [ %97, %92 ], [ %91, %90 ]
  %94 = getelementptr inbounds [1200 x double], ptr %3, i64 %73, i64 %93
  %95 = load double, ptr %94, align 8, !tbaa !5
  %96 = fmul double %95, 1.200000e+00
  store double %96, ptr %94, align 8, !tbaa !5
  %97 = add nuw nsw i64 %93, 1
  %98 = icmp eq i64 %97, %74
  br i1 %98, label %99, label %92, !llvm.loop !18

99:                                               ; preds = %92, %88
  br label %100

100:                                              ; preds = %99, %134
  %101 = phi i64 [ %135, %134 ], [ 0, %99 ]
  %102 = getelementptr inbounds [1000 x double], ptr %6, i64 %73, i64 %101
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = fmul double %103, 1.500000e+00
  %105 = getelementptr inbounds [1000 x double], ptr %4, i64 %73, i64 %101
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = fmul double %106, 1.500000e+00
  br label %108

108:                                              ; preds = %131, %100
  %109 = phi i64 [ 0, %100 ], [ %132, %131 ]
  %110 = getelementptr inbounds [1000 x double], ptr %4, i64 %109, i64 %101
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = getelementptr inbounds [1000 x double], ptr %6, i64 %109, i64 %101
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = fmul double %107, %113
  %115 = tail call double @llvm.fmuladd.f64(double %111, double %104, double %114)
  %116 = getelementptr inbounds [1200 x double], ptr %3, i64 %73, i64 %109
  %117 = load double, ptr %116, align 8, !tbaa !5
  %118 = fadd double %117, %115
  store double %118, ptr %116, align 8, !tbaa !5
  %119 = icmp ult i64 %109, %73
  br i1 %119, label %120, label %131

120:                                              ; preds = %108
  %121 = or disjoint i64 %109, 1
  %122 = getelementptr inbounds [1000 x double], ptr %4, i64 %121, i64 %101
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = getelementptr inbounds [1000 x double], ptr %6, i64 %121, i64 %101
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = fmul double %107, %125
  %127 = tail call double @llvm.fmuladd.f64(double %123, double %104, double %126)
  %128 = getelementptr inbounds [1200 x double], ptr %3, i64 %73, i64 %121
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = fadd double %129, %127
  store double %130, ptr %128, align 8, !tbaa !5
  br label %131

131:                                              ; preds = %120, %108
  %132 = add nuw nsw i64 %109, 2
  %133 = icmp ugt i64 %132, %73
  br i1 %133, label %134, label %108, !llvm.loop !19

134:                                              ; preds = %131
  %135 = add nuw nsw i64 %101, 1
  %136 = icmp eq i64 %135, 1000
  br i1 %136, label %137, label %100, !llvm.loop !20

137:                                              ; preds = %134
  %138 = add nuw nsw i64 %73, 1
  %139 = add nuw nsw i64 %74, 1
  %140 = icmp eq i64 %138, 1200
  br i1 %140, label %141, label %72, !llvm.loop !21

141:                                              ; preds = %137
  %142 = load ptr, ptr @stdout, align 8, !tbaa !22
  %143 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %142)
  %144 = load ptr, ptr @stdout, align 8, !tbaa !22
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %146

146:                                              ; preds = %165, %141
  %147 = phi i64 [ 0, %141 ], [ %166, %165 ]
  %148 = mul nuw nsw i64 %147, 1200
  br label %149

149:                                              ; preds = %158, %146
  %150 = phi i64 [ 0, %146 ], [ %163, %158 ]
  %151 = add nuw nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  %153 = urem i32 %152, 20
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load ptr, ptr @stdout, align 8, !tbaa !22
  %157 = tail call i32 @fputc(i32 10, ptr %156)
  br label %158

158:                                              ; preds = %155, %149
  %159 = load ptr, ptr @stdout, align 8, !tbaa !22
  %160 = getelementptr inbounds [1200 x double], ptr %3, i64 %147, i64 %150
  %161 = load double, ptr %160, align 8, !tbaa !5
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef nonnull @.str.4, double noundef %161)
  %163 = add nuw nsw i64 %150, 1
  %164 = icmp eq i64 %163, 1200
  br i1 %164, label %165, label %149, !llvm.loop !24

165:                                              ; preds = %158
  %166 = add nuw nsw i64 %147, 1
  %167 = icmp eq i64 %166, 1200
  br i1 %167, label %168, label %146, !llvm.loop !25

168:                                              ; preds = %165
  %169 = load ptr, ptr @stdout, align 8, !tbaa !22
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %171 = load ptr, ptr @stdout, align 8, !tbaa !22
  %172 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %171)
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
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !12, !11}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
