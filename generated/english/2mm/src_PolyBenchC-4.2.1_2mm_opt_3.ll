; ModuleID = 'outputs/src_PolyBenchC-4.2.1_2mm_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_2mm_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 720000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 880000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 990000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1080000, i32 noundef 8) #6
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 960000, i32 noundef 8) #6
  br label %8

8:                                                ; preds = %2, %25
  %9 = phi i64 [ 0, %2 ], [ %26, %25 ]
  %10 = insertelement <2 x i64> poison, i64 %9, i64 0
  %11 = shufflevector <2 x i64> %10, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i64 [ 0, %8 ], [ %22, %12 ]
  %14 = phi <2 x i64> [ <i64 0, i64 1>, %8 ], [ %23, %12 ]
  %15 = mul nuw nsw <2 x i64> %14, %11
  %16 = trunc <2 x i64> %15 to <2 x i32>
  %17 = add <2 x i32> %16, <i32 1, i32 1>
  %18 = urem <2 x i32> %17, <i32 800, i32 800>
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, <double 8.000000e+02, double 8.000000e+02>
  %21 = getelementptr inbounds [1100 x double], ptr %4, i64 %9, i64 %13
  store <2 x double> %20, ptr %21, align 8, !tbaa !5
  %22 = add nuw i64 %13, 2
  %23 = add <2 x i64> %14, <i64 2, i64 2>
  %24 = icmp eq i64 %22, 1100
  br i1 %24, label %25, label %12, !llvm.loop !9

25:                                               ; preds = %12
  %26 = add nuw nsw i64 %9, 1
  %27 = icmp eq i64 %26, 800
  br i1 %27, label %28, label %8, !llvm.loop !13

28:                                               ; preds = %25, %45
  %29 = phi i64 [ %46, %45 ], [ 0, %25 ]
  %30 = insertelement <2 x i64> poison, i64 %29, i64 0
  %31 = shufflevector <2 x i64> %30, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi i64 [ 0, %28 ], [ %42, %32 ]
  %34 = phi <2 x i64> [ <i64 0, i64 1>, %28 ], [ %43, %32 ]
  %35 = add nuw nsw <2 x i64> %34, <i64 1, i64 1>
  %36 = mul nuw nsw <2 x i64> %35, %31
  %37 = trunc <2 x i64> %36 to <2 x i32>
  %38 = urem <2 x i32> %37, <i32 900, i32 900>
  %39 = sitofp <2 x i32> %38 to <2 x double>
  %40 = fdiv <2 x double> %39, <double 9.000000e+02, double 9.000000e+02>
  %41 = getelementptr inbounds [900 x double], ptr %5, i64 %29, i64 %33
  store <2 x double> %40, ptr %41, align 8, !tbaa !5
  %42 = add nuw i64 %33, 2
  %43 = add <2 x i64> %34, <i64 2, i64 2>
  %44 = icmp eq i64 %42, 900
  br i1 %44, label %45, label %32, !llvm.loop !14

45:                                               ; preds = %32
  %46 = add nuw nsw i64 %29, 1
  %47 = icmp eq i64 %46, 1100
  br i1 %47, label %48, label %28, !llvm.loop !15

48:                                               ; preds = %45, %66
  %49 = phi i64 [ %67, %66 ], [ 0, %45 ]
  %50 = insertelement <2 x i64> poison, i64 %49, i64 0
  %51 = shufflevector <2 x i64> %50, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %52

52:                                               ; preds = %52, %48
  %53 = phi i64 [ 0, %48 ], [ %63, %52 ]
  %54 = phi <2 x i64> [ <i64 0, i64 1>, %48 ], [ %64, %52 ]
  %55 = add nuw nsw <2 x i64> %54, <i64 3, i64 3>
  %56 = mul nuw nsw <2 x i64> %55, %51
  %57 = trunc <2 x i64> %56 to <2 x i32>
  %58 = add <2 x i32> %57, <i32 1, i32 1>
  %59 = urem <2 x i32> %58, <i32 1200, i32 1200>
  %60 = sitofp <2 x i32> %59 to <2 x double>
  %61 = fdiv <2 x double> %60, <double 1.200000e+03, double 1.200000e+03>
  %62 = getelementptr inbounds [1200 x double], ptr %6, i64 %49, i64 %53
  store <2 x double> %61, ptr %62, align 8, !tbaa !5
  %63 = add nuw i64 %53, 2
  %64 = add <2 x i64> %54, <i64 2, i64 2>
  %65 = icmp eq i64 %63, 1200
  br i1 %65, label %66, label %52, !llvm.loop !16

66:                                               ; preds = %52
  %67 = add nuw nsw i64 %49, 1
  %68 = icmp eq i64 %67, 900
  br i1 %68, label %69, label %48, !llvm.loop !17

69:                                               ; preds = %66, %86
  %70 = phi i64 [ %87, %86 ], [ 0, %66 ]
  %71 = insertelement <2 x i64> poison, i64 %70, i64 0
  %72 = shufflevector <2 x i64> %71, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %73

73:                                               ; preds = %73, %69
  %74 = phi i64 [ 0, %69 ], [ %83, %73 ]
  %75 = phi <2 x i64> [ <i64 0, i64 1>, %69 ], [ %84, %73 ]
  %76 = add nuw nsw <2 x i64> %75, <i64 2, i64 2>
  %77 = mul nuw nsw <2 x i64> %76, %72
  %78 = trunc <2 x i64> %77 to <2 x i32>
  %79 = urem <2 x i32> %78, <i32 1100, i32 1100>
  %80 = sitofp <2 x i32> %79 to <2 x double>
  %81 = fdiv <2 x double> %80, <double 1.100000e+03, double 1.100000e+03>
  %82 = getelementptr inbounds [1200 x double], ptr %7, i64 %70, i64 %74
  store <2 x double> %81, ptr %82, align 8, !tbaa !5
  %83 = add nuw i64 %74, 2
  %84 = add <2 x i64> %75, <i64 2, i64 2>
  %85 = icmp eq i64 %83, 1200
  br i1 %85, label %86, label %73, !llvm.loop !18

86:                                               ; preds = %73
  %87 = add nuw nsw i64 %70, 1
  %88 = icmp eq i64 %87, 800
  br i1 %88, label %89, label %69, !llvm.loop !19

89:                                               ; preds = %86, %93
  %90 = phi i64 [ %94, %93 ], [ 0, %86 ]
  br label %91

91:                                               ; preds = %96, %89
  %92 = phi i64 [ 0, %89 ], [ %99, %96 ]
  br label %101

93:                                               ; preds = %96
  %94 = add nuw nsw i64 %90, 1
  %95 = icmp eq i64 %94, 800
  br i1 %95, label %117, label %89, !llvm.loop !20

96:                                               ; preds = %101
  %97 = fmul double %114, 1.500000e+00
  %98 = getelementptr inbounds [900 x double], ptr %3, i64 %90, i64 %92
  store double %97, ptr %98, align 8, !tbaa !5
  %99 = add nuw nsw i64 %92, 1
  %100 = icmp eq i64 %99, 900
  br i1 %100, label %93, label %91, !llvm.loop !21

101:                                              ; preds = %101, %91
  %102 = phi i64 [ 0, %91 ], [ %115, %101 ]
  %103 = phi double [ 0.000000e+00, %91 ], [ %114, %101 ]
  %104 = getelementptr inbounds [1100 x double], ptr %4, i64 %90, i64 %102
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds [900 x double], ptr %5, i64 %102, i64 %92
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = tail call double @llvm.fmuladd.f64(double %105, double %107, double %103)
  %109 = or disjoint i64 %102, 1
  %110 = getelementptr inbounds [1100 x double], ptr %4, i64 %90, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = getelementptr inbounds [900 x double], ptr %5, i64 %109, i64 %92
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = tail call double @llvm.fmuladd.f64(double %111, double %113, double %108)
  %115 = add nuw nsw i64 %102, 2
  %116 = icmp eq i64 %115, 1100
  br i1 %116, label %96, label %101, !llvm.loop !22

117:                                              ; preds = %93, %119
  %118 = phi i64 [ %120, %119 ], [ 0, %93 ]
  br label %122

119:                                              ; preds = %127
  %120 = add nuw nsw i64 %118, 1
  %121 = icmp eq i64 %120, 800
  br i1 %121, label %152, label %117, !llvm.loop !23

122:                                              ; preds = %127, %117
  %123 = phi i64 [ 0, %117 ], [ %128, %127 ]
  %124 = getelementptr inbounds [1200 x double], ptr %7, i64 %118, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = fmul double %125, 1.200000e+00
  br label %130

127:                                              ; preds = %130
  store double %149, ptr %124, align 8, !tbaa !5
  %128 = add nuw nsw i64 %123, 1
  %129 = icmp eq i64 %128, 1200
  br i1 %129, label %119, label %122, !llvm.loop !24

130:                                              ; preds = %130, %122
  %131 = phi i64 [ 0, %122 ], [ %150, %130 ]
  %132 = phi double [ %126, %122 ], [ %149, %130 ]
  %133 = getelementptr inbounds [900 x double], ptr %3, i64 %118, i64 %131
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = getelementptr inbounds [1200 x double], ptr %6, i64 %131, i64 %123
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = tail call double @llvm.fmuladd.f64(double %134, double %136, double %132)
  %138 = add nuw nsw i64 %131, 1
  %139 = getelementptr inbounds [900 x double], ptr %3, i64 %118, i64 %138
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = getelementptr inbounds [1200 x double], ptr %6, i64 %138, i64 %123
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = tail call double @llvm.fmuladd.f64(double %140, double %142, double %137)
  %144 = add nuw nsw i64 %131, 2
  %145 = getelementptr inbounds [900 x double], ptr %3, i64 %118, i64 %144
  %146 = load double, ptr %145, align 8, !tbaa !5
  %147 = getelementptr inbounds [1200 x double], ptr %6, i64 %144, i64 %123
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = tail call double @llvm.fmuladd.f64(double %146, double %148, double %143)
  %150 = add nuw nsw i64 %131, 3
  %151 = icmp eq i64 %150, 900
  br i1 %151, label %127, label %130, !llvm.loop !25

152:                                              ; preds = %119
  %153 = load ptr, ptr @stdout, align 8, !tbaa !26
  %154 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %153)
  %155 = load ptr, ptr @stdout, align 8, !tbaa !26
  %156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %157

157:                                              ; preds = %160, %152
  %158 = phi i64 [ 0, %152 ], [ %161, %160 ]
  %159 = mul nuw nsw i64 %158, 800
  br label %163

160:                                              ; preds = %172
  %161 = add nuw nsw i64 %158, 1
  %162 = icmp eq i64 %161, 800
  br i1 %162, label %179, label %157, !llvm.loop !28

163:                                              ; preds = %172, %157
  %164 = phi i64 [ 0, %157 ], [ %177, %172 ]
  %165 = add nuw nsw i64 %164, %159
  %166 = trunc i64 %165 to i32
  %167 = urem i32 %166, 20
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load ptr, ptr @stdout, align 8, !tbaa !26
  %171 = tail call i32 @fputc(i32 10, ptr %170)
  br label %172

172:                                              ; preds = %169, %163
  %173 = load ptr, ptr @stdout, align 8, !tbaa !26
  %174 = getelementptr inbounds [1200 x double], ptr %7, i64 %158, i64 %164
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.4, double noundef %175)
  %177 = add nuw nsw i64 %164, 1
  %178 = icmp eq i64 %177, 1200
  br i1 %178, label %160, label %163, !llvm.loop !29

179:                                              ; preds = %160
  %180 = load ptr, ptr @stdout, align 8, !tbaa !26
  %181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %182 = load ptr, ptr @stdout, align 8, !tbaa !26
  %183 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %182)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef %5) #6
  tail call void @free(ptr noundef %6) #6
  tail call void @free(ptr noundef nonnull %7) #6
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
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
