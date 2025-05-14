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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 8) #8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #8
  br label %7

7:                                                ; preds = %2, %38
  %8 = phi i64 [ 0, %2 ], [ %39, %38 ]
  %9 = trunc i64 %8 to i32
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %10, 1.200000e+03
  %12 = insertelement <2 x double> poison, double %11, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = insertelement <2 x double> poison, double %10, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %16, %7
  %17 = phi i64 [ 0, %7 ], [ %35, %16 ]
  %18 = phi <2 x i32> [ <i32 0, i32 1>, %7 ], [ %36, %16 ]
  %19 = add <2 x i32> %18, <i32 2, i32 2>
  %20 = sitofp <2 x i32> %18 to <2 x double>
  %21 = sitofp <2 x i32> %19 to <2 x double>
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %20, <2 x double> %15)
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %21, <2 x double> %15)
  %24 = getelementptr inbounds [1200 x double], ptr %3, i64 %8, i64 %17
  %25 = getelementptr inbounds double, ptr %24, i64 2
  store <2 x double> %22, ptr %24, align 8, !tbaa !5
  store <2 x double> %23, ptr %25, align 8, !tbaa !5
  %26 = or disjoint i64 %17, 4
  %27 = add <2 x i32> %18, <i32 4, i32 4>
  %28 = add <2 x i32> %18, <i32 6, i32 6>
  %29 = sitofp <2 x i32> %27 to <2 x double>
  %30 = sitofp <2 x i32> %28 to <2 x double>
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %29, <2 x double> %15)
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %30, <2 x double> %15)
  %33 = getelementptr inbounds [1200 x double], ptr %3, i64 %8, i64 %26
  %34 = getelementptr inbounds double, ptr %33, i64 2
  store <2 x double> %31, ptr %33, align 8, !tbaa !5
  store <2 x double> %32, ptr %34, align 8, !tbaa !5
  %35 = add nuw nsw i64 %17, 8
  %36 = add <2 x i32> %18, <i32 8, i32 8>
  %37 = icmp eq i64 %35, 1200
  br i1 %37, label %38, label %16, !llvm.loop !9

38:                                               ; preds = %16
  %39 = add nuw nsw i64 %8, 1
  %40 = icmp eq i64 %39, 1400
  br i1 %40, label %41, label %7, !llvm.loop !13

41:                                               ; preds = %38, %43
  %42 = phi i64 [ %46, %43 ], [ 0, %38 ]
  br label %48

43:                                               ; preds = %48
  %44 = fdiv double %69, 1.400000e+03
  %45 = getelementptr inbounds double, ptr %5, i64 %42
  store double %44, ptr %45, align 8, !tbaa !5
  %46 = add nuw nsw i64 %42, 1
  %47 = icmp eq i64 %46, 1200
  br i1 %47, label %72, label %41, !llvm.loop !14

48:                                               ; preds = %48, %41
  %49 = phi i64 [ 0, %41 ], [ %70, %48 ]
  %50 = phi double [ 0.000000e+00, %41 ], [ %69, %48 ]
  %51 = getelementptr inbounds [1200 x double], ptr %3, i64 %49, i64 %42
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = fadd double %50, %52
  %54 = add nuw nsw i64 %49, 1
  %55 = getelementptr inbounds [1200 x double], ptr %3, i64 %54, i64 %42
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = fadd double %53, %56
  %58 = add nuw nsw i64 %49, 2
  %59 = getelementptr inbounds [1200 x double], ptr %3, i64 %58, i64 %42
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = fadd double %57, %60
  %62 = add nuw nsw i64 %49, 3
  %63 = getelementptr inbounds [1200 x double], ptr %3, i64 %62, i64 %42
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = fadd double %61, %64
  %66 = add nuw nsw i64 %49, 4
  %67 = getelementptr inbounds [1200 x double], ptr %3, i64 %66, i64 %42
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = fadd double %65, %68
  %70 = add nuw nsw i64 %49, 5
  %71 = icmp eq i64 %70, 1400
  br i1 %71, label %43, label %48, !llvm.loop !15

72:                                               ; preds = %43, %76
  %73 = phi i64 [ %82, %76 ], [ 0, %43 ]
  %74 = getelementptr inbounds double, ptr %5, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !5
  br label %95

76:                                               ; preds = %95
  %77 = fdiv double %116, 1.400000e+03
  %78 = tail call double @sqrt(double noundef %77) #8
  %79 = getelementptr inbounds double, ptr %6, i64 %73
  %80 = fcmp ugt double %78, 1.000000e-01
  %81 = select i1 %80, double %78, double 1.000000e+00
  store double %81, ptr %79, align 8, !tbaa !5
  %82 = add nuw nsw i64 %73, 1
  %83 = icmp eq i64 %82, 1200
  br i1 %83, label %84, label %72, !llvm.loop !16

84:                                               ; preds = %76
  %85 = getelementptr i8, ptr %3, i64 13440000
  %86 = getelementptr i8, ptr %5, i64 9600
  %87 = getelementptr i8, ptr %6, i64 9600
  %88 = icmp ult ptr %3, %86
  %89 = icmp ult ptr %5, %85
  %90 = and i1 %88, %89
  %91 = icmp ult ptr %3, %87
  %92 = icmp ult ptr %6, %85
  %93 = and i1 %91, %92
  %94 = or i1 %90, %93
  br label %119

95:                                               ; preds = %95, %72
  %96 = phi i64 [ 0, %72 ], [ %117, %95 ]
  %97 = phi double [ 0.000000e+00, %72 ], [ %116, %95 ]
  %98 = getelementptr inbounds [1200 x double], ptr %3, i64 %96, i64 %73
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = fsub double %99, %75
  %101 = tail call double @llvm.fmuladd.f64(double %100, double %100, double %97)
  %102 = or disjoint i64 %96, 1
  %103 = getelementptr inbounds [1200 x double], ptr %3, i64 %102, i64 %73
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = fsub double %104, %75
  %106 = tail call double @llvm.fmuladd.f64(double %105, double %105, double %101)
  %107 = or disjoint i64 %96, 2
  %108 = getelementptr inbounds [1200 x double], ptr %3, i64 %107, i64 %73
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = fsub double %109, %75
  %111 = tail call double @llvm.fmuladd.f64(double %110, double %110, double %106)
  %112 = or disjoint i64 %96, 3
  %113 = getelementptr inbounds [1200 x double], ptr %3, i64 %112, i64 %73
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = fsub double %114, %75
  %116 = tail call double @llvm.fmuladd.f64(double %115, double %115, double %111)
  %117 = add nuw nsw i64 %96, 4
  %118 = icmp eq i64 %117, 1400
  br i1 %118, label %76, label %95, !llvm.loop !17

119:                                              ; preds = %144, %84
  %120 = phi i64 [ %145, %144 ], [ 0, %84 ]
  br i1 %94, label %147, label %121

121:                                              ; preds = %119, %121
  %122 = phi i64 [ %142, %121 ], [ 0, %119 ]
  %123 = getelementptr inbounds [1200 x double], ptr %3, i64 %120, i64 %122
  %124 = load <2 x double>, ptr %123, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %125 = getelementptr inbounds double, ptr %5, i64 %122
  %126 = load <2 x double>, ptr %125, align 8, !tbaa !5, !alias.scope !24
  %127 = fsub <2 x double> %124, %126
  %128 = fmul <2 x double> %127, <double 0x3F9B5E17D566A042, double 0x3F9B5E17D566A042>
  %129 = getelementptr inbounds double, ptr %6, i64 %122
  %130 = load <2 x double>, ptr %129, align 8, !tbaa !5, !alias.scope !25
  %131 = fdiv <2 x double> %128, %130
  store <2 x double> %131, ptr %123, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %132 = or disjoint i64 %122, 2
  %133 = getelementptr inbounds [1200 x double], ptr %3, i64 %120, i64 %132
  %134 = load <2 x double>, ptr %133, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %135 = getelementptr inbounds double, ptr %5, i64 %132
  %136 = load <2 x double>, ptr %135, align 8, !tbaa !5, !alias.scope !24
  %137 = fsub <2 x double> %134, %136
  %138 = fmul <2 x double> %137, <double 0x3F9B5E17D566A042, double 0x3F9B5E17D566A042>
  %139 = getelementptr inbounds double, ptr %6, i64 %132
  %140 = load <2 x double>, ptr %139, align 8, !tbaa !5, !alias.scope !25
  %141 = fdiv <2 x double> %138, %140
  store <2 x double> %141, ptr %133, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %142 = add nuw nsw i64 %122, 4
  %143 = icmp eq i64 %142, 1200
  br i1 %143, label %144, label %121, !llvm.loop !26

144:                                              ; preds = %121, %147
  %145 = add nuw nsw i64 %120, 1
  %146 = icmp eq i64 %145, 1400
  br i1 %146, label %174, label %119, !llvm.loop !27

147:                                              ; preds = %119, %147
  %148 = phi i64 [ %168, %147 ], [ 0, %119 ]
  %149 = getelementptr inbounds [1200 x double], ptr %3, i64 %120, i64 %148
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = getelementptr inbounds double, ptr %5, i64 %148
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = fsub double %150, %152
  %154 = fmul double %153, 0x3F9B5E17D566A042
  %155 = getelementptr inbounds double, ptr %6, i64 %148
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = fdiv double %154, %156
  store double %157, ptr %149, align 8, !tbaa !5
  %158 = or disjoint i64 %148, 1
  %159 = getelementptr inbounds [1200 x double], ptr %3, i64 %120, i64 %158
  %160 = load double, ptr %159, align 8, !tbaa !5
  %161 = getelementptr inbounds double, ptr %5, i64 %158
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = fsub double %160, %162
  %164 = fmul double %163, 0x3F9B5E17D566A042
  %165 = getelementptr inbounds double, ptr %6, i64 %158
  %166 = load double, ptr %165, align 8, !tbaa !5
  %167 = fdiv double %164, %166
  store double %167, ptr %159, align 8, !tbaa !5
  %168 = add nuw nsw i64 %148, 2
  %169 = icmp eq i64 %168, 1200
  br i1 %169, label %144, label %147, !llvm.loop !28

170:                                              ; preds = %180
  %171 = add nuw nsw i64 %175, 1
  %172 = add nuw nsw i64 %176, 1
  %173 = icmp eq i64 %171, 1199
  br i1 %173, label %201, label %174, !llvm.loop !29

174:                                              ; preds = %144, %170
  %175 = phi i64 [ %171, %170 ], [ 0, %144 ]
  %176 = phi i64 [ %172, %170 ], [ 1, %144 ]
  %177 = getelementptr inbounds [1200 x double], ptr %4, i64 %175, i64 %175
  store double 1.000000e+00, ptr %177, align 8, !tbaa !5
  br label %178

178:                                              ; preds = %180, %174
  %179 = phi i64 [ %176, %174 ], [ %183, %180 ]
  br label %185

180:                                              ; preds = %185
  %181 = getelementptr inbounds [1200 x double], ptr %4, i64 %175, i64 %179
  store double %198, ptr %181, align 8, !tbaa !5
  %182 = getelementptr inbounds [1200 x double], ptr %4, i64 %179, i64 %175
  store double %198, ptr %182, align 8, !tbaa !5
  %183 = add nuw nsw i64 %179, 1
  %184 = icmp eq i64 %183, 1200
  br i1 %184, label %170, label %178, !llvm.loop !30

185:                                              ; preds = %185, %178
  %186 = phi i64 [ 0, %178 ], [ %199, %185 ]
  %187 = phi double [ 0.000000e+00, %178 ], [ %198, %185 ]
  %188 = getelementptr inbounds [1200 x double], ptr %3, i64 %186, i64 %175
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = getelementptr inbounds [1200 x double], ptr %3, i64 %186, i64 %179
  %191 = load double, ptr %190, align 8, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %189, double %191, double %187)
  %193 = or disjoint i64 %186, 1
  %194 = getelementptr inbounds [1200 x double], ptr %3, i64 %193, i64 %175
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = getelementptr inbounds [1200 x double], ptr %3, i64 %193, i64 %179
  %197 = load double, ptr %196, align 8, !tbaa !5
  %198 = tail call double @llvm.fmuladd.f64(double %195, double %197, double %192)
  %199 = add nuw nsw i64 %186, 2
  %200 = icmp eq i64 %199, 1400
  br i1 %200, label %180, label %185, !llvm.loop !31

201:                                              ; preds = %170
  %202 = getelementptr inbounds [1200 x double], ptr %4, i64 1199, i64 1199
  store double 1.000000e+00, ptr %202, align 8, !tbaa !5
  %203 = load ptr, ptr @stdout, align 8, !tbaa !32
  %204 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %203)
  %205 = load ptr, ptr @stdout, align 8, !tbaa !32
  %206 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %207

207:                                              ; preds = %210, %201
  %208 = phi i64 [ 0, %201 ], [ %211, %210 ]
  %209 = mul nuw nsw i64 %208, 1200
  br label %213

210:                                              ; preds = %222
  %211 = add nuw nsw i64 %208, 1
  %212 = icmp eq i64 %211, 1200
  br i1 %212, label %229, label %207, !llvm.loop !34

213:                                              ; preds = %222, %207
  %214 = phi i64 [ 0, %207 ], [ %227, %222 ]
  %215 = add nuw nsw i64 %214, %209
  %216 = trunc i64 %215 to i32
  %217 = urem i32 %216, 20
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load ptr, ptr @stdout, align 8, !tbaa !32
  %221 = tail call i32 @fputc(i32 10, ptr %220)
  br label %222

222:                                              ; preds = %219, %213
  %223 = load ptr, ptr @stdout, align 8, !tbaa !32
  %224 = getelementptr inbounds [1200 x double], ptr %4, i64 %208, i64 %214
  %225 = load double, ptr %224, align 8, !tbaa !5
  %226 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.4, double noundef %225)
  %227 = add nuw nsw i64 %214, 1
  %228 = icmp eq i64 %227, 1200
  br i1 %228, label %210, label %213, !llvm.loop !35

229:                                              ; preds = %210
  %230 = load ptr, ptr @stdout, align 8, !tbaa !32
  %231 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %232 = load ptr, ptr @stdout, align 8, !tbaa !32
  %233 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %232)
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef nonnull %4) #8
  tail call void @free(ptr noundef %5) #8
  tail call void @free(ptr noundef %6) #8
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22, !23}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = !{!22}
!25 = !{!23}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !7, i64 0}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
