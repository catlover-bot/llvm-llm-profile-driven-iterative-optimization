; ModuleID = 'outputs/src_PolyBenchC-4.2.1_lu_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_lu_opt_2.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #9
  %4 = getelementptr i8, ptr %3, i64 8
  br label %5

5:                                                ; preds = %46, %2
  %6 = phi i64 [ 1, %2 ], [ %48, %46 ]
  %7 = phi i64 [ 0, %2 ], [ %41, %46 ]
  %8 = mul nuw nsw i64 %7, 16008
  %9 = shl i64 %7, 3
  %10 = sub nsw i64 15984, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp ult i64 %6, 2
  br i1 %12, label %28, label %13

13:                                               ; preds = %5
  %14 = and i64 %6, 9223372036854775806
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %23, %15 ]
  %17 = phi <2 x i32> [ <i32 0, i32 1>, %13 ], [ %24, %15 ]
  %18 = sub <2 x i32> zeroinitializer, %17
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, <double 2.000000e+03, double 2.000000e+03>
  %21 = fadd <2 x double> %20, <double 1.000000e+00, double 1.000000e+00>
  %22 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %16
  store <2 x double> %21, ptr %22, align 8, !tbaa !5
  %23 = add nuw i64 %16, 2
  %24 = add <2 x i32> %17, <i32 2, i32 2>
  %25 = icmp eq i64 %23, %14
  br i1 %25, label %26, label %15, !llvm.loop !9

26:                                               ; preds = %15
  %27 = icmp eq i64 %6, %14
  br i1 %27, label %40, label %28

28:                                               ; preds = %5, %26
  %29 = phi i64 [ 0, %5 ], [ %14, %26 ]
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %38, %30 ], [ %29, %28 ]
  %32 = trunc i64 %31 to i32
  %33 = sub i32 0, %32
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 2.000000e+03
  %36 = fadd double %35, 1.000000e+00
  %37 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %31
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = add nuw nsw i64 %31, 1
  %39 = icmp eq i64 %38, %6
  br i1 %39, label %40, label %30, !llvm.loop !13

40:                                               ; preds = %30, %26
  %41 = add nuw nsw i64 %7, 1
  %42 = icmp ult i64 %7, 1999
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %11, 8
  %45 = getelementptr i8, ptr %4, i64 %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %45, i8 0, i64 %44, i1 false), !tbaa !5
  br label %46

46:                                               ; preds = %43, %40
  %47 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %7
  store double 1.000000e+00, ptr %47, align 8, !tbaa !5
  %48 = add nuw nsw i64 %6, 1
  %49 = icmp eq i64 %41, 2000
  br i1 %49, label %50, label %5, !llvm.loop !14

50:                                               ; preds = %46
  %51 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %51, i8 0, i64 32000000, i1 false)
  %52 = getelementptr i8, ptr %51, i64 63968016000
  %53 = getelementptr i8, ptr %3, i64 31984008
  br label %54

54:                                               ; preds = %113, %50
  %55 = phi i64 [ 0, %50 ], [ %114, %113 ]
  %56 = shl nuw nsw i64 %55, 3
  %57 = getelementptr i8, ptr %3, i64 %56
  %58 = getelementptr i8, ptr %53, i64 %56
  %59 = icmp ult ptr %51, %58
  %60 = icmp ult ptr %57, %52
  %61 = and i1 %59, %60
  br label %62

62:                                               ; preds = %110, %54
  %63 = phi i64 [ 0, %54 ], [ %111, %110 ]
  %64 = getelementptr inbounds [2000 x double], ptr %3, i64 %63, i64 %55
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %63
  br i1 %61, label %95, label %67

67:                                               ; preds = %62
  %68 = insertelement <2 x double> poison, double %65, i64 0
  %69 = shufflevector <2 x double> %68, <2 x double> poison, <2 x i32> zeroinitializer
  br label %70

70:                                               ; preds = %70, %67
  %71 = phi i64 [ 0, %67 ], [ %93, %70 ]
  %72 = or disjoint i64 %71, 1
  %73 = or disjoint i64 %71, 2
  %74 = or disjoint i64 %71, 3
  %75 = getelementptr inbounds [2000 x double], ptr %3, i64 %71, i64 %55
  %76 = getelementptr inbounds [2000 x double], ptr %3, i64 %72, i64 %55
  %77 = getelementptr inbounds [2000 x double], ptr %3, i64 %73, i64 %55
  %78 = getelementptr inbounds [2000 x double], ptr %3, i64 %74, i64 %55
  %79 = load double, ptr %75, align 8, !tbaa !5, !alias.scope !15
  %80 = load double, ptr %76, align 8, !tbaa !5, !alias.scope !15
  %81 = insertelement <2 x double> poison, double %79, i64 0
  %82 = insertelement <2 x double> %81, double %80, i64 1
  %83 = load double, ptr %77, align 8, !tbaa !5, !alias.scope !15
  %84 = load double, ptr %78, align 8, !tbaa !5, !alias.scope !15
  %85 = insertelement <2 x double> poison, double %83, i64 0
  %86 = insertelement <2 x double> %85, double %84, i64 1
  %87 = getelementptr inbounds double, ptr %66, i64 %71
  %88 = getelementptr inbounds double, ptr %87, i64 2
  %89 = load <2 x double>, ptr %87, align 8, !tbaa !5, !alias.scope !18, !noalias !15
  %90 = load <2 x double>, ptr %88, align 8, !tbaa !5, !alias.scope !18, !noalias !15
  %91 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %69, <2 x double> %82, <2 x double> %89)
  %92 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %69, <2 x double> %86, <2 x double> %90)
  store <2 x double> %91, ptr %87, align 8, !tbaa !5, !alias.scope !18, !noalias !15
  store <2 x double> %92, ptr %88, align 8, !tbaa !5, !alias.scope !18, !noalias !15
  %93 = add nuw i64 %71, 4
  %94 = icmp eq i64 %93, 2000
  br i1 %94, label %110, label %70, !llvm.loop !20

95:                                               ; preds = %62, %95
  %96 = phi i64 [ %108, %95 ], [ 0, %62 ]
  %97 = getelementptr inbounds [2000 x double], ptr %3, i64 %96, i64 %55
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds double, ptr %66, i64 %96
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = tail call double @llvm.fmuladd.f64(double %65, double %98, double %100)
  store double %101, ptr %99, align 8, !tbaa !5
  %102 = or disjoint i64 %96, 1
  %103 = getelementptr inbounds [2000 x double], ptr %3, i64 %102, i64 %55
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds double, ptr %66, i64 %102
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = tail call double @llvm.fmuladd.f64(double %65, double %104, double %106)
  store double %107, ptr %105, align 8, !tbaa !5
  %108 = add nuw nsw i64 %96, 2
  %109 = icmp eq i64 %108, 2000
  br i1 %109, label %110, label %95, !llvm.loop !21

110:                                              ; preds = %70, %95
  %111 = add nuw nsw i64 %63, 1
  %112 = icmp eq i64 %111, 2000
  br i1 %112, label %113, label %62, !llvm.loop !22

113:                                              ; preds = %110
  %114 = add nuw nsw i64 %55, 1
  %115 = icmp eq i64 %114, 2000
  br i1 %115, label %116, label %54, !llvm.loop !23

116:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %3, ptr noundef nonnull align 8 dereferenceable(32000000) %51, i64 32000000, i1 false)
  tail call void @free(ptr noundef nonnull %51) #9
  br label %117

117:                                              ; preds = %239, %116
  %118 = phi i64 [ 0, %116 ], [ %240, %239 ]
  %119 = icmp eq i64 %118, 0
  %120 = getelementptr inbounds [2000 x double], ptr %3, i64 %118
  br i1 %119, label %216, label %161

121:                                              ; preds = %211, %156
  %122 = phi i64 [ %159, %156 ], [ %118, %211 ]
  %123 = getelementptr inbounds [2000 x double], ptr %3, i64 %118, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !5
  br i1 %213, label %145, label %125

125:                                              ; preds = %121, %125
  %126 = phi i64 [ %142, %125 ], [ 0, %121 ]
  %127 = phi double [ %141, %125 ], [ %124, %121 ]
  %128 = phi i64 [ %143, %125 ], [ 0, %121 ]
  %129 = getelementptr inbounds double, ptr %120, i64 %126
  %130 = load double, ptr %129, align 8, !tbaa !5
  %131 = getelementptr inbounds [2000 x double], ptr %3, i64 %126, i64 %122
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = fneg double %130
  %134 = tail call double @llvm.fmuladd.f64(double %133, double %132, double %127)
  %135 = or disjoint i64 %126, 1
  %136 = getelementptr inbounds double, ptr %120, i64 %135
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds [2000 x double], ptr %3, i64 %135, i64 %122
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = fneg double %137
  %141 = tail call double @llvm.fmuladd.f64(double %140, double %139, double %134)
  %142 = add nuw nsw i64 %126, 2
  %143 = add i64 %128, 2
  %144 = icmp eq i64 %143, %214
  br i1 %144, label %145, label %125, !llvm.loop !24

145:                                              ; preds = %125, %121
  %146 = phi double [ undef, %121 ], [ %141, %125 ]
  %147 = phi i64 [ 0, %121 ], [ %142, %125 ]
  %148 = phi double [ %124, %121 ], [ %141, %125 ]
  br i1 %215, label %156, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds double, ptr %120, i64 %147
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds [2000 x double], ptr %3, i64 %147, i64 %122
  %153 = load double, ptr %152, align 8, !tbaa !5
  %154 = fneg double %151
  %155 = tail call double @llvm.fmuladd.f64(double %154, double %153, double %148)
  br label %156

156:                                              ; preds = %145, %149
  %157 = phi double [ %146, %145 ], [ %155, %149 ]
  %158 = getelementptr inbounds double, ptr %120, i64 %122
  store double %157, ptr %158, align 8, !tbaa !5
  %159 = add nuw nsw i64 %122, 1
  %160 = icmp eq i64 %159, 2000
  br i1 %160, label %239, label %121, !llvm.loop !25

161:                                              ; preds = %117, %203
  %162 = phi i64 [ %209, %203 ], [ 0, %117 ]
  %163 = getelementptr inbounds [2000 x double], ptr %3, i64 %118, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = icmp eq i64 %162, 0
  br i1 %165, label %203, label %166

166:                                              ; preds = %161
  %167 = and i64 %162, 1
  %168 = icmp eq i64 %162, 1
  br i1 %168, label %191, label %169

169:                                              ; preds = %166
  %170 = and i64 %162, 9223372036854775806
  br label %171

171:                                              ; preds = %171, %169
  %172 = phi i64 [ 0, %169 ], [ %188, %171 ]
  %173 = phi double [ %164, %169 ], [ %187, %171 ]
  %174 = phi i64 [ 0, %169 ], [ %189, %171 ]
  %175 = getelementptr inbounds double, ptr %120, i64 %172
  %176 = load double, ptr %175, align 8, !tbaa !5
  %177 = getelementptr inbounds [2000 x double], ptr %3, i64 %172, i64 %162
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = fneg double %176
  %180 = tail call double @llvm.fmuladd.f64(double %179, double %178, double %173)
  %181 = or disjoint i64 %172, 1
  %182 = getelementptr inbounds double, ptr %120, i64 %181
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = getelementptr inbounds [2000 x double], ptr %3, i64 %181, i64 %162
  %185 = load double, ptr %184, align 8, !tbaa !5
  %186 = fneg double %183
  %187 = tail call double @llvm.fmuladd.f64(double %186, double %185, double %180)
  %188 = add nuw nsw i64 %172, 2
  %189 = add i64 %174, 2
  %190 = icmp eq i64 %189, %170
  br i1 %190, label %191, label %171, !llvm.loop !26

191:                                              ; preds = %171, %166
  %192 = phi double [ undef, %166 ], [ %187, %171 ]
  %193 = phi i64 [ 0, %166 ], [ %188, %171 ]
  %194 = phi double [ %164, %166 ], [ %187, %171 ]
  %195 = icmp eq i64 %167, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds double, ptr %120, i64 %193
  %198 = load double, ptr %197, align 8, !tbaa !5
  %199 = getelementptr inbounds [2000 x double], ptr %3, i64 %193, i64 %162
  %200 = load double, ptr %199, align 8, !tbaa !5
  %201 = fneg double %198
  %202 = tail call double @llvm.fmuladd.f64(double %201, double %200, double %194)
  br label %203

203:                                              ; preds = %196, %191, %161
  %204 = phi double [ %164, %161 ], [ %192, %191 ], [ %202, %196 ]
  %205 = getelementptr inbounds [2000 x double], ptr %3, i64 %162, i64 %162
  %206 = load double, ptr %205, align 8, !tbaa !5
  %207 = fdiv double %204, %206
  %208 = getelementptr inbounds double, ptr %120, i64 %162
  store double %207, ptr %208, align 8, !tbaa !5
  %209 = add nuw nsw i64 %162, 1
  %210 = icmp eq i64 %209, %118
  br i1 %210, label %211, label %161, !llvm.loop !27

211:                                              ; preds = %203
  %212 = and i64 %118, 1
  %213 = icmp eq i64 %118, 1
  %214 = and i64 %118, 9223372036854775806
  %215 = icmp eq i64 %212, 0
  br label %121

216:                                              ; preds = %117, %216
  %217 = phi i64 [ %237, %216 ], [ 0, %117 ]
  %218 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %217
  %219 = load double, ptr %218, align 8, !tbaa !5
  %220 = getelementptr inbounds double, ptr %120, i64 %217
  store double %219, ptr %220, align 8, !tbaa !5
  %221 = add nuw nsw i64 %217, 1
  %222 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %221
  %223 = load double, ptr %222, align 8, !tbaa !5
  %224 = getelementptr inbounds double, ptr %120, i64 %221
  store double %223, ptr %224, align 8, !tbaa !5
  %225 = add nuw nsw i64 %217, 2
  %226 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %225
  %227 = load double, ptr %226, align 8, !tbaa !5
  %228 = getelementptr inbounds double, ptr %120, i64 %225
  store double %227, ptr %228, align 8, !tbaa !5
  %229 = add nuw nsw i64 %217, 3
  %230 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %229
  %231 = load double, ptr %230, align 8, !tbaa !5
  %232 = getelementptr inbounds double, ptr %120, i64 %229
  store double %231, ptr %232, align 8, !tbaa !5
  %233 = add nuw nsw i64 %217, 4
  %234 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %233
  %235 = load double, ptr %234, align 8, !tbaa !5
  %236 = getelementptr inbounds double, ptr %120, i64 %233
  store double %235, ptr %236, align 8, !tbaa !5
  %237 = add nuw nsw i64 %217, 5
  %238 = icmp eq i64 %237, 2000
  br i1 %238, label %239, label %216, !llvm.loop !28

239:                                              ; preds = %156, %216
  %240 = add nuw nsw i64 %118, 1
  %241 = icmp eq i64 %240, 2000
  br i1 %241, label %242, label %117, !llvm.loop !29

242:                                              ; preds = %239
  %243 = load ptr, ptr @stdout, align 8, !tbaa !30
  %244 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %243)
  %245 = load ptr, ptr @stdout, align 8, !tbaa !30
  %246 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %247

247:                                              ; preds = %266, %242
  %248 = phi i64 [ 0, %242 ], [ %267, %266 ]
  %249 = mul nuw nsw i64 %248, 2000
  br label %250

250:                                              ; preds = %259, %247
  %251 = phi i64 [ 0, %247 ], [ %264, %259 ]
  %252 = add nuw nsw i64 %251, %249
  %253 = trunc i64 %252 to i32
  %254 = urem i32 %253, 20
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = load ptr, ptr @stdout, align 8, !tbaa !30
  %258 = tail call i32 @fputc(i32 10, ptr %257)
  br label %259

259:                                              ; preds = %256, %250
  %260 = load ptr, ptr @stdout, align 8, !tbaa !30
  %261 = getelementptr inbounds [2000 x double], ptr %3, i64 %248, i64 %251
  %262 = load double, ptr %261, align 8, !tbaa !5
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.4, double noundef %262)
  %264 = add nuw nsw i64 %251, 1
  %265 = icmp eq i64 %264, 2000
  br i1 %265, label %266, label %250, !llvm.loop !32

266:                                              ; preds = %259
  %267 = add nuw nsw i64 %248, 1
  %268 = icmp eq i64 %267, 2000
  br i1 %268, label %269, label %247, !llvm.loop !33

269:                                              ; preds = %266
  %270 = load ptr, ptr @stdout, align 8, !tbaa !30
  %271 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %270, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %272 = load ptr, ptr @stdout, align 8, !tbaa !30
  %273 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %272)
  tail call void @free(ptr noundef nonnull %3) #9
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10}
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
