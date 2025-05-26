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

89:                                               ; preds = %86, %129
  %90 = phi i64 [ %130, %129 ], [ 0, %86 ]
  br label %91

91:                                               ; preds = %125, %89
  %92 = phi i64 [ 0, %89 ], [ %127, %125 ]
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i64 [ 0, %91 ], [ %123, %93 ]
  %95 = phi double [ 0.000000e+00, %91 ], [ %122, %93 ]
  %96 = or disjoint i64 %94, 1
  %97 = getelementptr inbounds [1100 x double], ptr %4, i64 %90, i64 %94
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = fmul double %98, 1.500000e+00
  %100 = getelementptr inbounds [900 x double], ptr %5, i64 %94, i64 %92
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = tail call double @llvm.fmuladd.f64(double %99, double %101, double %95)
  %103 = getelementptr inbounds [1100 x double], ptr %4, i64 %90, i64 %96
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = fmul double %104, 1.500000e+00
  %106 = getelementptr inbounds [900 x double], ptr %5, i64 %96, i64 %92
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = tail call double @llvm.fmuladd.f64(double %105, double %107, double %102)
  %109 = or disjoint i64 %94, 2
  %110 = getelementptr inbounds [1100 x double], ptr %4, i64 %90, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = fmul double %111, 1.500000e+00
  %113 = getelementptr inbounds [900 x double], ptr %5, i64 %109, i64 %92
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = tail call double @llvm.fmuladd.f64(double %112, double %114, double %108)
  %116 = or disjoint i64 %94, 3
  %117 = getelementptr inbounds [1100 x double], ptr %4, i64 %90, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = fmul double %118, 1.500000e+00
  %120 = getelementptr inbounds [900 x double], ptr %5, i64 %116, i64 %92
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = tail call double @llvm.fmuladd.f64(double %119, double %121, double %115)
  %123 = add nuw nsw i64 %94, 4
  %124 = icmp ult i64 %94, 1096
  br i1 %124, label %93, label %125, !llvm.loop !20

125:                                              ; preds = %93
  %126 = getelementptr inbounds [900 x double], ptr %3, i64 %90, i64 %92
  store double %122, ptr %126, align 8, !tbaa !5
  %127 = add nuw nsw i64 %92, 1
  %128 = icmp eq i64 %127, 900
  br i1 %128, label %129, label %91, !llvm.loop !21

129:                                              ; preds = %125
  %130 = add nuw nsw i64 %90, 1
  %131 = icmp eq i64 %130, 800
  br i1 %131, label %132, label %89, !llvm.loop !22

132:                                              ; preds = %129, %170
  %133 = phi i64 [ %171, %170 ], [ 0, %129 ]
  br label %134

134:                                              ; preds = %167, %132
  %135 = phi i64 [ 0, %132 ], [ %168, %167 ]
  %136 = getelementptr inbounds [1200 x double], ptr %7, i64 %133, i64 %135
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = fmul double %137, 1.200000e+00
  br label %139

139:                                              ; preds = %139, %134
  %140 = phi i64 [ 0, %134 ], [ %165, %139 ]
  %141 = phi double [ %138, %134 ], [ %164, %139 ]
  %142 = or disjoint i64 %140, 1
  %143 = getelementptr inbounds [900 x double], ptr %3, i64 %133, i64 %140
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = getelementptr inbounds [1200 x double], ptr %6, i64 %140, i64 %135
  %146 = load double, ptr %145, align 8, !tbaa !5
  %147 = tail call double @llvm.fmuladd.f64(double %144, double %146, double %141)
  %148 = getelementptr inbounds [900 x double], ptr %3, i64 %133, i64 %142
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds [1200 x double], ptr %6, i64 %142, i64 %135
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %149, double %151, double %147)
  %153 = or disjoint i64 %140, 2
  %154 = getelementptr inbounds [900 x double], ptr %3, i64 %133, i64 %153
  %155 = load double, ptr %154, align 8, !tbaa !5
  %156 = getelementptr inbounds [1200 x double], ptr %6, i64 %153, i64 %135
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = tail call double @llvm.fmuladd.f64(double %155, double %157, double %152)
  %159 = or disjoint i64 %140, 3
  %160 = getelementptr inbounds [900 x double], ptr %3, i64 %133, i64 %159
  %161 = load double, ptr %160, align 8, !tbaa !5
  %162 = getelementptr inbounds [1200 x double], ptr %6, i64 %159, i64 %135
  %163 = load double, ptr %162, align 8, !tbaa !5
  %164 = tail call double @llvm.fmuladd.f64(double %161, double %163, double %158)
  %165 = add nuw nsw i64 %140, 4
  %166 = icmp ult i64 %140, 896
  br i1 %166, label %139, label %167, !llvm.loop !23

167:                                              ; preds = %139
  store double %164, ptr %136, align 8, !tbaa !5
  %168 = add nuw nsw i64 %135, 1
  %169 = icmp eq i64 %168, 1200
  br i1 %169, label %170, label %134, !llvm.loop !24

170:                                              ; preds = %167
  %171 = add nuw nsw i64 %133, 1
  %172 = icmp eq i64 %171, 800
  br i1 %172, label %173, label %132, !llvm.loop !25

173:                                              ; preds = %170
  %174 = load ptr, ptr @stdout, align 8, !tbaa !26
  %175 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %174)
  %176 = load ptr, ptr @stdout, align 8, !tbaa !26
  %177 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %178

178:                                              ; preds = %197, %173
  %179 = phi i64 [ 0, %173 ], [ %198, %197 ]
  %180 = mul nuw nsw i64 %179, 800
  br label %181

181:                                              ; preds = %190, %178
  %182 = phi i64 [ 0, %178 ], [ %195, %190 ]
  %183 = add nuw nsw i64 %182, %180
  %184 = trunc i64 %183 to i32
  %185 = urem i32 %184, 20
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load ptr, ptr @stdout, align 8, !tbaa !26
  %189 = tail call i32 @fputc(i32 10, ptr %188)
  br label %190

190:                                              ; preds = %187, %181
  %191 = load ptr, ptr @stdout, align 8, !tbaa !26
  %192 = getelementptr inbounds [1200 x double], ptr %7, i64 %179, i64 %182
  %193 = load double, ptr %192, align 8, !tbaa !5
  %194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef nonnull @.str.4, double noundef %193)
  %195 = add nuw nsw i64 %182, 1
  %196 = icmp eq i64 %195, 1200
  br i1 %196, label %197, label %181, !llvm.loop !28

197:                                              ; preds = %190
  %198 = add nuw nsw i64 %179, 1
  %199 = icmp eq i64 %198, 800
  br i1 %199, label %200, label %178, !llvm.loop !29

200:                                              ; preds = %197
  %201 = load ptr, ptr @stdout, align 8, !tbaa !26
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %203 = load ptr, ptr @stdout, align 8, !tbaa !26
  %204 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %203)
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
