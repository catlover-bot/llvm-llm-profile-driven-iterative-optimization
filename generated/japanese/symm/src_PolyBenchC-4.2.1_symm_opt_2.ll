; ModuleID = 'outputs/src_PolyBenchC-4.2.1_symm_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_symm_opt_2.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
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

99:                                               ; preds = %78, %185
  %100 = phi i64 [ %186, %185 ], [ 0, %78 ]
  %101 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %100
  %102 = icmp eq i64 %100, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = and i64 %100, 1
  %105 = icmp eq i64 %100, 1
  %106 = and i64 %100, 9223372036854775806
  %107 = icmp eq i64 %104, 0
  br label %133

108:                                              ; preds = %99
  br i1 %88, label %188, label %109

109:                                              ; preds = %108
  %110 = load double, ptr %101, align 8, !tbaa !5, !alias.scope !17
  %111 = insertelement <2 x double> poison, double %110, i64 0
  %112 = shufflevector <2 x double> %111, <2 x double> poison, <2 x i32> zeroinitializer
  br label %113

113:                                              ; preds = %109, %113
  %114 = phi i64 [ %131, %113 ], [ 0, %109 ]
  %115 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %114
  %116 = getelementptr inbounds double, ptr %115, i64 2
  %117 = load <2 x double>, ptr %115, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  %118 = load <2 x double>, ptr %116, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  %119 = fmul <2 x double> %117, <double 1.200000e+00, double 1.200000e+00>
  %120 = fmul <2 x double> %118, <double 1.200000e+00, double 1.200000e+00>
  %121 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %114
  %122 = getelementptr inbounds double, ptr %121, i64 2
  %123 = load <2 x double>, ptr %121, align 8, !tbaa !5, !alias.scope !24
  %124 = load <2 x double>, ptr %122, align 8, !tbaa !5, !alias.scope !24
  %125 = fmul <2 x double> %123, <double 1.500000e+00, double 1.500000e+00>
  %126 = fmul <2 x double> %124, <double 1.500000e+00, double 1.500000e+00>
  %127 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %125, <2 x double> %112, <2 x double> %119)
  %128 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %126, <2 x double> %112, <2 x double> %120)
  %129 = fadd <2 x double> %127, zeroinitializer
  %130 = fadd <2 x double> %128, zeroinitializer
  store <2 x double> %129, ptr %115, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  store <2 x double> %130, ptr %116, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  %131 = add nuw i64 %114, 4
  %132 = icmp eq i64 %131, 1200
  br i1 %132, label %185, label %113, !llvm.loop !25

133:                                              ; preds = %103, %177
  %134 = phi i64 [ %183, %177 ], [ 0, %103 ]
  %135 = getelementptr inbounds [1200 x double], ptr %3, i64 %100, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = getelementptr inbounds [1200 x double], ptr %6, i64 %100, i64 %134
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = fmul double %138, 1.500000e+00
  br i1 %105, label %164, label %140

140:                                              ; preds = %133, %140
  %141 = phi i64 [ %161, %140 ], [ 0, %133 ]
  %142 = phi double [ %160, %140 ], [ 0.000000e+00, %133 ]
  %143 = phi i64 [ %162, %140 ], [ 0, %133 ]
  %144 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %141
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds [1200 x double], ptr %3, i64 %141, i64 %134
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = tail call double @llvm.fmuladd.f64(double %139, double %145, double %147)
  store double %148, ptr %146, align 8, !tbaa !5
  %149 = getelementptr inbounds [1200 x double], ptr %6, i64 %141, i64 %134
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = tail call double @llvm.fmuladd.f64(double %150, double %145, double %142)
  %152 = or disjoint i64 %141, 1
  %153 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %152
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = getelementptr inbounds [1200 x double], ptr %3, i64 %152, i64 %134
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = tail call double @llvm.fmuladd.f64(double %139, double %154, double %156)
  store double %157, ptr %155, align 8, !tbaa !5
  %158 = getelementptr inbounds [1200 x double], ptr %6, i64 %152, i64 %134
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %159, double %154, double %151)
  %161 = add nuw nsw i64 %141, 2
  %162 = add i64 %143, 2
  %163 = icmp eq i64 %162, %106
  br i1 %163, label %164, label %140, !llvm.loop !26

164:                                              ; preds = %140, %133
  %165 = phi double [ undef, %133 ], [ %160, %140 ]
  %166 = phi i64 [ 0, %133 ], [ %161, %140 ]
  %167 = phi double [ 0.000000e+00, %133 ], [ %160, %140 ]
  br i1 %107, label %177, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %166
  %170 = load double, ptr %169, align 8, !tbaa !5
  %171 = getelementptr inbounds [1200 x double], ptr %3, i64 %166, i64 %134
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = tail call double @llvm.fmuladd.f64(double %139, double %170, double %172)
  store double %173, ptr %171, align 8, !tbaa !5
  %174 = getelementptr inbounds [1200 x double], ptr %6, i64 %166, i64 %134
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = tail call double @llvm.fmuladd.f64(double %175, double %170, double %167)
  br label %177

177:                                              ; preds = %164, %168
  %178 = phi double [ %165, %164 ], [ %176, %168 ]
  %179 = fmul double %136, 1.200000e+00
  %180 = load double, ptr %101, align 8, !tbaa !5
  %181 = tail call double @llvm.fmuladd.f64(double %139, double %180, double %179)
  %182 = tail call double @llvm.fmuladd.f64(double %178, double 1.500000e+00, double %181)
  store double %182, ptr %135, align 8, !tbaa !5
  %183 = add nuw nsw i64 %134, 1
  %184 = icmp eq i64 %183, 1200
  br i1 %184, label %185, label %133, !llvm.loop !27

185:                                              ; preds = %177, %113, %188
  %186 = add nuw nsw i64 %100, 1
  %187 = icmp eq i64 %186, 1000
  br i1 %187, label %211, label %99, !llvm.loop !28

188:                                              ; preds = %108, %188
  %189 = phi i64 [ %209, %188 ], [ 0, %108 ]
  %190 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %189
  %191 = load double, ptr %190, align 8, !tbaa !5
  %192 = fmul double %191, 1.200000e+00
  %193 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %189
  %194 = load double, ptr %193, align 8, !tbaa !5
  %195 = fmul double %194, 1.500000e+00
  %196 = load double, ptr %101, align 8, !tbaa !5
  %197 = tail call double @llvm.fmuladd.f64(double %195, double %196, double %192)
  %198 = fadd double %197, 0.000000e+00
  store double %198, ptr %190, align 8, !tbaa !5
  %199 = or disjoint i64 %189, 1
  %200 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %199
  %201 = load double, ptr %200, align 8, !tbaa !5
  %202 = fmul double %201, 1.200000e+00
  %203 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %199
  %204 = load double, ptr %203, align 8, !tbaa !5
  %205 = fmul double %204, 1.500000e+00
  %206 = load double, ptr %101, align 8, !tbaa !5
  %207 = tail call double @llvm.fmuladd.f64(double %205, double %206, double %202)
  %208 = fadd double %207, 0.000000e+00
  store double %208, ptr %200, align 8, !tbaa !5
  %209 = add nuw nsw i64 %189, 2
  %210 = icmp eq i64 %209, 1200
  br i1 %210, label %185, label %188, !llvm.loop !29

211:                                              ; preds = %185
  %212 = load ptr, ptr @stdout, align 8, !tbaa !30
  %213 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %212)
  %214 = load ptr, ptr @stdout, align 8, !tbaa !30
  %215 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %216

216:                                              ; preds = %219, %211
  %217 = phi i64 [ 0, %211 ], [ %220, %219 ]
  %218 = mul nuw nsw i64 %217, 1000
  br label %222

219:                                              ; preds = %231
  %220 = add nuw nsw i64 %217, 1
  %221 = icmp eq i64 %220, 1000
  br i1 %221, label %238, label %216, !llvm.loop !32

222:                                              ; preds = %231, %216
  %223 = phi i64 [ 0, %216 ], [ %236, %231 ]
  %224 = add nuw nsw i64 %223, %218
  %225 = trunc i64 %224 to i32
  %226 = urem i32 %225, 20
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load ptr, ptr @stdout, align 8, !tbaa !30
  %230 = tail call i32 @fputc(i32 10, ptr %229)
  br label %231

231:                                              ; preds = %228, %222
  %232 = load ptr, ptr @stdout, align 8, !tbaa !30
  %233 = getelementptr inbounds [1200 x double], ptr %3, i64 %217, i64 %223
  %234 = load double, ptr %233, align 8, !tbaa !5
  %235 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef nonnull @.str.4, double noundef %234)
  %236 = add nuw nsw i64 %223, 1
  %237 = icmp eq i64 %236, 1200
  br i1 %237, label %219, label %222, !llvm.loop !33

238:                                              ; preds = %219
  %239 = load ptr, ptr @stdout, align 8, !tbaa !30
  %240 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %241 = load ptr, ptr @stdout, align 8, !tbaa !30
  %242 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %241)
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %6) #7
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
