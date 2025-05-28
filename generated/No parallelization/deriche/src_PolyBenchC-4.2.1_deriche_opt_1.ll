; ModuleID = 'outputs/src_PolyBenchC-4.2.1_deriche_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_deriche_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"imgOut\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%0.2f \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #6
  br label %7

7:                                                ; preds = %2, %25
  %8 = phi i64 [ 0, %2 ], [ %26, %25 ]
  %9 = mul nuw nsw i64 %8, 313
  %10 = insertelement <4 x i64> poison, i64 %9, i64 0
  %11 = shufflevector <4 x i64> %10, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i64 [ 0, %7 ], [ %22, %12 ]
  %14 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %7 ], [ %23, %12 ]
  %15 = mul nuw nsw <4 x i64> %14, <i64 991, i64 991, i64 991, i64 991>
  %16 = add nuw nsw <4 x i64> %15, %11
  %17 = trunc <4 x i64> %16 to <4 x i32>
  %18 = and <4 x i32> %17, <i32 65535, i32 65535, i32 65535, i32 65535>
  %19 = sitofp <4 x i32> %18 to <4 x float>
  %20 = fdiv <4 x float> %19, <float 6.553500e+04, float 6.553500e+04, float 6.553500e+04, float 6.553500e+04>
  %21 = getelementptr inbounds [2160 x float], ptr %3, i64 %8, i64 %13
  store <4 x float> %20, ptr %21, align 4, !tbaa !5
  %22 = add nuw i64 %13, 4
  %23 = add <4 x i64> %14, <i64 4, i64 4, i64 4, i64 4>
  %24 = icmp eq i64 %22, 2160
  br i1 %24, label %25, label %12, !llvm.loop !9

25:                                               ; preds = %12
  %26 = add nuw nsw i64 %8, 1
  %27 = icmp eq i64 %26, 4096
  br i1 %27, label %28, label %7, !llvm.loop !13

28:                                               ; preds = %25, %52
  %29 = phi i64 [ %53, %52 ], [ 0, %25 ]
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %50, %30 ]
  %32 = phi float [ 0.000000e+00, %28 ], [ %44, %30 ]
  %33 = phi float [ 0.000000e+00, %28 ], [ %48, %30 ]
  %34 = phi float [ 0.000000e+00, %28 ], [ %40, %30 ]
  %35 = getelementptr inbounds [2160 x float], ptr %3, i64 %29, i64 %31
  %36 = load float, ptr %35, align 4, !tbaa !5
  %37 = fmul float %32, 0x3FBC36A980000000
  %38 = tail call float @llvm.fmuladd.f32(float %36, float 0xBFC826B880000000, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %33, float 0x3FEAE89FA0000000, float %38)
  %40 = tail call float @llvm.fmuladd.f32(float %34, float 0xBFE368B300000000, float %39)
  %41 = getelementptr inbounds [2160 x float], ptr %5, i64 %29, i64 %31
  store float %40, ptr %41, align 4, !tbaa !5
  %42 = or disjoint i64 %31, 1
  %43 = getelementptr inbounds [2160 x float], ptr %3, i64 %29, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !5
  %45 = fmul float %36, 0x3FBC36A980000000
  %46 = tail call float @llvm.fmuladd.f32(float %44, float 0xBFC826B880000000, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %40, float 0x3FEAE89FA0000000, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %33, float 0xBFE368B300000000, float %47)
  %49 = getelementptr inbounds [2160 x float], ptr %5, i64 %29, i64 %42
  store float %48, ptr %49, align 4, !tbaa !5
  %50 = add nuw nsw i64 %31, 2
  %51 = icmp ult i64 %31, 2158
  br i1 %51, label %30, label %52, !llvm.loop !14

52:                                               ; preds = %30
  %53 = add nuw nsw i64 %29, 1
  %54 = icmp eq i64 %53, 4096
  br i1 %54, label %55, label %28, !llvm.loop !15

55:                                               ; preds = %52, %80
  %56 = phi i64 [ %81, %80 ], [ 0, %52 ]
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i64 [ 2159, %55 ], [ %78, %57 ]
  %59 = phi float [ 0.000000e+00, %55 ], [ %77, %57 ]
  %60 = phi float [ 0.000000e+00, %55 ], [ %69, %57 ]
  %61 = phi float [ 0.000000e+00, %55 ], [ %74, %57 ]
  %62 = phi float [ 0.000000e+00, %55 ], [ %66, %57 ]
  %63 = fmul float %60, 0x3FBD4C0500000000
  %64 = tail call float @llvm.fmuladd.f32(float %59, float 0xBFC782E280000000, float %63)
  %65 = tail call float @llvm.fmuladd.f32(float %61, float 0x3FEAE89FA0000000, float %64)
  %66 = tail call float @llvm.fmuladd.f32(float %62, float 0xBFE368B300000000, float %65)
  %67 = getelementptr inbounds [2160 x float], ptr %6, i64 %56, i64 %58
  store float %66, ptr %67, align 4, !tbaa !5
  %68 = getelementptr inbounds [2160 x float], ptr %3, i64 %56, i64 %58
  %69 = load float, ptr %68, align 4, !tbaa !5
  %70 = add nsw i64 %58, -1
  %71 = fmul float %59, 0x3FBD4C0500000000
  %72 = tail call float @llvm.fmuladd.f32(float %69, float 0xBFC782E280000000, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %66, float 0x3FEAE89FA0000000, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %61, float 0xBFE368B300000000, float %73)
  %75 = getelementptr inbounds [2160 x float], ptr %6, i64 %56, i64 %70
  store float %74, ptr %75, align 4, !tbaa !5
  %76 = getelementptr inbounds [2160 x float], ptr %3, i64 %56, i64 %70
  %77 = load float, ptr %76, align 4, !tbaa !5
  %78 = add nsw i64 %58, -2
  %79 = icmp ugt i64 %58, 1
  br i1 %79, label %57, label %80, !llvm.loop !16

80:                                               ; preds = %57
  %81 = add nuw nsw i64 %56, 1
  %82 = icmp eq i64 %81, 4096
  br i1 %82, label %83, label %55, !llvm.loop !17

83:                                               ; preds = %80
  %84 = getelementptr i8, ptr %4, i64 35389440
  %85 = getelementptr i8, ptr %5, i64 35389440
  %86 = getelementptr i8, ptr %6, i64 35389440
  %87 = icmp ult ptr %4, %85
  %88 = icmp ult ptr %5, %84
  %89 = and i1 %87, %88
  %90 = icmp ult ptr %4, %86
  %91 = icmp ult ptr %6, %84
  %92 = and i1 %90, %91
  %93 = or i1 %89, %92
  %94 = getelementptr float, ptr %4, i64 -1
  br label %95

95:                                               ; preds = %130, %83
  %96 = phi i64 [ %131, %130 ], [ 0, %83 ]
  br i1 %93, label %113, label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ %111, %97 ], [ 0, %95 ]
  %99 = shl i64 %98, 1
  %100 = getelementptr inbounds [2160 x float], ptr %5, i64 %96, i64 %99
  %101 = load <8 x float>, ptr %100, align 4, !tbaa !5
  %102 = getelementptr inbounds [2160 x float], ptr %6, i64 %96, i64 %99
  %103 = load <8 x float>, ptr %102, align 4, !tbaa !5
  %104 = fadd <8 x float> %101, %103
  %105 = shufflevector <8 x float> %104, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %106 = or disjoint i64 %99, 1
  %107 = fadd <8 x float> %101, %103
  %108 = shufflevector <8 x float> %107, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %109 = getelementptr [2160 x float], ptr %94, i64 %96, i64 %106
  %110 = shufflevector <4 x float> %105, <4 x float> %108, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %110, ptr %109, align 4, !tbaa !5
  %111 = add nuw i64 %98, 4
  %112 = icmp eq i64 %111, 1080
  br i1 %112, label %130, label %97, !llvm.loop !18

113:                                              ; preds = %95, %113
  %114 = phi i64 [ %128, %113 ], [ 0, %95 ]
  %115 = getelementptr inbounds [2160 x float], ptr %5, i64 %96, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !5
  %117 = getelementptr inbounds [2160 x float], ptr %6, i64 %96, i64 %114
  %118 = load float, ptr %117, align 4, !tbaa !5
  %119 = fadd float %116, %118
  %120 = getelementptr inbounds [2160 x float], ptr %4, i64 %96, i64 %114
  store float %119, ptr %120, align 4, !tbaa !5
  %121 = or disjoint i64 %114, 1
  %122 = getelementptr inbounds [2160 x float], ptr %5, i64 %96, i64 %121
  %123 = load float, ptr %122, align 4, !tbaa !5
  %124 = getelementptr inbounds [2160 x float], ptr %6, i64 %96, i64 %121
  %125 = load float, ptr %124, align 4, !tbaa !5
  %126 = fadd float %123, %125
  %127 = getelementptr inbounds [2160 x float], ptr %4, i64 %96, i64 %121
  store float %126, ptr %127, align 4, !tbaa !5
  %128 = add nuw nsw i64 %114, 2
  %129 = icmp ult i64 %114, 2158
  br i1 %129, label %113, label %130, !llvm.loop !19

130:                                              ; preds = %97, %113
  %131 = add nuw nsw i64 %96, 1
  %132 = icmp eq i64 %131, 4096
  br i1 %132, label %133, label %95, !llvm.loop !20

133:                                              ; preds = %130, %157
  %134 = phi i64 [ %158, %157 ], [ 0, %130 ]
  br label %135

135:                                              ; preds = %135, %133
  %136 = phi i64 [ 0, %133 ], [ %155, %135 ]
  %137 = phi float [ 0.000000e+00, %133 ], [ %153, %135 ]
  %138 = phi float [ 0.000000e+00, %133 ], [ %145, %135 ]
  %139 = phi float [ 0.000000e+00, %133 ], [ %149, %135 ]
  %140 = getelementptr inbounds [2160 x float], ptr %4, i64 %136, i64 %134
  %141 = load float, ptr %140, align 4, !tbaa !5
  %142 = fmul float %139, 0x3FBC36A980000000
  %143 = tail call float @llvm.fmuladd.f32(float %141, float 0xBFC826B880000000, float %142)
  %144 = tail call float @llvm.fmuladd.f32(float %137, float 0x3FEAE89FA0000000, float %143)
  %145 = tail call float @llvm.fmuladd.f32(float %138, float 0xBFE368B300000000, float %144)
  %146 = getelementptr inbounds [2160 x float], ptr %5, i64 %136, i64 %134
  store float %145, ptr %146, align 4, !tbaa !5
  %147 = or disjoint i64 %136, 1
  %148 = getelementptr inbounds [2160 x float], ptr %4, i64 %147, i64 %134
  %149 = load float, ptr %148, align 4, !tbaa !5
  %150 = fmul float %141, 0x3FBC36A980000000
  %151 = tail call float @llvm.fmuladd.f32(float %149, float 0xBFC826B880000000, float %150)
  %152 = tail call float @llvm.fmuladd.f32(float %145, float 0x3FEAE89FA0000000, float %151)
  %153 = tail call float @llvm.fmuladd.f32(float %137, float 0xBFE368B300000000, float %152)
  %154 = getelementptr inbounds [2160 x float], ptr %5, i64 %147, i64 %134
  store float %153, ptr %154, align 4, !tbaa !5
  %155 = add nuw nsw i64 %136, 2
  %156 = icmp ult i64 %136, 4094
  br i1 %156, label %135, label %157, !llvm.loop !21

157:                                              ; preds = %135
  %158 = add nuw nsw i64 %134, 1
  %159 = icmp eq i64 %158, 2160
  br i1 %159, label %160, label %133, !llvm.loop !22

160:                                              ; preds = %157, %185
  %161 = phi i64 [ %186, %185 ], [ 0, %157 ]
  br label %162

162:                                              ; preds = %162, %160
  %163 = phi i64 [ 4095, %160 ], [ %183, %162 ]
  %164 = phi float [ 0.000000e+00, %160 ], [ %179, %162 ]
  %165 = phi float [ 0.000000e+00, %160 ], [ %171, %162 ]
  %166 = phi float [ 0.000000e+00, %160 ], [ %182, %162 ]
  %167 = phi float [ 0.000000e+00, %160 ], [ %174, %162 ]
  %168 = fmul float %167, 0x3FBD4C0500000000
  %169 = tail call float @llvm.fmuladd.f32(float %166, float 0xBFC782E280000000, float %168)
  %170 = tail call float @llvm.fmuladd.f32(float %164, float 0x3FEAE89FA0000000, float %169)
  %171 = tail call float @llvm.fmuladd.f32(float %165, float 0xBFE368B300000000, float %170)
  %172 = getelementptr inbounds [2160 x float], ptr %6, i64 %163, i64 %161
  store float %171, ptr %172, align 4, !tbaa !5
  %173 = getelementptr inbounds [2160 x float], ptr %4, i64 %163, i64 %161
  %174 = load float, ptr %173, align 4, !tbaa !5
  %175 = add nsw i64 %163, -1
  %176 = fmul float %166, 0x3FBD4C0500000000
  %177 = tail call float @llvm.fmuladd.f32(float %174, float 0xBFC782E280000000, float %176)
  %178 = tail call float @llvm.fmuladd.f32(float %171, float 0x3FEAE89FA0000000, float %177)
  %179 = tail call float @llvm.fmuladd.f32(float %164, float 0xBFE368B300000000, float %178)
  %180 = getelementptr inbounds [2160 x float], ptr %6, i64 %175, i64 %161
  store float %179, ptr %180, align 4, !tbaa !5
  %181 = getelementptr inbounds [2160 x float], ptr %4, i64 %175, i64 %161
  %182 = load float, ptr %181, align 4, !tbaa !5
  %183 = add nsw i64 %163, -2
  %184 = icmp ugt i64 %163, 1
  br i1 %184, label %162, label %185, !llvm.loop !23

185:                                              ; preds = %162
  %186 = add nuw nsw i64 %161, 1
  %187 = icmp eq i64 %186, 2160
  br i1 %187, label %188, label %160, !llvm.loop !24

188:                                              ; preds = %185
  %189 = getelementptr i8, ptr %4, i64 35389440
  %190 = getelementptr i8, ptr %5, i64 35389440
  %191 = getelementptr i8, ptr %6, i64 35389440
  %192 = icmp ult ptr %4, %190
  %193 = icmp ult ptr %5, %189
  %194 = and i1 %192, %193
  %195 = icmp ult ptr %4, %191
  %196 = icmp ult ptr %6, %189
  %197 = and i1 %195, %196
  %198 = or i1 %194, %197
  %199 = getelementptr float, ptr %4, i64 -1
  br label %200

200:                                              ; preds = %235, %188
  %201 = phi i64 [ %236, %235 ], [ 0, %188 ]
  br i1 %198, label %218, label %202

202:                                              ; preds = %200, %202
  %203 = phi i64 [ %216, %202 ], [ 0, %200 ]
  %204 = shl i64 %203, 1
  %205 = getelementptr inbounds [2160 x float], ptr %5, i64 %201, i64 %204
  %206 = load <8 x float>, ptr %205, align 4, !tbaa !5
  %207 = getelementptr inbounds [2160 x float], ptr %6, i64 %201, i64 %204
  %208 = load <8 x float>, ptr %207, align 4, !tbaa !5
  %209 = fadd <8 x float> %206, %208
  %210 = shufflevector <8 x float> %209, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %211 = or disjoint i64 %204, 1
  %212 = fadd <8 x float> %206, %208
  %213 = shufflevector <8 x float> %212, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %214 = getelementptr [2160 x float], ptr %199, i64 %201, i64 %211
  %215 = shufflevector <4 x float> %210, <4 x float> %213, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %215, ptr %214, align 4, !tbaa !5
  %216 = add nuw i64 %203, 4
  %217 = icmp eq i64 %216, 1080
  br i1 %217, label %235, label %202, !llvm.loop !25

218:                                              ; preds = %200, %218
  %219 = phi i64 [ %233, %218 ], [ 0, %200 ]
  %220 = getelementptr inbounds [2160 x float], ptr %5, i64 %201, i64 %219
  %221 = load float, ptr %220, align 4, !tbaa !5
  %222 = getelementptr inbounds [2160 x float], ptr %6, i64 %201, i64 %219
  %223 = load float, ptr %222, align 4, !tbaa !5
  %224 = fadd float %221, %223
  %225 = getelementptr inbounds [2160 x float], ptr %4, i64 %201, i64 %219
  store float %224, ptr %225, align 4, !tbaa !5
  %226 = or disjoint i64 %219, 1
  %227 = getelementptr inbounds [2160 x float], ptr %5, i64 %201, i64 %226
  %228 = load float, ptr %227, align 4, !tbaa !5
  %229 = getelementptr inbounds [2160 x float], ptr %6, i64 %201, i64 %226
  %230 = load float, ptr %229, align 4, !tbaa !5
  %231 = fadd float %228, %230
  %232 = getelementptr inbounds [2160 x float], ptr %4, i64 %201, i64 %226
  store float %231, ptr %232, align 4, !tbaa !5
  %233 = add nuw nsw i64 %219, 2
  %234 = icmp ult i64 %219, 2158
  br i1 %234, label %218, label %235, !llvm.loop !26

235:                                              ; preds = %202, %218
  %236 = add nuw nsw i64 %201, 1
  %237 = icmp eq i64 %236, 4096
  br i1 %237, label %238, label %200, !llvm.loop !27

238:                                              ; preds = %235
  %239 = load ptr, ptr @stdout, align 8, !tbaa !28
  %240 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %239)
  %241 = load ptr, ptr @stdout, align 8, !tbaa !28
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %243

243:                                              ; preds = %263, %238
  %244 = phi i64 [ 0, %238 ], [ %264, %263 ]
  %245 = mul nuw nsw i64 %244, 2160
  br label %246

246:                                              ; preds = %255, %243
  %247 = phi i64 [ 0, %243 ], [ %261, %255 ]
  %248 = add nuw nsw i64 %247, %245
  %249 = trunc i64 %248 to i32
  %250 = urem i32 %249, 20
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %246
  %253 = load ptr, ptr @stdout, align 8, !tbaa !28
  %254 = tail call i32 @fputc(i32 10, ptr %253)
  br label %255

255:                                              ; preds = %252, %246
  %256 = load ptr, ptr @stdout, align 8, !tbaa !28
  %257 = getelementptr inbounds [2160 x float], ptr %4, i64 %244, i64 %247
  %258 = load float, ptr %257, align 4, !tbaa !5
  %259 = fpext float %258 to double
  %260 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %256, ptr noundef nonnull @.str.4, double noundef %259)
  %261 = add nuw nsw i64 %247, 1
  %262 = icmp eq i64 %261, 2160
  br i1 %262, label %263, label %246, !llvm.loop !30

263:                                              ; preds = %255
  %264 = add nuw nsw i64 %244, 1
  %265 = icmp eq i64 %264, 4096
  br i1 %265, label %266, label %243, !llvm.loop !31

266:                                              ; preds = %263
  %267 = load ptr, ptr @stdout, align 8, !tbaa !28
  %268 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %267, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %269 = load ptr, ptr @stdout, align 8, !tbaa !28
  %270 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %269)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef nonnull %4) #6
  tail call void @free(ptr noundef %5) #6
  tail call void @free(ptr noundef %6) #6
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10, !11, !12}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !7, i64 0}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
