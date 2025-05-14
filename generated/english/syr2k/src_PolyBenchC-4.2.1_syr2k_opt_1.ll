; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syr2k_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syr2k_opt_1.c"
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

10:                                               ; preds = %2, %49
  %11 = phi i64 [ 0, %2 ], [ %50, %49 ]
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
  %50 = add nuw nsw i64 %11, 1
  %51 = icmp eq i64 %50, 1200
  br i1 %51, label %52, label %10, !llvm.loop !14

52:                                               ; preds = %49, %69
  %53 = phi i64 [ %70, %69 ], [ 0, %49 ]
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

74:                                               ; preds = %72, %220
  %75 = phi i64 [ %221, %220 ], [ 0, %72 ]
  %76 = phi i64 [ %222, %220 ], [ 1, %72 ]
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
  br i1 %99, label %109, label %100

100:                                              ; preds = %74, %98
  %101 = phi i64 [ 0, %74 ], [ %87, %98 ]
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i64 [ %107, %102 ], [ %101, %100 ]
  %104 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = fmul double %105, 1.200000e+00
  store double %106, ptr %104, align 8, !tbaa !5
  %107 = add nuw nsw i64 %103, 1
  %108 = icmp eq i64 %107, %76
  br i1 %108, label %109, label %102, !llvm.loop !18

109:                                              ; preds = %102, %98
  %110 = icmp ult i64 %76, 4
  %111 = icmp ult ptr %78, %83
  %112 = icmp ult ptr %4, %80
  %113 = and i1 %111, %112
  %114 = icmp ult ptr %78, %84
  %115 = icmp ult ptr %6, %80
  %116 = and i1 %114, %115
  %117 = or i1 %113, %116
  %118 = and i64 %76, 9223372036854775804
  %119 = icmp eq i64 %76, %118
  %120 = and i64 %76, 1
  %121 = icmp eq i64 %120, 0
  br label %122

122:                                              ; preds = %109, %217
  %123 = phi i64 [ %218, %217 ], [ 0, %109 ]
  %124 = getelementptr inbounds [1000 x double], ptr %6, i64 %75, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = fmul double %125, 1.500000e+00
  %127 = getelementptr inbounds [1000 x double], ptr %4, i64 %75, i64 %123
  %128 = load double, ptr %127, align 8, !tbaa !5
  %129 = fmul double %128, 1.500000e+00
  %130 = select i1 %110, i1 true, i1 %117
  br i1 %130, label %178, label %131

131:                                              ; preds = %122
  %132 = insertelement <2 x double> poison, double %129, i64 0
  %133 = shufflevector <2 x double> %132, <2 x double> poison, <2 x i32> zeroinitializer
  %134 = insertelement <2 x double> poison, double %126, i64 0
  %135 = shufflevector <2 x double> %134, <2 x double> poison, <2 x i32> zeroinitializer
  br label %136

136:                                              ; preds = %136, %131
  %137 = phi i64 [ 0, %131 ], [ %175, %136 ]
  %138 = or disjoint i64 %137, 1
  %139 = or disjoint i64 %137, 2
  %140 = or disjoint i64 %137, 3
  %141 = getelementptr inbounds [1000 x double], ptr %4, i64 %137, i64 %123
  %142 = getelementptr inbounds [1000 x double], ptr %4, i64 %138, i64 %123
  %143 = getelementptr inbounds [1000 x double], ptr %4, i64 %139, i64 %123
  %144 = getelementptr inbounds [1000 x double], ptr %4, i64 %140, i64 %123
  %145 = load double, ptr %141, align 8, !tbaa !5, !alias.scope !19
  %146 = load double, ptr %142, align 8, !tbaa !5, !alias.scope !19
  %147 = insertelement <2 x double> poison, double %145, i64 0
  %148 = insertelement <2 x double> %147, double %146, i64 1
  %149 = load double, ptr %143, align 8, !tbaa !5, !alias.scope !19
  %150 = load double, ptr %144, align 8, !tbaa !5, !alias.scope !19
  %151 = insertelement <2 x double> poison, double %149, i64 0
  %152 = insertelement <2 x double> %151, double %150, i64 1
  %153 = getelementptr inbounds [1000 x double], ptr %6, i64 %137, i64 %123
  %154 = getelementptr inbounds [1000 x double], ptr %6, i64 %138, i64 %123
  %155 = getelementptr inbounds [1000 x double], ptr %6, i64 %139, i64 %123
  %156 = getelementptr inbounds [1000 x double], ptr %6, i64 %140, i64 %123
  %157 = load double, ptr %153, align 8, !tbaa !5, !alias.scope !22
  %158 = load double, ptr %154, align 8, !tbaa !5, !alias.scope !22
  %159 = insertelement <2 x double> poison, double %157, i64 0
  %160 = insertelement <2 x double> %159, double %158, i64 1
  %161 = load double, ptr %155, align 8, !tbaa !5, !alias.scope !22
  %162 = load double, ptr %156, align 8, !tbaa !5, !alias.scope !22
  %163 = insertelement <2 x double> poison, double %161, i64 0
  %164 = insertelement <2 x double> %163, double %162, i64 1
  %165 = fmul <2 x double> %133, %160
  %166 = fmul <2 x double> %133, %164
  %167 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %148, <2 x double> %135, <2 x double> %165)
  %168 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %152, <2 x double> %135, <2 x double> %166)
  %169 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %137
  %170 = getelementptr inbounds double, ptr %169, i64 2
  %171 = load <2 x double>, ptr %169, align 8, !tbaa !5, !alias.scope !24, !noalias !26
  %172 = load <2 x double>, ptr %170, align 8, !tbaa !5, !alias.scope !24, !noalias !26
  %173 = fadd <2 x double> %171, %167
  %174 = fadd <2 x double> %172, %168
  store <2 x double> %173, ptr %169, align 8, !tbaa !5, !alias.scope !24, !noalias !26
  store <2 x double> %174, ptr %170, align 8, !tbaa !5, !alias.scope !24, !noalias !26
  %175 = add nuw i64 %137, 4
  %176 = icmp eq i64 %175, %118
  br i1 %176, label %177, label %136, !llvm.loop !27

177:                                              ; preds = %136
  br i1 %119, label %217, label %178

178:                                              ; preds = %122, %177
  %179 = phi i64 [ 0, %122 ], [ %118, %177 ]
  br i1 %121, label %191, label %180

180:                                              ; preds = %178
  %181 = getelementptr inbounds [1000 x double], ptr %4, i64 %179, i64 %123
  %182 = load double, ptr %181, align 8, !tbaa !5
  %183 = getelementptr inbounds [1000 x double], ptr %6, i64 %179, i64 %123
  %184 = load double, ptr %183, align 8, !tbaa !5
  %185 = fmul double %129, %184
  %186 = tail call double @llvm.fmuladd.f64(double %182, double %126, double %185)
  %187 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %179
  %188 = load double, ptr %187, align 8, !tbaa !5
  %189 = fadd double %188, %186
  store double %189, ptr %187, align 8, !tbaa !5
  %190 = or disjoint i64 %179, 1
  br label %191

191:                                              ; preds = %180, %178
  %192 = phi i64 [ %179, %178 ], [ %190, %180 ]
  %193 = icmp eq i64 %75, %179
  br i1 %193, label %217, label %194

194:                                              ; preds = %191, %194
  %195 = phi i64 [ %215, %194 ], [ %192, %191 ]
  %196 = getelementptr inbounds [1000 x double], ptr %4, i64 %195, i64 %123
  %197 = load double, ptr %196, align 8, !tbaa !5
  %198 = getelementptr inbounds [1000 x double], ptr %6, i64 %195, i64 %123
  %199 = load double, ptr %198, align 8, !tbaa !5
  %200 = fmul double %129, %199
  %201 = tail call double @llvm.fmuladd.f64(double %197, double %126, double %200)
  %202 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %195
  %203 = load double, ptr %202, align 8, !tbaa !5
  %204 = fadd double %203, %201
  store double %204, ptr %202, align 8, !tbaa !5
  %205 = add nuw nsw i64 %195, 1
  %206 = getelementptr inbounds [1000 x double], ptr %4, i64 %205, i64 %123
  %207 = load double, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds [1000 x double], ptr %6, i64 %205, i64 %123
  %209 = load double, ptr %208, align 8, !tbaa !5
  %210 = fmul double %129, %209
  %211 = tail call double @llvm.fmuladd.f64(double %207, double %126, double %210)
  %212 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %205
  %213 = load double, ptr %212, align 8, !tbaa !5
  %214 = fadd double %213, %211
  store double %214, ptr %212, align 8, !tbaa !5
  %215 = add nuw nsw i64 %195, 2
  %216 = icmp eq i64 %215, %76
  br i1 %216, label %217, label %194, !llvm.loop !28

217:                                              ; preds = %191, %194, %177
  %218 = add nuw nsw i64 %123, 1
  %219 = icmp eq i64 %218, 1000
  br i1 %219, label %220, label %122, !llvm.loop !29

220:                                              ; preds = %217
  %221 = add nuw nsw i64 %75, 1
  %222 = add nuw nsw i64 %76, 1
  %223 = icmp eq i64 %221, 1200
  br i1 %223, label %224, label %74, !llvm.loop !30

224:                                              ; preds = %220
  %225 = load ptr, ptr @stdout, align 8, !tbaa !31
  %226 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %225)
  %227 = load ptr, ptr @stdout, align 8, !tbaa !31
  %228 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %229

229:                                              ; preds = %248, %224
  %230 = phi i64 [ 0, %224 ], [ %249, %248 ]
  %231 = mul nuw nsw i64 %230, 1200
  br label %232

232:                                              ; preds = %241, %229
  %233 = phi i64 [ 0, %229 ], [ %246, %241 ]
  %234 = add nuw nsw i64 %233, %231
  %235 = trunc i64 %234 to i32
  %236 = urem i32 %235, 20
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = load ptr, ptr @stdout, align 8, !tbaa !31
  %240 = tail call i32 @fputc(i32 10, ptr %239)
  br label %241

241:                                              ; preds = %238, %232
  %242 = load ptr, ptr @stdout, align 8, !tbaa !31
  %243 = getelementptr inbounds [1200 x double], ptr %3, i64 %230, i64 %233
  %244 = load double, ptr %243, align 8, !tbaa !5
  %245 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef nonnull @.str.4, double noundef %244)
  %246 = add nuw nsw i64 %233, 1
  %247 = icmp eq i64 %246, 1200
  br i1 %247, label %248, label %232, !llvm.loop !33

248:                                              ; preds = %241
  %249 = add nuw nsw i64 %230, 1
  %250 = icmp eq i64 %249, 1200
  br i1 %250, label %251, label %229, !llvm.loop !34

251:                                              ; preds = %248
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !12, !11}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = !{!25}
!25 = distinct !{!25, !21}
!26 = !{!20, !23}
!27 = distinct !{!27, !10, !11, !12}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !7, i64 0}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
