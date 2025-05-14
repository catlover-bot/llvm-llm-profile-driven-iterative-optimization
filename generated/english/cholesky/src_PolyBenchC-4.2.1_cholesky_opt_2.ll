; ModuleID = 'outputs/src_PolyBenchC-4.2.1_cholesky_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_cholesky_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [2000 x [2000 x double]], align 16
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #11
  call void @llvm.lifetime.start.p0(i64 32000000, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %3, i8 0, i64 32000000, i1 false)
  br label %5

5:                                                ; preds = %36, %2
  %6 = phi i64 [ 0, %2 ], [ %38, %36 ]
  %7 = phi i64 [ 1, %2 ], [ %39, %36 ]
  %8 = icmp ult i64 %7, 2
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = and i64 %7, 9223372036854775806
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %19, %11 ]
  %13 = phi <2 x i32> [ <i32 0, i32 1>, %9 ], [ %20, %11 ]
  %14 = sub <2 x i32> zeroinitializer, %13
  %15 = sitofp <2 x i32> %14 to <2 x double>
  %16 = fdiv <2 x double> %15, <double 2.000000e+03, double 2.000000e+03>
  %17 = fadd <2 x double> %16, <double 1.000000e+00, double 1.000000e+00>
  %18 = getelementptr inbounds [2000 x double], ptr %4, i64 %6, i64 %12
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = add nuw i64 %12, 2
  %20 = add <2 x i32> %13, <i32 2, i32 2>
  %21 = icmp eq i64 %19, %10
  br i1 %21, label %22, label %11, !llvm.loop !9

22:                                               ; preds = %11
  %23 = icmp eq i64 %7, %10
  br i1 %23, label %36, label %24

24:                                               ; preds = %5, %22
  %25 = phi i64 [ 0, %5 ], [ %10, %22 ]
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %34, %26 ], [ %25, %24 ]
  %28 = trunc i64 %27 to i32
  %29 = sub i32 0, %28
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 2.000000e+03
  %32 = fadd double %31, 1.000000e+00
  %33 = getelementptr inbounds [2000 x double], ptr %4, i64 %6, i64 %27
  store double %32, ptr %33, align 8, !tbaa !5
  %34 = add nuw nsw i64 %27, 1
  %35 = icmp eq i64 %34, %7
  br i1 %35, label %36, label %26, !llvm.loop !13

36:                                               ; preds = %26, %22
  %37 = getelementptr inbounds [2000 x double], ptr %4, i64 %6, i64 %6
  store double 1.000000e+00, ptr %37, align 8, !tbaa !5
  %38 = add nuw nsw i64 %6, 1
  %39 = add nuw nsw i64 %7, 1
  %40 = icmp eq i64 %38, 2000
  br i1 %40, label %41, label %5, !llvm.loop !14

41:                                               ; preds = %36, %43
  %42 = phi i64 [ %44, %43 ], [ 0, %36 ]
  br label %46

43:                                               ; preds = %77
  %44 = add nuw nsw i64 %42, 1
  %45 = icmp eq i64 %44, 2000
  br i1 %45, label %80, label %41, !llvm.loop !15

46:                                               ; preds = %41, %77
  %47 = phi i64 [ 0, %41 ], [ %78, %77 ]
  %48 = getelementptr inbounds [2000 x double], ptr %4, i64 %47, i64 %42
  %49 = load double, ptr %48, align 8, !tbaa !5
  %50 = insertelement <2 x double> poison, double %49, i64 0
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> zeroinitializer
  br label %52

52:                                               ; preds = %52, %46
  %53 = phi i64 [ 0, %46 ], [ %75, %52 ]
  %54 = or disjoint i64 %53, 1
  %55 = or disjoint i64 %53, 2
  %56 = or disjoint i64 %53, 3
  %57 = getelementptr inbounds [2000 x double], ptr %4, i64 %53, i64 %42
  %58 = getelementptr inbounds [2000 x double], ptr %4, i64 %54, i64 %42
  %59 = getelementptr inbounds [2000 x double], ptr %4, i64 %55, i64 %42
  %60 = getelementptr inbounds [2000 x double], ptr %4, i64 %56, i64 %42
  %61 = load double, ptr %57, align 8, !tbaa !5
  %62 = load double, ptr %58, align 8, !tbaa !5
  %63 = insertelement <2 x double> poison, double %61, i64 0
  %64 = insertelement <2 x double> %63, double %62, i64 1
  %65 = load double, ptr %59, align 8, !tbaa !5
  %66 = load double, ptr %60, align 8, !tbaa !5
  %67 = insertelement <2 x double> poison, double %65, i64 0
  %68 = insertelement <2 x double> %67, double %66, i64 1
  %69 = getelementptr inbounds [2000 x [2000 x double]], ptr %3, i64 0, i64 %47, i64 %53
  %70 = getelementptr inbounds double, ptr %69, i64 2
  %71 = load <2 x double>, ptr %69, align 16, !tbaa !5
  %72 = load <2 x double>, ptr %70, align 16, !tbaa !5
  %73 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %51, <2 x double> %64, <2 x double> %71)
  %74 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %51, <2 x double> %68, <2 x double> %72)
  store <2 x double> %73, ptr %69, align 16, !tbaa !5
  store <2 x double> %74, ptr %70, align 16, !tbaa !5
  %75 = add nuw i64 %53, 4
  %76 = icmp eq i64 %75, 2000
  br i1 %76, label %77, label %52, !llvm.loop !16

77:                                               ; preds = %52
  %78 = add nuw nsw i64 %47, 1
  %79 = icmp eq i64 %78, 2000
  br i1 %79, label %43, label %46, !llvm.loop !17

80:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %4, ptr noundef nonnull align 16 dereferenceable(32000000) %3, i64 32000000, i1 false)
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %3) #11
  br label %81

81:                                               ; preds = %184, %80
  %82 = phi i64 [ 0, %80 ], [ %188, %184 ]
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load double, ptr %4, align 8, !tbaa !5
  br label %184

86:                                               ; preds = %81, %128
  %87 = phi i64 [ %133, %128 ], [ 0, %81 ]
  %88 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = icmp eq i64 %87, 0
  br i1 %90, label %128, label %91

91:                                               ; preds = %86
  %92 = and i64 %87, 1
  %93 = icmp eq i64 %87, 1
  br i1 %93, label %116, label %94

94:                                               ; preds = %91
  %95 = and i64 %87, 9223372036854775806
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i64 [ 0, %94 ], [ %113, %96 ]
  %98 = phi double [ %89, %94 ], [ %112, %96 ]
  %99 = phi i64 [ 0, %94 ], [ %114, %96 ]
  %100 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %97
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = getelementptr inbounds [2000 x double], ptr %4, i64 %87, i64 %97
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = fneg double %101
  %105 = tail call double @llvm.fmuladd.f64(double %104, double %103, double %98)
  %106 = or disjoint i64 %97, 1
  %107 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %106
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = getelementptr inbounds [2000 x double], ptr %4, i64 %87, i64 %106
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = fneg double %108
  %112 = tail call double @llvm.fmuladd.f64(double %111, double %110, double %105)
  %113 = add nuw nsw i64 %97, 2
  %114 = add i64 %99, 2
  %115 = icmp eq i64 %114, %95
  br i1 %115, label %116, label %96, !llvm.loop !18

116:                                              ; preds = %96, %91
  %117 = phi double [ undef, %91 ], [ %112, %96 ]
  %118 = phi i64 [ 0, %91 ], [ %113, %96 ]
  %119 = phi double [ %89, %91 ], [ %112, %96 ]
  %120 = icmp eq i64 %92, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %118
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = getelementptr inbounds [2000 x double], ptr %4, i64 %87, i64 %118
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = fneg double %123
  %127 = tail call double @llvm.fmuladd.f64(double %126, double %125, double %119)
  br label %128

128:                                              ; preds = %121, %116, %86
  %129 = phi double [ %89, %86 ], [ %117, %116 ], [ %127, %121 ]
  %130 = getelementptr inbounds [2000 x double], ptr %4, i64 %87, i64 %87
  %131 = load double, ptr %130, align 8, !tbaa !5
  %132 = fdiv double %129, %131
  store double %132, ptr %88, align 8, !tbaa !5
  %133 = add nuw nsw i64 %87, 1
  %134 = icmp eq i64 %133, %82
  br i1 %134, label %135, label %86, !llvm.loop !19

135:                                              ; preds = %128
  %136 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %82
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = and i64 %82, 3
  %139 = icmp ult i64 %82, 4
  br i1 %139, label %168, label %140

140:                                              ; preds = %135
  %141 = and i64 %82, 9223372036854775804
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi i64 [ 0, %140 ], [ %165, %142 ]
  %144 = phi double [ %137, %140 ], [ %164, %142 ]
  %145 = phi i64 [ 0, %140 ], [ %166, %142 ]
  %146 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %143
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = fneg double %147
  %149 = tail call double @llvm.fmuladd.f64(double %148, double %147, double %144)
  %150 = or disjoint i64 %143, 1
  %151 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %150
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = fneg double %152
  %154 = tail call double @llvm.fmuladd.f64(double %153, double %152, double %149)
  %155 = or disjoint i64 %143, 2
  %156 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = fneg double %157
  %159 = tail call double @llvm.fmuladd.f64(double %158, double %157, double %154)
  %160 = or disjoint i64 %143, 3
  %161 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %160
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = fneg double %162
  %164 = tail call double @llvm.fmuladd.f64(double %163, double %162, double %159)
  %165 = add nuw nsw i64 %143, 4
  %166 = add i64 %145, 4
  %167 = icmp eq i64 %166, %141
  br i1 %167, label %168, label %142, !llvm.loop !20

168:                                              ; preds = %142, %135
  %169 = phi double [ undef, %135 ], [ %164, %142 ]
  %170 = phi i64 [ 0, %135 ], [ %165, %142 ]
  %171 = phi double [ %137, %135 ], [ %164, %142 ]
  %172 = icmp eq i64 %138, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %168, %173
  %174 = phi i64 [ %181, %173 ], [ %170, %168 ]
  %175 = phi double [ %180, %173 ], [ %171, %168 ]
  %176 = phi i64 [ %182, %173 ], [ 0, %168 ]
  %177 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %174
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = fneg double %178
  %180 = tail call double @llvm.fmuladd.f64(double %179, double %178, double %175)
  %181 = add nuw nsw i64 %174, 1
  %182 = add i64 %176, 1
  %183 = icmp eq i64 %182, %138
  br i1 %183, label %184, label %173, !llvm.loop !21

184:                                              ; preds = %168, %173, %84
  %185 = phi ptr [ %4, %84 ], [ %136, %173 ], [ %136, %168 ]
  %186 = phi double [ %85, %84 ], [ %169, %168 ], [ %180, %173 ]
  %187 = tail call double @sqrt(double noundef %186) #11
  store double %187, ptr %185, align 8, !tbaa !5
  %188 = add nuw nsw i64 %82, 1
  %189 = icmp eq i64 %188, 2000
  br i1 %189, label %190, label %81, !llvm.loop !23

190:                                              ; preds = %184
  %191 = load ptr, ptr @stdout, align 8, !tbaa !24
  %192 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %191)
  %193 = load ptr, ptr @stdout, align 8, !tbaa !24
  %194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %193, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %195

195:                                              ; preds = %215, %190
  %196 = phi i64 [ 0, %190 ], [ %216, %215 ]
  %197 = phi i64 [ 1, %190 ], [ %217, %215 ]
  %198 = mul nuw nsw i64 %196, 2000
  br label %199

199:                                              ; preds = %208, %195
  %200 = phi i64 [ 0, %195 ], [ %213, %208 ]
  %201 = add nuw nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  %203 = urem i32 %202, 20
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load ptr, ptr @stdout, align 8, !tbaa !24
  %207 = tail call i32 @fputc(i32 10, ptr %206)
  br label %208

208:                                              ; preds = %205, %199
  %209 = load ptr, ptr @stdout, align 8, !tbaa !24
  %210 = getelementptr inbounds [2000 x double], ptr %4, i64 %196, i64 %200
  %211 = load double, ptr %210, align 8, !tbaa !5
  %212 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef nonnull @.str.4, double noundef %211)
  %213 = add nuw nsw i64 %200, 1
  %214 = icmp eq i64 %213, %197
  br i1 %214, label %215, label %199, !llvm.loop !26

215:                                              ; preds = %208
  %216 = add nuw nsw i64 %196, 1
  %217 = add nuw nsw i64 %197, 1
  %218 = icmp eq i64 %216, 2000
  br i1 %218, label %219, label %195, !llvm.loop !27

219:                                              ; preds = %215
  %220 = load ptr, ptr @stdout, align 8, !tbaa !24
  %221 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %222 = load ptr, ptr @stdout, align 8, !tbaa !24
  %223 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %222)
  tail call void @free(ptr noundef nonnull %4) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !10}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
