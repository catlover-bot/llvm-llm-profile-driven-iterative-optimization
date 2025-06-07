; ModuleID = 'outputs/src_PolyBenchC-4.2.1_gemm_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_gemm_opt_1.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1100000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #7
  br label %6

6:                                                ; preds = %2, %23
  %7 = phi i64 [ 0, %2 ], [ %24, %23 ]
  %8 = insertelement <2 x i64> poison, i64 %7, i64 0
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %20, %10 ]
  %12 = phi <2 x i64> [ <i64 0, i64 1>, %6 ], [ %21, %10 ]
  %13 = mul nuw nsw <2 x i64> %12, %9
  %14 = trunc <2 x i64> %13 to <2 x i32>
  %15 = add <2 x i32> %14, <i32 1, i32 1>
  %16 = urem <2 x i32> %15, <i32 1000, i32 1000>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, <double 1.000000e+03, double 1.000000e+03>
  %19 = getelementptr inbounds [1100 x double], ptr %3, i64 %7, i64 %11
  store <2 x double> %18, ptr %19, align 8, !tbaa !5
  %20 = add nuw i64 %11, 2
  %21 = add <2 x i64> %12, <i64 2, i64 2>
  %22 = icmp eq i64 %20, 1100
  br i1 %22, label %23, label %10, !llvm.loop !9

23:                                               ; preds = %10
  %24 = add nuw nsw i64 %7, 1
  %25 = icmp eq i64 %24, 1000
  br i1 %25, label %26, label %6, !llvm.loop !13

26:                                               ; preds = %23, %43
  %27 = phi i64 [ %44, %43 ], [ 0, %23 ]
  %28 = insertelement <2 x i64> poison, i64 %27, i64 0
  %29 = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi i64 [ 0, %26 ], [ %40, %30 ]
  %32 = phi <2 x i64> [ <i64 0, i64 1>, %26 ], [ %41, %30 ]
  %33 = add nuw nsw <2 x i64> %32, <i64 1, i64 1>
  %34 = mul nuw nsw <2 x i64> %33, %29
  %35 = trunc <2 x i64> %34 to <2 x i32>
  %36 = urem <2 x i32> %35, <i32 1200, i32 1200>
  %37 = sitofp <2 x i32> %36 to <2 x double>
  %38 = fdiv <2 x double> %37, <double 1.200000e+03, double 1.200000e+03>
  %39 = getelementptr inbounds [1200 x double], ptr %4, i64 %27, i64 %31
  store <2 x double> %38, ptr %39, align 8, !tbaa !5
  %40 = add nuw i64 %31, 2
  %41 = add <2 x i64> %32, <i64 2, i64 2>
  %42 = icmp eq i64 %40, 1200
  br i1 %42, label %43, label %30, !llvm.loop !14

43:                                               ; preds = %30
  %44 = add nuw nsw i64 %27, 1
  %45 = icmp eq i64 %44, 1000
  br i1 %45, label %46, label %26, !llvm.loop !15

46:                                               ; preds = %43, %63
  %47 = phi i64 [ %64, %63 ], [ 0, %43 ]
  %48 = insertelement <2 x i64> poison, i64 %47, i64 0
  %49 = shufflevector <2 x i64> %48, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %50

50:                                               ; preds = %50, %46
  %51 = phi i64 [ 0, %46 ], [ %60, %50 ]
  %52 = phi <2 x i64> [ <i64 0, i64 1>, %46 ], [ %61, %50 ]
  %53 = add nuw nsw <2 x i64> %52, <i64 2, i64 2>
  %54 = mul nuw nsw <2 x i64> %53, %49
  %55 = trunc <2 x i64> %54 to <2 x i32>
  %56 = urem <2 x i32> %55, <i32 1100, i32 1100>
  %57 = sitofp <2 x i32> %56 to <2 x double>
  %58 = fdiv <2 x double> %57, <double 1.100000e+03, double 1.100000e+03>
  %59 = getelementptr inbounds [1100 x double], ptr %5, i64 %47, i64 %51
  store <2 x double> %58, ptr %59, align 8, !tbaa !5
  %60 = add nuw i64 %51, 2
  %61 = add <2 x i64> %52, <i64 2, i64 2>
  %62 = icmp eq i64 %60, 1100
  br i1 %62, label %63, label %50, !llvm.loop !16

63:                                               ; preds = %50
  %64 = add nuw nsw i64 %47, 1
  %65 = icmp eq i64 %64, 1200
  br i1 %65, label %66, label %46, !llvm.loop !17

66:                                               ; preds = %63
  %67 = getelementptr i8, ptr %5, i64 10560000
  %68 = getelementptr i8, ptr %3, i64 8800
  br label %69

69:                                               ; preds = %66, %204
  %70 = phi i64 [ %205, %204 ], [ 0, %66 ]
  %71 = mul nuw nsw i64 %70, 8800
  %72 = getelementptr i8, ptr %3, i64 %71
  %73 = getelementptr i8, ptr %68, i64 %71
  br label %74

74:                                               ; preds = %84, %69
  %75 = phi i64 [ 0, %69 ], [ %91, %84 ]
  %76 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %75
  %77 = getelementptr inbounds double, ptr %76, i64 2
  %78 = load <2 x double>, ptr %76, align 8, !tbaa !5
  %79 = load <2 x double>, ptr %77, align 8, !tbaa !5
  %80 = fmul <2 x double> %78, <double 1.200000e+00, double 1.200000e+00>
  %81 = fmul <2 x double> %79, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %80, ptr %76, align 8, !tbaa !5
  store <2 x double> %81, ptr %77, align 8, !tbaa !5
  %82 = or disjoint i64 %75, 4
  %83 = icmp eq i64 %82, 1100
  br i1 %83, label %92, label %84, !llvm.loop !18

84:                                               ; preds = %74
  %85 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %82
  %86 = getelementptr inbounds double, ptr %85, i64 2
  %87 = load <2 x double>, ptr %85, align 8, !tbaa !5
  %88 = load <2 x double>, ptr %86, align 8, !tbaa !5
  %89 = fmul <2 x double> %87, <double 1.200000e+00, double 1.200000e+00>
  %90 = fmul <2 x double> %88, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %89, ptr %85, align 8, !tbaa !5
  store <2 x double> %90, ptr %86, align 8, !tbaa !5
  %91 = add nuw nsw i64 %75, 8
  br label %74

92:                                               ; preds = %74
  %93 = icmp ult ptr %72, %67
  %94 = icmp ult ptr %5, %73
  %95 = and i1 %93, %94
  br label %96

96:                                               ; preds = %92, %201
  %97 = phi i64 [ %202, %201 ], [ 0, %92 ]
  %98 = getelementptr inbounds [1200 x double], ptr %4, i64 %70, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = fmul double %99, 1.500000e+00
  br i1 %95, label %172, label %101

101:                                              ; preds = %96
  %102 = insertelement <2 x double> poison, double %100, i64 0
  %103 = shufflevector <2 x double> %102, <2 x double> poison, <2 x i32> zeroinitializer
  br label %104

104:                                              ; preds = %104, %101
  %105 = phi i64 [ 0, %101 ], [ %170, %104 ]
  %106 = shl i64 %105, 2
  %107 = or disjoint i64 %106, 4
  %108 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %106
  %109 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %107
  %110 = load double, ptr %108, align 8, !tbaa !5, !alias.scope !19
  %111 = load double, ptr %109, align 8, !tbaa !5, !alias.scope !19
  %112 = insertelement <2 x double> poison, double %110, i64 0
  %113 = insertelement <2 x double> %112, double %111, i64 1
  %114 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %106
  %115 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %107
  %116 = load double, ptr %114, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %117 = load double, ptr %115, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %118 = insertelement <2 x double> poison, double %116, i64 0
  %119 = insertelement <2 x double> %118, double %117, i64 1
  %120 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %103, <2 x double> %113, <2 x double> %119)
  %121 = or disjoint i64 %106, 1
  %122 = or disjoint i64 %106, 5
  %123 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %121
  %124 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %122
  %125 = load double, ptr %123, align 8, !tbaa !5, !alias.scope !19
  %126 = load double, ptr %124, align 8, !tbaa !5, !alias.scope !19
  %127 = insertelement <2 x double> poison, double %125, i64 0
  %128 = insertelement <2 x double> %127, double %126, i64 1
  %129 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %121
  %130 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %122
  %131 = load double, ptr %129, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %132 = load double, ptr %130, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %133 = insertelement <2 x double> poison, double %131, i64 0
  %134 = insertelement <2 x double> %133, double %132, i64 1
  %135 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %103, <2 x double> %128, <2 x double> %134)
  %136 = or disjoint i64 %106, 2
  %137 = or disjoint i64 %106, 6
  %138 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %136
  %139 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %137
  %140 = load double, ptr %138, align 8, !tbaa !5, !alias.scope !19
  %141 = load double, ptr %139, align 8, !tbaa !5, !alias.scope !19
  %142 = insertelement <2 x double> poison, double %140, i64 0
  %143 = insertelement <2 x double> %142, double %141, i64 1
  %144 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %136
  %145 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %137
  %146 = load double, ptr %144, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %147 = load double, ptr %145, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %148 = insertelement <2 x double> poison, double %146, i64 0
  %149 = insertelement <2 x double> %148, double %147, i64 1
  %150 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %103, <2 x double> %143, <2 x double> %149)
  %151 = or disjoint i64 %106, 3
  %152 = or disjoint i64 %106, 7
  %153 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %151
  %154 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %152
  %155 = load double, ptr %153, align 8, !tbaa !5, !alias.scope !19
  %156 = load double, ptr %154, align 8, !tbaa !5, !alias.scope !19
  %157 = insertelement <2 x double> poison, double %155, i64 0
  %158 = insertelement <2 x double> %157, double %156, i64 1
  %159 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %151
  %160 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %152
  %161 = load double, ptr %159, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %162 = load double, ptr %160, align 8, !tbaa !5, !alias.scope !22, !noalias !19
  %163 = insertelement <2 x double> poison, double %161, i64 0
  %164 = insertelement <2 x double> %163, double %162, i64 1
  %165 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %103, <2 x double> %158, <2 x double> %164)
  %166 = getelementptr inbounds double, ptr %159, i64 -3
  %167 = shufflevector <2 x double> %120, <2 x double> %135, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %168 = shufflevector <2 x double> %150, <2 x double> %165, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %169 = shufflevector <4 x double> %167, <4 x double> %168, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %169, ptr %166, align 8, !tbaa !5
  %170 = add nuw i64 %105, 2
  %171 = icmp eq i64 %170, 274
  br i1 %171, label %172, label %104, !llvm.loop !24

172:                                              ; preds = %104, %96
  %173 = phi i64 [ 0, %96 ], [ 1096, %104 ]
  br label %174

174:                                              ; preds = %172, %174
  %175 = phi i64 [ %199, %174 ], [ %173, %172 ]
  %176 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %175
  %177 = load double, ptr %176, align 8, !tbaa !5
  %178 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %175
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %100, double %177, double %179)
  store double %180, ptr %178, align 8, !tbaa !5
  %181 = or disjoint i64 %175, 1
  %182 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %181
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %181
  %185 = load double, ptr %184, align 8, !tbaa !5
  %186 = tail call double @llvm.fmuladd.f64(double %100, double %183, double %185)
  store double %186, ptr %184, align 8, !tbaa !5
  %187 = or disjoint i64 %175, 2
  %188 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %187
  %191 = load double, ptr %190, align 8, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %100, double %189, double %191)
  store double %192, ptr %190, align 8, !tbaa !5
  %193 = or disjoint i64 %175, 3
  %194 = getelementptr inbounds [1100 x double], ptr %5, i64 %97, i64 %193
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = getelementptr inbounds [1100 x double], ptr %3, i64 %70, i64 %193
  %197 = load double, ptr %196, align 8, !tbaa !5
  %198 = tail call double @llvm.fmuladd.f64(double %100, double %195, double %197)
  store double %198, ptr %196, align 8, !tbaa !5
  %199 = add nuw nsw i64 %175, 4
  %200 = icmp ult i64 %175, 1096
  br i1 %200, label %174, label %201, !llvm.loop !25

201:                                              ; preds = %174
  %202 = add nuw nsw i64 %97, 1
  %203 = icmp eq i64 %202, 1200
  br i1 %203, label %204, label %96, !llvm.loop !26

204:                                              ; preds = %201
  %205 = add nuw nsw i64 %70, 1
  %206 = icmp eq i64 %205, 1000
  br i1 %206, label %207, label %69, !llvm.loop !27

207:                                              ; preds = %204
  %208 = load ptr, ptr @stdout, align 8, !tbaa !28
  %209 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %208)
  %210 = load ptr, ptr @stdout, align 8, !tbaa !28
  %211 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %212

212:                                              ; preds = %231, %207
  %213 = phi i64 [ 0, %207 ], [ %232, %231 ]
  %214 = mul nuw nsw i64 %213, 1000
  br label %215

215:                                              ; preds = %224, %212
  %216 = phi i64 [ 0, %212 ], [ %229, %224 ]
  %217 = add nuw nsw i64 %216, %214
  %218 = trunc i64 %217 to i32
  %219 = urem i32 %218, 20
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load ptr, ptr @stdout, align 8, !tbaa !28
  %223 = tail call i32 @fputc(i32 10, ptr %222)
  br label %224

224:                                              ; preds = %221, %215
  %225 = load ptr, ptr @stdout, align 8, !tbaa !28
  %226 = getelementptr inbounds [1100 x double], ptr %3, i64 %213, i64 %216
  %227 = load double, ptr %226, align 8, !tbaa !5
  %228 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef nonnull @.str.4, double noundef %227)
  %229 = add nuw nsw i64 %216, 1
  %230 = icmp eq i64 %229, 1100
  br i1 %230, label %231, label %215, !llvm.loop !30

231:                                              ; preds = %224
  %232 = add nuw nsw i64 %213, 1
  %233 = icmp eq i64 %232, 1000
  br i1 %233, label %234, label %212, !llvm.loop !31

234:                                              ; preds = %231
  %235 = load ptr, ptr @stdout, align 8, !tbaa !28
  %236 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %235, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %237 = load ptr, ptr @stdout, align 8, !tbaa !28
  %238 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %237)
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef %5) #7
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
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !11, !12}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !10, !11, !12}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !7, i64 0}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
