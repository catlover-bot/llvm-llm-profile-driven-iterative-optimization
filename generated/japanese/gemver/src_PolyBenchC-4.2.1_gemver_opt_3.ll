; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gemver_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gemver_opt_3.c"
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
  %14 = insertelement <4 x ptr> poison, ptr %5, i64 0
  %15 = insertelement <4 x ptr> %14, ptr %4, i64 1
  %16 = insertelement <4 x ptr> %15, ptr %6, i64 2
  %17 = insertelement <4 x ptr> %16, ptr %7, i64 3
  %18 = getelementptr i8, <4 x ptr> %17, <4 x i64> <i64 16000, i64 16000, i64 16000, i64 16000>
  %19 = insertelement <4 x ptr> poison, ptr %3, i64 0
  %20 = shufflevector <4 x ptr> %19, <4 x ptr> poison, <4 x i32> zeroinitializer
  %21 = insertelement <4 x ptr> poison, ptr %13, i64 0
  %22 = shufflevector <4 x ptr> %21, <4 x ptr> poison, <4 x i32> zeroinitializer
  %23 = icmp ult <4 x ptr> %20, %18
  %24 = icmp ult <4 x ptr> %17, %22
  %25 = and <4 x i1> %23, %24
  %26 = bitcast <4 x i1> %25 to i4
  %27 = icmp eq i4 %26, 0
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

65:                                               ; preds = %12, %125
  %66 = phi i64 [ %126, %125 ], [ 0, %12 ]
  %67 = getelementptr inbounds double, ptr %4, i64 %66
  %68 = getelementptr inbounds double, ptr %6, i64 %66
  br i1 %27, label %69, label %98

69:                                               ; preds = %65
  %70 = load double, ptr %67, align 8, !tbaa !5, !alias.scope !14
  %71 = insertelement <2 x double> poison, double %70, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = load double, ptr %68, align 8, !tbaa !5, !alias.scope !17
  %74 = insertelement <2 x double> poison, double %73, i64 0
  %75 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer
  br label %76

76:                                               ; preds = %69, %76
  %77 = phi i64 [ %96, %76 ], [ 0, %69 ]
  %78 = getelementptr inbounds double, ptr %5, i64 %77
  %79 = getelementptr inbounds double, ptr %78, i64 2
  %80 = load <2 x double>, ptr %78, align 8, !tbaa !5, !alias.scope !19
  %81 = load <2 x double>, ptr %79, align 8, !tbaa !5, !alias.scope !19
  %82 = getelementptr inbounds double, ptr %7, i64 %77
  %83 = getelementptr inbounds double, ptr %82, i64 2
  %84 = load <2 x double>, ptr %82, align 8, !tbaa !5, !alias.scope !21
  %85 = load <2 x double>, ptr %83, align 8, !tbaa !5, !alias.scope !21
  %86 = fmul <2 x double> %75, %84
  %87 = fmul <2 x double> %75, %85
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> %80, <2 x double> %86)
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> %81, <2 x double> %87)
  %90 = getelementptr inbounds [2000 x double], ptr %3, i64 %66, i64 %77
  %91 = getelementptr inbounds double, ptr %90, i64 2
  %92 = load <2 x double>, ptr %90, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %93 = load <2 x double>, ptr %91, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %94 = fadd <2 x double> %92, %88
  %95 = fadd <2 x double> %93, %89
  store <2 x double> %94, ptr %90, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  store <2 x double> %95, ptr %91, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %96 = add nuw i64 %77, 4
  %97 = icmp eq i64 %96, 2000
  br i1 %97, label %125, label %76, !llvm.loop !26

98:                                               ; preds = %65, %98
  %99 = phi i64 [ %123, %98 ], [ 0, %65 ]
  %100 = load double, ptr %67, align 8, !tbaa !5
  %101 = getelementptr inbounds double, ptr %5, i64 %99
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = load double, ptr %68, align 8, !tbaa !5
  %104 = getelementptr inbounds double, ptr %7, i64 %99
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = fmul double %103, %105
  %107 = tail call double @llvm.fmuladd.f64(double %100, double %102, double %106)
  %108 = getelementptr inbounds [2000 x double], ptr %3, i64 %66, i64 %99
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = fadd double %109, %107
  store double %110, ptr %108, align 8, !tbaa !5
  %111 = or disjoint i64 %99, 1
  %112 = load double, ptr %67, align 8, !tbaa !5
  %113 = getelementptr inbounds double, ptr %5, i64 %111
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = load double, ptr %68, align 8, !tbaa !5
  %116 = getelementptr inbounds double, ptr %7, i64 %111
  %117 = load double, ptr %116, align 8, !tbaa !5
  %118 = fmul double %115, %117
  %119 = tail call double @llvm.fmuladd.f64(double %112, double %114, double %118)
  %120 = getelementptr inbounds [2000 x double], ptr %3, i64 %66, i64 %111
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = fadd double %121, %119
  store double %122, ptr %120, align 8, !tbaa !5
  %123 = add nuw nsw i64 %99, 2
  %124 = icmp eq i64 %123, 2000
  br i1 %124, label %125, label %98, !llvm.loop !27

125:                                              ; preds = %76, %98
  %126 = add nuw nsw i64 %66, 1
  %127 = icmp eq i64 %126, 2000
  br i1 %127, label %128, label %65, !llvm.loop !28

128:                                              ; preds = %125, %160
  %129 = phi i64 [ %163, %160 ], [ 0, %125 ]
  %130 = getelementptr inbounds double, ptr %11, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !5
  br label %132

132:                                              ; preds = %132, %128
  %133 = phi i64 [ 0, %128 ], [ %158, %132 ]
  %134 = phi double [ %131, %128 ], [ %157, %132 ]
  %135 = getelementptr inbounds [2000 x double], ptr %3, i64 %133, i64 %129
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = getelementptr inbounds double, ptr %10, i64 %133
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = tail call double @llvm.fmuladd.f64(double %136, double %138, double %134)
  %140 = or disjoint i64 %133, 1
  %141 = getelementptr inbounds [2000 x double], ptr %3, i64 %140, i64 %129
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = getelementptr inbounds double, ptr %10, i64 %140
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = tail call double @llvm.fmuladd.f64(double %142, double %144, double %139)
  %146 = or disjoint i64 %133, 2
  %147 = getelementptr inbounds [2000 x double], ptr %3, i64 %146, i64 %129
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = getelementptr inbounds double, ptr %10, i64 %146
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = tail call double @llvm.fmuladd.f64(double %148, double %150, double %145)
  %152 = or disjoint i64 %133, 3
  %153 = getelementptr inbounds [2000 x double], ptr %3, i64 %152, i64 %129
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = getelementptr inbounds double, ptr %10, i64 %152
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = tail call double @llvm.fmuladd.f64(double %154, double %156, double %151)
  %158 = add nuw nsw i64 %133, 4
  %159 = icmp eq i64 %158, 2000
  br i1 %159, label %160, label %132, !llvm.loop !29

160:                                              ; preds = %132
  %161 = fmul double %157, 1.200000e+00
  %162 = getelementptr inbounds double, ptr %9, i64 %129
  store double %161, ptr %162, align 8, !tbaa !5
  %163 = add nuw nsw i64 %129, 1
  %164 = icmp eq i64 %163, 2000
  br i1 %164, label %165, label %128, !llvm.loop !30

165:                                              ; preds = %160, %195
  %166 = phi i64 [ %198, %195 ], [ 0, %160 ]
  br label %167

167:                                              ; preds = %167, %165
  %168 = phi i64 [ 0, %165 ], [ %193, %167 ]
  %169 = phi double [ 0.000000e+00, %165 ], [ %192, %167 ]
  %170 = getelementptr inbounds [2000 x double], ptr %3, i64 %166, i64 %168
  %171 = load double, ptr %170, align 8, !tbaa !5
  %172 = getelementptr inbounds double, ptr %9, i64 %168
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = tail call double @llvm.fmuladd.f64(double %171, double %173, double %169)
  %175 = or disjoint i64 %168, 1
  %176 = getelementptr inbounds [2000 x double], ptr %3, i64 %166, i64 %175
  %177 = load double, ptr %176, align 8, !tbaa !5
  %178 = getelementptr inbounds double, ptr %9, i64 %175
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %177, double %179, double %174)
  %181 = or disjoint i64 %168, 2
  %182 = getelementptr inbounds [2000 x double], ptr %3, i64 %166, i64 %181
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = getelementptr inbounds double, ptr %9, i64 %181
  %185 = load double, ptr %184, align 8, !tbaa !5
  %186 = tail call double @llvm.fmuladd.f64(double %183, double %185, double %180)
  %187 = or disjoint i64 %168, 3
  %188 = getelementptr inbounds [2000 x double], ptr %3, i64 %166, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = getelementptr inbounds double, ptr %9, i64 %187
  %191 = load double, ptr %190, align 8, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %189, double %191, double %186)
  %193 = add nuw nsw i64 %168, 4
  %194 = icmp eq i64 %193, 2000
  br i1 %194, label %195, label %167, !llvm.loop !31

195:                                              ; preds = %167
  %196 = fmul double %192, 1.500000e+00
  %197 = getelementptr inbounds double, ptr %8, i64 %166
  store double %196, ptr %197, align 8, !tbaa !5
  %198 = add nuw nsw i64 %166, 1
  %199 = icmp eq i64 %198, 2000
  br i1 %199, label %200, label %165, !llvm.loop !32

200:                                              ; preds = %195
  %201 = load ptr, ptr @stdout, align 8, !tbaa !33
  %202 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %201)
  %203 = load ptr, ptr @stdout, align 8, !tbaa !33
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %205

205:                                              ; preds = %213, %200
  %206 = phi i64 [ 0, %200 ], [ %218, %213 ]
  %207 = trunc i64 %206 to i16
  %208 = urem i16 %207, 20
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load ptr, ptr @stdout, align 8, !tbaa !33
  %212 = tail call i32 @fputc(i32 10, ptr %211)
  br label %213

213:                                              ; preds = %210, %205
  %214 = load ptr, ptr @stdout, align 8, !tbaa !33
  %215 = getelementptr inbounds double, ptr %8, i64 %206
  %216 = load double, ptr %215, align 8, !tbaa !5
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef nonnull @.str.4, double noundef %216)
  %218 = add nuw nsw i64 %206, 1
  %219 = icmp eq i64 %218, 2000
  br i1 %219, label %220, label %205, !llvm.loop !35

220:                                              ; preds = %213
  %221 = load ptr, ptr @stdout, align 8, !tbaa !33
  %222 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %223 = load ptr, ptr @stdout, align 8, !tbaa !33
  %224 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %223)
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
!23 = !{!24}
!24 = distinct !{!24, !16}
!25 = !{!15, !20, !18, !22}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !7, i64 0}
!35 = distinct !{!35, !10}
