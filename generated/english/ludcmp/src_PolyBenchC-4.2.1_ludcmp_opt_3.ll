; ModuleID = 'outputs/src_PolyBenchC-4.2.1_ludcmp_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_ludcmp_opt_3.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #7
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %4 to i64
  %10 = sub i64 %7, %8
  %11 = icmp ult i64 %10, 16
  %12 = sub i64 %9, %8
  %13 = icmp ult i64 %12, 16
  %14 = or i1 %11, %13
  %15 = sub i64 %9, %7
  %16 = icmp ult i64 %15, 16
  %17 = or i1 %14, %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %2, %18
  %19 = phi i64 [ %30, %18 ], [ 0, %2 ]
  %20 = phi <2 x i64> [ %31, %18 ], [ <i64 0, i64 1>, %2 ]
  %21 = getelementptr inbounds double, ptr %5, i64 %19
  store <2 x double> zeroinitializer, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds double, ptr %6, i64 %19
  store <2 x double> zeroinitializer, ptr %22, align 8, !tbaa !5
  %23 = trunc <2 x i64> %20 to <2 x i32>
  %24 = add <2 x i32> %23, <i32 1, i32 1>
  %25 = sitofp <2 x i32> %24 to <2 x double>
  %26 = fdiv <2 x double> %25, <double 2.000000e+03, double 2.000000e+03>
  %27 = fmul <2 x double> %26, <double 5.000000e-01, double 5.000000e-01>
  %28 = fadd <2 x double> %27, <double 4.000000e+00, double 4.000000e+00>
  %29 = getelementptr inbounds double, ptr %4, i64 %19
  store <2 x double> %28, ptr %29, align 8, !tbaa !5
  %30 = add nuw i64 %19, 2
  %31 = add <2 x i64> %20, <i64 2, i64 2>
  %32 = icmp eq i64 %30, 2000
  br i1 %32, label %54, label %18, !llvm.loop !9

33:                                               ; preds = %2, %33
  %34 = phi i64 [ %46, %33 ], [ 0, %2 ]
  %35 = getelementptr inbounds double, ptr %5, i64 %34
  store double 0.000000e+00, ptr %35, align 8, !tbaa !5
  %36 = getelementptr inbounds double, ptr %6, i64 %34
  store double 0.000000e+00, ptr %36, align 8, !tbaa !5
  %37 = or disjoint i64 %34, 1
  %38 = trunc i64 %37 to i32
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 2.000000e+03
  %41 = fmul double %40, 5.000000e-01
  %42 = fadd double %41, 4.000000e+00
  %43 = getelementptr inbounds double, ptr %4, i64 %34
  store double %42, ptr %43, align 8, !tbaa !5
  %44 = getelementptr inbounds double, ptr %5, i64 %37
  store double 0.000000e+00, ptr %44, align 8, !tbaa !5
  %45 = getelementptr inbounds double, ptr %6, i64 %37
  store double 0.000000e+00, ptr %45, align 8, !tbaa !5
  %46 = add nuw nsw i64 %34, 2
  %47 = trunc i64 %46 to i32
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 2.000000e+03
  %50 = fmul double %49, 5.000000e-01
  %51 = fadd double %50, 4.000000e+00
  %52 = getelementptr inbounds double, ptr %4, i64 %37
  store double %51, ptr %52, align 8, !tbaa !5
  %53 = icmp eq i64 %46, 2000
  br i1 %53, label %54, label %33, !llvm.loop !13

54:                                               ; preds = %18, %33
  %55 = getelementptr i8, ptr %3, i64 8
  br label %56

56:                                               ; preds = %97, %54
  %57 = phi i64 [ 1, %54 ], [ %99, %97 ]
  %58 = phi i64 [ 0, %54 ], [ %92, %97 ]
  %59 = mul nuw nsw i64 %58, 16008
  %60 = shl i64 %58, 3
  %61 = sub nsw i64 15984, %60
  %62 = and i64 %61, 34359738360
  %63 = icmp ult i64 %57, 2
  br i1 %63, label %79, label %64

64:                                               ; preds = %56
  %65 = and i64 %57, 9223372036854775806
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi i64 [ 0, %64 ], [ %74, %66 ]
  %68 = phi <2 x i32> [ <i32 0, i32 1>, %64 ], [ %75, %66 ]
  %69 = sub <2 x i32> zeroinitializer, %68
  %70 = sitofp <2 x i32> %69 to <2 x double>
  %71 = fdiv <2 x double> %70, <double 2.000000e+03, double 2.000000e+03>
  %72 = fadd <2 x double> %71, <double 1.000000e+00, double 1.000000e+00>
  %73 = getelementptr inbounds [2000 x double], ptr %3, i64 %58, i64 %67
  store <2 x double> %72, ptr %73, align 8, !tbaa !5
  %74 = add nuw i64 %67, 2
  %75 = add <2 x i32> %68, <i32 2, i32 2>
  %76 = icmp eq i64 %74, %65
  br i1 %76, label %77, label %66, !llvm.loop !14

77:                                               ; preds = %66
  %78 = icmp eq i64 %57, %65
  br i1 %78, label %91, label %79

79:                                               ; preds = %56, %77
  %80 = phi i64 [ 0, %56 ], [ %65, %77 ]
  br label %81

81:                                               ; preds = %79, %81
  %82 = phi i64 [ %89, %81 ], [ %80, %79 ]
  %83 = trunc i64 %82 to i32
  %84 = sub i32 0, %83
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %85, 2.000000e+03
  %87 = fadd double %86, 1.000000e+00
  %88 = getelementptr inbounds [2000 x double], ptr %3, i64 %58, i64 %82
  store double %87, ptr %88, align 8, !tbaa !5
  %89 = add nuw nsw i64 %82, 1
  %90 = icmp eq i64 %89, %57
  br i1 %90, label %91, label %81, !llvm.loop !15

91:                                               ; preds = %81, %77
  %92 = add nuw nsw i64 %58, 1
  %93 = icmp ult i64 %58, 1999
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = add nuw nsw i64 %62, 8
  %96 = getelementptr i8, ptr %55, i64 %59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %96, i8 0, i64 %95, i1 false), !tbaa !5
  br label %97

97:                                               ; preds = %94, %91
  %98 = getelementptr inbounds [2000 x double], ptr %3, i64 %58, i64 %58
  store double 1.000000e+00, ptr %98, align 8, !tbaa !5
  %99 = add nuw nsw i64 %57, 1
  %100 = icmp eq i64 %92, 2000
  br i1 %100, label %101, label %56, !llvm.loop !16

101:                                              ; preds = %97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %3, i8 0, i64 32000000, i1 false), !tbaa !5
  br label %102

102:                                              ; preds = %127, %101
  %103 = phi i64 [ 0, %101 ], [ %128, %127 ]
  br label %104

104:                                              ; preds = %108, %102
  %105 = phi i64 [ 0, %102 ], [ %109, %108 ]
  %106 = getelementptr inbounds [2000 x double], ptr %3, i64 %103, i64 %105
  %107 = load double, ptr %106, align 8, !tbaa !5
  br label %111

108:                                              ; preds = %111
  %109 = add nuw nsw i64 %105, 1
  %110 = icmp eq i64 %109, 2000
  br i1 %110, label %127, label %104, !llvm.loop !17

111:                                              ; preds = %111, %104
  %112 = phi i64 [ 0, %104 ], [ %125, %111 ]
  %113 = phi double [ %107, %104 ], [ %124, %111 ]
  %114 = getelementptr inbounds [2000 x double], ptr %3, i64 %103, i64 %112
  %115 = load double, ptr %114, align 8, !tbaa !5
  %116 = getelementptr inbounds [2000 x double], ptr %3, i64 %105, i64 %112
  %117 = load double, ptr %116, align 8, !tbaa !5
  %118 = tail call double @llvm.fmuladd.f64(double %115, double %117, double %113)
  store double %118, ptr %106, align 8, !tbaa !5
  %119 = or disjoint i64 %112, 1
  %120 = getelementptr inbounds [2000 x double], ptr %3, i64 %103, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds [2000 x double], ptr %3, i64 %105, i64 %119
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = tail call double @llvm.fmuladd.f64(double %121, double %123, double %118)
  store double %124, ptr %106, align 8, !tbaa !5
  %125 = add nuw nsw i64 %112, 2
  %126 = icmp eq i64 %125, 2000
  br i1 %126, label %108, label %111, !llvm.loop !18

127:                                              ; preds = %108
  %128 = add nuw nsw i64 %103, 1
  %129 = icmp eq i64 %128, 2000
  br i1 %129, label %130, label %102, !llvm.loop !19

130:                                              ; preds = %127, %226
  %131 = phi i64 [ %227, %226 ], [ 0, %127 ]
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %226, label %172

133:                                              ; preds = %221, %168
  %134 = phi i64 [ %170, %168 ], [ %131, %221 ]
  %135 = getelementptr inbounds [2000 x double], ptr %3, i64 %131, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !5
  br i1 %223, label %157, label %137

137:                                              ; preds = %133, %137
  %138 = phi i64 [ %154, %137 ], [ 0, %133 ]
  %139 = phi double [ %153, %137 ], [ %136, %133 ]
  %140 = phi i64 [ %155, %137 ], [ 0, %133 ]
  %141 = getelementptr inbounds [2000 x double], ptr %3, i64 %131, i64 %138
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = getelementptr inbounds [2000 x double], ptr %3, i64 %138, i64 %134
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = fneg double %142
  %146 = tail call double @llvm.fmuladd.f64(double %145, double %144, double %139)
  %147 = or disjoint i64 %138, 1
  %148 = getelementptr inbounds [2000 x double], ptr %3, i64 %131, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds [2000 x double], ptr %3, i64 %147, i64 %134
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = fneg double %149
  %153 = tail call double @llvm.fmuladd.f64(double %152, double %151, double %146)
  %154 = add nuw nsw i64 %138, 2
  %155 = add i64 %140, 2
  %156 = icmp eq i64 %155, %224
  br i1 %156, label %157, label %137, !llvm.loop !20

157:                                              ; preds = %137, %133
  %158 = phi double [ undef, %133 ], [ %153, %137 ]
  %159 = phi i64 [ 0, %133 ], [ %154, %137 ]
  %160 = phi double [ %136, %133 ], [ %153, %137 ]
  br i1 %225, label %168, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds [2000 x double], ptr %3, i64 %131, i64 %159
  %163 = load double, ptr %162, align 8, !tbaa !5
  %164 = getelementptr inbounds [2000 x double], ptr %3, i64 %159, i64 %134
  %165 = load double, ptr %164, align 8, !tbaa !5
  %166 = fneg double %163
  %167 = tail call double @llvm.fmuladd.f64(double %166, double %165, double %160)
  br label %168

168:                                              ; preds = %157, %161
  %169 = phi double [ %158, %157 ], [ %167, %161 ]
  store double %169, ptr %135, align 8, !tbaa !5
  %170 = add nuw nsw i64 %134, 1
  %171 = icmp eq i64 %170, 2000
  br i1 %171, label %226, label %133, !llvm.loop !21

172:                                              ; preds = %130, %214
  %173 = phi i64 [ %219, %214 ], [ 0, %130 ]
  %174 = getelementptr inbounds [2000 x double], ptr %3, i64 %131, i64 %173
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = icmp eq i64 %173, 0
  br i1 %176, label %214, label %177

177:                                              ; preds = %172
  %178 = and i64 %173, 1
  %179 = icmp eq i64 %173, 1
  br i1 %179, label %202, label %180

180:                                              ; preds = %177
  %181 = and i64 %173, 9223372036854775806
  br label %182

182:                                              ; preds = %182, %180
  %183 = phi i64 [ 0, %180 ], [ %199, %182 ]
  %184 = phi double [ %175, %180 ], [ %198, %182 ]
  %185 = phi i64 [ 0, %180 ], [ %200, %182 ]
  %186 = getelementptr inbounds [2000 x double], ptr %3, i64 %131, i64 %183
  %187 = load double, ptr %186, align 8, !tbaa !5
  %188 = getelementptr inbounds [2000 x double], ptr %3, i64 %183, i64 %173
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = fneg double %187
  %191 = tail call double @llvm.fmuladd.f64(double %190, double %189, double %184)
  %192 = or disjoint i64 %183, 1
  %193 = getelementptr inbounds [2000 x double], ptr %3, i64 %131, i64 %192
  %194 = load double, ptr %193, align 8, !tbaa !5
  %195 = getelementptr inbounds [2000 x double], ptr %3, i64 %192, i64 %173
  %196 = load double, ptr %195, align 8, !tbaa !5
  %197 = fneg double %194
  %198 = tail call double @llvm.fmuladd.f64(double %197, double %196, double %191)
  %199 = add nuw nsw i64 %183, 2
  %200 = add i64 %185, 2
  %201 = icmp eq i64 %200, %181
  br i1 %201, label %202, label %182, !llvm.loop !22

202:                                              ; preds = %182, %177
  %203 = phi double [ undef, %177 ], [ %198, %182 ]
  %204 = phi i64 [ 0, %177 ], [ %199, %182 ]
  %205 = phi double [ %175, %177 ], [ %198, %182 ]
  %206 = icmp eq i64 %178, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds [2000 x double], ptr %3, i64 %131, i64 %204
  %209 = load double, ptr %208, align 8, !tbaa !5
  %210 = getelementptr inbounds [2000 x double], ptr %3, i64 %204, i64 %173
  %211 = load double, ptr %210, align 8, !tbaa !5
  %212 = fneg double %209
  %213 = tail call double @llvm.fmuladd.f64(double %212, double %211, double %205)
  br label %214

214:                                              ; preds = %207, %202, %172
  %215 = phi double [ %175, %172 ], [ %203, %202 ], [ %213, %207 ]
  %216 = getelementptr inbounds [2000 x double], ptr %3, i64 %173, i64 %173
  %217 = load double, ptr %216, align 8, !tbaa !5
  %218 = fdiv double %215, %217
  store double %218, ptr %174, align 8, !tbaa !5
  %219 = add nuw nsw i64 %173, 1
  %220 = icmp eq i64 %219, %131
  br i1 %220, label %221, label %172, !llvm.loop !23

221:                                              ; preds = %214
  %222 = and i64 %131, 1
  %223 = icmp eq i64 %131, 1
  %224 = and i64 %131, 9223372036854775806
  %225 = icmp eq i64 %222, 0
  br label %133

226:                                              ; preds = %168, %130
  %227 = add nuw nsw i64 %131, 1
  %228 = icmp eq i64 %227, 2000
  br i1 %228, label %229, label %130, !llvm.loop !24

229:                                              ; preds = %226, %271
  %230 = phi i64 [ %274, %271 ], [ 0, %226 ]
  %231 = getelementptr inbounds double, ptr %4, i64 %230
  %232 = load double, ptr %231, align 8, !tbaa !5
  %233 = icmp eq i64 %230, 0
  br i1 %233, label %271, label %234

234:                                              ; preds = %229
  %235 = and i64 %230, 1
  %236 = icmp eq i64 %230, 1
  br i1 %236, label %259, label %237

237:                                              ; preds = %234
  %238 = and i64 %230, 9223372036854775806
  br label %239

239:                                              ; preds = %239, %237
  %240 = phi i64 [ 0, %237 ], [ %256, %239 ]
  %241 = phi double [ %232, %237 ], [ %255, %239 ]
  %242 = phi i64 [ 0, %237 ], [ %257, %239 ]
  %243 = getelementptr inbounds [2000 x double], ptr %3, i64 %230, i64 %240
  %244 = load double, ptr %243, align 8, !tbaa !5
  %245 = getelementptr inbounds double, ptr %6, i64 %240
  %246 = load double, ptr %245, align 8, !tbaa !5
  %247 = fneg double %244
  %248 = tail call double @llvm.fmuladd.f64(double %247, double %246, double %241)
  %249 = or disjoint i64 %240, 1
  %250 = getelementptr inbounds [2000 x double], ptr %3, i64 %230, i64 %249
  %251 = load double, ptr %250, align 8, !tbaa !5
  %252 = getelementptr inbounds double, ptr %6, i64 %249
  %253 = load double, ptr %252, align 8, !tbaa !5
  %254 = fneg double %251
  %255 = tail call double @llvm.fmuladd.f64(double %254, double %253, double %248)
  %256 = add nuw nsw i64 %240, 2
  %257 = add i64 %242, 2
  %258 = icmp eq i64 %257, %238
  br i1 %258, label %259, label %239, !llvm.loop !25

259:                                              ; preds = %239, %234
  %260 = phi double [ undef, %234 ], [ %255, %239 ]
  %261 = phi i64 [ 0, %234 ], [ %256, %239 ]
  %262 = phi double [ %232, %234 ], [ %255, %239 ]
  %263 = icmp eq i64 %235, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %259
  %265 = getelementptr inbounds [2000 x double], ptr %3, i64 %230, i64 %261
  %266 = load double, ptr %265, align 8, !tbaa !5
  %267 = getelementptr inbounds double, ptr %6, i64 %261
  %268 = load double, ptr %267, align 8, !tbaa !5
  %269 = fneg double %266
  %270 = tail call double @llvm.fmuladd.f64(double %269, double %268, double %262)
  br label %271

271:                                              ; preds = %264, %259, %229
  %272 = phi double [ %232, %229 ], [ %260, %259 ], [ %270, %264 ]
  %273 = getelementptr inbounds double, ptr %6, i64 %230
  store double %272, ptr %273, align 8, !tbaa !5
  %274 = add nuw nsw i64 %230, 1
  %275 = icmp eq i64 %274, 2000
  br i1 %275, label %276, label %229, !llvm.loop !26

276:                                              ; preds = %271, %316
  %277 = phi i64 [ %324, %316 ], [ 0, %271 ]
  %278 = phi i64 [ %322, %316 ], [ 1999, %271 ]
  %279 = getelementptr inbounds double, ptr %6, i64 %278
  %280 = load double, ptr %279, align 8, !tbaa !5
  %281 = icmp ult i64 %278, 1999
  br i1 %281, label %282, label %316

282:                                              ; preds = %276
  %283 = and i64 %277, 1
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %293, label %285

285:                                              ; preds = %282
  %286 = add nuw nsw i64 %278, 1
  %287 = getelementptr inbounds [2000 x double], ptr %3, i64 %278, i64 %286
  %288 = load double, ptr %287, align 8, !tbaa !5
  %289 = getelementptr inbounds double, ptr %5, i64 %286
  %290 = load double, ptr %289, align 8, !tbaa !5
  %291 = fneg double %288
  %292 = tail call double @llvm.fmuladd.f64(double %291, double %290, double %280)
  br label %293

293:                                              ; preds = %285, %282
  %294 = phi double [ undef, %282 ], [ %292, %285 ]
  %295 = phi i64 [ %278, %282 ], [ %286, %285 ]
  %296 = phi double [ %280, %282 ], [ %292, %285 ]
  %297 = icmp eq i64 %277, 1
  br i1 %297, label %316, label %298

298:                                              ; preds = %293, %298
  %299 = phi i64 [ %308, %298 ], [ %295, %293 ]
  %300 = phi double [ %314, %298 ], [ %296, %293 ]
  %301 = add nuw nsw i64 %299, 1
  %302 = getelementptr inbounds [2000 x double], ptr %3, i64 %278, i64 %301
  %303 = load double, ptr %302, align 8, !tbaa !5
  %304 = getelementptr inbounds double, ptr %5, i64 %301
  %305 = load double, ptr %304, align 8, !tbaa !5
  %306 = fneg double %303
  %307 = tail call double @llvm.fmuladd.f64(double %306, double %305, double %300)
  %308 = add nuw nsw i64 %299, 2
  %309 = getelementptr inbounds [2000 x double], ptr %3, i64 %278, i64 %308
  %310 = load double, ptr %309, align 8, !tbaa !5
  %311 = getelementptr inbounds double, ptr %5, i64 %308
  %312 = load double, ptr %311, align 8, !tbaa !5
  %313 = fneg double %310
  %314 = tail call double @llvm.fmuladd.f64(double %313, double %312, double %307)
  %315 = icmp eq i64 %308, 1999
  br i1 %315, label %316, label %298, !llvm.loop !27

316:                                              ; preds = %293, %298, %276
  %317 = phi double [ %280, %276 ], [ %294, %293 ], [ %314, %298 ]
  %318 = getelementptr inbounds [2000 x double], ptr %3, i64 %278, i64 %278
  %319 = load double, ptr %318, align 8, !tbaa !5
  %320 = fdiv double %317, %319
  %321 = getelementptr inbounds double, ptr %5, i64 %278
  store double %320, ptr %321, align 8, !tbaa !5
  %322 = add nsw i64 %278, -1
  %323 = icmp eq i64 %278, 0
  %324 = add i64 %277, 1
  br i1 %323, label %325, label %276, !llvm.loop !28

325:                                              ; preds = %316
  %326 = load ptr, ptr @stdout, align 8, !tbaa !29
  %327 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %326)
  %328 = load ptr, ptr @stdout, align 8, !tbaa !29
  %329 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %330

330:                                              ; preds = %338, %325
  %331 = phi i64 [ 0, %325 ], [ %343, %338 ]
  %332 = trunc i64 %331 to i16
  %333 = urem i16 %332, 20
  %334 = icmp eq i16 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %330
  %336 = load ptr, ptr @stdout, align 8, !tbaa !29
  %337 = tail call i32 @fputc(i32 10, ptr %336)
  br label %338

338:                                              ; preds = %335, %330
  %339 = load ptr, ptr @stdout, align 8, !tbaa !29
  %340 = getelementptr inbounds double, ptr %5, i64 %331
  %341 = load double, ptr %340, align 8, !tbaa !5
  %342 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.4, double noundef %341)
  %343 = add nuw nsw i64 %331, 1
  %344 = icmp eq i64 %343, 2000
  br i1 %344, label %345, label %330, !llvm.loop !31

345:                                              ; preds = %338
  %346 = load ptr, ptr @stdout, align 8, !tbaa !29
  %347 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %346, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %348 = load ptr, ptr @stdout, align 8, !tbaa !29
  %349 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %348)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef nonnull %5) #7
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!15 = distinct !{!15, !10, !12, !11}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
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
