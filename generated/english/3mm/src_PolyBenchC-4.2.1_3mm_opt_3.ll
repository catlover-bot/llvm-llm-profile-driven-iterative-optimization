; ModuleID = 'outputs/src_PolyBenchC-4.2.1_3mm_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_3mm_opt_3.c"
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

92:                                               ; preds = %89, %193
  %93 = phi i64 [ %195, %193 ], [ 32, %89 ]
  %94 = phi i64 [ %196, %193 ], [ 0, %89 ]
  %95 = phi i64 [ %194, %193 ], [ 0, %89 ]
  br label %96

96:                                               ; preds = %110, %92
  %97 = phi i64 [ 0, %92 ], [ %112, %110 ]
  %98 = phi i64 [ 0, %92 ], [ %111, %110 ]
  %99 = tail call i64 @llvm.umin.i64(i64 %98, i64 868)
  %100 = shl i64 %97, 5
  %101 = sub i64 %99, %100
  %102 = add i64 %101, 32
  %103 = trunc i64 %98 to i32
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 868)
  %105 = add nuw nsw i32 %104, 32
  %106 = icmp ugt i32 %105, %103
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  %108 = zext nneg i32 %105 to i64
  %109 = icmp eq i64 %102, 0
  br label %114

110:                                              ; preds = %143, %96
  %111 = add nuw nsw i64 %98, 32
  %112 = add nuw nsw i64 %97, 1
  %113 = icmp eq i64 %112, 29
  br i1 %113, label %193, label %96, !llvm.loop !20

114:                                              ; preds = %143, %107
  %115 = phi i64 [ 0, %107 ], [ %144, %143 ]
  %116 = trunc i64 %115 to i32
  %117 = tail call i32 @llvm.umin.i32(i32 %116, i32 968)
  %118 = add nuw nsw i32 %117, 32
  %119 = icmp ugt i32 %118, %116
  br i1 %119, label %146, label %120

120:                                              ; preds = %114, %140
  %121 = phi i64 [ %141, %140 ], [ %95, %114 ]
  br i1 %109, label %133, label %122

122:                                              ; preds = %120, %122
  %123 = phi i64 [ %131, %122 ], [ 0, %120 ]
  %124 = add i64 %98, %123
  %125 = getelementptr inbounds [900 x double], ptr %3, i64 %121, i64 %124
  %126 = getelementptr inbounds double, ptr %125, i64 2
  %127 = load <2 x double>, ptr %125, align 8, !tbaa !5
  %128 = load <2 x double>, ptr %126, align 8, !tbaa !5
  %129 = fadd <2 x double> %127, zeroinitializer
  %130 = fadd <2 x double> %128, zeroinitializer
  store <2 x double> %129, ptr %125, align 8, !tbaa !5
  store <2 x double> %130, ptr %126, align 8, !tbaa !5
  %131 = add nuw i64 %123, 4
  %132 = icmp eq i64 %131, %102
  br i1 %132, label %140, label %122, !llvm.loop !21

133:                                              ; preds = %120, %133
  %134 = phi i64 [ %138, %133 ], [ %98, %120 ]
  %135 = getelementptr inbounds [900 x double], ptr %3, i64 %121, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = fadd double %136, 0.000000e+00
  store double %137, ptr %135, align 8, !tbaa !5
  %138 = add nuw nsw i64 %134, 1
  %139 = icmp ult i64 %138, %108
  br i1 %139, label %133, label %140, !llvm.loop !22

140:                                              ; preds = %122, %133
  %141 = add nuw nsw i64 %121, 1
  %142 = icmp eq i64 %141, %93
  br i1 %142, label %143, label %120, !llvm.loop !23

143:                                              ; preds = %140, %169, %190
  %144 = add nuw nsw i64 %115, 32
  %145 = icmp ult i32 %116, 968
  br i1 %145, label %114, label %110, !llvm.loop !24

146:                                              ; preds = %114
  %147 = icmp eq i32 %116, 0
  %148 = zext nneg i32 %118 to i64
  br i1 %147, label %172, label %149

149:                                              ; preds = %146, %169
  %150 = phi i64 [ %170, %169 ], [ %95, %146 ]
  br label %151

151:                                              ; preds = %163, %149
  %152 = phi i64 [ %167, %163 ], [ %98, %149 ]
  br label %153

153:                                              ; preds = %153, %151
  %154 = phi i64 [ %161, %153 ], [ %115, %151 ]
  %155 = phi double [ %160, %153 ], [ 0.000000e+00, %151 ]
  %156 = getelementptr inbounds [1000 x double], ptr %4, i64 %150, i64 %154
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = getelementptr inbounds [900 x double], ptr %5, i64 %154, i64 %152
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %157, double %159, double %155)
  %161 = add nuw nsw i64 %154, 1
  %162 = icmp ult i64 %161, %148
  br i1 %162, label %153, label %163, !llvm.loop !25

163:                                              ; preds = %153
  %164 = getelementptr inbounds [900 x double], ptr %3, i64 %150, i64 %152
  %165 = load double, ptr %164, align 8, !tbaa !5
  %166 = fadd double %160, %165
  store double %166, ptr %164, align 8, !tbaa !5
  %167 = add nuw nsw i64 %152, 1
  %168 = icmp ult i64 %167, %108
  br i1 %168, label %151, label %169, !llvm.loop !26

169:                                              ; preds = %163
  %170 = add nuw nsw i64 %150, 1
  %171 = icmp eq i64 %170, %93
  br i1 %171, label %143, label %149, !llvm.loop !23

172:                                              ; preds = %146, %190
  %173 = phi i64 [ %191, %190 ], [ %95, %146 ]
  br label %174

174:                                              ; preds = %186, %172
  %175 = phi i64 [ %188, %186 ], [ %98, %172 ]
  br label %176

176:                                              ; preds = %176, %174
  %177 = phi i64 [ %184, %176 ], [ %115, %174 ]
  %178 = phi double [ %183, %176 ], [ 0.000000e+00, %174 ]
  %179 = getelementptr inbounds [1000 x double], ptr %4, i64 %173, i64 %177
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = getelementptr inbounds [900 x double], ptr %5, i64 %177, i64 %175
  %182 = load double, ptr %181, align 8, !tbaa !5
  %183 = tail call double @llvm.fmuladd.f64(double %180, double %182, double %178)
  %184 = add nuw nsw i64 %177, 1
  %185 = icmp ult i64 %184, %148
  br i1 %185, label %176, label %186, !llvm.loop !25

186:                                              ; preds = %176
  %187 = getelementptr inbounds [900 x double], ptr %3, i64 %173, i64 %175
  store double %183, ptr %187, align 8, !tbaa !5
  %188 = add nuw nsw i64 %175, 1
  %189 = icmp ult i64 %188, %108
  br i1 %189, label %174, label %190, !llvm.loop !26

190:                                              ; preds = %186
  %191 = add nuw nsw i64 %173, 1
  %192 = icmp eq i64 %191, %93
  br i1 %192, label %143, label %172, !llvm.loop !23

193:                                              ; preds = %110
  %194 = add nuw nsw i64 %95, 32
  %195 = add nuw nsw i64 %93, 32
  %196 = add nuw nsw i64 %94, 1
  %197 = icmp eq i64 %196, 25
  br i1 %197, label %198, label %92, !llvm.loop !27

198:                                              ; preds = %193, %304
  %199 = phi i64 [ %306, %304 ], [ 0, %193 ]
  %200 = phi i64 [ %305, %304 ], [ 0, %193 ]
  %201 = trunc i64 %200 to i32
  %202 = tail call i32 @llvm.umin.i32(i32 %201, i32 868)
  %203 = add nuw nsw i32 %202, 32
  %204 = icmp ugt i32 %203, %201
  br i1 %204, label %205, label %304

205:                                              ; preds = %198
  %206 = zext nneg i32 %203 to i64
  br label %207

207:                                              ; preds = %221, %205
  %208 = phi i64 [ 0, %205 ], [ %223, %221 ]
  %209 = phi i64 [ 0, %205 ], [ %222, %221 ]
  %210 = tail call i64 @llvm.umin.i64(i64 %209, i64 1068)
  %211 = shl i64 %208, 5
  %212 = sub i64 %210, %211
  %213 = add i64 %212, 32
  %214 = trunc i64 %209 to i32
  %215 = tail call i32 @llvm.umin.i32(i32 %214, i32 1068)
  %216 = add nuw nsw i32 %215, 32
  %217 = icmp ugt i32 %216, %214
  br i1 %217, label %218, label %221

218:                                              ; preds = %207
  %219 = zext nneg i32 %216 to i64
  %220 = icmp eq i64 %213, 0
  br label %225

221:                                              ; preds = %254, %207
  %222 = add nuw nsw i64 %209, 32
  %223 = add nuw nsw i64 %208, 1
  %224 = icmp eq i64 %223, 35
  br i1 %224, label %304, label %207, !llvm.loop !28

225:                                              ; preds = %254, %218
  %226 = phi i64 [ 0, %218 ], [ %255, %254 ]
  %227 = trunc i64 %226 to i32
  %228 = tail call i32 @llvm.umin.i32(i32 %227, i32 1168)
  %229 = add nuw nsw i32 %228, 32
  %230 = icmp ugt i32 %229, %227
  br i1 %230, label %257, label %231

231:                                              ; preds = %225, %251
  %232 = phi i64 [ %252, %251 ], [ %200, %225 ]
  br i1 %220, label %244, label %233

233:                                              ; preds = %231, %233
  %234 = phi i64 [ %242, %233 ], [ 0, %231 ]
  %235 = add i64 %209, %234
  %236 = getelementptr inbounds [1100 x double], ptr %6, i64 %232, i64 %235
  %237 = getelementptr inbounds double, ptr %236, i64 2
  %238 = load <2 x double>, ptr %236, align 8, !tbaa !5
  %239 = load <2 x double>, ptr %237, align 8, !tbaa !5
  %240 = fadd <2 x double> %238, zeroinitializer
  %241 = fadd <2 x double> %239, zeroinitializer
  store <2 x double> %240, ptr %236, align 8, !tbaa !5
  store <2 x double> %241, ptr %237, align 8, !tbaa !5
  %242 = add nuw i64 %234, 4
  %243 = icmp eq i64 %242, %213
  br i1 %243, label %251, label %233, !llvm.loop !29

244:                                              ; preds = %231, %244
  %245 = phi i64 [ %249, %244 ], [ %209, %231 ]
  %246 = getelementptr inbounds [1100 x double], ptr %6, i64 %232, i64 %245
  %247 = load double, ptr %246, align 8, !tbaa !5
  %248 = fadd double %247, 0.000000e+00
  store double %248, ptr %246, align 8, !tbaa !5
  %249 = add nuw nsw i64 %245, 1
  %250 = icmp ult i64 %249, %219
  br i1 %250, label %244, label %251, !llvm.loop !30

251:                                              ; preds = %233, %244
  %252 = add nuw nsw i64 %232, 1
  %253 = icmp ult i64 %252, %206
  br i1 %253, label %231, label %254, !llvm.loop !31

254:                                              ; preds = %251, %280, %301
  %255 = add nuw nsw i64 %226, 32
  %256 = icmp ult i32 %227, 1168
  br i1 %256, label %225, label %221, !llvm.loop !32

257:                                              ; preds = %225
  %258 = icmp eq i32 %227, 0
  %259 = zext nneg i32 %229 to i64
  br i1 %258, label %283, label %260

260:                                              ; preds = %257, %280
  %261 = phi i64 [ %281, %280 ], [ %200, %257 ]
  br label %262

262:                                              ; preds = %274, %260
  %263 = phi i64 [ %278, %274 ], [ %209, %260 ]
  br label %264

264:                                              ; preds = %264, %262
  %265 = phi i64 [ %272, %264 ], [ %226, %262 ]
  %266 = phi double [ %271, %264 ], [ 0.000000e+00, %262 ]
  %267 = getelementptr inbounds [1200 x double], ptr %7, i64 %261, i64 %265
  %268 = load double, ptr %267, align 8, !tbaa !5
  %269 = getelementptr inbounds [1100 x double], ptr %8, i64 %265, i64 %263
  %270 = load double, ptr %269, align 8, !tbaa !5
  %271 = tail call double @llvm.fmuladd.f64(double %268, double %270, double %266)
  %272 = add nuw nsw i64 %265, 1
  %273 = icmp ult i64 %272, %259
  br i1 %273, label %264, label %274, !llvm.loop !33

274:                                              ; preds = %264
  %275 = getelementptr inbounds [1100 x double], ptr %6, i64 %261, i64 %263
  %276 = load double, ptr %275, align 8, !tbaa !5
  %277 = fadd double %271, %276
  store double %277, ptr %275, align 8, !tbaa !5
  %278 = add nuw nsw i64 %263, 1
  %279 = icmp ult i64 %278, %219
  br i1 %279, label %262, label %280, !llvm.loop !34

280:                                              ; preds = %274
  %281 = add nuw nsw i64 %261, 1
  %282 = icmp ult i64 %281, %206
  br i1 %282, label %260, label %254, !llvm.loop !31

283:                                              ; preds = %257, %301
  %284 = phi i64 [ %302, %301 ], [ %200, %257 ]
  br label %285

285:                                              ; preds = %297, %283
  %286 = phi i64 [ %299, %297 ], [ %209, %283 ]
  br label %287

287:                                              ; preds = %287, %285
  %288 = phi i64 [ %295, %287 ], [ %226, %285 ]
  %289 = phi double [ %294, %287 ], [ 0.000000e+00, %285 ]
  %290 = getelementptr inbounds [1200 x double], ptr %7, i64 %284, i64 %288
  %291 = load double, ptr %290, align 8, !tbaa !5
  %292 = getelementptr inbounds [1100 x double], ptr %8, i64 %288, i64 %286
  %293 = load double, ptr %292, align 8, !tbaa !5
  %294 = tail call double @llvm.fmuladd.f64(double %291, double %293, double %289)
  %295 = add nuw nsw i64 %288, 1
  %296 = icmp ult i64 %295, %259
  br i1 %296, label %287, label %297, !llvm.loop !33

297:                                              ; preds = %287
  %298 = getelementptr inbounds [1100 x double], ptr %6, i64 %284, i64 %286
  store double %294, ptr %298, align 8, !tbaa !5
  %299 = add nuw nsw i64 %286, 1
  %300 = icmp ult i64 %299, %219
  br i1 %300, label %285, label %301, !llvm.loop !34

301:                                              ; preds = %297
  %302 = add nuw nsw i64 %284, 1
  %303 = icmp ult i64 %302, %206
  br i1 %303, label %283, label %254, !llvm.loop !31

304:                                              ; preds = %221, %198
  %305 = add nuw nsw i64 %200, 32
  %306 = add nuw nsw i64 %199, 1
  %307 = icmp eq i64 %306, 29
  br i1 %307, label %308, label %198, !llvm.loop !35

308:                                              ; preds = %304, %409
  %309 = phi i64 [ %411, %409 ], [ 32, %304 ]
  %310 = phi i64 [ %412, %409 ], [ 0, %304 ]
  %311 = phi i64 [ %410, %409 ], [ 0, %304 ]
  br label %312

312:                                              ; preds = %326, %308
  %313 = phi i64 [ 0, %308 ], [ %328, %326 ]
  %314 = phi i64 [ 0, %308 ], [ %327, %326 ]
  %315 = tail call i64 @llvm.umin.i64(i64 %314, i64 1068)
  %316 = shl i64 %313, 5
  %317 = sub i64 %315, %316
  %318 = add i64 %317, 32
  %319 = trunc i64 %314 to i32
  %320 = tail call i32 @llvm.umin.i32(i32 %319, i32 1068)
  %321 = add nuw nsw i32 %320, 32
  %322 = icmp ugt i32 %321, %319
  br i1 %322, label %323, label %326

323:                                              ; preds = %312
  %324 = zext nneg i32 %321 to i64
  %325 = icmp eq i64 %318, 0
  br label %330

326:                                              ; preds = %359, %312
  %327 = add nuw nsw i64 %314, 32
  %328 = add nuw nsw i64 %313, 1
  %329 = icmp eq i64 %328, 35
  br i1 %329, label %409, label %312, !llvm.loop !36

330:                                              ; preds = %359, %323
  %331 = phi i64 [ 0, %323 ], [ %360, %359 ]
  %332 = trunc i64 %331 to i32
  %333 = tail call i32 @llvm.umin.i32(i32 %332, i32 868)
  %334 = add nuw nsw i32 %333, 32
  %335 = icmp ugt i32 %334, %332
  br i1 %335, label %362, label %336

336:                                              ; preds = %330, %356
  %337 = phi i64 [ %357, %356 ], [ %311, %330 ]
  br i1 %325, label %349, label %338

338:                                              ; preds = %336, %338
  %339 = phi i64 [ %347, %338 ], [ 0, %336 ]
  %340 = add i64 %314, %339
  %341 = getelementptr inbounds [1100 x double], ptr %9, i64 %337, i64 %340
  %342 = getelementptr inbounds double, ptr %341, i64 2
  %343 = load <2 x double>, ptr %341, align 8, !tbaa !5
  %344 = load <2 x double>, ptr %342, align 8, !tbaa !5
  %345 = fadd <2 x double> %343, zeroinitializer
  %346 = fadd <2 x double> %344, zeroinitializer
  store <2 x double> %345, ptr %341, align 8, !tbaa !5
  store <2 x double> %346, ptr %342, align 8, !tbaa !5
  %347 = add nuw i64 %339, 4
  %348 = icmp eq i64 %347, %318
  br i1 %348, label %356, label %338, !llvm.loop !37

349:                                              ; preds = %336, %349
  %350 = phi i64 [ %354, %349 ], [ %314, %336 ]
  %351 = getelementptr inbounds [1100 x double], ptr %9, i64 %337, i64 %350
  %352 = load double, ptr %351, align 8, !tbaa !5
  %353 = fadd double %352, 0.000000e+00
  store double %353, ptr %351, align 8, !tbaa !5
  %354 = add nuw nsw i64 %350, 1
  %355 = icmp ult i64 %354, %324
  br i1 %355, label %349, label %356, !llvm.loop !38

356:                                              ; preds = %338, %349
  %357 = add nuw nsw i64 %337, 1
  %358 = icmp eq i64 %357, %309
  br i1 %358, label %359, label %336, !llvm.loop !39

359:                                              ; preds = %356, %385, %406
  %360 = add nuw nsw i64 %331, 32
  %361 = icmp ult i32 %332, 868
  br i1 %361, label %330, label %326, !llvm.loop !40

362:                                              ; preds = %330
  %363 = icmp eq i32 %332, 0
  %364 = zext nneg i32 %334 to i64
  br i1 %363, label %388, label %365

365:                                              ; preds = %362, %385
  %366 = phi i64 [ %386, %385 ], [ %311, %362 ]
  br label %367

367:                                              ; preds = %379, %365
  %368 = phi i64 [ %383, %379 ], [ %314, %365 ]
  br label %369

369:                                              ; preds = %369, %367
  %370 = phi i64 [ %377, %369 ], [ %331, %367 ]
  %371 = phi double [ %376, %369 ], [ 0.000000e+00, %367 ]
  %372 = getelementptr inbounds [900 x double], ptr %3, i64 %366, i64 %370
  %373 = load double, ptr %372, align 8, !tbaa !5
  %374 = getelementptr inbounds [1100 x double], ptr %6, i64 %370, i64 %368
  %375 = load double, ptr %374, align 8, !tbaa !5
  %376 = tail call double @llvm.fmuladd.f64(double %373, double %375, double %371)
  %377 = add nuw nsw i64 %370, 1
  %378 = icmp ult i64 %377, %364
  br i1 %378, label %369, label %379, !llvm.loop !41

379:                                              ; preds = %369
  %380 = getelementptr inbounds [1100 x double], ptr %9, i64 %366, i64 %368
  %381 = load double, ptr %380, align 8, !tbaa !5
  %382 = fadd double %376, %381
  store double %382, ptr %380, align 8, !tbaa !5
  %383 = add nuw nsw i64 %368, 1
  %384 = icmp ult i64 %383, %324
  br i1 %384, label %367, label %385, !llvm.loop !42

385:                                              ; preds = %379
  %386 = add nuw nsw i64 %366, 1
  %387 = icmp eq i64 %386, %309
  br i1 %387, label %359, label %365, !llvm.loop !39

388:                                              ; preds = %362, %406
  %389 = phi i64 [ %407, %406 ], [ %311, %362 ]
  br label %390

390:                                              ; preds = %402, %388
  %391 = phi i64 [ %404, %402 ], [ %314, %388 ]
  br label %392

392:                                              ; preds = %392, %390
  %393 = phi i64 [ %400, %392 ], [ %331, %390 ]
  %394 = phi double [ %399, %392 ], [ 0.000000e+00, %390 ]
  %395 = getelementptr inbounds [900 x double], ptr %3, i64 %389, i64 %393
  %396 = load double, ptr %395, align 8, !tbaa !5
  %397 = getelementptr inbounds [1100 x double], ptr %6, i64 %393, i64 %391
  %398 = load double, ptr %397, align 8, !tbaa !5
  %399 = tail call double @llvm.fmuladd.f64(double %396, double %398, double %394)
  %400 = add nuw nsw i64 %393, 1
  %401 = icmp ult i64 %400, %364
  br i1 %401, label %392, label %402, !llvm.loop !41

402:                                              ; preds = %392
  %403 = getelementptr inbounds [1100 x double], ptr %9, i64 %389, i64 %391
  store double %399, ptr %403, align 8, !tbaa !5
  %404 = add nuw nsw i64 %391, 1
  %405 = icmp ult i64 %404, %324
  br i1 %405, label %390, label %406, !llvm.loop !42

406:                                              ; preds = %402
  %407 = add nuw nsw i64 %389, 1
  %408 = icmp eq i64 %407, %309
  br i1 %408, label %359, label %388, !llvm.loop !39

409:                                              ; preds = %326
  %410 = add nuw nsw i64 %311, 32
  %411 = add nuw nsw i64 %309, 32
  %412 = add nuw nsw i64 %310, 1
  %413 = icmp eq i64 %412, 25
  br i1 %413, label %414, label %308, !llvm.loop !43

414:                                              ; preds = %409
  %415 = load ptr, ptr @stdout, align 8, !tbaa !44
  %416 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %415)
  %417 = load ptr, ptr @stdout, align 8, !tbaa !44
  %418 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %417, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %419

419:                                              ; preds = %438, %414
  %420 = phi i64 [ 0, %414 ], [ %439, %438 ]
  %421 = mul nuw nsw i64 %420, 800
  br label %422

422:                                              ; preds = %431, %419
  %423 = phi i64 [ 0, %419 ], [ %436, %431 ]
  %424 = add nuw nsw i64 %423, %421
  %425 = trunc i64 %424 to i32
  %426 = urem i32 %425, 20
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %422
  %429 = load ptr, ptr @stdout, align 8, !tbaa !44
  %430 = tail call i32 @fputc(i32 10, ptr %429)
  br label %431

431:                                              ; preds = %428, %422
  %432 = load ptr, ptr @stdout, align 8, !tbaa !44
  %433 = getelementptr inbounds [1100 x double], ptr %9, i64 %420, i64 %423
  %434 = load double, ptr %433, align 8, !tbaa !5
  %435 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %432, ptr noundef nonnull @.str.4, double noundef %434)
  %436 = add nuw nsw i64 %423, 1
  %437 = icmp eq i64 %436, 1100
  br i1 %437, label %438, label %422, !llvm.loop !46

438:                                              ; preds = %431
  %439 = add nuw nsw i64 %420, 1
  %440 = icmp eq i64 %439, 800
  br i1 %440, label %441, label %419, !llvm.loop !47

441:                                              ; preds = %438
  %442 = load ptr, ptr @stdout, align 8, !tbaa !44
  %443 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %442, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %444 = load ptr, ptr @stdout, align 8, !tbaa !44
  %445 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %444)
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

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
