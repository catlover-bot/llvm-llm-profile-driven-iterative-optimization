; ModuleID = 'outputs/src_PolyBenchC-4.2.1_cholesky_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_cholesky_opt_1.c"
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

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 32000000, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %3, i8 0, i64 32000000, i1 false)
  br label %42

42:                                               ; preds = %78, %41
  %43 = phi i64 [ 0, %41 ], [ %79, %78 ]
  br label %44

44:                                               ; preds = %42, %75
  %45 = phi i64 [ 0, %42 ], [ %76, %75 ]
  %46 = getelementptr inbounds [2000 x double], ptr %4, i64 %45, i64 %43
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = insertelement <2 x double> poison, double %47, i64 0
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> zeroinitializer
  br label %50

50:                                               ; preds = %50, %44
  %51 = phi i64 [ 0, %44 ], [ %73, %50 ]
  %52 = or disjoint i64 %51, 1
  %53 = or disjoint i64 %51, 2
  %54 = or disjoint i64 %51, 3
  %55 = getelementptr inbounds [2000 x double], ptr %4, i64 %51, i64 %43
  %56 = getelementptr inbounds [2000 x double], ptr %4, i64 %52, i64 %43
  %57 = getelementptr inbounds [2000 x double], ptr %4, i64 %53, i64 %43
  %58 = getelementptr inbounds [2000 x double], ptr %4, i64 %54, i64 %43
  %59 = load double, ptr %55, align 8, !tbaa !5
  %60 = load double, ptr %56, align 8, !tbaa !5
  %61 = insertelement <2 x double> poison, double %59, i64 0
  %62 = insertelement <2 x double> %61, double %60, i64 1
  %63 = load double, ptr %57, align 8, !tbaa !5
  %64 = load double, ptr %58, align 8, !tbaa !5
  %65 = insertelement <2 x double> poison, double %63, i64 0
  %66 = insertelement <2 x double> %65, double %64, i64 1
  %67 = getelementptr inbounds [2000 x [2000 x double]], ptr %3, i64 0, i64 %45, i64 %51
  %68 = getelementptr inbounds double, ptr %67, i64 2
  %69 = load <2 x double>, ptr %67, align 16, !tbaa !5
  %70 = load <2 x double>, ptr %68, align 16, !tbaa !5
  %71 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %49, <2 x double> %62, <2 x double> %69)
  %72 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %49, <2 x double> %66, <2 x double> %70)
  store <2 x double> %71, ptr %67, align 16, !tbaa !5
  store <2 x double> %72, ptr %68, align 16, !tbaa !5
  %73 = add nuw i64 %51, 4
  %74 = icmp eq i64 %73, 2000
  br i1 %74, label %75, label %50, !llvm.loop !15

75:                                               ; preds = %50
  %76 = add nuw nsw i64 %45, 1
  %77 = icmp eq i64 %76, 2000
  br i1 %77, label %78, label %44, !llvm.loop !16

78:                                               ; preds = %75
  %79 = add nuw nsw i64 %43, 1
  %80 = icmp eq i64 %79, 2000
  br i1 %80, label %81, label %42, !llvm.loop !17

81:                                               ; preds = %78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %4, ptr noundef nonnull align 16 dereferenceable(32000000) %3, i64 32000000, i1 false)
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %3) #11
  br label %82

82:                                               ; preds = %185, %81
  %83 = phi i64 [ 0, %81 ], [ %189, %185 ]
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load double, ptr %4, align 8, !tbaa !5
  br label %185

87:                                               ; preds = %82, %129
  %88 = phi i64 [ %134, %129 ], [ 0, %82 ]
  %89 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %88
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = icmp eq i64 %88, 0
  br i1 %91, label %129, label %92

92:                                               ; preds = %87
  %93 = and i64 %88, 1
  %94 = icmp eq i64 %88, 1
  br i1 %94, label %117, label %95

95:                                               ; preds = %92
  %96 = and i64 %88, 9223372036854775806
  br label %97

97:                                               ; preds = %97, %95
  %98 = phi i64 [ 0, %95 ], [ %114, %97 ]
  %99 = phi double [ %90, %95 ], [ %113, %97 ]
  %100 = phi i64 [ 0, %95 ], [ %115, %97 ]
  %101 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %98
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = getelementptr inbounds [2000 x double], ptr %4, i64 %88, i64 %98
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = fneg double %102
  %106 = tail call double @llvm.fmuladd.f64(double %105, double %104, double %99)
  %107 = or disjoint i64 %98, 1
  %108 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = getelementptr inbounds [2000 x double], ptr %4, i64 %88, i64 %107
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = fneg double %109
  %113 = tail call double @llvm.fmuladd.f64(double %112, double %111, double %106)
  %114 = add nuw nsw i64 %98, 2
  %115 = add i64 %100, 2
  %116 = icmp eq i64 %115, %96
  br i1 %116, label %117, label %97, !llvm.loop !18

117:                                              ; preds = %97, %92
  %118 = phi double [ undef, %92 ], [ %113, %97 ]
  %119 = phi i64 [ 0, %92 ], [ %114, %97 ]
  %120 = phi double [ %90, %92 ], [ %113, %97 ]
  %121 = icmp eq i64 %93, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %119
  %124 = load double, ptr %123, align 8, !tbaa !5
  %125 = getelementptr inbounds [2000 x double], ptr %4, i64 %88, i64 %119
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = fneg double %124
  %128 = tail call double @llvm.fmuladd.f64(double %127, double %126, double %120)
  br label %129

129:                                              ; preds = %122, %117, %87
  %130 = phi double [ %90, %87 ], [ %118, %117 ], [ %128, %122 ]
  %131 = getelementptr inbounds [2000 x double], ptr %4, i64 %88, i64 %88
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = fdiv double %130, %132
  store double %133, ptr %89, align 8, !tbaa !5
  %134 = add nuw nsw i64 %88, 1
  %135 = icmp eq i64 %134, %83
  br i1 %135, label %136, label %87, !llvm.loop !19

136:                                              ; preds = %129
  %137 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %83
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = and i64 %83, 3
  %140 = icmp ult i64 %83, 4
  br i1 %140, label %169, label %141

141:                                              ; preds = %136
  %142 = and i64 %83, 9223372036854775804
  br label %143

143:                                              ; preds = %143, %141
  %144 = phi i64 [ 0, %141 ], [ %166, %143 ]
  %145 = phi double [ %138, %141 ], [ %165, %143 ]
  %146 = phi i64 [ 0, %141 ], [ %167, %143 ]
  %147 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %144
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = fneg double %148
  %150 = tail call double @llvm.fmuladd.f64(double %149, double %148, double %145)
  %151 = or disjoint i64 %144, 1
  %152 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %151
  %153 = load double, ptr %152, align 8, !tbaa !5
  %154 = fneg double %153
  %155 = tail call double @llvm.fmuladd.f64(double %154, double %153, double %150)
  %156 = or disjoint i64 %144, 2
  %157 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %156
  %158 = load double, ptr %157, align 8, !tbaa !5
  %159 = fneg double %158
  %160 = tail call double @llvm.fmuladd.f64(double %159, double %158, double %155)
  %161 = or disjoint i64 %144, 3
  %162 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %161
  %163 = load double, ptr %162, align 8, !tbaa !5
  %164 = fneg double %163
  %165 = tail call double @llvm.fmuladd.f64(double %164, double %163, double %160)
  %166 = add nuw nsw i64 %144, 4
  %167 = add i64 %146, 4
  %168 = icmp eq i64 %167, %142
  br i1 %168, label %169, label %143, !llvm.loop !20

169:                                              ; preds = %143, %136
  %170 = phi double [ undef, %136 ], [ %165, %143 ]
  %171 = phi i64 [ 0, %136 ], [ %166, %143 ]
  %172 = phi double [ %138, %136 ], [ %165, %143 ]
  %173 = icmp eq i64 %139, 0
  br i1 %173, label %185, label %174

174:                                              ; preds = %169, %174
  %175 = phi i64 [ %182, %174 ], [ %171, %169 ]
  %176 = phi double [ %181, %174 ], [ %172, %169 ]
  %177 = phi i64 [ %183, %174 ], [ 0, %169 ]
  %178 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %175
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = fneg double %179
  %181 = tail call double @llvm.fmuladd.f64(double %180, double %179, double %176)
  %182 = add nuw nsw i64 %175, 1
  %183 = add i64 %177, 1
  %184 = icmp eq i64 %183, %139
  br i1 %184, label %185, label %174, !llvm.loop !21

185:                                              ; preds = %169, %174, %85
  %186 = phi ptr [ %4, %85 ], [ %137, %174 ], [ %137, %169 ]
  %187 = phi double [ %86, %85 ], [ %170, %169 ], [ %181, %174 ]
  %188 = tail call double @sqrt(double noundef %187) #11
  store double %188, ptr %186, align 8, !tbaa !5
  %189 = add nuw nsw i64 %83, 1
  %190 = icmp eq i64 %189, 2000
  br i1 %190, label %191, label %82, !llvm.loop !23

191:                                              ; preds = %185
  %192 = load ptr, ptr @stdout, align 8, !tbaa !24
  %193 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %192)
  %194 = load ptr, ptr @stdout, align 8, !tbaa !24
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %196

196:                                              ; preds = %216, %191
  %197 = phi i64 [ 0, %191 ], [ %217, %216 ]
  %198 = phi i64 [ 1, %191 ], [ %218, %216 ]
  %199 = mul nuw nsw i64 %197, 2000
  br label %200

200:                                              ; preds = %209, %196
  %201 = phi i64 [ 0, %196 ], [ %214, %209 ]
  %202 = add nuw nsw i64 %201, %199
  %203 = trunc i64 %202 to i32
  %204 = urem i32 %203, 20
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = load ptr, ptr @stdout, align 8, !tbaa !24
  %208 = tail call i32 @fputc(i32 10, ptr %207)
  br label %209

209:                                              ; preds = %206, %200
  %210 = load ptr, ptr @stdout, align 8, !tbaa !24
  %211 = getelementptr inbounds [2000 x double], ptr %4, i64 %197, i64 %201
  %212 = load double, ptr %211, align 8, !tbaa !5
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef nonnull @.str.4, double noundef %212)
  %214 = add nuw nsw i64 %201, 1
  %215 = icmp eq i64 %214, %198
  br i1 %215, label %216, label %200, !llvm.loop !26

216:                                              ; preds = %209
  %217 = add nuw nsw i64 %197, 1
  %218 = add nuw nsw i64 %198, 1
  %219 = icmp eq i64 %217, 2000
  br i1 %219, label %220, label %196, !llvm.loop !27

220:                                              ; preds = %216
  %221 = load ptr, ptr @stdout, align 8, !tbaa !24
  %222 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %223 = load ptr, ptr @stdout, align 8, !tbaa !24
  %224 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %223)
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
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10}
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
