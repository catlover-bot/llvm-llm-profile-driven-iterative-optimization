; ModuleID = 'outputs/src_PolyBenchC-4.2.1_ludcmp_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_ludcmp_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [2000 x [2000 x double]], align 16
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #10
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #10
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #10
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #10
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %5 to i64
  %11 = sub i64 %8, %9
  %12 = icmp ult i64 %11, 16
  %13 = sub i64 %10, %9
  %14 = icmp ult i64 %13, 16
  %15 = or i1 %12, %14
  %16 = sub i64 %10, %8
  %17 = icmp ult i64 %16, 16
  %18 = or i1 %15, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %2, %19
  %20 = phi i64 [ %31, %19 ], [ 0, %2 ]
  %21 = phi <2 x i64> [ %32, %19 ], [ <i64 0, i64 1>, %2 ]
  %22 = getelementptr inbounds double, ptr %6, i64 %20
  store <2 x double> zeroinitializer, ptr %22, align 8, !tbaa !5
  %23 = getelementptr inbounds double, ptr %7, i64 %20
  store <2 x double> zeroinitializer, ptr %23, align 8, !tbaa !5
  %24 = trunc <2 x i64> %21 to <2 x i32>
  %25 = add <2 x i32> %24, <i32 1, i32 1>
  %26 = sitofp <2 x i32> %25 to <2 x double>
  %27 = fdiv <2 x double> %26, <double 2.000000e+03, double 2.000000e+03>
  %28 = fmul <2 x double> %27, <double 5.000000e-01, double 5.000000e-01>
  %29 = fadd <2 x double> %28, <double 4.000000e+00, double 4.000000e+00>
  %30 = getelementptr inbounds double, ptr %5, i64 %20
  store <2 x double> %29, ptr %30, align 8, !tbaa !5
  %31 = add nuw i64 %20, 2
  %32 = add <2 x i64> %21, <i64 2, i64 2>
  %33 = icmp eq i64 %31, 2000
  br i1 %33, label %55, label %19, !llvm.loop !9

34:                                               ; preds = %2, %34
  %35 = phi i64 [ %47, %34 ], [ 0, %2 ]
  %36 = getelementptr inbounds double, ptr %6, i64 %35
  store double 0.000000e+00, ptr %36, align 8, !tbaa !5
  %37 = getelementptr inbounds double, ptr %7, i64 %35
  store double 0.000000e+00, ptr %37, align 8, !tbaa !5
  %38 = or disjoint i64 %35, 1
  %39 = trunc i64 %38 to i32
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 2.000000e+03
  %42 = fmul double %41, 5.000000e-01
  %43 = fadd double %42, 4.000000e+00
  %44 = getelementptr inbounds double, ptr %5, i64 %35
  store double %43, ptr %44, align 8, !tbaa !5
  %45 = getelementptr inbounds double, ptr %6, i64 %38
  store double 0.000000e+00, ptr %45, align 8, !tbaa !5
  %46 = getelementptr inbounds double, ptr %7, i64 %38
  store double 0.000000e+00, ptr %46, align 8, !tbaa !5
  %47 = add nuw nsw i64 %35, 2
  %48 = trunc i64 %47 to i32
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 2.000000e+03
  %51 = fmul double %50, 5.000000e-01
  %52 = fadd double %51, 4.000000e+00
  %53 = getelementptr inbounds double, ptr %5, i64 %38
  store double %52, ptr %53, align 8, !tbaa !5
  %54 = icmp eq i64 %47, 2000
  br i1 %54, label %55, label %34, !llvm.loop !13

55:                                               ; preds = %19, %34
  %56 = getelementptr i8, ptr %4, i64 8
  br label %57

57:                                               ; preds = %98, %55
  %58 = phi i64 [ 1, %55 ], [ %100, %98 ]
  %59 = phi i64 [ 0, %55 ], [ %93, %98 ]
  %60 = mul nuw nsw i64 %59, 16008
  %61 = shl i64 %59, 3
  %62 = sub nsw i64 15984, %61
  %63 = and i64 %62, 34359738360
  %64 = icmp ult i64 %58, 2
  br i1 %64, label %80, label %65

65:                                               ; preds = %57
  %66 = and i64 %58, 9223372036854775806
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i64 [ 0, %65 ], [ %75, %67 ]
  %69 = phi <2 x i32> [ <i32 0, i32 1>, %65 ], [ %76, %67 ]
  %70 = sub <2 x i32> zeroinitializer, %69
  %71 = sitofp <2 x i32> %70 to <2 x double>
  %72 = fdiv <2 x double> %71, <double 2.000000e+03, double 2.000000e+03>
  %73 = fadd <2 x double> %72, <double 1.000000e+00, double 1.000000e+00>
  %74 = getelementptr inbounds [2000 x double], ptr %4, i64 %59, i64 %68
  store <2 x double> %73, ptr %74, align 8, !tbaa !5
  %75 = add nuw i64 %68, 2
  %76 = add <2 x i32> %69, <i32 2, i32 2>
  %77 = icmp eq i64 %75, %66
  br i1 %77, label %78, label %67, !llvm.loop !14

78:                                               ; preds = %67
  %79 = icmp eq i64 %58, %66
  br i1 %79, label %92, label %80

80:                                               ; preds = %57, %78
  %81 = phi i64 [ 0, %57 ], [ %66, %78 ]
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ %90, %82 ], [ %81, %80 ]
  %84 = trunc i64 %83 to i32
  %85 = sub i32 0, %84
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %86, 2.000000e+03
  %88 = fadd double %87, 1.000000e+00
  %89 = getelementptr inbounds [2000 x double], ptr %4, i64 %59, i64 %83
  store double %88, ptr %89, align 8, !tbaa !5
  %90 = add nuw nsw i64 %83, 1
  %91 = icmp eq i64 %90, %58
  br i1 %91, label %92, label %82, !llvm.loop !15

92:                                               ; preds = %82, %78
  %93 = add nuw nsw i64 %59, 1
  %94 = icmp ult i64 %59, 1999
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = add nuw nsw i64 %63, 8
  %97 = getelementptr i8, ptr %56, i64 %60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %97, i8 0, i64 %96, i1 false), !tbaa !5
  br label %98

98:                                               ; preds = %95, %92
  %99 = getelementptr inbounds [2000 x double], ptr %4, i64 %59, i64 %59
  store double 1.000000e+00, ptr %99, align 8, !tbaa !5
  %100 = add nuw nsw i64 %58, 1
  %101 = icmp eq i64 %93, 2000
  br i1 %101, label %102, label %57, !llvm.loop !16

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 32000000, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %3, i8 0, i64 32000000, i1 false)
  br label %103

103:                                              ; preds = %136, %102
  %104 = phi i64 [ 0, %102 ], [ %137, %136 ]
  br label %105

105:                                              ; preds = %103, %139
  %106 = phi i64 [ 0, %103 ], [ %140, %139 ]
  %107 = getelementptr inbounds [2000 x double], ptr %4, i64 %106, i64 %104
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = insertelement <2 x double> poison, double %108, i64 0
  %110 = shufflevector <2 x double> %109, <2 x double> poison, <2 x i32> zeroinitializer
  br label %111

111:                                              ; preds = %111, %105
  %112 = phi i64 [ 0, %105 ], [ %134, %111 ]
  %113 = or disjoint i64 %112, 1
  %114 = or disjoint i64 %112, 2
  %115 = or disjoint i64 %112, 3
  %116 = getelementptr inbounds [2000 x double], ptr %4, i64 %112, i64 %104
  %117 = getelementptr inbounds [2000 x double], ptr %4, i64 %113, i64 %104
  %118 = getelementptr inbounds [2000 x double], ptr %4, i64 %114, i64 %104
  %119 = getelementptr inbounds [2000 x double], ptr %4, i64 %115, i64 %104
  %120 = load double, ptr %116, align 8, !tbaa !5
  %121 = load double, ptr %117, align 8, !tbaa !5
  %122 = insertelement <2 x double> poison, double %120, i64 0
  %123 = insertelement <2 x double> %122, double %121, i64 1
  %124 = load double, ptr %118, align 8, !tbaa !5
  %125 = load double, ptr %119, align 8, !tbaa !5
  %126 = insertelement <2 x double> poison, double %124, i64 0
  %127 = insertelement <2 x double> %126, double %125, i64 1
  %128 = getelementptr inbounds [2000 x [2000 x double]], ptr %3, i64 0, i64 %106, i64 %112
  %129 = getelementptr inbounds double, ptr %128, i64 2
  %130 = load <2 x double>, ptr %128, align 16, !tbaa !5
  %131 = load <2 x double>, ptr %129, align 16, !tbaa !5
  %132 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %110, <2 x double> %123, <2 x double> %130)
  %133 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %110, <2 x double> %127, <2 x double> %131)
  store <2 x double> %132, ptr %128, align 16, !tbaa !5
  store <2 x double> %133, ptr %129, align 16, !tbaa !5
  %134 = add nuw i64 %112, 4
  %135 = icmp eq i64 %134, 2000
  br i1 %135, label %139, label %111, !llvm.loop !17

136:                                              ; preds = %139
  %137 = add nuw nsw i64 %104, 1
  %138 = icmp eq i64 %137, 2000
  br i1 %138, label %142, label %103, !llvm.loop !18

139:                                              ; preds = %111
  %140 = add nuw nsw i64 %106, 1
  %141 = icmp eq i64 %140, 2000
  br i1 %141, label %136, label %105, !llvm.loop !19

142:                                              ; preds = %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %4, ptr noundef nonnull align 16 dereferenceable(32000000) %3, i64 32000000, i1 false), !tbaa !5
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %3) #10
  br label %143

143:                                              ; preds = %239, %142
  %144 = phi i64 [ 0, %142 ], [ %240, %239 ]
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %239, label %185

146:                                              ; preds = %234, %181
  %147 = phi i64 [ %183, %181 ], [ %144, %234 ]
  %148 = getelementptr inbounds [2000 x double], ptr %4, i64 %144, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !5
  br i1 %236, label %170, label %150

150:                                              ; preds = %146, %150
  %151 = phi i64 [ %167, %150 ], [ 0, %146 ]
  %152 = phi double [ %166, %150 ], [ %149, %146 ]
  %153 = phi i64 [ %168, %150 ], [ 0, %146 ]
  %154 = getelementptr inbounds [2000 x double], ptr %4, i64 %144, i64 %151
  %155 = load double, ptr %154, align 8, !tbaa !5
  %156 = getelementptr inbounds [2000 x double], ptr %4, i64 %151, i64 %147
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = fneg double %155
  %159 = tail call double @llvm.fmuladd.f64(double %158, double %157, double %152)
  %160 = or disjoint i64 %151, 1
  %161 = getelementptr inbounds [2000 x double], ptr %4, i64 %144, i64 %160
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = getelementptr inbounds [2000 x double], ptr %4, i64 %160, i64 %147
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = fneg double %162
  %166 = tail call double @llvm.fmuladd.f64(double %165, double %164, double %159)
  %167 = add nuw nsw i64 %151, 2
  %168 = add i64 %153, 2
  %169 = icmp eq i64 %168, %237
  br i1 %169, label %170, label %150, !llvm.loop !20

170:                                              ; preds = %150, %146
  %171 = phi double [ undef, %146 ], [ %166, %150 ]
  %172 = phi i64 [ 0, %146 ], [ %167, %150 ]
  %173 = phi double [ %149, %146 ], [ %166, %150 ]
  br i1 %238, label %181, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds [2000 x double], ptr %4, i64 %144, i64 %172
  %176 = load double, ptr %175, align 8, !tbaa !5
  %177 = getelementptr inbounds [2000 x double], ptr %4, i64 %172, i64 %147
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = fneg double %176
  %180 = tail call double @llvm.fmuladd.f64(double %179, double %178, double %173)
  br label %181

181:                                              ; preds = %170, %174
  %182 = phi double [ %171, %170 ], [ %180, %174 ]
  store double %182, ptr %148, align 8, !tbaa !5
  %183 = add nuw nsw i64 %147, 1
  %184 = icmp eq i64 %183, 2000
  br i1 %184, label %239, label %146, !llvm.loop !21

185:                                              ; preds = %143, %227
  %186 = phi i64 [ %232, %227 ], [ 0, %143 ]
  %187 = getelementptr inbounds [2000 x double], ptr %4, i64 %144, i64 %186
  %188 = load double, ptr %187, align 8, !tbaa !5
  %189 = icmp eq i64 %186, 0
  br i1 %189, label %227, label %190

190:                                              ; preds = %185
  %191 = and i64 %186, 1
  %192 = icmp eq i64 %186, 1
  br i1 %192, label %215, label %193

193:                                              ; preds = %190
  %194 = and i64 %186, 9223372036854775806
  br label %195

195:                                              ; preds = %195, %193
  %196 = phi i64 [ 0, %193 ], [ %212, %195 ]
  %197 = phi double [ %188, %193 ], [ %211, %195 ]
  %198 = phi i64 [ 0, %193 ], [ %213, %195 ]
  %199 = getelementptr inbounds [2000 x double], ptr %4, i64 %144, i64 %196
  %200 = load double, ptr %199, align 8, !tbaa !5
  %201 = getelementptr inbounds [2000 x double], ptr %4, i64 %196, i64 %186
  %202 = load double, ptr %201, align 8, !tbaa !5
  %203 = fneg double %200
  %204 = tail call double @llvm.fmuladd.f64(double %203, double %202, double %197)
  %205 = or disjoint i64 %196, 1
  %206 = getelementptr inbounds [2000 x double], ptr %4, i64 %144, i64 %205
  %207 = load double, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds [2000 x double], ptr %4, i64 %205, i64 %186
  %209 = load double, ptr %208, align 8, !tbaa !5
  %210 = fneg double %207
  %211 = tail call double @llvm.fmuladd.f64(double %210, double %209, double %204)
  %212 = add nuw nsw i64 %196, 2
  %213 = add i64 %198, 2
  %214 = icmp eq i64 %213, %194
  br i1 %214, label %215, label %195, !llvm.loop !22

215:                                              ; preds = %195, %190
  %216 = phi double [ undef, %190 ], [ %211, %195 ]
  %217 = phi i64 [ 0, %190 ], [ %212, %195 ]
  %218 = phi double [ %188, %190 ], [ %211, %195 ]
  %219 = icmp eq i64 %191, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds [2000 x double], ptr %4, i64 %144, i64 %217
  %222 = load double, ptr %221, align 8, !tbaa !5
  %223 = getelementptr inbounds [2000 x double], ptr %4, i64 %217, i64 %186
  %224 = load double, ptr %223, align 8, !tbaa !5
  %225 = fneg double %222
  %226 = tail call double @llvm.fmuladd.f64(double %225, double %224, double %218)
  br label %227

227:                                              ; preds = %220, %215, %185
  %228 = phi double [ %188, %185 ], [ %216, %215 ], [ %226, %220 ]
  %229 = getelementptr inbounds [2000 x double], ptr %4, i64 %186, i64 %186
  %230 = load double, ptr %229, align 8, !tbaa !5
  %231 = fdiv double %228, %230
  store double %231, ptr %187, align 8, !tbaa !5
  %232 = add nuw nsw i64 %186, 1
  %233 = icmp eq i64 %232, %144
  br i1 %233, label %234, label %185, !llvm.loop !23

234:                                              ; preds = %227
  %235 = and i64 %144, 1
  %236 = icmp eq i64 %144, 1
  %237 = and i64 %144, 9223372036854775806
  %238 = icmp eq i64 %235, 0
  br label %146

239:                                              ; preds = %181, %143
  %240 = add nuw nsw i64 %144, 1
  %241 = icmp eq i64 %240, 2000
  br i1 %241, label %242, label %143, !llvm.loop !24

242:                                              ; preds = %239, %284
  %243 = phi i64 [ %287, %284 ], [ 0, %239 ]
  %244 = getelementptr inbounds double, ptr %5, i64 %243
  %245 = load double, ptr %244, align 8, !tbaa !5
  %246 = icmp eq i64 %243, 0
  br i1 %246, label %284, label %247

247:                                              ; preds = %242
  %248 = and i64 %243, 1
  %249 = icmp eq i64 %243, 1
  br i1 %249, label %272, label %250

250:                                              ; preds = %247
  %251 = and i64 %243, 9223372036854775806
  br label %252

252:                                              ; preds = %252, %250
  %253 = phi i64 [ 0, %250 ], [ %269, %252 ]
  %254 = phi double [ %245, %250 ], [ %268, %252 ]
  %255 = phi i64 [ 0, %250 ], [ %270, %252 ]
  %256 = getelementptr inbounds [2000 x double], ptr %4, i64 %243, i64 %253
  %257 = load double, ptr %256, align 8, !tbaa !5
  %258 = getelementptr inbounds double, ptr %7, i64 %253
  %259 = load double, ptr %258, align 8, !tbaa !5
  %260 = fneg double %257
  %261 = tail call double @llvm.fmuladd.f64(double %260, double %259, double %254)
  %262 = or disjoint i64 %253, 1
  %263 = getelementptr inbounds [2000 x double], ptr %4, i64 %243, i64 %262
  %264 = load double, ptr %263, align 8, !tbaa !5
  %265 = getelementptr inbounds double, ptr %7, i64 %262
  %266 = load double, ptr %265, align 8, !tbaa !5
  %267 = fneg double %264
  %268 = tail call double @llvm.fmuladd.f64(double %267, double %266, double %261)
  %269 = add nuw nsw i64 %253, 2
  %270 = add i64 %255, 2
  %271 = icmp eq i64 %270, %251
  br i1 %271, label %272, label %252, !llvm.loop !25

272:                                              ; preds = %252, %247
  %273 = phi double [ undef, %247 ], [ %268, %252 ]
  %274 = phi i64 [ 0, %247 ], [ %269, %252 ]
  %275 = phi double [ %245, %247 ], [ %268, %252 ]
  %276 = icmp eq i64 %248, 0
  br i1 %276, label %284, label %277

277:                                              ; preds = %272
  %278 = getelementptr inbounds [2000 x double], ptr %4, i64 %243, i64 %274
  %279 = load double, ptr %278, align 8, !tbaa !5
  %280 = getelementptr inbounds double, ptr %7, i64 %274
  %281 = load double, ptr %280, align 8, !tbaa !5
  %282 = fneg double %279
  %283 = tail call double @llvm.fmuladd.f64(double %282, double %281, double %275)
  br label %284

284:                                              ; preds = %277, %272, %242
  %285 = phi double [ %245, %242 ], [ %273, %272 ], [ %283, %277 ]
  %286 = getelementptr inbounds double, ptr %7, i64 %243
  store double %285, ptr %286, align 8, !tbaa !5
  %287 = add nuw nsw i64 %243, 1
  %288 = icmp eq i64 %287, 2000
  br i1 %288, label %289, label %242, !llvm.loop !26

289:                                              ; preds = %284, %329
  %290 = phi i64 [ %337, %329 ], [ 0, %284 ]
  %291 = phi i64 [ %335, %329 ], [ 1999, %284 ]
  %292 = getelementptr inbounds double, ptr %7, i64 %291
  %293 = load double, ptr %292, align 8, !tbaa !5
  %294 = icmp ult i64 %291, 1999
  br i1 %294, label %295, label %329

295:                                              ; preds = %289
  %296 = and i64 %290, 1
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %306, label %298

298:                                              ; preds = %295
  %299 = add nuw nsw i64 %291, 1
  %300 = getelementptr inbounds [2000 x double], ptr %4, i64 %291, i64 %299
  %301 = load double, ptr %300, align 8, !tbaa !5
  %302 = getelementptr inbounds double, ptr %6, i64 %299
  %303 = load double, ptr %302, align 8, !tbaa !5
  %304 = fneg double %301
  %305 = tail call double @llvm.fmuladd.f64(double %304, double %303, double %293)
  br label %306

306:                                              ; preds = %298, %295
  %307 = phi double [ undef, %295 ], [ %305, %298 ]
  %308 = phi i64 [ %291, %295 ], [ %299, %298 ]
  %309 = phi double [ %293, %295 ], [ %305, %298 ]
  %310 = icmp eq i64 %290, 1
  br i1 %310, label %329, label %311

311:                                              ; preds = %306, %311
  %312 = phi i64 [ %321, %311 ], [ %308, %306 ]
  %313 = phi double [ %327, %311 ], [ %309, %306 ]
  %314 = add nuw nsw i64 %312, 1
  %315 = getelementptr inbounds [2000 x double], ptr %4, i64 %291, i64 %314
  %316 = load double, ptr %315, align 8, !tbaa !5
  %317 = getelementptr inbounds double, ptr %6, i64 %314
  %318 = load double, ptr %317, align 8, !tbaa !5
  %319 = fneg double %316
  %320 = tail call double @llvm.fmuladd.f64(double %319, double %318, double %313)
  %321 = add nuw nsw i64 %312, 2
  %322 = getelementptr inbounds [2000 x double], ptr %4, i64 %291, i64 %321
  %323 = load double, ptr %322, align 8, !tbaa !5
  %324 = getelementptr inbounds double, ptr %6, i64 %321
  %325 = load double, ptr %324, align 8, !tbaa !5
  %326 = fneg double %323
  %327 = tail call double @llvm.fmuladd.f64(double %326, double %325, double %320)
  %328 = icmp eq i64 %321, 1999
  br i1 %328, label %329, label %311, !llvm.loop !27

329:                                              ; preds = %306, %311, %289
  %330 = phi double [ %293, %289 ], [ %307, %306 ], [ %327, %311 ]
  %331 = getelementptr inbounds [2000 x double], ptr %4, i64 %291, i64 %291
  %332 = load double, ptr %331, align 8, !tbaa !5
  %333 = fdiv double %330, %332
  %334 = getelementptr inbounds double, ptr %6, i64 %291
  store double %333, ptr %334, align 8, !tbaa !5
  %335 = add nsw i64 %291, -1
  %336 = icmp eq i64 %291, 0
  %337 = add i64 %290, 1
  br i1 %336, label %338, label %289, !llvm.loop !28

338:                                              ; preds = %329
  %339 = load ptr, ptr @stdout, align 8, !tbaa !29
  %340 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %339)
  %341 = load ptr, ptr @stdout, align 8, !tbaa !29
  %342 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %341, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %343

343:                                              ; preds = %351, %338
  %344 = phi i64 [ 0, %338 ], [ %356, %351 ]
  %345 = trunc i64 %344 to i16
  %346 = urem i16 %345, 20
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %343
  %349 = load ptr, ptr @stdout, align 8, !tbaa !29
  %350 = tail call i32 @fputc(i32 10, ptr %349)
  br label %351

351:                                              ; preds = %348, %343
  %352 = load ptr, ptr @stdout, align 8, !tbaa !29
  %353 = getelementptr inbounds double, ptr %6, i64 %344
  %354 = load double, ptr %353, align 8, !tbaa !5
  %355 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %352, ptr noundef nonnull @.str.4, double noundef %354)
  %356 = add nuw nsw i64 %344, 1
  %357 = icmp eq i64 %356, 2000
  br i1 %357, label %358, label %343, !llvm.loop !31

358:                                              ; preds = %351
  %359 = load ptr, ptr @stdout, align 8, !tbaa !29
  %360 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %359, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %361 = load ptr, ptr @stdout, align 8, !tbaa !29
  %362 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %361)
  tail call void @free(ptr noundef %4) #10
  tail call void @free(ptr noundef %5) #10
  tail call void @free(ptr noundef nonnull %6) #10
  tail call void @free(ptr noundef %7) #10
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

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!15 = distinct !{!15, !10, !12, !11}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = distinct !{!31, !10}
