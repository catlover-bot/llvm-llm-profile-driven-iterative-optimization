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

10:                                               ; preds = %2, %33
  %11 = phi i64 [ 0, %2 ], [ %34, %33 ]
  br i1 %9, label %36, label %12

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
  br i1 %32, label %33, label %15, !llvm.loop !9

33:                                               ; preds = %15, %36
  %34 = add nuw nsw i64 %11, 1
  %35 = icmp eq i64 %34, 1200
  br i1 %35, label %52, label %10, !llvm.loop !13

36:                                               ; preds = %10, %36
  %37 = phi i64 [ %50, %36 ], [ 0, %10 ]
  %38 = mul nuw nsw i64 %37, %11
  %39 = trunc i64 %38 to i32
  %40 = add i32 %39, 1
  %41 = urem i32 %40, 1200
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 1.200000e+03
  %44 = getelementptr inbounds [1000 x double], ptr %4, i64 %11, i64 %37
  store double %43, ptr %44, align 8, !tbaa !5
  %45 = add i32 %39, 2
  %46 = urem i32 %45, 1000
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+03
  %49 = getelementptr inbounds [1000 x double], ptr %6, i64 %11, i64 %37
  store double %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %37, 1
  %51 = icmp eq i64 %50, 1000
  br i1 %51, label %33, label %36, !llvm.loop !14

52:                                               ; preds = %33, %69
  %53 = phi i64 [ %70, %69 ], [ 0, %33 ]
  %54 = insertelement <2 x i64> poison, i64 %53, i64 0
  %55 = shufflevector <2 x i64> %54, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %56

56:                                               ; preds = %56, %52
  %57 = phi i64 [ 0, %52 ], [ %66, %56 ]
  %58 = phi <2 x i64> [ <i64 0, i64 1>, %52 ], [ %67, %56 ]
  %59 = mul nuw nsw <2 x i64> %58, %55
  %60 = trunc <2 x i64> %59 to <2 x i32>
  %61 = add <2 x i32> %60, <i32 3, i32 3>
  %62 = urem <2 x i32> %61, <i32 1200, i32 1200>
  %63 = sitofp <2 x i32> %62 to <2 x double>
  %64 = fdiv <2 x double> %63, <double 1.000000e+03, double 1.000000e+03>
  %65 = getelementptr inbounds [1200 x double], ptr %3, i64 %53, i64 %57
  store <2 x double> %64, ptr %65, align 8, !tbaa !5
  %66 = add nuw i64 %57, 2
  %67 = add <2 x i64> %58, <i64 2, i64 2>
  %68 = icmp eq i64 %66, 1200
  br i1 %68, label %69, label %56, !llvm.loop !15

69:                                               ; preds = %56
  %70 = add nuw nsw i64 %53, 1
  %71 = icmp eq i64 %70, 1200
  br i1 %71, label %72, label %52, !llvm.loop !16

72:                                               ; preds = %69
  %73 = getelementptr i8, ptr %3, i64 8
  br label %74

74:                                               ; preds = %72, %122
  %75 = phi i64 [ %123, %122 ], [ 0, %72 ]
  %76 = phi i64 [ %124, %122 ], [ 1, %72 ]
  %77 = mul nuw nsw i64 %75, 9600
  %78 = getelementptr i8, ptr %3, i64 %77
  %79 = mul nuw nsw i64 %75, 9608
  %80 = getelementptr i8, ptr %73, i64 %79
  %81 = mul nuw nsw i64 %75, 8000
  %82 = add nuw i64 %81, 8000
  %83 = getelementptr i8, ptr %4, i64 %82
  %84 = getelementptr i8, ptr %6, i64 %82
  %85 = icmp ult i64 %76, 4
  br i1 %85, label %100, label %86

86:                                               ; preds = %74
  %87 = and i64 %76, 9223372036854775804
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i64 [ 0, %86 ], [ %96, %88 ]
  %90 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %89
  %91 = getelementptr inbounds double, ptr %90, i64 2
  %92 = load <2 x double>, ptr %90, align 8, !tbaa !5
  %93 = load <2 x double>, ptr %91, align 8, !tbaa !5
  %94 = fmul <2 x double> %92, <double 1.200000e+00, double 1.200000e+00>
  %95 = fmul <2 x double> %93, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %94, ptr %90, align 8, !tbaa !5
  store <2 x double> %95, ptr %91, align 8, !tbaa !5
  %96 = add nuw i64 %89, 4
  %97 = icmp eq i64 %96, %87
  br i1 %97, label %98, label %88, !llvm.loop !17

98:                                               ; preds = %88
  %99 = icmp eq i64 %76, %87
  br i1 %99, label %102, label %100

100:                                              ; preds = %74, %98
  %101 = phi i64 [ 0, %74 ], [ %87, %98 ]
  br label %115

102:                                              ; preds = %115, %98
  %103 = icmp ult i64 %76, 4
  %104 = icmp ult ptr %78, %83
  %105 = icmp ult ptr %4, %80
  %106 = and i1 %104, %105
  %107 = icmp ult ptr %78, %84
  %108 = icmp ult ptr %6, %80
  %109 = and i1 %107, %108
  %110 = or i1 %106, %109
  %111 = and i64 %76, 9223372036854775804
  %112 = icmp eq i64 %76, %111
  %113 = and i64 %76, 1
  %114 = icmp eq i64 %113, 0
  br label %126

115:                                              ; preds = %100, %115
  %116 = phi i64 [ %120, %115 ], [ %101, %100 ]
  %117 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = fmul double %118, 1.200000e+00
  store double %119, ptr %117, align 8, !tbaa !5
  %120 = add nuw nsw i64 %116, 1
  %121 = icmp eq i64 %120, %76
  br i1 %121, label %102, label %115, !llvm.loop !18

122:                                              ; preds = %198
  %123 = add nuw nsw i64 %75, 1
  %124 = add nuw nsw i64 %76, 1
  %125 = icmp eq i64 %123, 1200
  br i1 %125, label %224, label %74, !llvm.loop !19

126:                                              ; preds = %102, %198
  %127 = phi i64 [ %199, %198 ], [ 0, %102 ]
  %128 = getelementptr inbounds [1000 x double], ptr %6, i64 %75, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = fmul double %129, 1.500000e+00
  %131 = getelementptr inbounds [1000 x double], ptr %4, i64 %75, i64 %127
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = fmul double %132, 1.500000e+00
  %134 = select i1 %103, i1 true, i1 %110
  br i1 %134, label %182, label %135

135:                                              ; preds = %126
  %136 = insertelement <2 x double> poison, double %133, i64 0
  %137 = shufflevector <2 x double> %136, <2 x double> poison, <2 x i32> zeroinitializer
  %138 = insertelement <2 x double> poison, double %130, i64 0
  %139 = shufflevector <2 x double> %138, <2 x double> poison, <2 x i32> zeroinitializer
  br label %140

140:                                              ; preds = %140, %135
  %141 = phi i64 [ 0, %135 ], [ %179, %140 ]
  %142 = or disjoint i64 %141, 1
  %143 = or disjoint i64 %141, 2
  %144 = or disjoint i64 %141, 3
  %145 = getelementptr inbounds [1000 x double], ptr %4, i64 %141, i64 %127
  %146 = getelementptr inbounds [1000 x double], ptr %4, i64 %142, i64 %127
  %147 = getelementptr inbounds [1000 x double], ptr %4, i64 %143, i64 %127
  %148 = getelementptr inbounds [1000 x double], ptr %4, i64 %144, i64 %127
  %149 = load double, ptr %145, align 8, !tbaa !5, !alias.scope !20
  %150 = load double, ptr %146, align 8, !tbaa !5, !alias.scope !20
  %151 = insertelement <2 x double> poison, double %149, i64 0
  %152 = insertelement <2 x double> %151, double %150, i64 1
  %153 = load double, ptr %147, align 8, !tbaa !5, !alias.scope !20
  %154 = load double, ptr %148, align 8, !tbaa !5, !alias.scope !20
  %155 = insertelement <2 x double> poison, double %153, i64 0
  %156 = insertelement <2 x double> %155, double %154, i64 1
  %157 = getelementptr inbounds [1000 x double], ptr %6, i64 %141, i64 %127
  %158 = getelementptr inbounds [1000 x double], ptr %6, i64 %142, i64 %127
  %159 = getelementptr inbounds [1000 x double], ptr %6, i64 %143, i64 %127
  %160 = getelementptr inbounds [1000 x double], ptr %6, i64 %144, i64 %127
  %161 = load double, ptr %157, align 8, !tbaa !5, !alias.scope !23
  %162 = load double, ptr %158, align 8, !tbaa !5, !alias.scope !23
  %163 = insertelement <2 x double> poison, double %161, i64 0
  %164 = insertelement <2 x double> %163, double %162, i64 1
  %165 = load double, ptr %159, align 8, !tbaa !5, !alias.scope !23
  %166 = load double, ptr %160, align 8, !tbaa !5, !alias.scope !23
  %167 = insertelement <2 x double> poison, double %165, i64 0
  %168 = insertelement <2 x double> %167, double %166, i64 1
  %169 = fmul <2 x double> %137, %164
  %170 = fmul <2 x double> %137, %168
  %171 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %152, <2 x double> %139, <2 x double> %169)
  %172 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %156, <2 x double> %139, <2 x double> %170)
  %173 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %141
  %174 = getelementptr inbounds double, ptr %173, i64 2
  %175 = load <2 x double>, ptr %173, align 8, !tbaa !5, !alias.scope !25, !noalias !27
  %176 = load <2 x double>, ptr %174, align 8, !tbaa !5, !alias.scope !25, !noalias !27
  %177 = fadd <2 x double> %175, %171
  %178 = fadd <2 x double> %176, %172
  store <2 x double> %177, ptr %173, align 8, !tbaa !5, !alias.scope !25, !noalias !27
  store <2 x double> %178, ptr %174, align 8, !tbaa !5, !alias.scope !25, !noalias !27
  %179 = add nuw i64 %141, 4
  %180 = icmp eq i64 %179, %111
  br i1 %180, label %181, label %140, !llvm.loop !28

181:                                              ; preds = %140
  br i1 %112, label %198, label %182

182:                                              ; preds = %126, %181
  %183 = phi i64 [ 0, %126 ], [ %111, %181 ]
  br i1 %114, label %195, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds [1000 x double], ptr %4, i64 %183, i64 %127
  %186 = load double, ptr %185, align 8, !tbaa !5
  %187 = getelementptr inbounds [1000 x double], ptr %6, i64 %183, i64 %127
  %188 = load double, ptr %187, align 8, !tbaa !5
  %189 = fmul double %133, %188
  %190 = tail call double @llvm.fmuladd.f64(double %186, double %130, double %189)
  %191 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %183
  %192 = load double, ptr %191, align 8, !tbaa !5
  %193 = fadd double %192, %190
  store double %193, ptr %191, align 8, !tbaa !5
  %194 = or disjoint i64 %183, 1
  br label %195

195:                                              ; preds = %184, %182
  %196 = phi i64 [ %183, %182 ], [ %194, %184 ]
  %197 = icmp eq i64 %75, %183
  br i1 %197, label %198, label %201

198:                                              ; preds = %195, %201, %181
  %199 = add nuw nsw i64 %127, 1
  %200 = icmp eq i64 %199, 1000
  br i1 %200, label %122, label %126, !llvm.loop !29

201:                                              ; preds = %195, %201
  %202 = phi i64 [ %222, %201 ], [ %196, %195 ]
  %203 = getelementptr inbounds [1000 x double], ptr %4, i64 %202, i64 %127
  %204 = load double, ptr %203, align 8, !tbaa !5
  %205 = getelementptr inbounds [1000 x double], ptr %6, i64 %202, i64 %127
  %206 = load double, ptr %205, align 8, !tbaa !5
  %207 = fmul double %133, %206
  %208 = tail call double @llvm.fmuladd.f64(double %204, double %130, double %207)
  %209 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %202
  %210 = load double, ptr %209, align 8, !tbaa !5
  %211 = fadd double %210, %208
  store double %211, ptr %209, align 8, !tbaa !5
  %212 = add nuw nsw i64 %202, 1
  %213 = getelementptr inbounds [1000 x double], ptr %4, i64 %212, i64 %127
  %214 = load double, ptr %213, align 8, !tbaa !5
  %215 = getelementptr inbounds [1000 x double], ptr %6, i64 %212, i64 %127
  %216 = load double, ptr %215, align 8, !tbaa !5
  %217 = fmul double %133, %216
  %218 = tail call double @llvm.fmuladd.f64(double %214, double %130, double %217)
  %219 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %212
  %220 = load double, ptr %219, align 8, !tbaa !5
  %221 = fadd double %220, %218
  store double %221, ptr %219, align 8, !tbaa !5
  %222 = add nuw nsw i64 %202, 2
  %223 = icmp eq i64 %222, %76
  br i1 %223, label %198, label %201, !llvm.loop !30

224:                                              ; preds = %122
  %225 = load ptr, ptr @stdout, align 8, !tbaa !31
  %226 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %225)
  %227 = load ptr, ptr @stdout, align 8, !tbaa !31
  %228 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %229

229:                                              ; preds = %232, %224
  %230 = phi i64 [ 0, %224 ], [ %233, %232 ]
  %231 = mul nuw nsw i64 %230, 1200
  br label %235

232:                                              ; preds = %244
  %233 = add nuw nsw i64 %230, 1
  %234 = icmp eq i64 %233, 1200
  br i1 %234, label %251, label %229, !llvm.loop !33

235:                                              ; preds = %244, %229
  %236 = phi i64 [ 0, %229 ], [ %249, %244 ]
  %237 = add nuw nsw i64 %236, %231
  %238 = trunc i64 %237 to i32
  %239 = urem i32 %238, 20
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load ptr, ptr @stdout, align 8, !tbaa !31
  %243 = tail call i32 @fputc(i32 10, ptr %242)
  br label %244

244:                                              ; preds = %241, %235
  %245 = load ptr, ptr @stdout, align 8, !tbaa !31
  %246 = getelementptr inbounds [1200 x double], ptr %3, i64 %230, i64 %236
  %247 = load double, ptr %246, align 8, !tbaa !5
  %248 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.4, double noundef %247)
  %249 = add nuw nsw i64 %236, 1
  %250 = icmp eq i64 %249, 1200
  br i1 %250, label %232, label %235, !llvm.loop !34

251:                                              ; preds = %232
  %252 = load ptr, ptr @stdout, align 8, !tbaa !31
  %253 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %252, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %254 = load ptr, ptr @stdout, align 8, !tbaa !31
  %255 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %254)
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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !12, !11}
!19 = distinct !{!19, !10}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = !{!26}
!26 = distinct !{!26, !22}
!27 = !{!21, !24}
!28 = distinct !{!28, !10, !11, !12}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10, !11}
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !7, i64 0}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
