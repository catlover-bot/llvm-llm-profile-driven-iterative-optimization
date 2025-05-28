; ModuleID = 'outputs/src_PolyBenchC-4.2.1_cholesky_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_cholesky_opt_3.c"
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %3, i8 0, i64 32000000, i1 false), !tbaa !5
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %4, ptr noundef nonnull align 16 dereferenceable(32000000) %3, i64 32000000, i1 false), !tbaa !5
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %3) #11
  br label %82

82:                                               ; preds = %182, %81
  %83 = phi i64 [ 0, %81 ], [ %186, %182 ]
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load double, ptr %4, align 8, !tbaa !5
  br label %182

87:                                               ; preds = %82, %136
  %88 = phi i64 [ %141, %136 ], [ 0, %82 ]
  %89 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %88
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = icmp eq i64 %88, 0
  br i1 %91, label %136, label %92

92:                                               ; preds = %87, %132
  %93 = phi i64 [ %134, %132 ], [ 0, %87 ]
  %94 = phi double [ %133, %132 ], [ %90, %87 ]
  %95 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %93
  %96 = load double, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds [2000 x double], ptr %4, i64 %88, i64 %93
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = fneg double %96
  %100 = tail call double @llvm.fmuladd.f64(double %99, double %98, double %94)
  %101 = or disjoint i64 %93, 1
  %102 = icmp ult i64 %101, %88
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %101
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds [2000 x double], ptr %4, i64 %88, i64 %101
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = fneg double %105
  %109 = tail call double @llvm.fmuladd.f64(double %108, double %107, double %100)
  br label %110

110:                                              ; preds = %103, %92
  %111 = phi double [ %109, %103 ], [ %100, %92 ]
  %112 = or disjoint i64 %93, 2
  %113 = icmp ult i64 %112, %88
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %112
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = getelementptr inbounds [2000 x double], ptr %4, i64 %88, i64 %112
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = fneg double %116
  %120 = tail call double @llvm.fmuladd.f64(double %119, double %118, double %111)
  br label %121

121:                                              ; preds = %114, %110
  %122 = phi double [ %120, %114 ], [ %111, %110 ]
  %123 = or disjoint i64 %93, 3
  %124 = icmp ult i64 %123, %88
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %123
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = getelementptr inbounds [2000 x double], ptr %4, i64 %88, i64 %123
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = fneg double %127
  %131 = tail call double @llvm.fmuladd.f64(double %130, double %129, double %122)
  br label %132

132:                                              ; preds = %125, %121
  %133 = phi double [ %131, %125 ], [ %122, %121 ]
  %134 = add nuw nsw i64 %93, 4
  %135 = icmp ult i64 %134, %88
  br i1 %135, label %92, label %136, !llvm.loop !18

136:                                              ; preds = %132, %87
  %137 = phi double [ %90, %87 ], [ %133, %132 ]
  %138 = getelementptr inbounds [2000 x double], ptr %4, i64 %88, i64 %88
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = fdiv double %137, %139
  store double %140, ptr %89, align 8, !tbaa !5
  %141 = add nuw nsw i64 %88, 1
  %142 = icmp eq i64 %141, %83
  br i1 %142, label %143, label %87, !llvm.loop !19

143:                                              ; preds = %136
  %144 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %83
  %145 = load double, ptr %144, align 8, !tbaa !5
  br label %146

146:                                              ; preds = %178, %143
  %147 = phi i64 [ 0, %143 ], [ %180, %178 ]
  %148 = phi double [ %145, %143 ], [ %179, %178 ]
  %149 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %147
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = fneg double %150
  %152 = tail call double @llvm.fmuladd.f64(double %151, double %150, double %148)
  %153 = or disjoint i64 %147, 1
  %154 = icmp ult i64 %153, %83
  br i1 %154, label %155, label %160

155:                                              ; preds = %146
  %156 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %153
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = fneg double %157
  %159 = tail call double @llvm.fmuladd.f64(double %158, double %157, double %152)
  br label %160

160:                                              ; preds = %155, %146
  %161 = phi double [ %159, %155 ], [ %152, %146 ]
  %162 = or disjoint i64 %147, 2
  %163 = icmp ult i64 %162, %83
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %162
  %166 = load double, ptr %165, align 8, !tbaa !5
  %167 = fneg double %166
  %168 = tail call double @llvm.fmuladd.f64(double %167, double %166, double %161)
  br label %169

169:                                              ; preds = %164, %160
  %170 = phi double [ %168, %164 ], [ %161, %160 ]
  %171 = or disjoint i64 %147, 3
  %172 = icmp ult i64 %171, %83
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = getelementptr inbounds [2000 x double], ptr %4, i64 %83, i64 %171
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = fneg double %175
  %177 = tail call double @llvm.fmuladd.f64(double %176, double %175, double %170)
  br label %178

178:                                              ; preds = %173, %169
  %179 = phi double [ %177, %173 ], [ %170, %169 ]
  %180 = add nuw nsw i64 %147, 4
  %181 = icmp ult i64 %180, %83
  br i1 %181, label %146, label %182, !llvm.loop !20

182:                                              ; preds = %178, %85
  %183 = phi ptr [ %4, %85 ], [ %144, %178 ]
  %184 = phi double [ %86, %85 ], [ %179, %178 ]
  %185 = tail call double @sqrt(double noundef %184) #11
  store double %185, ptr %183, align 8, !tbaa !5
  %186 = add nuw nsw i64 %83, 1
  %187 = icmp eq i64 %186, 2000
  br i1 %187, label %188, label %82, !llvm.loop !21

188:                                              ; preds = %182
  %189 = load ptr, ptr @stdout, align 8, !tbaa !22
  %190 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %189)
  %191 = load ptr, ptr @stdout, align 8, !tbaa !22
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %193

193:                                              ; preds = %213, %188
  %194 = phi i64 [ 0, %188 ], [ %214, %213 ]
  %195 = phi i64 [ 1, %188 ], [ %215, %213 ]
  %196 = mul nuw nsw i64 %194, 2000
  br label %197

197:                                              ; preds = %206, %193
  %198 = phi i64 [ 0, %193 ], [ %211, %206 ]
  %199 = add nuw nsw i64 %198, %196
  %200 = trunc i64 %199 to i32
  %201 = urem i32 %200, 20
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load ptr, ptr @stdout, align 8, !tbaa !22
  %205 = tail call i32 @fputc(i32 10, ptr %204)
  br label %206

206:                                              ; preds = %203, %197
  %207 = load ptr, ptr @stdout, align 8, !tbaa !22
  %208 = getelementptr inbounds [2000 x double], ptr %4, i64 %194, i64 %198
  %209 = load double, ptr %208, align 8, !tbaa !5
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef nonnull @.str.4, double noundef %209)
  %211 = add nuw nsw i64 %198, 1
  %212 = icmp eq i64 %211, %195
  br i1 %212, label %213, label %197, !llvm.loop !24

213:                                              ; preds = %206
  %214 = add nuw nsw i64 %194, 1
  %215 = add nuw nsw i64 %195, 1
  %216 = icmp eq i64 %214, 2000
  br i1 %216, label %217, label %193, !llvm.loop !25

217:                                              ; preds = %213
  %218 = load ptr, ptr @stdout, align 8, !tbaa !22
  %219 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %220 = load ptr, ptr @stdout, align 8, !tbaa !22
  %221 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %220)
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!21 = distinct !{!21, !10}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
