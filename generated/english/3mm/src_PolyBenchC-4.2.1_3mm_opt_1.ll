; ModuleID = 'outputs/src_PolyBenchC-4.2.1_3mm_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_3mm_opt_1.c"
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

92:                                               ; preds = %89, %164
  %93 = phi i64 [ %167, %164 ], [ 32, %89 ]
  %94 = phi i64 [ %165, %164 ], [ 0, %89 ]
  %95 = phi i64 [ %166, %164 ], [ 0, %89 ]
  br label %96

96:                                               ; preds = %105, %92
  %97 = phi i64 [ 0, %92 ], [ %106, %105 ]
  %98 = phi i64 [ 0, %92 ], [ %107, %105 ]
  %99 = trunc i64 %97 to i32
  %100 = tail call i32 @llvm.umin.i32(i32 %99, i32 868)
  %101 = add nuw nsw i32 %100, 32
  %102 = icmp ugt i32 %101, %99
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = zext nneg i32 %101 to i64
  br label %109

105:                                              ; preds = %115, %96
  %106 = add nuw nsw i64 %97, 32
  %107 = add nuw nsw i64 %98, 1
  %108 = icmp eq i64 %107, 29
  br i1 %108, label %164, label %96, !llvm.loop !20

109:                                              ; preds = %115, %103
  %110 = phi i64 [ 0, %103 ], [ %116, %115 ]
  %111 = trunc i64 %110 to i32
  %112 = tail call i32 @llvm.umin.i32(i32 %111, i32 968)
  %113 = add nuw nsw i32 %112, 32
  %114 = icmp ugt i32 %113, %111
  br i1 %114, label %118, label %115

115:                                              ; preds = %140, %161, %109
  %116 = add nuw nsw i64 %110, 32
  %117 = icmp ult i32 %111, 968
  br i1 %117, label %109, label %105, !llvm.loop !21

118:                                              ; preds = %109
  %119 = icmp eq i32 %111, 0
  %120 = zext nneg i32 %113 to i64
  br i1 %119, label %143, label %121

121:                                              ; preds = %118, %140
  %122 = phi i64 [ %141, %140 ], [ %94, %118 ]
  br label %123

123:                                              ; preds = %137, %121
  %124 = phi i64 [ %138, %137 ], [ %97, %121 ]
  %125 = getelementptr inbounds [900 x double], ptr %3, i64 %122, i64 %124
  %126 = load double, ptr %125, align 8, !tbaa !5
  br label %127

127:                                              ; preds = %127, %123
  %128 = phi i64 [ %135, %127 ], [ %110, %123 ]
  %129 = phi double [ %134, %127 ], [ %126, %123 ]
  %130 = getelementptr inbounds [1000 x double], ptr %4, i64 %122, i64 %128
  %131 = load double, ptr %130, align 8, !tbaa !5
  %132 = getelementptr inbounds [900 x double], ptr %5, i64 %128, i64 %124
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = tail call double @llvm.fmuladd.f64(double %131, double %133, double %129)
  store double %134, ptr %125, align 8, !tbaa !5
  %135 = add nuw nsw i64 %128, 1
  %136 = icmp ult i64 %135, %120
  br i1 %136, label %127, label %137, !llvm.loop !22

137:                                              ; preds = %127
  %138 = add nuw nsw i64 %124, 1
  %139 = icmp ult i64 %138, %104
  br i1 %139, label %123, label %140, !llvm.loop !23

140:                                              ; preds = %137
  %141 = add nuw nsw i64 %122, 1
  %142 = icmp eq i64 %141, %93
  br i1 %142, label %115, label %121, !llvm.loop !24

143:                                              ; preds = %118, %161
  %144 = phi i64 [ %162, %161 ], [ %94, %118 ]
  br label %145

145:                                              ; preds = %158, %143
  %146 = phi i64 [ %159, %158 ], [ %97, %143 ]
  %147 = getelementptr inbounds [900 x double], ptr %3, i64 %144, i64 %146
  store double 0.000000e+00, ptr %147, align 8, !tbaa !5
  br label %148

148:                                              ; preds = %148, %145
  %149 = phi i64 [ %156, %148 ], [ %110, %145 ]
  %150 = phi double [ %155, %148 ], [ 0.000000e+00, %145 ]
  %151 = getelementptr inbounds [1000 x double], ptr %4, i64 %144, i64 %149
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = getelementptr inbounds [900 x double], ptr %5, i64 %149, i64 %146
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = tail call double @llvm.fmuladd.f64(double %152, double %154, double %150)
  store double %155, ptr %147, align 8, !tbaa !5
  %156 = add nuw nsw i64 %149, 1
  %157 = icmp ult i64 %156, %120
  br i1 %157, label %148, label %158, !llvm.loop !22

158:                                              ; preds = %148
  %159 = add nuw nsw i64 %146, 1
  %160 = icmp ult i64 %159, %104
  br i1 %160, label %145, label %161, !llvm.loop !23

161:                                              ; preds = %158
  %162 = add nuw nsw i64 %144, 1
  %163 = icmp eq i64 %162, %93
  br i1 %163, label %115, label %143, !llvm.loop !24

164:                                              ; preds = %105
  %165 = add nuw nsw i64 %94, 32
  %166 = add nuw nsw i64 %95, 1
  %167 = add nuw nsw i64 %93, 32
  %168 = icmp eq i64 %166, 25
  br i1 %168, label %169, label %92, !llvm.loop !25

169:                                              ; preds = %164, %246
  %170 = phi i64 [ %247, %246 ], [ 0, %164 ]
  %171 = phi i64 [ %248, %246 ], [ 0, %164 ]
  %172 = trunc i64 %170 to i32
  %173 = tail call i32 @llvm.umin.i32(i32 %172, i32 868)
  %174 = add nuw nsw i32 %173, 32
  %175 = icmp ugt i32 %174, %172
  br i1 %175, label %176, label %246

176:                                              ; preds = %169
  %177 = zext nneg i32 %174 to i64
  br label %178

178:                                              ; preds = %187, %176
  %179 = phi i64 [ 0, %176 ], [ %188, %187 ]
  %180 = phi i64 [ 0, %176 ], [ %189, %187 ]
  %181 = trunc i64 %179 to i32
  %182 = tail call i32 @llvm.umin.i32(i32 %181, i32 1068)
  %183 = add nuw nsw i32 %182, 32
  %184 = icmp ugt i32 %183, %181
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = zext nneg i32 %183 to i64
  br label %191

187:                                              ; preds = %197, %178
  %188 = add nuw nsw i64 %179, 32
  %189 = add nuw nsw i64 %180, 1
  %190 = icmp eq i64 %189, 35
  br i1 %190, label %246, label %178, !llvm.loop !26

191:                                              ; preds = %197, %185
  %192 = phi i64 [ 0, %185 ], [ %198, %197 ]
  %193 = trunc i64 %192 to i32
  %194 = tail call i32 @llvm.umin.i32(i32 %193, i32 1168)
  %195 = add nuw nsw i32 %194, 32
  %196 = icmp ugt i32 %195, %193
  br i1 %196, label %200, label %197

197:                                              ; preds = %222, %243, %191
  %198 = add nuw nsw i64 %192, 32
  %199 = icmp ult i32 %193, 1168
  br i1 %199, label %191, label %187, !llvm.loop !27

200:                                              ; preds = %191
  %201 = icmp eq i32 %193, 0
  %202 = zext nneg i32 %195 to i64
  br i1 %201, label %225, label %203

203:                                              ; preds = %200, %222
  %204 = phi i64 [ %223, %222 ], [ %170, %200 ]
  br label %205

205:                                              ; preds = %219, %203
  %206 = phi i64 [ %220, %219 ], [ %179, %203 ]
  %207 = getelementptr inbounds [1100 x double], ptr %6, i64 %204, i64 %206
  %208 = load double, ptr %207, align 8, !tbaa !5
  br label %209

209:                                              ; preds = %209, %205
  %210 = phi i64 [ %217, %209 ], [ %192, %205 ]
  %211 = phi double [ %216, %209 ], [ %208, %205 ]
  %212 = getelementptr inbounds [1200 x double], ptr %7, i64 %204, i64 %210
  %213 = load double, ptr %212, align 8, !tbaa !5
  %214 = getelementptr inbounds [1100 x double], ptr %8, i64 %210, i64 %206
  %215 = load double, ptr %214, align 8, !tbaa !5
  %216 = tail call double @llvm.fmuladd.f64(double %213, double %215, double %211)
  store double %216, ptr %207, align 8, !tbaa !5
  %217 = add nuw nsw i64 %210, 1
  %218 = icmp ult i64 %217, %202
  br i1 %218, label %209, label %219, !llvm.loop !28

219:                                              ; preds = %209
  %220 = add nuw nsw i64 %206, 1
  %221 = icmp ult i64 %220, %186
  br i1 %221, label %205, label %222, !llvm.loop !29

222:                                              ; preds = %219
  %223 = add nuw nsw i64 %204, 1
  %224 = icmp ult i64 %223, %177
  br i1 %224, label %203, label %197, !llvm.loop !30

225:                                              ; preds = %200, %243
  %226 = phi i64 [ %244, %243 ], [ %170, %200 ]
  br label %227

227:                                              ; preds = %240, %225
  %228 = phi i64 [ %241, %240 ], [ %179, %225 ]
  %229 = getelementptr inbounds [1100 x double], ptr %6, i64 %226, i64 %228
  store double 0.000000e+00, ptr %229, align 8, !tbaa !5
  br label %230

230:                                              ; preds = %230, %227
  %231 = phi i64 [ %238, %230 ], [ %192, %227 ]
  %232 = phi double [ %237, %230 ], [ 0.000000e+00, %227 ]
  %233 = getelementptr inbounds [1200 x double], ptr %7, i64 %226, i64 %231
  %234 = load double, ptr %233, align 8, !tbaa !5
  %235 = getelementptr inbounds [1100 x double], ptr %8, i64 %231, i64 %228
  %236 = load double, ptr %235, align 8, !tbaa !5
  %237 = tail call double @llvm.fmuladd.f64(double %234, double %236, double %232)
  store double %237, ptr %229, align 8, !tbaa !5
  %238 = add nuw nsw i64 %231, 1
  %239 = icmp ult i64 %238, %202
  br i1 %239, label %230, label %240, !llvm.loop !28

240:                                              ; preds = %230
  %241 = add nuw nsw i64 %228, 1
  %242 = icmp ult i64 %241, %186
  br i1 %242, label %227, label %243, !llvm.loop !29

243:                                              ; preds = %240
  %244 = add nuw nsw i64 %226, 1
  %245 = icmp ult i64 %244, %177
  br i1 %245, label %225, label %197, !llvm.loop !30

246:                                              ; preds = %187, %169
  %247 = add nuw nsw i64 %170, 32
  %248 = add nuw nsw i64 %171, 1
  %249 = icmp eq i64 %248, 29
  br i1 %249, label %250, label %169, !llvm.loop !31

250:                                              ; preds = %246, %322
  %251 = phi i64 [ %325, %322 ], [ 32, %246 ]
  %252 = phi i64 [ %323, %322 ], [ 0, %246 ]
  %253 = phi i64 [ %324, %322 ], [ 0, %246 ]
  br label %254

254:                                              ; preds = %263, %250
  %255 = phi i64 [ 0, %250 ], [ %264, %263 ]
  %256 = phi i64 [ 0, %250 ], [ %265, %263 ]
  %257 = trunc i64 %255 to i32
  %258 = tail call i32 @llvm.umin.i32(i32 %257, i32 1068)
  %259 = add nuw nsw i32 %258, 32
  %260 = icmp ugt i32 %259, %257
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = zext nneg i32 %259 to i64
  br label %267

263:                                              ; preds = %273, %254
  %264 = add nuw nsw i64 %255, 32
  %265 = add nuw nsw i64 %256, 1
  %266 = icmp eq i64 %265, 35
  br i1 %266, label %322, label %254, !llvm.loop !32

267:                                              ; preds = %273, %261
  %268 = phi i64 [ 0, %261 ], [ %274, %273 ]
  %269 = trunc i64 %268 to i32
  %270 = tail call i32 @llvm.umin.i32(i32 %269, i32 868)
  %271 = add nuw nsw i32 %270, 32
  %272 = icmp ugt i32 %271, %269
  br i1 %272, label %276, label %273

273:                                              ; preds = %298, %319, %267
  %274 = add nuw nsw i64 %268, 32
  %275 = icmp ult i32 %269, 868
  br i1 %275, label %267, label %263, !llvm.loop !33

276:                                              ; preds = %267
  %277 = icmp eq i32 %269, 0
  %278 = zext nneg i32 %271 to i64
  br i1 %277, label %301, label %279

279:                                              ; preds = %276, %298
  %280 = phi i64 [ %299, %298 ], [ %252, %276 ]
  br label %281

281:                                              ; preds = %295, %279
  %282 = phi i64 [ %296, %295 ], [ %255, %279 ]
  %283 = getelementptr inbounds [1100 x double], ptr %9, i64 %280, i64 %282
  %284 = load double, ptr %283, align 8, !tbaa !5
  br label %285

285:                                              ; preds = %285, %281
  %286 = phi i64 [ %293, %285 ], [ %268, %281 ]
  %287 = phi double [ %292, %285 ], [ %284, %281 ]
  %288 = getelementptr inbounds [900 x double], ptr %3, i64 %280, i64 %286
  %289 = load double, ptr %288, align 8, !tbaa !5
  %290 = getelementptr inbounds [1100 x double], ptr %6, i64 %286, i64 %282
  %291 = load double, ptr %290, align 8, !tbaa !5
  %292 = tail call double @llvm.fmuladd.f64(double %289, double %291, double %287)
  store double %292, ptr %283, align 8, !tbaa !5
  %293 = add nuw nsw i64 %286, 1
  %294 = icmp ult i64 %293, %278
  br i1 %294, label %285, label %295, !llvm.loop !34

295:                                              ; preds = %285
  %296 = add nuw nsw i64 %282, 1
  %297 = icmp ult i64 %296, %262
  br i1 %297, label %281, label %298, !llvm.loop !35

298:                                              ; preds = %295
  %299 = add nuw nsw i64 %280, 1
  %300 = icmp eq i64 %299, %251
  br i1 %300, label %273, label %279, !llvm.loop !36

301:                                              ; preds = %276, %319
  %302 = phi i64 [ %320, %319 ], [ %252, %276 ]
  br label %303

303:                                              ; preds = %316, %301
  %304 = phi i64 [ %317, %316 ], [ %255, %301 ]
  %305 = getelementptr inbounds [1100 x double], ptr %9, i64 %302, i64 %304
  store double 0.000000e+00, ptr %305, align 8, !tbaa !5
  br label %306

306:                                              ; preds = %306, %303
  %307 = phi i64 [ %314, %306 ], [ %268, %303 ]
  %308 = phi double [ %313, %306 ], [ 0.000000e+00, %303 ]
  %309 = getelementptr inbounds [900 x double], ptr %3, i64 %302, i64 %307
  %310 = load double, ptr %309, align 8, !tbaa !5
  %311 = getelementptr inbounds [1100 x double], ptr %6, i64 %307, i64 %304
  %312 = load double, ptr %311, align 8, !tbaa !5
  %313 = tail call double @llvm.fmuladd.f64(double %310, double %312, double %308)
  store double %313, ptr %305, align 8, !tbaa !5
  %314 = add nuw nsw i64 %307, 1
  %315 = icmp ult i64 %314, %278
  br i1 %315, label %306, label %316, !llvm.loop !34

316:                                              ; preds = %306
  %317 = add nuw nsw i64 %304, 1
  %318 = icmp ult i64 %317, %262
  br i1 %318, label %303, label %319, !llvm.loop !35

319:                                              ; preds = %316
  %320 = add nuw nsw i64 %302, 1
  %321 = icmp eq i64 %320, %251
  br i1 %321, label %273, label %301, !llvm.loop !36

322:                                              ; preds = %263
  %323 = add nuw nsw i64 %252, 32
  %324 = add nuw nsw i64 %253, 1
  %325 = add nuw nsw i64 %251, 32
  %326 = icmp eq i64 %324, 25
  br i1 %326, label %327, label %250, !llvm.loop !37

327:                                              ; preds = %322
  %328 = load ptr, ptr @stdout, align 8, !tbaa !38
  %329 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %328)
  %330 = load ptr, ptr @stdout, align 8, !tbaa !38
  %331 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %330, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %332

332:                                              ; preds = %351, %327
  %333 = phi i64 [ 0, %327 ], [ %352, %351 ]
  %334 = mul nuw nsw i64 %333, 800
  br label %335

335:                                              ; preds = %344, %332
  %336 = phi i64 [ 0, %332 ], [ %349, %344 ]
  %337 = add nuw nsw i64 %336, %334
  %338 = trunc i64 %337 to i32
  %339 = urem i32 %338, 20
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %335
  %342 = load ptr, ptr @stdout, align 8, !tbaa !38
  %343 = tail call i32 @fputc(i32 10, ptr %342)
  br label %344

344:                                              ; preds = %341, %335
  %345 = load ptr, ptr @stdout, align 8, !tbaa !38
  %346 = getelementptr inbounds [1100 x double], ptr %9, i64 %333, i64 %336
  %347 = load double, ptr %346, align 8, !tbaa !5
  %348 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %345, ptr noundef nonnull @.str.4, double noundef %347)
  %349 = add nuw nsw i64 %336, 1
  %350 = icmp eq i64 %349, 1100
  br i1 %350, label %351, label %335, !llvm.loop !40

351:                                              ; preds = %344
  %352 = add nuw nsw i64 %333, 1
  %353 = icmp eq i64 %352, 800
  br i1 %353, label %354, label %332, !llvm.loop !41

354:                                              ; preds = %351
  %355 = load ptr, ptr @stdout, align 8, !tbaa !38
  %356 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %355, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %357 = load ptr, ptr @stdout, align 8, !tbaa !38
  %358 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %357)
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
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
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !7, i64 0}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
