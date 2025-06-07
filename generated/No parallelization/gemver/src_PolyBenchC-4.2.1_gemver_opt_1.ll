; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gemver_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gemver_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %10 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %11 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  br label %28

12:                                               ; preds = %63
  %13 = getelementptr i8, ptr %3, i64 32000000
  %14 = getelementptr i8, ptr %5, i64 16000
  %15 = getelementptr i8, ptr %6, i64 16000
  %16 = getelementptr i8, ptr %7, i64 16000
  %17 = icmp ult ptr %3, %14
  %18 = icmp ult ptr %5, %13
  %19 = and i1 %17, %18
  %20 = icmp ult ptr %3, %15
  %21 = icmp ult ptr %6, %13
  %22 = and i1 %20, %21
  %23 = or i1 %19, %22
  %24 = icmp ult ptr %3, %16
  %25 = icmp ult ptr %7, %13
  %26 = and i1 %24, %25
  %27 = or i1 %23, %26
  br label %65

28:                                               ; preds = %63, %2
  %29 = phi i64 [ 0, %2 ], [ %33, %63 ]
  %30 = trunc i64 %29 to i32
  %31 = sitofp i32 %30 to double
  %32 = getelementptr inbounds double, ptr %4, i64 %29
  store double %31, ptr %32, align 8, !tbaa !5
  %33 = add nuw nsw i64 %29, 1
  %34 = trunc i64 %33 to i32
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 2.000000e+03
  %37 = fmul double %36, 5.000000e-01
  %38 = getelementptr inbounds double, ptr %6, i64 %29
  store double %37, ptr %38, align 8, !tbaa !5
  %39 = fmul double %36, 2.500000e-01
  %40 = getelementptr inbounds double, ptr %5, i64 %29
  store double %39, ptr %40, align 8, !tbaa !5
  %41 = fdiv double %36, 6.000000e+00
  %42 = getelementptr inbounds double, ptr %7, i64 %29
  store double %41, ptr %42, align 8, !tbaa !5
  %43 = fmul double %36, 1.250000e-01
  %44 = getelementptr inbounds double, ptr %10, i64 %29
  store double %43, ptr %44, align 8, !tbaa !5
  %45 = fdiv double %36, 9.000000e+00
  %46 = getelementptr inbounds double, ptr %11, i64 %29
  store double %45, ptr %46, align 8, !tbaa !5
  %47 = getelementptr inbounds double, ptr %9, i64 %29
  store double 0.000000e+00, ptr %47, align 8, !tbaa !5
  %48 = getelementptr inbounds double, ptr %8, i64 %29
  store double 0.000000e+00, ptr %48, align 8, !tbaa !5
  %49 = insertelement <2 x i64> poison, i64 %29, i64 0
  %50 = shufflevector <2 x i64> %49, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %51

51:                                               ; preds = %51, %28
  %52 = phi i64 [ 0, %28 ], [ %60, %51 ]
  %53 = phi <2 x i64> [ <i64 0, i64 1>, %28 ], [ %61, %51 ]
  %54 = mul nuw nsw <2 x i64> %53, %50
  %55 = trunc <2 x i64> %54 to <2 x i32>
  %56 = urem <2 x i32> %55, <i32 2000, i32 2000>
  %57 = sitofp <2 x i32> %56 to <2 x double>
  %58 = fdiv <2 x double> %57, <double 2.000000e+03, double 2.000000e+03>
  %59 = getelementptr inbounds [2000 x double], ptr %3, i64 %29, i64 %52
  store <2 x double> %58, ptr %59, align 8, !tbaa !5
  %60 = add nuw i64 %52, 2
  %61 = add <2 x i64> %53, <i64 2, i64 2>
  %62 = icmp eq i64 %60, 2000
  br i1 %62, label %63, label %51, !llvm.loop !9

63:                                               ; preds = %51
  %64 = icmp eq i64 %33, 2000
  br i1 %64, label %12, label %28, !llvm.loop !13

65:                                               ; preds = %12, %123
  %66 = phi i64 [ %124, %123 ], [ 0, %12 ]
  %67 = getelementptr inbounds double, ptr %4, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds double, ptr %6, i64 %66
  br i1 %27, label %98, label %70

70:                                               ; preds = %65
  %71 = insertelement <2 x double> poison, double %68, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = load double, ptr %69, align 8, !tbaa !5, !alias.scope !14
  %74 = insertelement <2 x double> poison, double %73, i64 0
  %75 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer
  br label %76

76:                                               ; preds = %76, %70
  %77 = phi i64 [ 0, %70 ], [ %96, %76 ]
  %78 = getelementptr inbounds double, ptr %5, i64 %77
  %79 = getelementptr inbounds double, ptr %78, i64 2
  %80 = load <2 x double>, ptr %78, align 8, !tbaa !5, !alias.scope !17
  %81 = load <2 x double>, ptr %79, align 8, !tbaa !5, !alias.scope !17
  %82 = getelementptr inbounds double, ptr %7, i64 %77
  %83 = getelementptr inbounds double, ptr %82, i64 2
  %84 = load <2 x double>, ptr %82, align 8, !tbaa !5, !alias.scope !19
  %85 = load <2 x double>, ptr %83, align 8, !tbaa !5, !alias.scope !19
  %86 = fmul <2 x double> %75, %84
  %87 = fmul <2 x double> %75, %85
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> %80, <2 x double> %86)
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> %81, <2 x double> %87)
  %90 = getelementptr inbounds [2000 x double], ptr %3, i64 %66, i64 %77
  %91 = getelementptr inbounds double, ptr %90, i64 2
  %92 = load <2 x double>, ptr %90, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  %93 = load <2 x double>, ptr %91, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  %94 = fadd <2 x double> %92, %88
  %95 = fadd <2 x double> %93, %89
  store <2 x double> %94, ptr %90, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  store <2 x double> %95, ptr %91, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  %96 = add nuw i64 %77, 4
  %97 = icmp eq i64 %96, 2000
  br i1 %97, label %123, label %76, !llvm.loop !24

98:                                               ; preds = %65, %98
  %99 = phi i64 [ %121, %98 ], [ 0, %65 ]
  %100 = getelementptr inbounds double, ptr %5, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = load double, ptr %69, align 8, !tbaa !5
  %103 = getelementptr inbounds double, ptr %7, i64 %99
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = fmul double %102, %104
  %106 = tail call double @llvm.fmuladd.f64(double %68, double %101, double %105)
  %107 = getelementptr inbounds [2000 x double], ptr %3, i64 %66, i64 %99
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = fadd double %108, %106
  store double %109, ptr %107, align 8, !tbaa !5
  %110 = or disjoint i64 %99, 1
  %111 = getelementptr inbounds double, ptr %5, i64 %110
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = load double, ptr %69, align 8, !tbaa !5
  %114 = getelementptr inbounds double, ptr %7, i64 %110
  %115 = load double, ptr %114, align 8, !tbaa !5
  %116 = fmul double %113, %115
  %117 = tail call double @llvm.fmuladd.f64(double %68, double %112, double %116)
  %118 = getelementptr inbounds [2000 x double], ptr %3, i64 %66, i64 %110
  %119 = load double, ptr %118, align 8, !tbaa !5
  %120 = fadd double %119, %117
  store double %120, ptr %118, align 8, !tbaa !5
  %121 = add nuw nsw i64 %99, 2
  %122 = icmp eq i64 %121, 2000
  br i1 %122, label %123, label %98, !llvm.loop !25

123:                                              ; preds = %76, %98
  %124 = add nuw nsw i64 %66, 1
  %125 = icmp eq i64 %124, 2000
  br i1 %125, label %126, label %65, !llvm.loop !26

126:                                              ; preds = %123, %156
  %127 = phi i64 [ %161, %156 ], [ 0, %123 ]
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi i64 [ 0, %126 ], [ %154, %128 ]
  %130 = phi double [ 0.000000e+00, %126 ], [ %153, %128 ]
  %131 = getelementptr inbounds [2000 x double], ptr %3, i64 %129, i64 %127
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = getelementptr inbounds double, ptr %10, i64 %129
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = tail call double @llvm.fmuladd.f64(double %132, double %134, double %130)
  %136 = or disjoint i64 %129, 1
  %137 = getelementptr inbounds [2000 x double], ptr %3, i64 %136, i64 %127
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds double, ptr %10, i64 %136
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = tail call double @llvm.fmuladd.f64(double %138, double %140, double %135)
  %142 = or disjoint i64 %129, 2
  %143 = getelementptr inbounds [2000 x double], ptr %3, i64 %142, i64 %127
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = getelementptr inbounds double, ptr %10, i64 %142
  %146 = load double, ptr %145, align 8, !tbaa !5
  %147 = tail call double @llvm.fmuladd.f64(double %144, double %146, double %141)
  %148 = or disjoint i64 %129, 3
  %149 = getelementptr inbounds [2000 x double], ptr %3, i64 %148, i64 %127
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = getelementptr inbounds double, ptr %10, i64 %148
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = tail call double @llvm.fmuladd.f64(double %150, double %152, double %147)
  %154 = add nuw nsw i64 %129, 4
  %155 = icmp eq i64 %154, 2000
  br i1 %155, label %156, label %128, !llvm.loop !27

156:                                              ; preds = %128
  %157 = getelementptr inbounds double, ptr %11, i64 %127
  %158 = load double, ptr %157, align 8, !tbaa !5
  %159 = tail call double @llvm.fmuladd.f64(double %153, double 1.200000e+00, double %158)
  %160 = getelementptr inbounds double, ptr %9, i64 %127
  store double %159, ptr %160, align 8, !tbaa !5
  %161 = add nuw nsw i64 %127, 1
  %162 = icmp eq i64 %161, 2000
  br i1 %162, label %163, label %126, !llvm.loop !28

163:                                              ; preds = %156, %193
  %164 = phi i64 [ %197, %193 ], [ 0, %156 ]
  br label %165

165:                                              ; preds = %165, %163
  %166 = phi i64 [ 0, %163 ], [ %191, %165 ]
  %167 = phi double [ 0.000000e+00, %163 ], [ %190, %165 ]
  %168 = getelementptr inbounds [2000 x double], ptr %3, i64 %164, i64 %166
  %169 = load double, ptr %168, align 8, !tbaa !5
  %170 = getelementptr inbounds double, ptr %9, i64 %166
  %171 = load double, ptr %170, align 8, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %169, double %171, double %167)
  %173 = or disjoint i64 %166, 1
  %174 = getelementptr inbounds [2000 x double], ptr %3, i64 %164, i64 %173
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = getelementptr inbounds double, ptr %9, i64 %173
  %177 = load double, ptr %176, align 8, !tbaa !5
  %178 = tail call double @llvm.fmuladd.f64(double %175, double %177, double %172)
  %179 = or disjoint i64 %166, 2
  %180 = getelementptr inbounds [2000 x double], ptr %3, i64 %164, i64 %179
  %181 = load double, ptr %180, align 8, !tbaa !5
  %182 = getelementptr inbounds double, ptr %9, i64 %179
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = tail call double @llvm.fmuladd.f64(double %181, double %183, double %178)
  %185 = or disjoint i64 %166, 3
  %186 = getelementptr inbounds [2000 x double], ptr %3, i64 %164, i64 %185
  %187 = load double, ptr %186, align 8, !tbaa !5
  %188 = getelementptr inbounds double, ptr %9, i64 %185
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = tail call double @llvm.fmuladd.f64(double %187, double %189, double %184)
  %191 = add nuw nsw i64 %166, 4
  %192 = icmp eq i64 %191, 2000
  br i1 %192, label %193, label %165, !llvm.loop !29

193:                                              ; preds = %165
  %194 = getelementptr inbounds double, ptr %8, i64 %164
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = tail call double @llvm.fmuladd.f64(double %190, double 1.500000e+00, double %195)
  store double %196, ptr %194, align 8, !tbaa !5
  %197 = add nuw nsw i64 %164, 1
  %198 = icmp eq i64 %197, 2000
  br i1 %198, label %199, label %163, !llvm.loop !30

199:                                              ; preds = %193
  %200 = load ptr, ptr @stdout, align 8, !tbaa !31
  %201 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %200)
  %202 = load ptr, ptr @stdout, align 8, !tbaa !31
  %203 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %204

204:                                              ; preds = %212, %199
  %205 = phi i64 [ 0, %199 ], [ %217, %212 ]
  %206 = trunc i64 %205 to i16
  %207 = urem i16 %206, 20
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load ptr, ptr @stdout, align 8, !tbaa !31
  %211 = tail call i32 @fputc(i32 10, ptr %210)
  br label %212

212:                                              ; preds = %209, %204
  %213 = load ptr, ptr @stdout, align 8, !tbaa !31
  %214 = getelementptr inbounds double, ptr %8, i64 %205
  %215 = load double, ptr %214, align 8, !tbaa !5
  %216 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.4, double noundef %215)
  %217 = add nuw nsw i64 %205, 1
  %218 = icmp eq i64 %217, 2000
  br i1 %218, label %219, label %204, !llvm.loop !33

219:                                              ; preds = %212
  %220 = load ptr, ptr @stdout, align 8, !tbaa !31
  %221 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %222 = load ptr, ptr @stdout, align 8, !tbaa !31
  %223 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %222)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %6) #7
  tail call void @free(ptr noundef %7) #7
  tail call void @free(ptr noundef nonnull %8) #7
  tail call void @free(ptr noundef %9) #7
  tail call void @free(ptr noundef %10) #7
  tail call void @free(ptr noundef %11) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = !{!20}
!20 = distinct !{!20, !16}
!21 = !{!22}
!22 = distinct !{!22, !16}
!23 = !{!18, !15, !20}
!24 = distinct !{!24, !10, !11, !12}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !7, i64 0}
!33 = distinct !{!33, !10}
