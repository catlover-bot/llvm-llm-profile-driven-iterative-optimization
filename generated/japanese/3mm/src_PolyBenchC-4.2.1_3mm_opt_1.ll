; ModuleID = 'outputs/src_PolyBenchC-4.2.1_3mm_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_3mm_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 720000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 800000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 900000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 990000, i32 noundef 8) #6
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 1080000, i32 noundef 8) #6
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #6
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 880000, i32 noundef 8) #6
  br label %10

10:                                               ; preds = %2, %27
  %11 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %12 = insertelement <2 x i64> poison, i64 %11, i64 0
  %13 = shufflevector <2 x i64> %12, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i64 [ 0, %10 ], [ %24, %14 ]
  %16 = phi <2 x i64> [ <i64 0, i64 1>, %10 ], [ %25, %14 ]
  %17 = mul nuw nsw <2 x i64> %16, %13
  %18 = trunc <2 x i64> %17 to <2 x i32>
  %19 = add <2 x i32> %18, <i32 1, i32 1>
  %20 = urem <2 x i32> %19, <i32 800, i32 800>
  %21 = sitofp <2 x i32> %20 to <2 x double>
  %22 = fdiv <2 x double> %21, <double 4.000000e+03, double 4.000000e+03>
  %23 = getelementptr inbounds [1000 x double], ptr %4, i64 %11, i64 %15
  store <2 x double> %22, ptr %23, align 8, !tbaa !5
  %24 = add nuw i64 %15, 2
  %25 = add <2 x i64> %16, <i64 2, i64 2>
  %26 = icmp eq i64 %24, 1000
  br i1 %26, label %27, label %14, !llvm.loop !9

27:                                               ; preds = %14
  %28 = add nuw nsw i64 %11, 1
  %29 = icmp eq i64 %28, 800
  br i1 %29, label %30, label %10, !llvm.loop !13

30:                                               ; preds = %27, %48
  %31 = phi i64 [ %49, %48 ], [ 0, %27 ]
  %32 = insertelement <2 x i64> poison, i64 %31, i64 0
  %33 = shufflevector <2 x i64> %32, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %34

34:                                               ; preds = %34, %30
  %35 = phi i64 [ 0, %30 ], [ %45, %34 ]
  %36 = phi <2 x i64> [ <i64 0, i64 1>, %30 ], [ %46, %34 ]
  %37 = add nuw nsw <2 x i64> %36, <i64 1, i64 1>
  %38 = mul nuw nsw <2 x i64> %37, %33
  %39 = trunc <2 x i64> %38 to <2 x i32>
  %40 = add <2 x i32> %39, <i32 2, i32 2>
  %41 = urem <2 x i32> %40, <i32 900, i32 900>
  %42 = sitofp <2 x i32> %41 to <2 x double>
  %43 = fdiv <2 x double> %42, <double 4.500000e+03, double 4.500000e+03>
  %44 = getelementptr inbounds [900 x double], ptr %5, i64 %31, i64 %35
  store <2 x double> %43, ptr %44, align 8, !tbaa !5
  %45 = add nuw i64 %35, 2
  %46 = add <2 x i64> %36, <i64 2, i64 2>
  %47 = icmp eq i64 %45, 900
  br i1 %47, label %48, label %34, !llvm.loop !14

48:                                               ; preds = %34
  %49 = add nuw nsw i64 %31, 1
  %50 = icmp eq i64 %49, 1000
  br i1 %50, label %51, label %30, !llvm.loop !15

51:                                               ; preds = %48, %68
  %52 = phi i64 [ %69, %68 ], [ 0, %48 ]
  %53 = insertelement <2 x i64> poison, i64 %52, i64 0
  %54 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %55

55:                                               ; preds = %55, %51
  %56 = phi i64 [ 0, %51 ], [ %65, %55 ]
  %57 = phi <2 x i64> [ <i64 0, i64 1>, %51 ], [ %66, %55 ]
  %58 = add nuw nsw <2 x i64> %57, <i64 3, i64 3>
  %59 = mul nuw nsw <2 x i64> %58, %54
  %60 = trunc <2 x i64> %59 to <2 x i32>
  %61 = urem <2 x i32> %60, <i32 1100, i32 1100>
  %62 = sitofp <2 x i32> %61 to <2 x double>
  %63 = fdiv <2 x double> %62, <double 5.500000e+03, double 5.500000e+03>
  %64 = getelementptr inbounds [1200 x double], ptr %7, i64 %52, i64 %56
  store <2 x double> %63, ptr %64, align 8, !tbaa !5
  %65 = add nuw i64 %56, 2
  %66 = add <2 x i64> %57, <i64 2, i64 2>
  %67 = icmp eq i64 %65, 1200
  br i1 %67, label %68, label %55, !llvm.loop !16

68:                                               ; preds = %55
  %69 = add nuw nsw i64 %52, 1
  %70 = icmp eq i64 %69, 900
  br i1 %70, label %71, label %51, !llvm.loop !17

71:                                               ; preds = %68, %89
  %72 = phi i64 [ %90, %89 ], [ 0, %68 ]
  %73 = insertelement <2 x i64> poison, i64 %72, i64 0
  %74 = shufflevector <2 x i64> %73, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %75

75:                                               ; preds = %75, %71
  %76 = phi i64 [ 0, %71 ], [ %86, %75 ]
  %77 = phi <2 x i64> [ <i64 0, i64 1>, %71 ], [ %87, %75 ]
  %78 = add nuw nsw <2 x i64> %77, <i64 2, i64 2>
  %79 = mul nuw nsw <2 x i64> %78, %74
  %80 = trunc <2 x i64> %79 to <2 x i32>
  %81 = add <2 x i32> %80, <i32 2, i32 2>
  %82 = urem <2 x i32> %81, <i32 1000, i32 1000>
  %83 = sitofp <2 x i32> %82 to <2 x double>
  %84 = fdiv <2 x double> %83, <double 5.000000e+03, double 5.000000e+03>
  %85 = getelementptr inbounds [1100 x double], ptr %8, i64 %72, i64 %76
  store <2 x double> %84, ptr %85, align 8, !tbaa !5
  %86 = add nuw i64 %76, 2
  %87 = add <2 x i64> %77, <i64 2, i64 2>
  %88 = icmp eq i64 %86, 1100
  br i1 %88, label %89, label %75, !llvm.loop !18

89:                                               ; preds = %75
  %90 = add nuw nsw i64 %72, 1
  %91 = icmp eq i64 %90, 1200
  br i1 %91, label %92, label %71, !llvm.loop !19

92:                                               ; preds = %89, %116
  %93 = phi i64 [ %117, %116 ], [ 0, %89 ]
  br label %94

94:                                               ; preds = %112, %92
  %95 = phi i64 [ 0, %92 ], [ %114, %112 ]
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i64 [ 0, %94 ], [ %110, %96 ]
  %98 = phi double [ 0.000000e+00, %94 ], [ %109, %96 ]
  %99 = getelementptr inbounds [1000 x double], ptr %4, i64 %93, i64 %97
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = getelementptr inbounds [900 x double], ptr %5, i64 %97, i64 %95
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = tail call double @llvm.fmuladd.f64(double %100, double %102, double %98)
  %104 = or disjoint i64 %97, 1
  %105 = getelementptr inbounds [1000 x double], ptr %4, i64 %93, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = getelementptr inbounds [900 x double], ptr %5, i64 %104, i64 %95
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = tail call double @llvm.fmuladd.f64(double %106, double %108, double %103)
  %110 = add nuw nsw i64 %97, 2
  %111 = icmp eq i64 %110, 1000
  br i1 %111, label %112, label %96, !llvm.loop !20

112:                                              ; preds = %96
  %113 = getelementptr inbounds [900 x double], ptr %3, i64 %93, i64 %95
  store double %109, ptr %113, align 8, !tbaa !5
  %114 = add nuw nsw i64 %95, 1
  %115 = icmp eq i64 %114, 900
  br i1 %115, label %116, label %94, !llvm.loop !21

116:                                              ; preds = %112
  %117 = add nuw nsw i64 %93, 1
  %118 = icmp eq i64 %117, 800
  br i1 %118, label %119, label %92, !llvm.loop !22

119:                                              ; preds = %116, %149
  %120 = phi i64 [ %150, %149 ], [ 0, %116 ]
  br label %121

121:                                              ; preds = %145, %119
  %122 = phi i64 [ 0, %119 ], [ %147, %145 ]
  br label %123

123:                                              ; preds = %123, %121
  %124 = phi i64 [ 0, %121 ], [ %143, %123 ]
  %125 = phi double [ 0.000000e+00, %121 ], [ %142, %123 ]
  %126 = getelementptr inbounds [1200 x double], ptr %7, i64 %120, i64 %124
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = getelementptr inbounds [1100 x double], ptr %8, i64 %124, i64 %122
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = tail call double @llvm.fmuladd.f64(double %127, double %129, double %125)
  %131 = add nuw nsw i64 %124, 1
  %132 = getelementptr inbounds [1200 x double], ptr %7, i64 %120, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = getelementptr inbounds [1100 x double], ptr %8, i64 %131, i64 %122
  %135 = load double, ptr %134, align 8, !tbaa !5
  %136 = tail call double @llvm.fmuladd.f64(double %133, double %135, double %130)
  %137 = add nuw nsw i64 %124, 2
  %138 = getelementptr inbounds [1200 x double], ptr %7, i64 %120, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = getelementptr inbounds [1100 x double], ptr %8, i64 %137, i64 %122
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %139, double %141, double %136)
  %143 = add nuw nsw i64 %124, 3
  %144 = icmp eq i64 %143, 1200
  br i1 %144, label %145, label %123, !llvm.loop !23

145:                                              ; preds = %123
  %146 = getelementptr inbounds [1100 x double], ptr %6, i64 %120, i64 %122
  store double %142, ptr %146, align 8, !tbaa !5
  %147 = add nuw nsw i64 %122, 1
  %148 = icmp eq i64 %147, 1100
  br i1 %148, label %149, label %121, !llvm.loop !24

149:                                              ; preds = %145
  %150 = add nuw nsw i64 %120, 1
  %151 = icmp eq i64 %150, 900
  br i1 %151, label %152, label %119, !llvm.loop !25

152:                                              ; preds = %149, %182
  %153 = phi i64 [ %183, %182 ], [ 0, %149 ]
  br label %154

154:                                              ; preds = %178, %152
  %155 = phi i64 [ 0, %152 ], [ %180, %178 ]
  br label %156

156:                                              ; preds = %156, %154
  %157 = phi i64 [ 0, %154 ], [ %176, %156 ]
  %158 = phi double [ 0.000000e+00, %154 ], [ %175, %156 ]
  %159 = getelementptr inbounds [900 x double], ptr %3, i64 %153, i64 %157
  %160 = load double, ptr %159, align 8, !tbaa !5
  %161 = getelementptr inbounds [1100 x double], ptr %6, i64 %157, i64 %155
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = tail call double @llvm.fmuladd.f64(double %160, double %162, double %158)
  %164 = add nuw nsw i64 %157, 1
  %165 = getelementptr inbounds [900 x double], ptr %3, i64 %153, i64 %164
  %166 = load double, ptr %165, align 8, !tbaa !5
  %167 = getelementptr inbounds [1100 x double], ptr %6, i64 %164, i64 %155
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = tail call double @llvm.fmuladd.f64(double %166, double %168, double %163)
  %170 = add nuw nsw i64 %157, 2
  %171 = getelementptr inbounds [900 x double], ptr %3, i64 %153, i64 %170
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = getelementptr inbounds [1100 x double], ptr %6, i64 %170, i64 %155
  %174 = load double, ptr %173, align 8, !tbaa !5
  %175 = tail call double @llvm.fmuladd.f64(double %172, double %174, double %169)
  %176 = add nuw nsw i64 %157, 3
  %177 = icmp eq i64 %176, 900
  br i1 %177, label %178, label %156, !llvm.loop !26

178:                                              ; preds = %156
  %179 = getelementptr inbounds [1100 x double], ptr %9, i64 %153, i64 %155
  store double %175, ptr %179, align 8, !tbaa !5
  %180 = add nuw nsw i64 %155, 1
  %181 = icmp eq i64 %180, 1100
  br i1 %181, label %182, label %154, !llvm.loop !27

182:                                              ; preds = %178
  %183 = add nuw nsw i64 %153, 1
  %184 = icmp eq i64 %183, 800
  br i1 %184, label %185, label %152, !llvm.loop !28

185:                                              ; preds = %182
  %186 = load ptr, ptr @stdout, align 8, !tbaa !29
  %187 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %186)
  %188 = load ptr, ptr @stdout, align 8, !tbaa !29
  %189 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %190

190:                                              ; preds = %209, %185
  %191 = phi i64 [ 0, %185 ], [ %210, %209 ]
  %192 = mul nuw nsw i64 %191, 800
  br label %193

193:                                              ; preds = %202, %190
  %194 = phi i64 [ 0, %190 ], [ %207, %202 ]
  %195 = add nuw nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  %197 = urem i32 %196, 20
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load ptr, ptr @stdout, align 8, !tbaa !29
  %201 = tail call i32 @fputc(i32 10, ptr %200)
  br label %202

202:                                              ; preds = %199, %193
  %203 = load ptr, ptr @stdout, align 8, !tbaa !29
  %204 = getelementptr inbounds [1100 x double], ptr %9, i64 %191, i64 %194
  %205 = load double, ptr %204, align 8, !tbaa !5
  %206 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.4, double noundef %205)
  %207 = add nuw nsw i64 %194, 1
  %208 = icmp eq i64 %207, 1100
  br i1 %208, label %209, label %193, !llvm.loop !31

209:                                              ; preds = %202
  %210 = add nuw nsw i64 %191, 1
  %211 = icmp eq i64 %210, 800
  br i1 %211, label %212, label %190, !llvm.loop !32

212:                                              ; preds = %209
  %213 = load ptr, ptr @stdout, align 8, !tbaa !29
  %214 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %215 = load ptr, ptr @stdout, align 8, !tbaa !29
  %216 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %215)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef %5) #6
  tail call void @free(ptr noundef %6) #6
  tail call void @free(ptr noundef %7) #6
  tail call void @free(ptr noundef %8) #6
  tail call void @free(ptr noundef nonnull %9) #6
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
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
