; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gramschmidt_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gramschmidt_opt_3.c"
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

45:                                               ; preds = %139, %95
  %46 = add nuw nsw i64 %50, 1
  %47 = icmp eq i64 %96, 1200
  br i1 %47, label %142, label %48, !llvm.loop !15

48:                                               ; preds = %45, %44
  %49 = phi i64 [ 0, %44 ], [ %96, %45 ]
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
  %79 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %49
  br label %80

80:                                               ; preds = %80, %75
  %81 = phi i64 [ 0, %75 ], [ %93, %80 ]
  %82 = getelementptr inbounds [1200 x double], ptr %3, i64 %81, i64 %49
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = fmul double %78, %83
  %85 = mul nuw nsw i64 %81, 1200
  %86 = getelementptr inbounds double, ptr %79, i64 %85
  store double %84, ptr %86, align 8, !tbaa !5
  %87 = or disjoint i64 %81, 1
  %88 = getelementptr inbounds [1200 x double], ptr %3, i64 %87, i64 %49
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = fmul double %78, %89
  %91 = mul nuw nsw i64 %87, 1200
  %92 = getelementptr inbounds double, ptr %79, i64 %91
  store double %90, ptr %92, align 8, !tbaa !5
  %93 = add nuw nsw i64 %81, 2
  %94 = icmp eq i64 %93, 1000
  br i1 %94, label %95, label %80, !llvm.loop !17

95:                                               ; preds = %80
  %96 = add nuw nsw i64 %49, 1
  %97 = icmp ult i64 %49, 1199
  br i1 %97, label %98, label %45

98:                                               ; preds = %95, %139
  %99 = phi i64 [ %140, %139 ], [ %50, %95 ]
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi i64 [ 0, %98 ], [ %116, %100 ]
  %102 = phi double [ 0.000000e+00, %98 ], [ %115, %100 ]
  %103 = mul nuw nsw i64 %101, 1200
  %104 = getelementptr inbounds double, ptr %79, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds [1200 x double], ptr %3, i64 %101, i64 %99
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = tail call double @llvm.fmuladd.f64(double %105, double %107, double %102)
  %109 = or disjoint i64 %101, 1
  %110 = mul nuw nsw i64 %109, 1200
  %111 = getelementptr inbounds double, ptr %79, i64 %110
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = getelementptr inbounds [1200 x double], ptr %3, i64 %109, i64 %99
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = tail call double @llvm.fmuladd.f64(double %112, double %114, double %108)
  %116 = add nuw nsw i64 %101, 2
  %117 = icmp eq i64 %116, 1000
  br i1 %117, label %118, label %100, !llvm.loop !18

118:                                              ; preds = %100
  %119 = getelementptr inbounds [1200 x double], ptr %5, i64 %49, i64 %99
  store double %115, ptr %119, align 8, !tbaa !5
  br label %120

120:                                              ; preds = %120, %118
  %121 = phi i64 [ 0, %118 ], [ %137, %120 ]
  %122 = mul nuw nsw i64 %121, 1200
  %123 = getelementptr inbounds double, ptr %79, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !5
  %125 = getelementptr inbounds [1200 x double], ptr %3, i64 %121, i64 %99
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = fneg double %124
  %128 = tail call double @llvm.fmuladd.f64(double %127, double %115, double %126)
  store double %128, ptr %125, align 8, !tbaa !5
  %129 = or disjoint i64 %121, 1
  %130 = mul nuw nsw i64 %129, 1200
  %131 = getelementptr inbounds double, ptr %79, i64 %130
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = getelementptr inbounds [1200 x double], ptr %3, i64 %129, i64 %99
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = fneg double %132
  %136 = tail call double @llvm.fmuladd.f64(double %135, double %115, double %134)
  store double %136, ptr %133, align 8, !tbaa !5
  %137 = add nuw nsw i64 %121, 2
  %138 = icmp eq i64 %137, 1000
  br i1 %138, label %139, label %120, !llvm.loop !19

139:                                              ; preds = %120
  %140 = add nuw nsw i64 %99, 1
  %141 = icmp eq i64 %140, 1200
  br i1 %141, label %45, label %98, !llvm.loop !20

142:                                              ; preds = %45
  %143 = load ptr, ptr @stdout, align 8, !tbaa !21
  %144 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %143)
  %145 = load ptr, ptr @stdout, align 8, !tbaa !21
  %146 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %147

147:                                              ; preds = %166, %142
  %148 = phi i64 [ 0, %142 ], [ %167, %166 ]
  %149 = mul nuw nsw i64 %148, 1200
  br label %150

150:                                              ; preds = %159, %147
  %151 = phi i64 [ 0, %147 ], [ %164, %159 ]
  %152 = add nuw nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  %154 = urem i32 %153, 20
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load ptr, ptr @stdout, align 8, !tbaa !21
  %158 = tail call i32 @fputc(i32 10, ptr %157)
  br label %159

159:                                              ; preds = %156, %150
  %160 = load ptr, ptr @stdout, align 8, !tbaa !21
  %161 = getelementptr inbounds [1200 x double], ptr %5, i64 %148, i64 %151
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.4, double noundef %162)
  %164 = add nuw nsw i64 %151, 1
  %165 = icmp eq i64 %164, 1200
  br i1 %165, label %166, label %150, !llvm.loop !23

166:                                              ; preds = %159
  %167 = add nuw nsw i64 %148, 1
  %168 = icmp eq i64 %167, 1200
  br i1 %168, label %169, label %147, !llvm.loop !24

169:                                              ; preds = %166
  %170 = load ptr, ptr @stdout, align 8, !tbaa !21
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %172 = load ptr, ptr @stdout, align 8, !tbaa !21
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6)
  br label %174

174:                                              ; preds = %193, %169
  %175 = phi i64 [ 0, %169 ], [ %194, %193 ]
  %176 = mul nuw nsw i64 %175, 1200
  br label %177

177:                                              ; preds = %186, %174
  %178 = phi i64 [ 0, %174 ], [ %191, %186 ]
  %179 = add nuw nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  %181 = urem i32 %180, 20
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load ptr, ptr @stdout, align 8, !tbaa !21
  %185 = tail call i32 @fputc(i32 10, ptr %184)
  br label %186

186:                                              ; preds = %183, %177
  %187 = load ptr, ptr @stdout, align 8, !tbaa !21
  %188 = getelementptr inbounds [1200 x double], ptr %6, i64 %175, i64 %178
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef nonnull @.str.4, double noundef %189)
  %191 = add nuw nsw i64 %178, 1
  %192 = icmp eq i64 %191, 1200
  br i1 %192, label %193, label %177, !llvm.loop !25

193:                                              ; preds = %186
  %194 = add nuw nsw i64 %175, 1
  %195 = icmp eq i64 %194, 1000
  br i1 %195, label %196, label %174, !llvm.loop !26

196:                                              ; preds = %193
  %197 = load ptr, ptr @stdout, align 8, !tbaa !21
  %198 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %199 = load ptr, ptr @stdout, align 8, !tbaa !21
  %200 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %199)
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
