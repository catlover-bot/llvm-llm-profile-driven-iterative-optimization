; ModuleID = 'outputs/src_PolyBenchC-4.2.1_3mm_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_3mm_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 720000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 800000, i32 noundef 8) #7
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 900000, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 990000, i32 noundef 8) #7
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 1080000, i32 noundef 8) #7
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #7
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 880000, i32 noundef 8) #7
  br label %10

10:                                               ; preds = %2, %27
  %11 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %12 = insertelement <2 x i64> poison, i64 %11, i64 0
  %13 = shufflevector <2 x i64> %12, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i64 [ 0, %10 ], [ %24, %14 ]
  %16 = phi <2 x i64> [ <i64 0, i64 1>, %10 ], [ %25, %14 ]
  %17 = mul nuw nsw <2 x i64> %16, %13
  %18 = trunc <2 x i64> %17 to <2 x i32>
  %19 = add <2 x i32> %18, <i32 1, i32 1>
  %20 = urem <2 x i32> %19, <i32 800, i32 800>
  %21 = sitofp <2 x i32> %20 to <2 x double>
  %22 = fdiv <2 x double> %21, <double 4.000000e+03, double 4.000000e+03>
  %23 = getelementptr inbounds [1000 x double], ptr %4, i64 %11, i64 %15
  store <2 x double> %22, ptr %23, align 8, !tbaa !5
  %24 = add nuw i64 %15, 2
  %25 = add <2 x i64> %16, <i64 2, i64 2>
  %26 = icmp eq i64 %24, 1000
  br i1 %26, label %27, label %14, !llvm.loop !9

27:                                               ; preds = %14
  %28 = add nuw nsw i64 %11, 1
  %29 = icmp eq i64 %28, 800
  br i1 %29, label %30, label %10, !llvm.loop !13

30:                                               ; preds = %27, %48
  %31 = phi i64 [ %49, %48 ], [ 0, %27 ]
  %32 = insertelement <2 x i64> poison, i64 %31, i64 0
  %33 = shufflevector <2 x i64> %32, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %34

34:                                               ; preds = %34, %30
  %35 = phi i64 [ 0, %30 ], [ %45, %34 ]
  %36 = phi <2 x i64> [ <i64 0, i64 1>, %30 ], [ %46, %34 ]
  %37 = add nuw nsw <2 x i64> %36, <i64 1, i64 1>
  %38 = mul nuw nsw <2 x i64> %37, %33
  %39 = trunc <2 x i64> %38 to <2 x i32>
  %40 = add <2 x i32> %39, <i32 2, i32 2>
  %41 = urem <2 x i32> %40, <i32 900, i32 900>
  %42 = sitofp <2 x i32> %41 to <2 x double>
  %43 = fdiv <2 x double> %42, <double 4.500000e+03, double 4.500000e+03>
  %44 = getelementptr inbounds [900 x double], ptr %5, i64 %31, i64 %35
  store <2 x double> %43, ptr %44, align 8, !tbaa !5
  %45 = add nuw i64 %35, 2
  %46 = add <2 x i64> %36, <i64 2, i64 2>
  %47 = icmp eq i64 %45, 900
  br i1 %47, label %48, label %34, !llvm.loop !14

48:                                               ; preds = %34
  %49 = add nuw nsw i64 %31, 1
  %50 = icmp eq i64 %49, 1000
  br i1 %50, label %51, label %30, !llvm.loop !15

51:                                               ; preds = %48, %68
  %52 = phi i64 [ %69, %68 ], [ 0, %48 ]
  %53 = insertelement <2 x i64> poison, i64 %52, i64 0
  %54 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %55

55:                                               ; preds = %55, %51
  %56 = phi i64 [ 0, %51 ], [ %65, %55 ]
  %57 = phi <2 x i64> [ <i64 0, i64 1>, %51 ], [ %66, %55 ]
  %58 = add nuw nsw <2 x i64> %57, <i64 3, i64 3>
  %59 = mul nuw nsw <2 x i64> %58, %54
  %60 = trunc <2 x i64> %59 to <2 x i32>
  %61 = urem <2 x i32> %60, <i32 1100, i32 1100>
  %62 = sitofp <2 x i32> %61 to <2 x double>
  %63 = fdiv <2 x double> %62, <double 5.500000e+03, double 5.500000e+03>
  %64 = getelementptr inbounds [1200 x double], ptr %7, i64 %52, i64 %56
  store <2 x double> %63, ptr %64, align 8, !tbaa !5
  %65 = add nuw i64 %56, 2
  %66 = add <2 x i64> %57, <i64 2, i64 2>
  %67 = icmp eq i64 %65, 1200
  br i1 %67, label %68, label %55, !llvm.loop !16

68:                                               ; preds = %55
  %69 = add nuw nsw i64 %52, 1
  %70 = icmp eq i64 %69, 900
  br i1 %70, label %71, label %51, !llvm.loop !17

71:                                               ; preds = %68, %89
  %72 = phi i64 [ %90, %89 ], [ 0, %68 ]
  %73 = insertelement <2 x i64> poison, i64 %72, i64 0
  %74 = shufflevector <2 x i64> %73, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %75

75:                                               ; preds = %75, %71
  %76 = phi i64 [ 0, %71 ], [ %86, %75 ]
  %77 = phi <2 x i64> [ <i64 0, i64 1>, %71 ], [ %87, %75 ]
  %78 = add nuw nsw <2 x i64> %77, <i64 2, i64 2>
  %79 = mul nuw nsw <2 x i64> %78, %74
  %80 = trunc <2 x i64> %79 to <2 x i32>
  %81 = add <2 x i32> %80, <i32 2, i32 2>
  %82 = urem <2 x i32> %81, <i32 1000, i32 1000>
  %83 = sitofp <2 x i32> %82 to <2 x double>
  %84 = fdiv <2 x double> %83, <double 5.000000e+03, double 5.000000e+03>
  %85 = getelementptr inbounds [1100 x double], ptr %8, i64 %72, i64 %76
  store <2 x double> %84, ptr %85, align 8, !tbaa !5
  %86 = add nuw i64 %76, 2
  %87 = add <2 x i64> %77, <i64 2, i64 2>
  %88 = icmp eq i64 %86, 1100
  br i1 %88, label %89, label %75, !llvm.loop !18

89:                                               ; preds = %75
  %90 = add nuw nsw i64 %72, 1
  %91 = icmp eq i64 %90, 1200
  br i1 %91, label %92, label %71, !llvm.loop !19

92:                                               ; preds = %89, %170
  %93 = phi i64 [ %173, %170 ], [ 32, %89 ]
  %94 = phi i64 [ %171, %170 ], [ 0, %89 ]
  br label %95

95:                                               ; preds = %109, %92
  %96 = phi i64 [ %112, %109 ], [ 0, %92 ]
  %97 = phi i64 [ %110, %109 ], [ 0, %92 ]
  %98 = tail call i64 @llvm.umin.i64(i64 %97, i64 868)
  %99 = shl i64 %96, 5
  %100 = sub i64 %98, %99
  %101 = add i64 %100, 32
  %102 = trunc i64 %97 to i32
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 868)
  %104 = add nuw nsw i32 %103, 32
  %105 = icmp ugt i32 %104, %102
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = zext nneg i32 %104 to i64
  %108 = icmp eq i64 %101, 0
  br label %113

109:                                              ; preds = %144, %95
  %110 = add nuw nsw i64 %97, 32
  %111 = icmp ult i32 %102, 868
  %112 = add i64 %96, 1
  br i1 %111, label %95, label %170, !llvm.loop !20

113:                                              ; preds = %144, %106
  %114 = phi i64 [ 0, %106 ], [ %145, %144 ]
  %115 = trunc i64 %114 to i32
  %116 = tail call i32 @llvm.umin.i32(i32 %115, i32 968)
  %117 = add nuw nsw i32 %116, 32
  %118 = icmp ugt i32 %117, %115
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = zext nneg i32 %117 to i64
  br label %147

121:                                              ; preds = %113, %141
  %122 = phi i64 [ %142, %141 ], [ %94, %113 ]
  br i1 %108, label %134, label %123

123:                                              ; preds = %121, %123
  %124 = phi i64 [ %132, %123 ], [ 0, %121 ]
  %125 = add i64 %97, %124
  %126 = getelementptr inbounds [900 x double], ptr %3, i64 %122, i64 %125
  %127 = getelementptr inbounds double, ptr %126, i64 2
  %128 = load <2 x double>, ptr %126, align 8, !tbaa !5
  %129 = load <2 x double>, ptr %127, align 8, !tbaa !5
  %130 = fadd <2 x double> %128, zeroinitializer
  %131 = fadd <2 x double> %129, zeroinitializer
  store <2 x double> %130, ptr %126, align 8, !tbaa !5
  store <2 x double> %131, ptr %127, align 8, !tbaa !5
  %132 = add nuw i64 %124, 4
  %133 = icmp eq i64 %132, %101
  br i1 %133, label %141, label %123, !llvm.loop !21

134:                                              ; preds = %121, %134
  %135 = phi i64 [ %139, %134 ], [ %97, %121 ]
  %136 = getelementptr inbounds [900 x double], ptr %3, i64 %122, i64 %135
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = fadd double %137, 0.000000e+00
  store double %138, ptr %136, align 8, !tbaa !5
  %139 = add nuw nsw i64 %135, 1
  %140 = icmp ult i64 %139, %107
  br i1 %140, label %134, label %141, !llvm.loop !22

141:                                              ; preds = %123, %134
  %142 = add nuw nsw i64 %122, 1
  %143 = icmp eq i64 %142, %93
  br i1 %143, label %144, label %121, !llvm.loop !23

144:                                              ; preds = %141, %167
  %145 = add nuw nsw i64 %114, 32
  %146 = icmp ult i32 %115, 968
  br i1 %146, label %113, label %109, !llvm.loop !24

147:                                              ; preds = %167, %119
  %148 = phi i64 [ %94, %119 ], [ %168, %167 ]
  br label %149

149:                                              ; preds = %161, %147
  %150 = phi i64 [ %165, %161 ], [ %97, %147 ]
  br label %151

151:                                              ; preds = %151, %149
  %152 = phi i64 [ %159, %151 ], [ %114, %149 ]
  %153 = phi double [ %158, %151 ], [ 0.000000e+00, %149 ]
  %154 = getelementptr inbounds [1000 x double], ptr %4, i64 %148, i64 %152
  %155 = load double, ptr %154, align 8, !tbaa !5
  %156 = getelementptr inbounds [900 x double], ptr %5, i64 %152, i64 %150
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = tail call double @llvm.fmuladd.f64(double %155, double %157, double %153)
  %159 = add nuw nsw i64 %152, 1
  %160 = icmp ult i64 %159, %120
  br i1 %160, label %151, label %161, !llvm.loop !25

161:                                              ; preds = %151
  %162 = getelementptr inbounds [900 x double], ptr %3, i64 %148, i64 %150
  %163 = load double, ptr %162, align 8, !tbaa !5
  %164 = fadd double %158, %163
  store double %164, ptr %162, align 8, !tbaa !5
  %165 = add nuw nsw i64 %150, 1
  %166 = icmp ult i64 %165, %107
  br i1 %166, label %149, label %167, !llvm.loop !26

167:                                              ; preds = %161
  %168 = add nuw nsw i64 %148, 1
  %169 = icmp eq i64 %168, %93
  br i1 %169, label %144, label %147, !llvm.loop !23

170:                                              ; preds = %109
  %171 = add nuw nsw i64 %94, 32
  %172 = icmp ult i64 %94, 768
  %173 = add nuw nsw i64 %93, 32
  br i1 %172, label %92, label %174, !llvm.loop !27

174:                                              ; preds = %170, %257
  %175 = phi i64 [ %258, %257 ], [ 0, %170 ]
  %176 = trunc i64 %175 to i32
  %177 = tail call i32 @llvm.umin.i32(i32 %176, i32 868)
  %178 = add nuw nsw i32 %177, 32
  %179 = icmp ugt i32 %178, %176
  br i1 %179, label %180, label %257

180:                                              ; preds = %174
  %181 = zext nneg i32 %178 to i64
  br label %182

182:                                              ; preds = %196, %180
  %183 = phi i64 [ %199, %196 ], [ 0, %180 ]
  %184 = phi i64 [ %197, %196 ], [ 0, %180 ]
  %185 = tail call i64 @llvm.umin.i64(i64 %184, i64 1068)
  %186 = shl i64 %183, 5
  %187 = sub i64 %185, %186
  %188 = add i64 %187, 32
  %189 = trunc i64 %184 to i32
  %190 = tail call i32 @llvm.umin.i32(i32 %189, i32 1068)
  %191 = add nuw nsw i32 %190, 32
  %192 = icmp ugt i32 %191, %189
  br i1 %192, label %193, label %196

193:                                              ; preds = %182
  %194 = zext nneg i32 %191 to i64
  %195 = icmp eq i64 %188, 0
  br label %200

196:                                              ; preds = %231, %182
  %197 = add nuw nsw i64 %184, 32
  %198 = icmp ult i32 %189, 1068
  %199 = add i64 %183, 1
  br i1 %198, label %182, label %257, !llvm.loop !28

200:                                              ; preds = %231, %193
  %201 = phi i64 [ 0, %193 ], [ %232, %231 ]
  %202 = trunc i64 %201 to i32
  %203 = tail call i32 @llvm.umin.i32(i32 %202, i32 1168)
  %204 = add nuw nsw i32 %203, 32
  %205 = icmp ugt i32 %204, %202
  br i1 %205, label %206, label %208

206:                                              ; preds = %200
  %207 = zext nneg i32 %204 to i64
  br label %234

208:                                              ; preds = %200, %228
  %209 = phi i64 [ %229, %228 ], [ %175, %200 ]
  br i1 %195, label %221, label %210

210:                                              ; preds = %208, %210
  %211 = phi i64 [ %219, %210 ], [ 0, %208 ]
  %212 = add i64 %184, %211
  %213 = getelementptr inbounds [1100 x double], ptr %6, i64 %209, i64 %212
  %214 = getelementptr inbounds double, ptr %213, i64 2
  %215 = load <2 x double>, ptr %213, align 8, !tbaa !5
  %216 = load <2 x double>, ptr %214, align 8, !tbaa !5
  %217 = fadd <2 x double> %215, zeroinitializer
  %218 = fadd <2 x double> %216, zeroinitializer
  store <2 x double> %217, ptr %213, align 8, !tbaa !5
  store <2 x double> %218, ptr %214, align 8, !tbaa !5
  %219 = add nuw i64 %211, 4
  %220 = icmp eq i64 %219, %188
  br i1 %220, label %228, label %210, !llvm.loop !29

221:                                              ; preds = %208, %221
  %222 = phi i64 [ %226, %221 ], [ %184, %208 ]
  %223 = getelementptr inbounds [1100 x double], ptr %6, i64 %209, i64 %222
  %224 = load double, ptr %223, align 8, !tbaa !5
  %225 = fadd double %224, 0.000000e+00
  store double %225, ptr %223, align 8, !tbaa !5
  %226 = add nuw nsw i64 %222, 1
  %227 = icmp ult i64 %226, %194
  br i1 %227, label %221, label %228, !llvm.loop !30

228:                                              ; preds = %210, %221
  %229 = add nuw nsw i64 %209, 1
  %230 = icmp ult i64 %229, %181
  br i1 %230, label %208, label %231, !llvm.loop !31

231:                                              ; preds = %228, %254
  %232 = add nuw nsw i64 %201, 32
  %233 = icmp ult i32 %202, 1168
  br i1 %233, label %200, label %196, !llvm.loop !32

234:                                              ; preds = %254, %206
  %235 = phi i64 [ %175, %206 ], [ %255, %254 ]
  br label %236

236:                                              ; preds = %248, %234
  %237 = phi i64 [ %252, %248 ], [ %184, %234 ]
  br label %238

238:                                              ; preds = %238, %236
  %239 = phi i64 [ %246, %238 ], [ %201, %236 ]
  %240 = phi double [ %245, %238 ], [ 0.000000e+00, %236 ]
  %241 = getelementptr inbounds [1200 x double], ptr %7, i64 %235, i64 %239
  %242 = load double, ptr %241, align 8, !tbaa !5
  %243 = getelementptr inbounds [1100 x double], ptr %8, i64 %239, i64 %237
  %244 = load double, ptr %243, align 8, !tbaa !5
  %245 = tail call double @llvm.fmuladd.f64(double %242, double %244, double %240)
  %246 = add nuw nsw i64 %239, 1
  %247 = icmp ult i64 %246, %207
  br i1 %247, label %238, label %248, !llvm.loop !33

248:                                              ; preds = %238
  %249 = getelementptr inbounds [1100 x double], ptr %6, i64 %235, i64 %237
  %250 = load double, ptr %249, align 8, !tbaa !5
  %251 = fadd double %245, %250
  store double %251, ptr %249, align 8, !tbaa !5
  %252 = add nuw nsw i64 %237, 1
  %253 = icmp ult i64 %252, %194
  br i1 %253, label %236, label %254, !llvm.loop !34

254:                                              ; preds = %248
  %255 = add nuw nsw i64 %235, 1
  %256 = icmp ult i64 %255, %181
  br i1 %256, label %234, label %231, !llvm.loop !31

257:                                              ; preds = %196, %174
  %258 = add nuw nsw i64 %175, 32
  %259 = icmp ult i32 %176, 868
  br i1 %259, label %174, label %260, !llvm.loop !35

260:                                              ; preds = %257, %338
  %261 = phi i64 [ %341, %338 ], [ 32, %257 ]
  %262 = phi i64 [ %339, %338 ], [ 0, %257 ]
  br label %263

263:                                              ; preds = %277, %260
  %264 = phi i64 [ %280, %277 ], [ 0, %260 ]
  %265 = phi i64 [ %278, %277 ], [ 0, %260 ]
  %266 = tail call i64 @llvm.umin.i64(i64 %265, i64 1068)
  %267 = shl i64 %264, 5
  %268 = sub i64 %266, %267
  %269 = add i64 %268, 32
  %270 = trunc i64 %265 to i32
  %271 = tail call i32 @llvm.umin.i32(i32 %270, i32 1068)
  %272 = add nuw nsw i32 %271, 32
  %273 = icmp ugt i32 %272, %270
  br i1 %273, label %274, label %277

274:                                              ; preds = %263
  %275 = zext nneg i32 %272 to i64
  %276 = icmp eq i64 %269, 0
  br label %281

277:                                              ; preds = %312, %263
  %278 = add nuw nsw i64 %265, 32
  %279 = icmp ult i32 %270, 1068
  %280 = add i64 %264, 1
  br i1 %279, label %263, label %338, !llvm.loop !36

281:                                              ; preds = %312, %274
  %282 = phi i64 [ 0, %274 ], [ %313, %312 ]
  %283 = trunc i64 %282 to i32
  %284 = tail call i32 @llvm.umin.i32(i32 %283, i32 868)
  %285 = add nuw nsw i32 %284, 32
  %286 = icmp ugt i32 %285, %283
  br i1 %286, label %287, label %289

287:                                              ; preds = %281
  %288 = zext nneg i32 %285 to i64
  br label %315

289:                                              ; preds = %281, %309
  %290 = phi i64 [ %310, %309 ], [ %262, %281 ]
  br i1 %276, label %302, label %291

291:                                              ; preds = %289, %291
  %292 = phi i64 [ %300, %291 ], [ 0, %289 ]
  %293 = add i64 %265, %292
  %294 = getelementptr inbounds [1100 x double], ptr %9, i64 %290, i64 %293
  %295 = getelementptr inbounds double, ptr %294, i64 2
  %296 = load <2 x double>, ptr %294, align 8, !tbaa !5
  %297 = load <2 x double>, ptr %295, align 8, !tbaa !5
  %298 = fadd <2 x double> %296, zeroinitializer
  %299 = fadd <2 x double> %297, zeroinitializer
  store <2 x double> %298, ptr %294, align 8, !tbaa !5
  store <2 x double> %299, ptr %295, align 8, !tbaa !5
  %300 = add nuw i64 %292, 4
  %301 = icmp eq i64 %300, %269
  br i1 %301, label %309, label %291, !llvm.loop !37

302:                                              ; preds = %289, %302
  %303 = phi i64 [ %307, %302 ], [ %265, %289 ]
  %304 = getelementptr inbounds [1100 x double], ptr %9, i64 %290, i64 %303
  %305 = load double, ptr %304, align 8, !tbaa !5
  %306 = fadd double %305, 0.000000e+00
  store double %306, ptr %304, align 8, !tbaa !5
  %307 = add nuw nsw i64 %303, 1
  %308 = icmp ult i64 %307, %275
  br i1 %308, label %302, label %309, !llvm.loop !38

309:                                              ; preds = %291, %302
  %310 = add nuw nsw i64 %290, 1
  %311 = icmp eq i64 %310, %261
  br i1 %311, label %312, label %289, !llvm.loop !39

312:                                              ; preds = %309, %335
  %313 = add nuw nsw i64 %282, 32
  %314 = icmp ult i32 %283, 868
  br i1 %314, label %281, label %277, !llvm.loop !40

315:                                              ; preds = %335, %287
  %316 = phi i64 [ %262, %287 ], [ %336, %335 ]
  br label %317

317:                                              ; preds = %329, %315
  %318 = phi i64 [ %333, %329 ], [ %265, %315 ]
  br label %319

319:                                              ; preds = %319, %317
  %320 = phi i64 [ %327, %319 ], [ %282, %317 ]
  %321 = phi double [ %326, %319 ], [ 0.000000e+00, %317 ]
  %322 = getelementptr inbounds [900 x double], ptr %3, i64 %316, i64 %320
  %323 = load double, ptr %322, align 8, !tbaa !5
  %324 = getelementptr inbounds [1100 x double], ptr %6, i64 %320, i64 %318
  %325 = load double, ptr %324, align 8, !tbaa !5
  %326 = tail call double @llvm.fmuladd.f64(double %323, double %325, double %321)
  %327 = add nuw nsw i64 %320, 1
  %328 = icmp ult i64 %327, %288
  br i1 %328, label %319, label %329, !llvm.loop !41

329:                                              ; preds = %319
  %330 = getelementptr inbounds [1100 x double], ptr %9, i64 %316, i64 %318
  %331 = load double, ptr %330, align 8, !tbaa !5
  %332 = fadd double %326, %331
  store double %332, ptr %330, align 8, !tbaa !5
  %333 = add nuw nsw i64 %318, 1
  %334 = icmp ult i64 %333, %275
  br i1 %334, label %317, label %335, !llvm.loop !42

335:                                              ; preds = %329
  %336 = add nuw nsw i64 %316, 1
  %337 = icmp eq i64 %336, %261
  br i1 %337, label %312, label %315, !llvm.loop !39

338:                                              ; preds = %277
  %339 = add nuw nsw i64 %262, 32
  %340 = icmp ult i64 %262, 768
  %341 = add nuw nsw i64 %261, 32
  br i1 %340, label %260, label %342, !llvm.loop !43

342:                                              ; preds = %338
  %343 = load ptr, ptr @stdout, align 8, !tbaa !44
  %344 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %343)
  %345 = load ptr, ptr @stdout, align 8, !tbaa !44
  %346 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %345, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %347

347:                                              ; preds = %366, %342
  %348 = phi i64 [ 0, %342 ], [ %367, %366 ]
  %349 = mul nuw nsw i64 %348, 800
  br label %350

350:                                              ; preds = %359, %347
  %351 = phi i64 [ 0, %347 ], [ %364, %359 ]
  %352 = add nuw nsw i64 %351, %349
  %353 = trunc i64 %352 to i32
  %354 = urem i32 %353, 20
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %350
  %357 = load ptr, ptr @stdout, align 8, !tbaa !44
  %358 = tail call i32 @fputc(i32 10, ptr %357)
  br label %359

359:                                              ; preds = %356, %350
  %360 = load ptr, ptr @stdout, align 8, !tbaa !44
  %361 = getelementptr inbounds [1100 x double], ptr %9, i64 %348, i64 %351
  %362 = load double, ptr %361, align 8, !tbaa !5
  %363 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %360, ptr noundef nonnull @.str.4, double noundef %362)
  %364 = add nuw nsw i64 %351, 1
  %365 = icmp eq i64 %364, 1100
  br i1 %365, label %366, label %350, !llvm.loop !46

366:                                              ; preds = %359
  %367 = add nuw nsw i64 %348, 1
  %368 = icmp eq i64 %367, 800
  br i1 %368, label %369, label %347, !llvm.loop !47

369:                                              ; preds = %366
  %370 = load ptr, ptr @stdout, align 8, !tbaa !44
  %371 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %370, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %372 = load ptr, ptr @stdout, align 8, !tbaa !44
  %373 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %372)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %6) #7
  tail call void @free(ptr noundef %7) #7
  tail call void @free(ptr noundef %8) #7
  tail call void @free(ptr noundef nonnull %9) #7
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
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

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
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !12, !11}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10, !11, !12}
!30 = distinct !{!30, !10, !12, !11}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10, !11, !12}
!38 = distinct !{!38, !10, !12, !11}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !7, i64 0}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
