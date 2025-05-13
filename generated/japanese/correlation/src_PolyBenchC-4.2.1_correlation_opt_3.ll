; ModuleID = 'outputs/src_PolyBenchC-4.2.1_correlation_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_correlation_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"corr\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [1200 x double], align 16
  %4 = alloca [1200 x double], align 16
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 8) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #8
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #8
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #8
  br label %9

9:                                                ; preds = %2, %29
  %10 = phi i64 [ 0, %2 ], [ %30, %29 ]
  %11 = trunc i64 %10 to i32
  %12 = sitofp i32 %11 to double
  %13 = insertelement <2 x i64> poison, i64 %10, i64 0
  %14 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> zeroinitializer
  %15 = insertelement <2 x double> poison, double %12, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi i64 [ 0, %9 ], [ %26, %17 ]
  %19 = phi <2 x i64> [ <i64 0, i64 1>, %9 ], [ %27, %17 ]
  %20 = mul nuw nsw <2 x i64> %19, %14
  %21 = trunc <2 x i64> %20 to <2 x i32>
  %22 = sitofp <2 x i32> %21 to <2 x double>
  %23 = fdiv <2 x double> %22, <double 1.200000e+03, double 1.200000e+03>
  %24 = fadd <2 x double> %23, %16
  %25 = getelementptr inbounds [1200 x double], ptr %5, i64 %10, i64 %18
  store <2 x double> %24, ptr %25, align 8, !tbaa !5
  %26 = add nuw i64 %18, 2
  %27 = add <2 x i64> %19, <i64 2, i64 2>
  %28 = icmp eq i64 %26, 1200
  br i1 %28, label %29, label %17, !llvm.loop !9

29:                                               ; preds = %17
  %30 = add nuw nsw i64 %10, 1
  %31 = icmp eq i64 %30, 1400
  br i1 %31, label %32, label %9, !llvm.loop !13

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 9600, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 9600, ptr nonnull %4) #8
  br label %33

33:                                               ; preds = %35, %32
  %34 = phi i64 [ 0, %32 ], [ %38, %35 ]
  br label %40

35:                                               ; preds = %40
  %36 = fdiv double %61, 1.400000e+03
  %37 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %34
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, 1200
  br i1 %39, label %64, label %33, !llvm.loop !14

40:                                               ; preds = %40, %33
  %41 = phi i64 [ 0, %33 ], [ %62, %40 ]
  %42 = phi double [ 0.000000e+00, %33 ], [ %61, %40 ]
  %43 = getelementptr inbounds [1200 x double], ptr %5, i64 %41, i64 %34
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = fadd double %42, %44
  %46 = add nuw nsw i64 %41, 1
  %47 = getelementptr inbounds [1200 x double], ptr %5, i64 %46, i64 %34
  %48 = load double, ptr %47, align 8, !tbaa !5
  %49 = fadd double %45, %48
  %50 = add nuw nsw i64 %41, 2
  %51 = getelementptr inbounds [1200 x double], ptr %5, i64 %50, i64 %34
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = fadd double %49, %52
  %54 = add nuw nsw i64 %41, 3
  %55 = getelementptr inbounds [1200 x double], ptr %5, i64 %54, i64 %34
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = fadd double %53, %56
  %58 = add nuw nsw i64 %41, 4
  %59 = getelementptr inbounds [1200 x double], ptr %5, i64 %58, i64 %34
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = fadd double %57, %60
  %62 = add nuw nsw i64 %41, 5
  %63 = icmp eq i64 %62, 1400
  br i1 %63, label %35, label %40, !llvm.loop !15

64:                                               ; preds = %35, %68
  %65 = phi i64 [ %74, %68 ], [ 0, %35 ]
  %66 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !5
  br label %76

68:                                               ; preds = %76
  %69 = fdiv double %97, 1.400000e+03
  %70 = tail call double @sqrt(double noundef %69) #8
  %71 = fcmp ole double %70, 1.000000e-01
  %72 = select i1 %71, double 1.000000e+00, double %70
  %73 = getelementptr inbounds [1200 x double], ptr %4, i64 0, i64 %65
  store double %72, ptr %73, align 8, !tbaa !5
  %74 = add nuw nsw i64 %65, 1
  %75 = icmp eq i64 %74, 1200
  br i1 %75, label %100, label %64, !llvm.loop !16

76:                                               ; preds = %76, %64
  %77 = phi i64 [ 0, %64 ], [ %98, %76 ]
  %78 = phi double [ 0.000000e+00, %64 ], [ %97, %76 ]
  %79 = getelementptr inbounds [1200 x double], ptr %5, i64 %77, i64 %65
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = fsub double %80, %67
  %82 = tail call double @llvm.fmuladd.f64(double %81, double %81, double %78)
  %83 = or disjoint i64 %77, 1
  %84 = getelementptr inbounds [1200 x double], ptr %5, i64 %83, i64 %65
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = fsub double %85, %67
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %86, double %82)
  %88 = or disjoint i64 %77, 2
  %89 = getelementptr inbounds [1200 x double], ptr %5, i64 %88, i64 %65
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = fsub double %90, %67
  %92 = tail call double @llvm.fmuladd.f64(double %91, double %91, double %87)
  %93 = or disjoint i64 %77, 3
  %94 = getelementptr inbounds [1200 x double], ptr %5, i64 %93, i64 %65
  %95 = load double, ptr %94, align 8, !tbaa !5
  %96 = fsub double %95, %67
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %96, double %92)
  %98 = add nuw nsw i64 %77, 4
  %99 = icmp eq i64 %98, 1400
  br i1 %99, label %68, label %76, !llvm.loop !17

100:                                              ; preds = %68, %125
  %101 = phi i64 [ %126, %125 ], [ 0, %68 ]
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i64 [ 0, %100 ], [ %123, %102 ]
  %104 = getelementptr inbounds [1200 x double], ptr %5, i64 %101, i64 %103
  %105 = load <2 x double>, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %103
  %107 = load <2 x double>, ptr %106, align 16, !tbaa !5
  %108 = fsub <2 x double> %105, %107
  %109 = getelementptr inbounds [1200 x double], ptr %4, i64 0, i64 %103
  %110 = load <2 x double>, ptr %109, align 16, !tbaa !5
  %111 = fmul <2 x double> %110, <double 0x4042B5524AE1278E, double 0x4042B5524AE1278E>
  %112 = fdiv <2 x double> %108, %111
  store <2 x double> %112, ptr %104, align 8, !tbaa !5
  %113 = or disjoint i64 %103, 2
  %114 = getelementptr inbounds [1200 x double], ptr %5, i64 %101, i64 %113
  %115 = load <2 x double>, ptr %114, align 8, !tbaa !5
  %116 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %113
  %117 = load <2 x double>, ptr %116, align 16, !tbaa !5
  %118 = fsub <2 x double> %115, %117
  %119 = getelementptr inbounds [1200 x double], ptr %4, i64 0, i64 %113
  %120 = load <2 x double>, ptr %119, align 16, !tbaa !5
  %121 = fmul <2 x double> %120, <double 0x4042B5524AE1278E, double 0x4042B5524AE1278E>
  %122 = fdiv <2 x double> %118, %121
  store <2 x double> %122, ptr %114, align 8, !tbaa !5
  %123 = add nuw nsw i64 %103, 4
  %124 = icmp eq i64 %123, 1200
  br i1 %124, label %125, label %102, !llvm.loop !18

125:                                              ; preds = %102
  %126 = add nuw nsw i64 %101, 1
  %127 = icmp eq i64 %126, 1400
  br i1 %127, label %132, label %100, !llvm.loop !19

128:                                              ; preds = %138
  %129 = add nuw nsw i64 %133, 1
  %130 = add nuw nsw i64 %134, 1
  %131 = icmp eq i64 %129, 1199
  br i1 %131, label %159, label %132, !llvm.loop !20

132:                                              ; preds = %125, %128
  %133 = phi i64 [ %129, %128 ], [ 0, %125 ]
  %134 = phi i64 [ %130, %128 ], [ 1, %125 ]
  %135 = getelementptr inbounds [1200 x double], ptr %6, i64 %133, i64 %133
  store double 1.000000e+00, ptr %135, align 8, !tbaa !5
  br label %136

136:                                              ; preds = %138, %132
  %137 = phi i64 [ %134, %132 ], [ %141, %138 ]
  br label %143

138:                                              ; preds = %143
  %139 = getelementptr inbounds [1200 x double], ptr %6, i64 %133, i64 %137
  store double %156, ptr %139, align 8, !tbaa !5
  %140 = getelementptr inbounds [1200 x double], ptr %6, i64 %137, i64 %133
  store double %156, ptr %140, align 8, !tbaa !5
  %141 = add nuw nsw i64 %137, 1
  %142 = icmp eq i64 %141, 1200
  br i1 %142, label %128, label %136, !llvm.loop !21

143:                                              ; preds = %143, %136
  %144 = phi i64 [ 0, %136 ], [ %157, %143 ]
  %145 = phi double [ 0.000000e+00, %136 ], [ %156, %143 ]
  %146 = getelementptr inbounds [1200 x double], ptr %5, i64 %144, i64 %133
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = getelementptr inbounds [1200 x double], ptr %5, i64 %144, i64 %137
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = tail call double @llvm.fmuladd.f64(double %147, double %149, double %145)
  %151 = or disjoint i64 %144, 1
  %152 = getelementptr inbounds [1200 x double], ptr %5, i64 %151, i64 %133
  %153 = load double, ptr %152, align 8, !tbaa !5
  %154 = getelementptr inbounds [1200 x double], ptr %5, i64 %151, i64 %137
  %155 = load double, ptr %154, align 8, !tbaa !5
  %156 = tail call double @llvm.fmuladd.f64(double %153, double %155, double %150)
  %157 = add nuw nsw i64 %144, 2
  %158 = icmp eq i64 %157, 1400
  br i1 %158, label %138, label %143, !llvm.loop !22

159:                                              ; preds = %128
  call void @llvm.lifetime.end.p0(i64 9600, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 9600, ptr nonnull %3) #8
  %160 = getelementptr inbounds [1200 x double], ptr %6, i64 1199, i64 1199
  store double 1.000000e+00, ptr %160, align 8, !tbaa !5
  %161 = load ptr, ptr @stdout, align 8, !tbaa !23
  %162 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %161)
  %163 = load ptr, ptr @stdout, align 8, !tbaa !23
  %164 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %165

165:                                              ; preds = %168, %159
  %166 = phi i64 [ 0, %159 ], [ %169, %168 ]
  %167 = mul nuw nsw i64 %166, 1200
  br label %171

168:                                              ; preds = %180
  %169 = add nuw nsw i64 %166, 1
  %170 = icmp eq i64 %169, 1200
  br i1 %170, label %187, label %165, !llvm.loop !25

171:                                              ; preds = %180, %165
  %172 = phi i64 [ 0, %165 ], [ %185, %180 ]
  %173 = add nuw nsw i64 %172, %167
  %174 = trunc i64 %173 to i32
  %175 = urem i32 %174, 20
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load ptr, ptr @stdout, align 8, !tbaa !23
  %179 = tail call i32 @fputc(i32 10, ptr %178)
  br label %180

180:                                              ; preds = %177, %171
  %181 = load ptr, ptr @stdout, align 8, !tbaa !23
  %182 = getelementptr inbounds [1200 x double], ptr %6, i64 %166, i64 %172
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef nonnull @.str.4, double noundef %183)
  %185 = add nuw nsw i64 %172, 1
  %186 = icmp eq i64 %185, 1200
  br i1 %186, label %168, label %171, !llvm.loop !26

187:                                              ; preds = %168
  %188 = load ptr, ptr @stdout, align 8, !tbaa !23
  %189 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %190 = load ptr, ptr @stdout, align 8, !tbaa !23
  %191 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %190)
  tail call void @free(ptr noundef %5) #8
  tail call void @free(ptr noundef nonnull %6) #8
  tail call void @free(ptr noundef %7) #8
  tail call void @free(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
