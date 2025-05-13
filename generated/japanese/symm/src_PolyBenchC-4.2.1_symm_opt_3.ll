; ModuleID = 'outputs/src_PolyBenchC-4.2.1_symm_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_symm_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #6
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #6
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = icmp ult i64 %8, 16
  br label %10

10:                                               ; preds = %74, %2
  %11 = phi <2 x i64> [ <i64 0, i64 1>, %2 ], [ %75, %74 ]
  %12 = extractelement <2 x i64> %11, i64 0
  %13 = add nuw nsw i64 %12, 1200
  br i1 %9, label %36, label %14

14:                                               ; preds = %10
  %15 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x i64> poison, i64 %13, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %33, %18 ]
  %20 = phi <2 x i64> [ <i64 0, i64 1>, %14 ], [ %34, %18 ]
  %21 = add nuw nsw <2 x i64> %20, %15
  %22 = trunc <2 x i64> %21 to <2 x i32>
  %23 = urem <2 x i32> %22, <i32 100, i32 100>
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, <double 1.000000e+03, double 1.000000e+03>
  %26 = getelementptr inbounds [1200 x double], ptr %3, i64 %12, i64 %19
  store <2 x double> %25, ptr %26, align 8, !tbaa !5
  %27 = sub nuw nsw <2 x i64> %17, %20
  %28 = trunc <2 x i64> %27 to <2 x i32>
  %29 = urem <2 x i32> %28, <i32 100, i32 100>
  %30 = sitofp <2 x i32> %29 to <2 x double>
  %31 = fdiv <2 x double> %30, <double 1.000000e+03, double 1.000000e+03>
  %32 = getelementptr inbounds [1200 x double], ptr %6, i64 %12, i64 %19
  store <2 x double> %31, ptr %32, align 8, !tbaa !5
  %33 = add nuw i64 %19, 2
  %34 = add <2 x i64> %20, <i64 2, i64 2>
  %35 = icmp eq i64 %33, 1200
  br i1 %35, label %52, label %18, !llvm.loop !9

36:                                               ; preds = %10, %36
  %37 = phi i64 [ %50, %36 ], [ 0, %10 ]
  %38 = add nuw nsw i64 %37, %12
  %39 = trunc i64 %38 to i32
  %40 = urem i32 %39, 100
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 1.000000e+03
  %43 = getelementptr inbounds [1200 x double], ptr %3, i64 %12, i64 %37
  store double %42, ptr %43, align 8, !tbaa !5
  %44 = sub nuw nsw i64 %13, %37
  %45 = trunc i64 %44 to i32
  %46 = urem i32 %45, 100
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+03
  %49 = getelementptr inbounds [1200 x double], ptr %6, i64 %12, i64 %37
  store double %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %37, 1
  %51 = icmp eq i64 %50, 1200
  br i1 %51, label %52, label %36, !llvm.loop !13

52:                                               ; preds = %18, %36
  %53 = extractelement <2 x i64> %11, i64 1
  %54 = icmp ult i64 %53, 2
  br i1 %54, label %72, label %55

55:                                               ; preds = %52
  %56 = and i64 %53, 9223372036854775806
  %57 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i64 [ 0, %55 ], [ %67, %58 ]
  %60 = phi <2 x i64> [ <i64 0, i64 1>, %55 ], [ %68, %58 ]
  %61 = add nuw nsw <2 x i64> %60, %57
  %62 = trunc <2 x i64> %61 to <2 x i32>
  %63 = urem <2 x i32> %62, <i32 100, i32 100>
  %64 = sitofp <2 x i32> %63 to <2 x double>
  %65 = fdiv <2 x double> %64, <double 1.000000e+03, double 1.000000e+03>
  %66 = getelementptr inbounds [1000 x double], ptr %5, i64 %12, i64 %59
  store <2 x double> %65, ptr %66, align 8, !tbaa !5
  %67 = add nuw i64 %59, 2
  %68 = add <2 x i64> %60, <i64 2, i64 2>
  %69 = icmp eq i64 %67, %56
  br i1 %69, label %70, label %58, !llvm.loop !14

70:                                               ; preds = %58
  %71 = icmp eq i64 %53, %56
  br i1 %71, label %74, label %72

72:                                               ; preds = %52, %70
  %73 = phi i64 [ 0, %52 ], [ %56, %70 ]
  br label %89

74:                                               ; preds = %89, %70
  %75 = add nuw nsw <2 x i64> %11, <i64 1, i64 1>
  %76 = extractelement <2 x i64> %75, i64 0
  %77 = icmp eq i64 %76, 1000
  br i1 %77, label %78, label %10, !llvm.loop !15

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %3, i64 9600
  %80 = getelementptr i8, ptr %6, i64 9600
  %81 = getelementptr i8, ptr %5, i64 8000000
  %82 = icmp ult ptr %3, %80
  %83 = icmp ult ptr %6, %79
  %84 = and i1 %82, %83
  %85 = icmp ult ptr %3, %81
  %86 = icmp ult ptr %5, %79
  %87 = and i1 %85, %86
  %88 = or i1 %84, %87
  br label %99

89:                                               ; preds = %72, %89
  %90 = phi i64 [ %97, %89 ], [ %73, %72 ]
  %91 = add nuw nsw i64 %90, %12
  %92 = trunc i64 %91 to i32
  %93 = urem i32 %92, 100
  %94 = sitofp i32 %93 to double
  %95 = fdiv double %94, 1.000000e+03
  %96 = getelementptr inbounds [1000 x double], ptr %5, i64 %12, i64 %90
  store double %95, ptr %96, align 8, !tbaa !5
  %97 = add nuw nsw i64 %90, 1
  %98 = icmp eq i64 %97, %53
  br i1 %98, label %74, label %89, !llvm.loop !16

99:                                               ; preds = %78, %189
  %100 = phi i64 [ %190, %189 ], [ 0, %78 ]
  %101 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %100
  %102 = icmp eq i64 %100, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = and i64 %100, 1
  %105 = icmp eq i64 %100, 1
  %106 = and i64 %100, 9223372036854775806
  %107 = icmp eq i64 %104, 0
  br label %135

108:                                              ; preds = %99
  br i1 %88, label %192, label %109

109:                                              ; preds = %108
  %110 = load double, ptr %101, align 8, !tbaa !5, !alias.scope !17
  %111 = insertelement <2 x double> poison, double %110, i64 0
  %112 = shufflevector <2 x double> %111, <2 x double> poison, <2 x i32> zeroinitializer
  %113 = fmul <2 x double> %112, <double 1.500000e+00, double 1.500000e+00>
  %114 = fmul <2 x double> %112, <double 1.500000e+00, double 1.500000e+00>
  br label %115

115:                                              ; preds = %109, %115
  %116 = phi i64 [ %133, %115 ], [ 0, %109 ]
  %117 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %116
  %118 = getelementptr inbounds double, ptr %117, i64 2
  %119 = load <2 x double>, ptr %117, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  %120 = load <2 x double>, ptr %118, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  %121 = fmul <2 x double> %119, <double 1.200000e+00, double 1.200000e+00>
  %122 = fmul <2 x double> %120, <double 1.200000e+00, double 1.200000e+00>
  %123 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %116
  %124 = getelementptr inbounds double, ptr %123, i64 2
  %125 = load <2 x double>, ptr %123, align 8, !tbaa !5, !alias.scope !24
  %126 = load <2 x double>, ptr %124, align 8, !tbaa !5, !alias.scope !24
  %127 = fmul <2 x double> %125, %113
  %128 = fmul <2 x double> %126, %114
  %129 = fadd <2 x double> %121, %127
  %130 = fadd <2 x double> %122, %128
  %131 = fadd <2 x double> %129, zeroinitializer
  %132 = fadd <2 x double> %130, zeroinitializer
  store <2 x double> %131, ptr %117, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  store <2 x double> %132, ptr %118, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  %133 = add nuw i64 %116, 4
  %134 = icmp eq i64 %133, 1200
  br i1 %134, label %189, label %115, !llvm.loop !25

135:                                              ; preds = %103, %180
  %136 = phi i64 [ %187, %180 ], [ 0, %103 ]
  %137 = getelementptr inbounds [1200 x double], ptr %3, i64 %100, i64 %136
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds [1200 x double], ptr %6, i64 %100, i64 %136
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = fmul double %140, 1.500000e+00
  %142 = load double, ptr %101, align 8, !tbaa !5
  br i1 %105, label %167, label %143

143:                                              ; preds = %135, %143
  %144 = phi i64 [ %164, %143 ], [ 0, %135 ]
  %145 = phi double [ %163, %143 ], [ 0.000000e+00, %135 ]
  %146 = phi i64 [ %165, %143 ], [ 0, %135 ]
  %147 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %144
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = getelementptr inbounds [1200 x double], ptr %6, i64 %144, i64 %136
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = getelementptr inbounds [1200 x double], ptr %3, i64 %144, i64 %136
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = tail call double @llvm.fmuladd.f64(double %141, double %148, double %152)
  store double %153, ptr %151, align 8, !tbaa !5
  %154 = tail call double @llvm.fmuladd.f64(double %150, double %148, double %145)
  %155 = or disjoint i64 %144, 1
  %156 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = getelementptr inbounds [1200 x double], ptr %6, i64 %155, i64 %136
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = getelementptr inbounds [1200 x double], ptr %3, i64 %155, i64 %136
  %161 = load double, ptr %160, align 8, !tbaa !5
  %162 = tail call double @llvm.fmuladd.f64(double %141, double %157, double %161)
  store double %162, ptr %160, align 8, !tbaa !5
  %163 = tail call double @llvm.fmuladd.f64(double %159, double %157, double %154)
  %164 = add nuw nsw i64 %144, 2
  %165 = add i64 %146, 2
  %166 = icmp eq i64 %165, %106
  br i1 %166, label %167, label %143, !llvm.loop !26

167:                                              ; preds = %143, %135
  %168 = phi double [ undef, %135 ], [ %163, %143 ]
  %169 = phi i64 [ 0, %135 ], [ %164, %143 ]
  %170 = phi double [ 0.000000e+00, %135 ], [ %163, %143 ]
  br i1 %107, label %180, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %169
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = getelementptr inbounds [1200 x double], ptr %6, i64 %169, i64 %136
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = getelementptr inbounds [1200 x double], ptr %3, i64 %169, i64 %136
  %177 = load double, ptr %176, align 8, !tbaa !5
  %178 = tail call double @llvm.fmuladd.f64(double %141, double %173, double %177)
  store double %178, ptr %176, align 8, !tbaa !5
  %179 = tail call double @llvm.fmuladd.f64(double %175, double %173, double %170)
  br label %180

180:                                              ; preds = %167, %171
  %181 = phi double [ %168, %167 ], [ %179, %171 ]
  %182 = fmul double %142, 1.500000e+00
  %183 = fmul double %138, 1.200000e+00
  %184 = fmul double %140, %182
  %185 = fadd double %183, %184
  %186 = tail call double @llvm.fmuladd.f64(double %181, double 1.500000e+00, double %185)
  store double %186, ptr %137, align 8, !tbaa !5
  %187 = add nuw nsw i64 %136, 1
  %188 = icmp eq i64 %187, 1200
  br i1 %188, label %189, label %135, !llvm.loop !27

189:                                              ; preds = %180, %115, %192
  %190 = add nuw nsw i64 %100, 1
  %191 = icmp eq i64 %190, 1000
  br i1 %191, label %217, label %99, !llvm.loop !28

192:                                              ; preds = %108, %192
  %193 = phi i64 [ %215, %192 ], [ 0, %108 ]
  %194 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %193
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = fmul double %195, 1.200000e+00
  %197 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %193
  %198 = load double, ptr %197, align 8, !tbaa !5
  %199 = load double, ptr %101, align 8, !tbaa !5
  %200 = fmul double %199, 1.500000e+00
  %201 = fmul double %198, %200
  %202 = fadd double %196, %201
  %203 = fadd double %202, 0.000000e+00
  store double %203, ptr %194, align 8, !tbaa !5
  %204 = or disjoint i64 %193, 1
  %205 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %204
  %206 = load double, ptr %205, align 8, !tbaa !5
  %207 = fmul double %206, 1.200000e+00
  %208 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %204
  %209 = load double, ptr %208, align 8, !tbaa !5
  %210 = load double, ptr %101, align 8, !tbaa !5
  %211 = fmul double %210, 1.500000e+00
  %212 = fmul double %209, %211
  %213 = fadd double %207, %212
  %214 = fadd double %213, 0.000000e+00
  store double %214, ptr %205, align 8, !tbaa !5
  %215 = add nuw nsw i64 %193, 2
  %216 = icmp eq i64 %215, 1200
  br i1 %216, label %189, label %192, !llvm.loop !29

217:                                              ; preds = %189
  %218 = load ptr, ptr @stdout, align 8, !tbaa !30
  %219 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %218)
  %220 = load ptr, ptr @stdout, align 8, !tbaa !30
  %221 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %222

222:                                              ; preds = %225, %217
  %223 = phi i64 [ 0, %217 ], [ %226, %225 ]
  %224 = mul nuw nsw i64 %223, 1000
  br label %228

225:                                              ; preds = %237
  %226 = add nuw nsw i64 %223, 1
  %227 = icmp eq i64 %226, 1000
  br i1 %227, label %244, label %222, !llvm.loop !32

228:                                              ; preds = %237, %222
  %229 = phi i64 [ 0, %222 ], [ %242, %237 ]
  %230 = add nuw nsw i64 %229, %224
  %231 = trunc i64 %230 to i32
  %232 = urem i32 %231, 20
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load ptr, ptr @stdout, align 8, !tbaa !30
  %236 = tail call i32 @fputc(i32 10, ptr %235)
  br label %237

237:                                              ; preds = %234, %228
  %238 = load ptr, ptr @stdout, align 8, !tbaa !30
  %239 = getelementptr inbounds [1200 x double], ptr %3, i64 %223, i64 %229
  %240 = load double, ptr %239, align 8, !tbaa !5
  %241 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef nonnull @.str.4, double noundef %240)
  %242 = add nuw nsw i64 %229, 1
  %243 = icmp eq i64 %242, 1200
  br i1 %243, label %225, label %228, !llvm.loop !33

244:                                              ; preds = %225
  %245 = load ptr, ptr @stdout, align 8, !tbaa !30
  %246 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %247 = load ptr, ptr @stdout, align 8, !tbaa !30
  %248 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %247)
  tail call void @free(ptr noundef nonnull %3) #6
  tail call void @free(ptr noundef %5) #6
  tail call void @free(ptr noundef %6) #6
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !12, !11}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = !{!23, !18}
!23 = distinct !{!23, !19}
!24 = !{!23}
!25 = distinct !{!25, !10, !11, !12}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10, !11}
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
