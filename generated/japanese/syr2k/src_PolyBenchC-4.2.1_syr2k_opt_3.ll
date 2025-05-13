; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syr2k_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syr2k_opt_3.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %5 = ptrtoint ptr %4 to i64
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %5
  %9 = icmp ult i64 %8, 16
  br label %10

10:                                               ; preds = %2, %65
  %11 = phi i64 [ 0, %2 ], [ %66, %65 ]
  br i1 %9, label %33, label %12

12:                                               ; preds = %10
  %13 = insertelement <2 x i64> poison, i64 %11, i64 0
  %14 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %30, %15 ]
  %17 = phi <2 x i64> [ <i64 0, i64 1>, %12 ], [ %31, %15 ]
  %18 = mul nuw nsw <2 x i64> %17, %14
  %19 = trunc <2 x i64> %18 to <2 x i32>
  %20 = add <2 x i32> %19, <i32 1, i32 1>
  %21 = urem <2 x i32> %20, <i32 1200, i32 1200>
  %22 = sitofp <2 x i32> %21 to <2 x double>
  %23 = fdiv <2 x double> %22, <double 1.200000e+03, double 1.200000e+03>
  %24 = getelementptr inbounds [1000 x double], ptr %4, i64 %11, i64 %16
  store <2 x double> %23, ptr %24, align 8, !tbaa !5
  %25 = add <2 x i32> %19, <i32 2, i32 2>
  %26 = urem <2 x i32> %25, <i32 1000, i32 1000>
  %27 = sitofp <2 x i32> %26 to <2 x double>
  %28 = fdiv <2 x double> %27, <double 1.000000e+03, double 1.000000e+03>
  %29 = getelementptr inbounds [1000 x double], ptr %6, i64 %11, i64 %16
  store <2 x double> %28, ptr %29, align 8, !tbaa !5
  %30 = add nuw i64 %16, 2
  %31 = add <2 x i64> %17, <i64 2, i64 2>
  %32 = icmp eq i64 %30, 1000
  br i1 %32, label %49, label %15, !llvm.loop !9

33:                                               ; preds = %10, %33
  %34 = phi i64 [ %47, %33 ], [ 0, %10 ]
  %35 = mul nuw nsw i64 %34, %11
  %36 = trunc i64 %35 to i32
  %37 = add i32 %36, 1
  %38 = urem i32 %37, 1200
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 1.200000e+03
  %41 = getelementptr inbounds [1000 x double], ptr %4, i64 %11, i64 %34
  store double %40, ptr %41, align 8, !tbaa !5
  %42 = add i32 %36, 2
  %43 = urem i32 %42, 1000
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 1.000000e+03
  %46 = getelementptr inbounds [1000 x double], ptr %6, i64 %11, i64 %34
  store double %45, ptr %46, align 8, !tbaa !5
  %47 = add nuw nsw i64 %34, 1
  %48 = icmp eq i64 %47, 1000
  br i1 %48, label %49, label %33, !llvm.loop !13

49:                                               ; preds = %15, %33
  %50 = insertelement <2 x i64> poison, i64 %11, i64 0
  %51 = shufflevector <2 x i64> %50, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi i64 [ 0, %49 ], [ %62, %52 ]
  %54 = phi <2 x i64> [ <i64 0, i64 1>, %49 ], [ %63, %52 ]
  %55 = mul nuw nsw <2 x i64> %54, %51
  %56 = trunc <2 x i64> %55 to <2 x i32>
  %57 = add <2 x i32> %56, <i32 3, i32 3>
  %58 = urem <2 x i32> %57, <i32 1200, i32 1200>
  %59 = sitofp <2 x i32> %58 to <2 x double>
  %60 = fdiv <2 x double> %59, <double 1.000000e+03, double 1.000000e+03>
  %61 = getelementptr inbounds [1200 x double], ptr %3, i64 %11, i64 %53
  store <2 x double> %60, ptr %61, align 8, !tbaa !5
  %62 = add nuw i64 %53, 2
  %63 = add <2 x i64> %54, <i64 2, i64 2>
  %64 = icmp eq i64 %62, 1200
  br i1 %64, label %65, label %52, !llvm.loop !14

65:                                               ; preds = %52
  %66 = add nuw nsw i64 %11, 1
  %67 = icmp eq i64 %66, 1200
  br i1 %67, label %68, label %10, !llvm.loop !15

68:                                               ; preds = %65
  %69 = getelementptr i8, ptr %3, i64 8
  br label %70

70:                                               ; preds = %68, %216
  %71 = phi i64 [ %217, %216 ], [ 0, %68 ]
  %72 = phi i64 [ %218, %216 ], [ 1, %68 ]
  %73 = mul nuw nsw i64 %71, 9600
  %74 = getelementptr i8, ptr %3, i64 %73
  %75 = mul nuw nsw i64 %71, 9608
  %76 = getelementptr i8, ptr %69, i64 %75
  %77 = mul nuw nsw i64 %71, 8000
  %78 = add nuw i64 %77, 8000
  %79 = getelementptr i8, ptr %4, i64 %78
  %80 = getelementptr i8, ptr %6, i64 %78
  %81 = icmp ult i64 %72, 4
  br i1 %81, label %96, label %82

82:                                               ; preds = %70
  %83 = and i64 %72, 9223372036854775804
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i64 [ 0, %82 ], [ %92, %84 ]
  %86 = getelementptr inbounds [1200 x double], ptr %3, i64 %71, i64 %85
  %87 = getelementptr inbounds double, ptr %86, i64 2
  %88 = load <2 x double>, ptr %86, align 8, !tbaa !5
  %89 = load <2 x double>, ptr %87, align 8, !tbaa !5
  %90 = fmul <2 x double> %88, <double 1.200000e+00, double 1.200000e+00>
  %91 = fmul <2 x double> %89, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %90, ptr %86, align 8, !tbaa !5
  store <2 x double> %91, ptr %87, align 8, !tbaa !5
  %92 = add nuw i64 %85, 4
  %93 = icmp eq i64 %92, %83
  br i1 %93, label %94, label %84, !llvm.loop !16

94:                                               ; preds = %84
  %95 = icmp eq i64 %72, %83
  br i1 %95, label %105, label %96

96:                                               ; preds = %70, %94
  %97 = phi i64 [ 0, %70 ], [ %83, %94 ]
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ %103, %98 ], [ %97, %96 ]
  %100 = getelementptr inbounds [1200 x double], ptr %3, i64 %71, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = fmul double %101, 1.200000e+00
  store double %102, ptr %100, align 8, !tbaa !5
  %103 = add nuw nsw i64 %99, 1
  %104 = icmp eq i64 %103, %72
  br i1 %104, label %105, label %98, !llvm.loop !17

105:                                              ; preds = %98, %94
  %106 = icmp ult i64 %72, 4
  %107 = icmp ult ptr %74, %79
  %108 = icmp ult ptr %4, %76
  %109 = and i1 %107, %108
  %110 = icmp ult ptr %74, %80
  %111 = icmp ult ptr %6, %76
  %112 = and i1 %110, %111
  %113 = or i1 %109, %112
  %114 = and i64 %72, 9223372036854775804
  %115 = icmp eq i64 %72, %114
  %116 = and i64 %72, 1
  %117 = icmp eq i64 %116, 0
  br label %118

118:                                              ; preds = %105, %213
  %119 = phi i64 [ %214, %213 ], [ 0, %105 ]
  %120 = getelementptr inbounds [1000 x double], ptr %4, i64 %71, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = fmul double %121, 1.500000e+00
  %123 = getelementptr inbounds [1000 x double], ptr %6, i64 %71, i64 %119
  %124 = load double, ptr %123, align 8, !tbaa !5
  %125 = fmul double %124, 1.500000e+00
  %126 = select i1 %106, i1 true, i1 %113
  br i1 %126, label %174, label %127

127:                                              ; preds = %118
  %128 = insertelement <2 x double> poison, double %122, i64 0
  %129 = shufflevector <2 x double> %128, <2 x double> poison, <2 x i32> zeroinitializer
  %130 = insertelement <2 x double> poison, double %125, i64 0
  %131 = shufflevector <2 x double> %130, <2 x double> poison, <2 x i32> zeroinitializer
  br label %132

132:                                              ; preds = %132, %127
  %133 = phi i64 [ 0, %127 ], [ %171, %132 ]
  %134 = or disjoint i64 %133, 1
  %135 = or disjoint i64 %133, 2
  %136 = or disjoint i64 %133, 3
  %137 = getelementptr inbounds [1000 x double], ptr %4, i64 %133, i64 %119
  %138 = getelementptr inbounds [1000 x double], ptr %4, i64 %134, i64 %119
  %139 = getelementptr inbounds [1000 x double], ptr %4, i64 %135, i64 %119
  %140 = getelementptr inbounds [1000 x double], ptr %4, i64 %136, i64 %119
  %141 = load double, ptr %137, align 8, !tbaa !5, !alias.scope !18
  %142 = load double, ptr %138, align 8, !tbaa !5, !alias.scope !18
  %143 = insertelement <2 x double> poison, double %141, i64 0
  %144 = insertelement <2 x double> %143, double %142, i64 1
  %145 = load double, ptr %139, align 8, !tbaa !5, !alias.scope !18
  %146 = load double, ptr %140, align 8, !tbaa !5, !alias.scope !18
  %147 = insertelement <2 x double> poison, double %145, i64 0
  %148 = insertelement <2 x double> %147, double %146, i64 1
  %149 = getelementptr inbounds [1000 x double], ptr %6, i64 %133, i64 %119
  %150 = getelementptr inbounds [1000 x double], ptr %6, i64 %134, i64 %119
  %151 = getelementptr inbounds [1000 x double], ptr %6, i64 %135, i64 %119
  %152 = getelementptr inbounds [1000 x double], ptr %6, i64 %136, i64 %119
  %153 = load double, ptr %149, align 8, !tbaa !5, !alias.scope !21
  %154 = load double, ptr %150, align 8, !tbaa !5, !alias.scope !21
  %155 = insertelement <2 x double> poison, double %153, i64 0
  %156 = insertelement <2 x double> %155, double %154, i64 1
  %157 = load double, ptr %151, align 8, !tbaa !5, !alias.scope !21
  %158 = load double, ptr %152, align 8, !tbaa !5, !alias.scope !21
  %159 = insertelement <2 x double> poison, double %157, i64 0
  %160 = insertelement <2 x double> %159, double %158, i64 1
  %161 = fmul <2 x double> %129, %156
  %162 = fmul <2 x double> %129, %160
  %163 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %144, <2 x double> %131, <2 x double> %161)
  %164 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %148, <2 x double> %131, <2 x double> %162)
  %165 = getelementptr inbounds [1200 x double], ptr %3, i64 %71, i64 %133
  %166 = getelementptr inbounds double, ptr %165, i64 2
  %167 = load <2 x double>, ptr %165, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %168 = load <2 x double>, ptr %166, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %169 = fadd <2 x double> %167, %163
  %170 = fadd <2 x double> %168, %164
  store <2 x double> %169, ptr %165, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  store <2 x double> %170, ptr %166, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %171 = add nuw i64 %133, 4
  %172 = icmp eq i64 %171, %114
  br i1 %172, label %173, label %132, !llvm.loop !26

173:                                              ; preds = %132
  br i1 %115, label %213, label %174

174:                                              ; preds = %118, %173
  %175 = phi i64 [ 0, %118 ], [ %114, %173 ]
  br i1 %117, label %187, label %176

176:                                              ; preds = %174
  %177 = getelementptr inbounds [1000 x double], ptr %4, i64 %175, i64 %119
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = getelementptr inbounds [1000 x double], ptr %6, i64 %175, i64 %119
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = fmul double %122, %180
  %182 = tail call double @llvm.fmuladd.f64(double %178, double %125, double %181)
  %183 = getelementptr inbounds [1200 x double], ptr %3, i64 %71, i64 %175
  %184 = load double, ptr %183, align 8, !tbaa !5
  %185 = fadd double %184, %182
  store double %185, ptr %183, align 8, !tbaa !5
  %186 = or disjoint i64 %175, 1
  br label %187

187:                                              ; preds = %176, %174
  %188 = phi i64 [ %175, %174 ], [ %186, %176 ]
  %189 = icmp eq i64 %71, %175
  br i1 %189, label %213, label %190

190:                                              ; preds = %187, %190
  %191 = phi i64 [ %211, %190 ], [ %188, %187 ]
  %192 = getelementptr inbounds [1000 x double], ptr %4, i64 %191, i64 %119
  %193 = load double, ptr %192, align 8, !tbaa !5
  %194 = getelementptr inbounds [1000 x double], ptr %6, i64 %191, i64 %119
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = fmul double %122, %195
  %197 = tail call double @llvm.fmuladd.f64(double %193, double %125, double %196)
  %198 = getelementptr inbounds [1200 x double], ptr %3, i64 %71, i64 %191
  %199 = load double, ptr %198, align 8, !tbaa !5
  %200 = fadd double %199, %197
  store double %200, ptr %198, align 8, !tbaa !5
  %201 = add nuw nsw i64 %191, 1
  %202 = getelementptr inbounds [1000 x double], ptr %4, i64 %201, i64 %119
  %203 = load double, ptr %202, align 8, !tbaa !5
  %204 = getelementptr inbounds [1000 x double], ptr %6, i64 %201, i64 %119
  %205 = load double, ptr %204, align 8, !tbaa !5
  %206 = fmul double %122, %205
  %207 = tail call double @llvm.fmuladd.f64(double %203, double %125, double %206)
  %208 = getelementptr inbounds [1200 x double], ptr %3, i64 %71, i64 %201
  %209 = load double, ptr %208, align 8, !tbaa !5
  %210 = fadd double %209, %207
  store double %210, ptr %208, align 8, !tbaa !5
  %211 = add nuw nsw i64 %191, 2
  %212 = icmp eq i64 %211, %72
  br i1 %212, label %213, label %190, !llvm.loop !27

213:                                              ; preds = %187, %190, %173
  %214 = add nuw nsw i64 %119, 1
  %215 = icmp eq i64 %214, 1000
  br i1 %215, label %216, label %118, !llvm.loop !28

216:                                              ; preds = %213
  %217 = add nuw nsw i64 %71, 1
  %218 = add nuw nsw i64 %72, 1
  %219 = icmp eq i64 %217, 1200
  br i1 %219, label %220, label %70, !llvm.loop !29

220:                                              ; preds = %216
  %221 = load ptr, ptr @stdout, align 8, !tbaa !30
  %222 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %221)
  %223 = load ptr, ptr @stdout, align 8, !tbaa !30
  %224 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %225

225:                                              ; preds = %244, %220
  %226 = phi i64 [ 0, %220 ], [ %245, %244 ]
  %227 = mul nuw nsw i64 %226, 1200
  br label %228

228:                                              ; preds = %237, %225
  %229 = phi i64 [ 0, %225 ], [ %242, %237 ]
  %230 = add nuw nsw i64 %229, %227
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
  %239 = getelementptr inbounds [1200 x double], ptr %3, i64 %226, i64 %229
  %240 = load double, ptr %239, align 8, !tbaa !5
  %241 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef nonnull @.str.4, double noundef %240)
  %242 = add nuw nsw i64 %229, 1
  %243 = icmp eq i64 %242, 1200
  br i1 %243, label %244, label %228, !llvm.loop !32

244:                                              ; preds = %237
  %245 = add nuw nsw i64 %226, 1
  %246 = icmp eq i64 %245, 1200
  br i1 %246, label %247, label %225, !llvm.loop !33

247:                                              ; preds = %244
  %248 = load ptr, ptr @stdout, align 8, !tbaa !30
  %249 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %248, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %250 = load ptr, ptr @stdout, align 8, !tbaa !30
  %251 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %250)
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %4) #7
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
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !12, !11}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = !{!24}
!24 = distinct !{!24, !20}
!25 = !{!19, !22}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
