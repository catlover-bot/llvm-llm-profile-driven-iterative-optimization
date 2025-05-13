; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gramschmidt_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gramschmidt_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #9
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #9
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #9
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = icmp ult i64 %8, 16
  br label %10

10:                                               ; preds = %2, %41
  %11 = phi i64 [ 0, %2 ], [ %42, %41 ]
  br i1 %9, label %29, label %12

12:                                               ; preds = %10
  %13 = insertelement <2 x i64> poison, i64 %11, i64 0
  %14 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %26, %15 ]
  %17 = phi <2 x i64> [ <i64 0, i64 1>, %12 ], [ %27, %15 ]
  %18 = mul nuw nsw <2 x i64> %17, %14
  %19 = trunc <2 x i64> %18 to <2 x i32>
  %20 = urem <2 x i32> %19, <i32 1000, i32 1000>
  %21 = sitofp <2 x i32> %20 to <2 x double>
  %22 = fdiv <2 x double> %21, <double 1.000000e+03, double 1.000000e+03>
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> <double 1.000000e+02, double 1.000000e+02>, <2 x double> <double 1.000000e+01, double 1.000000e+01>)
  %24 = getelementptr inbounds [1200 x double], ptr %3, i64 %11, i64 %16
  store <2 x double> %23, ptr %24, align 8, !tbaa !5
  %25 = getelementptr inbounds [1200 x double], ptr %6, i64 %11, i64 %16
  store <2 x double> zeroinitializer, ptr %25, align 8, !tbaa !5
  %26 = add nuw i64 %16, 2
  %27 = add <2 x i64> %17, <i64 2, i64 2>
  %28 = icmp eq i64 %26, 1200
  br i1 %28, label %41, label %15, !llvm.loop !9

29:                                               ; preds = %10, %29
  %30 = phi i64 [ %39, %29 ], [ 0, %10 ]
  %31 = mul nuw nsw i64 %30, %11
  %32 = trunc i64 %31 to i32
  %33 = urem i32 %32, 1000
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 1.000000e+03
  %36 = tail call double @llvm.fmuladd.f64(double %35, double 1.000000e+02, double 1.000000e+01)
  %37 = getelementptr inbounds [1200 x double], ptr %3, i64 %11, i64 %30
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = getelementptr inbounds [1200 x double], ptr %6, i64 %11, i64 %30
  store double 0.000000e+00, ptr %38, align 8, !tbaa !5
  %39 = add nuw nsw i64 %30, 1
  %40 = icmp eq i64 %39, 1200
  br i1 %40, label %41, label %29, !llvm.loop !13

41:                                               ; preds = %15, %29
  %42 = add nuw nsw i64 %11, 1
  %43 = icmp eq i64 %42, 1000
  br i1 %43, label %44, label %10, !llvm.loop !14

44:                                               ; preds = %41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11520000) %5, i8 0, i64 11520000, i1 false), !tbaa !5
  br label %48

45:                                               ; preds = %132, %92
  %46 = add nuw nsw i64 %50, 1
  %47 = icmp eq i64 %93, 1200
  br i1 %47, label %135, label %48, !llvm.loop !15

48:                                               ; preds = %45, %44
  %49 = phi i64 [ 0, %44 ], [ %93, %45 ]
  %50 = phi i64 [ 1, %44 ], [ %46, %45 ]
  br label %51

51:                                               ; preds = %51, %48
  %52 = phi i64 [ 0, %48 ], [ %73, %51 ]
  %53 = phi double [ 0.000000e+00, %48 ], [ %72, %51 ]
  %54 = getelementptr inbounds [1200 x double], ptr %3, i64 %52, i64 %49
  %55 = load double, ptr %54, align 8, !tbaa !5
  %56 = tail call double @llvm.fmuladd.f64(double %55, double %55, double %53)
  %57 = add nuw nsw i64 %52, 1
  %58 = getelementptr inbounds [1200 x double], ptr %3, i64 %57, i64 %49
  %59 = load double, ptr %58, align 8, !tbaa !5
  %60 = tail call double @llvm.fmuladd.f64(double %59, double %59, double %56)
  %61 = add nuw nsw i64 %52, 2
  %62 = getelementptr inbounds [1200 x double], ptr %3, i64 %61, i64 %49
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = tail call double @llvm.fmuladd.f64(double %63, double %63, double %60)
  %65 = add nuw nsw i64 %52, 3
  %66 = getelementptr inbounds [1200 x double], ptr %3, i64 %65, i64 %49
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = tail call double @llvm.fmuladd.f64(double %67, double %67, double %64)
  %69 = add nuw nsw i64 %52, 4
  %70 = getelementptr inbounds [1200 x double], ptr %3, i64 %69, i64 %49
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = tail call double @llvm.fmuladd.f64(double %71, double %71, double %68)
  %73 = add nuw nsw i64 %52, 5
  %74 = icmp eq i64 %73, 1000
  br i1 %74, label %75, label %51, !llvm.loop !16

75:                                               ; preds = %51
  %76 = tail call double @sqrt(double noundef %72) #9
  %77 = getelementptr inbounds [1200 x double], ptr %5, i64 %49, i64 %49
  store double %76, ptr %77, align 8, !tbaa !5
  %78 = fdiv double 1.000000e+00, %76
  br label %79

79:                                               ; preds = %79, %75
  %80 = phi i64 [ 0, %75 ], [ %90, %79 ]
  %81 = getelementptr inbounds [1200 x double], ptr %3, i64 %80, i64 %49
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = fmul double %78, %82
  %84 = getelementptr inbounds [1200 x double], ptr %6, i64 %80, i64 %49
  store double %83, ptr %84, align 8, !tbaa !5
  %85 = or disjoint i64 %80, 1
  %86 = getelementptr inbounds [1200 x double], ptr %3, i64 %85, i64 %49
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = fmul double %78, %87
  %89 = getelementptr inbounds [1200 x double], ptr %6, i64 %85, i64 %49
  store double %88, ptr %89, align 8, !tbaa !5
  %90 = add nuw nsw i64 %80, 2
  %91 = icmp eq i64 %90, 1000
  br i1 %91, label %92, label %79, !llvm.loop !17

92:                                               ; preds = %79
  %93 = add nuw nsw i64 %49, 1
  %94 = icmp ult i64 %49, 1199
  br i1 %94, label %95, label %45

95:                                               ; preds = %92, %132
  %96 = phi i64 [ %133, %132 ], [ %50, %92 ]
  br label %97

97:                                               ; preds = %97, %95
  %98 = phi i64 [ 0, %95 ], [ %111, %97 ]
  %99 = phi double [ 0.000000e+00, %95 ], [ %110, %97 ]
  %100 = getelementptr inbounds [1200 x double], ptr %6, i64 %98, i64 %49
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = getelementptr inbounds [1200 x double], ptr %3, i64 %98, i64 %96
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = tail call double @llvm.fmuladd.f64(double %101, double %103, double %99)
  %105 = or disjoint i64 %98, 1
  %106 = getelementptr inbounds [1200 x double], ptr %6, i64 %105, i64 %49
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds [1200 x double], ptr %3, i64 %105, i64 %96
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %107, double %109, double %104)
  %111 = add nuw nsw i64 %98, 2
  %112 = icmp eq i64 %111, 1000
  br i1 %112, label %113, label %97, !llvm.loop !18

113:                                              ; preds = %97
  %114 = getelementptr inbounds [1200 x double], ptr %5, i64 %49, i64 %96
  store double %110, ptr %114, align 8, !tbaa !5
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi i64 [ 0, %113 ], [ %130, %115 ]
  %117 = getelementptr inbounds [1200 x double], ptr %6, i64 %116, i64 %49
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = getelementptr inbounds [1200 x double], ptr %3, i64 %116, i64 %96
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = fneg double %118
  %122 = tail call double @llvm.fmuladd.f64(double %121, double %110, double %120)
  store double %122, ptr %119, align 8, !tbaa !5
  %123 = or disjoint i64 %116, 1
  %124 = getelementptr inbounds [1200 x double], ptr %6, i64 %123, i64 %49
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds [1200 x double], ptr %3, i64 %123, i64 %96
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = fneg double %125
  %129 = tail call double @llvm.fmuladd.f64(double %128, double %110, double %127)
  store double %129, ptr %126, align 8, !tbaa !5
  %130 = add nuw nsw i64 %116, 2
  %131 = icmp eq i64 %130, 1000
  br i1 %131, label %132, label %115, !llvm.loop !19

132:                                              ; preds = %115
  %133 = add nuw nsw i64 %96, 1
  %134 = icmp eq i64 %133, 1200
  br i1 %134, label %45, label %95, !llvm.loop !20

135:                                              ; preds = %45
  %136 = load ptr, ptr @stdout, align 8, !tbaa !21
  %137 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %136)
  %138 = load ptr, ptr @stdout, align 8, !tbaa !21
  %139 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %140

140:                                              ; preds = %159, %135
  %141 = phi i64 [ 0, %135 ], [ %160, %159 ]
  %142 = mul nuw nsw i64 %141, 1200
  br label %143

143:                                              ; preds = %152, %140
  %144 = phi i64 [ 0, %140 ], [ %157, %152 ]
  %145 = add nuw nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  %147 = urem i32 %146, 20
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load ptr, ptr @stdout, align 8, !tbaa !21
  %151 = tail call i32 @fputc(i32 10, ptr %150)
  br label %152

152:                                              ; preds = %149, %143
  %153 = load ptr, ptr @stdout, align 8, !tbaa !21
  %154 = getelementptr inbounds [1200 x double], ptr %5, i64 %141, i64 %144
  %155 = load double, ptr %154, align 8, !tbaa !5
  %156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef nonnull @.str.4, double noundef %155)
  %157 = add nuw nsw i64 %144, 1
  %158 = icmp eq i64 %157, 1200
  br i1 %158, label %159, label %143, !llvm.loop !23

159:                                              ; preds = %152
  %160 = add nuw nsw i64 %141, 1
  %161 = icmp eq i64 %160, 1200
  br i1 %161, label %162, label %140, !llvm.loop !24

162:                                              ; preds = %159
  %163 = load ptr, ptr @stdout, align 8, !tbaa !21
  %164 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %165 = load ptr, ptr @stdout, align 8, !tbaa !21
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6)
  br label %167

167:                                              ; preds = %186, %162
  %168 = phi i64 [ 0, %162 ], [ %187, %186 ]
  %169 = mul nuw nsw i64 %168, 1200
  br label %170

170:                                              ; preds = %179, %167
  %171 = phi i64 [ 0, %167 ], [ %184, %179 ]
  %172 = add nuw nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  %174 = urem i32 %173, 20
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load ptr, ptr @stdout, align 8, !tbaa !21
  %178 = tail call i32 @fputc(i32 10, ptr %177)
  br label %179

179:                                              ; preds = %176, %170
  %180 = load ptr, ptr @stdout, align 8, !tbaa !21
  %181 = getelementptr inbounds [1200 x double], ptr %6, i64 %168, i64 %171
  %182 = load double, ptr %181, align 8, !tbaa !5
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.4, double noundef %182)
  %184 = add nuw nsw i64 %171, 1
  %185 = icmp eq i64 %184, 1200
  br i1 %185, label %186, label %170, !llvm.loop !25

186:                                              ; preds = %179
  %187 = add nuw nsw i64 %168, 1
  %188 = icmp eq i64 %187, 1000
  br i1 %188, label %189, label %167, !llvm.loop !26

189:                                              ; preds = %186
  %190 = load ptr, ptr @stdout, align 8, !tbaa !21
  %191 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %192 = load ptr, ptr @stdout, align 8, !tbaa !21
  %193 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %192)
  tail call void @free(ptr noundef %3) #9
  tail call void @free(ptr noundef %5) #9
  tail call void @free(ptr noundef nonnull %6) #9
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
