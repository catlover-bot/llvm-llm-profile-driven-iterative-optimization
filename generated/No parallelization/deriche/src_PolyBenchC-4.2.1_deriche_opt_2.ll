; ModuleID = 'outputs/src_PolyBenchC-4.2.1_deriche_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_deriche_opt_2.c"
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
  %5 = ptrtoint ptr %4 to i64
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #6
  %7 = ptrtoint ptr %6 to i64
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 8847360, i32 noundef 4) #6
  %9 = ptrtoint ptr %8 to i64
  br label %10

10:                                               ; preds = %2, %28
  %11 = phi i64 [ 0, %2 ], [ %29, %28 ]
  %12 = mul nuw nsw i64 %11, 313
  %13 = insertelement <4 x i64> poison, i64 %12, i64 0
  %14 = shufflevector <4 x i64> %13, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi i64 [ 0, %10 ], [ %25, %15 ]
  %17 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %10 ], [ %26, %15 ]
  %18 = mul nuw nsw <4 x i64> %17, <i64 991, i64 991, i64 991, i64 991>
  %19 = add nuw nsw <4 x i64> %18, %14
  %20 = trunc <4 x i64> %19 to <4 x i32>
  %21 = and <4 x i32> %20, <i32 65535, i32 65535, i32 65535, i32 65535>
  %22 = sitofp <4 x i32> %21 to <4 x float>
  %23 = fdiv <4 x float> %22, <float 6.553500e+04, float 6.553500e+04, float 6.553500e+04, float 6.553500e+04>
  %24 = getelementptr inbounds [2160 x float], ptr %3, i64 %11, i64 %16
  store <4 x float> %23, ptr %24, align 4, !tbaa !5
  %25 = add nuw i64 %16, 4
  %26 = add <4 x i64> %17, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %25, 2160
  br i1 %27, label %28, label %15, !llvm.loop !9

28:                                               ; preds = %15
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp eq i64 %29, 4096
  br i1 %30, label %31, label %10, !llvm.loop !13

31:                                               ; preds = %28, %55
  %32 = phi i64 [ %56, %55 ], [ 0, %28 ]
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %53, %33 ]
  %35 = phi float [ 0.000000e+00, %31 ], [ %47, %33 ]
  %36 = phi float [ 0.000000e+00, %31 ], [ %51, %33 ]
  %37 = phi float [ 0.000000e+00, %31 ], [ %43, %33 ]
  %38 = getelementptr inbounds [2160 x float], ptr %3, i64 %32, i64 %34
  %39 = load float, ptr %38, align 4, !tbaa !5
  %40 = fmul float %35, 0x3FBC36A980000000
  %41 = tail call float @llvm.fmuladd.f32(float %39, float 0xBFC826B880000000, float %40)
  %42 = tail call float @llvm.fmuladd.f32(float %36, float 0x3FEAE89FA0000000, float %41)
  %43 = tail call float @llvm.fmuladd.f32(float %37, float 0xBFE368B300000000, float %42)
  %44 = getelementptr inbounds [2160 x float], ptr %6, i64 %32, i64 %34
  store float %43, ptr %44, align 4, !tbaa !5
  %45 = or disjoint i64 %34, 1
  %46 = getelementptr inbounds [2160 x float], ptr %3, i64 %32, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !5
  %48 = fmul float %39, 0x3FBC36A980000000
  %49 = tail call float @llvm.fmuladd.f32(float %47, float 0xBFC826B880000000, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %43, float 0x3FEAE89FA0000000, float %49)
  %51 = tail call float @llvm.fmuladd.f32(float %36, float 0xBFE368B300000000, float %50)
  %52 = getelementptr inbounds [2160 x float], ptr %6, i64 %32, i64 %45
  store float %51, ptr %52, align 4, !tbaa !5
  %53 = add nuw nsw i64 %34, 2
  %54 = icmp eq i64 %53, 2160
  br i1 %54, label %55, label %33, !llvm.loop !14

55:                                               ; preds = %33
  %56 = add nuw nsw i64 %32, 1
  %57 = icmp eq i64 %56, 4096
  br i1 %57, label %58, label %31, !llvm.loop !15

58:                                               ; preds = %55, %83
  %59 = phi i64 [ %84, %83 ], [ 0, %55 ]
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i64 [ 2159, %58 ], [ %81, %60 ]
  %62 = phi float [ 0.000000e+00, %58 ], [ %80, %60 ]
  %63 = phi float [ 0.000000e+00, %58 ], [ %72, %60 ]
  %64 = phi float [ 0.000000e+00, %58 ], [ %77, %60 ]
  %65 = phi float [ 0.000000e+00, %58 ], [ %69, %60 ]
  %66 = fmul float %63, 0x3FBD4C0500000000
  %67 = tail call float @llvm.fmuladd.f32(float %62, float 0xBFC782E280000000, float %66)
  %68 = tail call float @llvm.fmuladd.f32(float %64, float 0x3FEAE89FA0000000, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %65, float 0xBFE368B300000000, float %68)
  %70 = getelementptr inbounds [2160 x float], ptr %8, i64 %59, i64 %61
  store float %69, ptr %70, align 4, !tbaa !5
  %71 = getelementptr inbounds [2160 x float], ptr %3, i64 %59, i64 %61
  %72 = load float, ptr %71, align 4, !tbaa !5
  %73 = add nsw i64 %61, -1
  %74 = fmul float %62, 0x3FBD4C0500000000
  %75 = tail call float @llvm.fmuladd.f32(float %72, float 0xBFC782E280000000, float %74)
  %76 = tail call float @llvm.fmuladd.f32(float %69, float 0x3FEAE89FA0000000, float %75)
  %77 = tail call float @llvm.fmuladd.f32(float %64, float 0xBFE368B300000000, float %76)
  %78 = getelementptr inbounds [2160 x float], ptr %8, i64 %59, i64 %73
  store float %77, ptr %78, align 4, !tbaa !5
  %79 = getelementptr inbounds [2160 x float], ptr %3, i64 %59, i64 %73
  %80 = load float, ptr %79, align 4, !tbaa !5
  %81 = add nsw i64 %61, -2
  %82 = icmp eq i64 %73, 0
  br i1 %82, label %83, label %60, !llvm.loop !16

83:                                               ; preds = %60
  %84 = add nuw nsw i64 %59, 1
  %85 = icmp eq i64 %84, 4096
  br i1 %85, label %86, label %58, !llvm.loop !17

86:                                               ; preds = %83
  %87 = sub i64 %5, %7
  %88 = sub i64 %5, %9
  %89 = icmp ult i64 %87, 32
  %90 = icmp ult i64 %88, 32
  %91 = or i1 %89, %90
  br label %92

92:                                               ; preds = %140, %86
  %93 = phi i64 [ %141, %140 ], [ 0, %86 ]
  br i1 %91, label %123, label %94

94:                                               ; preds = %92, %94
  %95 = phi i64 [ %121, %94 ], [ 0, %92 ]
  %96 = getelementptr inbounds [2160 x float], ptr %6, i64 %93, i64 %95
  %97 = getelementptr inbounds float, ptr %96, i64 4
  %98 = load <4 x float>, ptr %96, align 4, !tbaa !5
  %99 = load <4 x float>, ptr %97, align 4, !tbaa !5
  %100 = getelementptr inbounds [2160 x float], ptr %8, i64 %93, i64 %95
  %101 = getelementptr inbounds float, ptr %100, i64 4
  %102 = load <4 x float>, ptr %100, align 4, !tbaa !5
  %103 = load <4 x float>, ptr %101, align 4, !tbaa !5
  %104 = fadd <4 x float> %98, %102
  %105 = fadd <4 x float> %99, %103
  %106 = getelementptr inbounds [2160 x float], ptr %4, i64 %93, i64 %95
  %107 = getelementptr inbounds float, ptr %106, i64 4
  store <4 x float> %104, ptr %106, align 4, !tbaa !5
  store <4 x float> %105, ptr %107, align 4, !tbaa !5
  %108 = or disjoint i64 %95, 8
  %109 = getelementptr inbounds [2160 x float], ptr %6, i64 %93, i64 %108
  %110 = getelementptr inbounds float, ptr %109, i64 4
  %111 = load <4 x float>, ptr %109, align 4, !tbaa !5
  %112 = load <4 x float>, ptr %110, align 4, !tbaa !5
  %113 = getelementptr inbounds [2160 x float], ptr %8, i64 %93, i64 %108
  %114 = getelementptr inbounds float, ptr %113, i64 4
  %115 = load <4 x float>, ptr %113, align 4, !tbaa !5
  %116 = load <4 x float>, ptr %114, align 4, !tbaa !5
  %117 = fadd <4 x float> %111, %115
  %118 = fadd <4 x float> %112, %116
  %119 = getelementptr inbounds [2160 x float], ptr %4, i64 %93, i64 %108
  %120 = getelementptr inbounds float, ptr %119, i64 4
  store <4 x float> %117, ptr %119, align 4, !tbaa !5
  store <4 x float> %118, ptr %120, align 4, !tbaa !5
  %121 = add nuw nsw i64 %95, 16
  %122 = icmp eq i64 %121, 2160
  br i1 %122, label %140, label %94, !llvm.loop !18

123:                                              ; preds = %92, %123
  %124 = phi i64 [ %138, %123 ], [ 0, %92 ]
  %125 = getelementptr inbounds [2160 x float], ptr %6, i64 %93, i64 %124
  %126 = load float, ptr %125, align 4, !tbaa !5
  %127 = getelementptr inbounds [2160 x float], ptr %8, i64 %93, i64 %124
  %128 = load float, ptr %127, align 4, !tbaa !5
  %129 = fadd float %126, %128
  %130 = getelementptr inbounds [2160 x float], ptr %4, i64 %93, i64 %124
  store float %129, ptr %130, align 4, !tbaa !5
  %131 = or disjoint i64 %124, 1
  %132 = getelementptr inbounds [2160 x float], ptr %6, i64 %93, i64 %131
  %133 = load float, ptr %132, align 4, !tbaa !5
  %134 = getelementptr inbounds [2160 x float], ptr %8, i64 %93, i64 %131
  %135 = load float, ptr %134, align 4, !tbaa !5
  %136 = fadd float %133, %135
  %137 = getelementptr inbounds [2160 x float], ptr %4, i64 %93, i64 %131
  store float %136, ptr %137, align 4, !tbaa !5
  %138 = add nuw nsw i64 %124, 2
  %139 = icmp eq i64 %138, 2160
  br i1 %139, label %140, label %123, !llvm.loop !19

140:                                              ; preds = %94, %123
  %141 = add nuw nsw i64 %93, 1
  %142 = icmp eq i64 %141, 4096
  br i1 %142, label %143, label %92, !llvm.loop !20

143:                                              ; preds = %140, %167
  %144 = phi i64 [ %168, %167 ], [ 0, %140 ]
  br label %145

145:                                              ; preds = %145, %143
  %146 = phi i64 [ 0, %143 ], [ %165, %145 ]
  %147 = phi float [ 0.000000e+00, %143 ], [ %163, %145 ]
  %148 = phi float [ 0.000000e+00, %143 ], [ %155, %145 ]
  %149 = phi float [ 0.000000e+00, %143 ], [ %159, %145 ]
  %150 = getelementptr inbounds [2160 x float], ptr %4, i64 %146, i64 %144
  %151 = load float, ptr %150, align 4, !tbaa !5
  %152 = fmul float %149, 0x3FBC36A980000000
  %153 = tail call float @llvm.fmuladd.f32(float %151, float 0xBFC826B880000000, float %152)
  %154 = tail call float @llvm.fmuladd.f32(float %147, float 0x3FEAE89FA0000000, float %153)
  %155 = tail call float @llvm.fmuladd.f32(float %148, float 0xBFE368B300000000, float %154)
  %156 = getelementptr inbounds [2160 x float], ptr %6, i64 %146, i64 %144
  store float %155, ptr %156, align 4, !tbaa !5
  %157 = or disjoint i64 %146, 1
  %158 = getelementptr inbounds [2160 x float], ptr %4, i64 %157, i64 %144
  %159 = load float, ptr %158, align 4, !tbaa !5
  %160 = fmul float %151, 0x3FBC36A980000000
  %161 = tail call float @llvm.fmuladd.f32(float %159, float 0xBFC826B880000000, float %160)
  %162 = tail call float @llvm.fmuladd.f32(float %155, float 0x3FEAE89FA0000000, float %161)
  %163 = tail call float @llvm.fmuladd.f32(float %147, float 0xBFE368B300000000, float %162)
  %164 = getelementptr inbounds [2160 x float], ptr %6, i64 %157, i64 %144
  store float %163, ptr %164, align 4, !tbaa !5
  %165 = add nuw nsw i64 %146, 2
  %166 = icmp eq i64 %165, 4096
  br i1 %166, label %167, label %145, !llvm.loop !21

167:                                              ; preds = %145
  %168 = add nuw nsw i64 %144, 1
  %169 = icmp eq i64 %168, 2160
  br i1 %169, label %170, label %143, !llvm.loop !22

170:                                              ; preds = %167, %195
  %171 = phi i64 [ %196, %195 ], [ 0, %167 ]
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i64 [ 4095, %170 ], [ %193, %172 ]
  %174 = phi float [ 0.000000e+00, %170 ], [ %189, %172 ]
  %175 = phi float [ 0.000000e+00, %170 ], [ %181, %172 ]
  %176 = phi float [ 0.000000e+00, %170 ], [ %192, %172 ]
  %177 = phi float [ 0.000000e+00, %170 ], [ %184, %172 ]
  %178 = fmul float %177, 0x3FBD4C0500000000
  %179 = tail call float @llvm.fmuladd.f32(float %176, float 0xBFC782E280000000, float %178)
  %180 = tail call float @llvm.fmuladd.f32(float %174, float 0x3FEAE89FA0000000, float %179)
  %181 = tail call float @llvm.fmuladd.f32(float %175, float 0xBFE368B300000000, float %180)
  %182 = getelementptr inbounds [2160 x float], ptr %8, i64 %173, i64 %171
  store float %181, ptr %182, align 4, !tbaa !5
  %183 = getelementptr inbounds [2160 x float], ptr %4, i64 %173, i64 %171
  %184 = load float, ptr %183, align 4, !tbaa !5
  %185 = add nsw i64 %173, -1
  %186 = fmul float %176, 0x3FBD4C0500000000
  %187 = tail call float @llvm.fmuladd.f32(float %184, float 0xBFC782E280000000, float %186)
  %188 = tail call float @llvm.fmuladd.f32(float %181, float 0x3FEAE89FA0000000, float %187)
  %189 = tail call float @llvm.fmuladd.f32(float %174, float 0xBFE368B300000000, float %188)
  %190 = getelementptr inbounds [2160 x float], ptr %8, i64 %185, i64 %171
  store float %189, ptr %190, align 4, !tbaa !5
  %191 = getelementptr inbounds [2160 x float], ptr %4, i64 %185, i64 %171
  %192 = load float, ptr %191, align 4, !tbaa !5
  %193 = add nsw i64 %173, -2
  %194 = icmp eq i64 %185, 0
  br i1 %194, label %195, label %172, !llvm.loop !23

195:                                              ; preds = %172
  %196 = add nuw nsw i64 %171, 1
  %197 = icmp eq i64 %196, 2160
  br i1 %197, label %198, label %170, !llvm.loop !24

198:                                              ; preds = %195
  %199 = sub i64 %5, %7
  %200 = sub i64 %5, %9
  %201 = icmp ult i64 %199, 32
  %202 = icmp ult i64 %200, 32
  %203 = or i1 %201, %202
  br label %204

204:                                              ; preds = %252, %198
  %205 = phi i64 [ %253, %252 ], [ 0, %198 ]
  br i1 %203, label %235, label %206

206:                                              ; preds = %204, %206
  %207 = phi i64 [ %233, %206 ], [ 0, %204 ]
  %208 = getelementptr inbounds [2160 x float], ptr %6, i64 %205, i64 %207
  %209 = getelementptr inbounds float, ptr %208, i64 4
  %210 = load <4 x float>, ptr %208, align 4, !tbaa !5
  %211 = load <4 x float>, ptr %209, align 4, !tbaa !5
  %212 = getelementptr inbounds [2160 x float], ptr %8, i64 %205, i64 %207
  %213 = getelementptr inbounds float, ptr %212, i64 4
  %214 = load <4 x float>, ptr %212, align 4, !tbaa !5
  %215 = load <4 x float>, ptr %213, align 4, !tbaa !5
  %216 = fadd <4 x float> %210, %214
  %217 = fadd <4 x float> %211, %215
  %218 = getelementptr inbounds [2160 x float], ptr %4, i64 %205, i64 %207
  %219 = getelementptr inbounds float, ptr %218, i64 4
  store <4 x float> %216, ptr %218, align 4, !tbaa !5
  store <4 x float> %217, ptr %219, align 4, !tbaa !5
  %220 = or disjoint i64 %207, 8
  %221 = getelementptr inbounds [2160 x float], ptr %6, i64 %205, i64 %220
  %222 = getelementptr inbounds float, ptr %221, i64 4
  %223 = load <4 x float>, ptr %221, align 4, !tbaa !5
  %224 = load <4 x float>, ptr %222, align 4, !tbaa !5
  %225 = getelementptr inbounds [2160 x float], ptr %8, i64 %205, i64 %220
  %226 = getelementptr inbounds float, ptr %225, i64 4
  %227 = load <4 x float>, ptr %225, align 4, !tbaa !5
  %228 = load <4 x float>, ptr %226, align 4, !tbaa !5
  %229 = fadd <4 x float> %223, %227
  %230 = fadd <4 x float> %224, %228
  %231 = getelementptr inbounds [2160 x float], ptr %4, i64 %205, i64 %220
  %232 = getelementptr inbounds float, ptr %231, i64 4
  store <4 x float> %229, ptr %231, align 4, !tbaa !5
  store <4 x float> %230, ptr %232, align 4, !tbaa !5
  %233 = add nuw nsw i64 %207, 16
  %234 = icmp eq i64 %233, 2160
  br i1 %234, label %252, label %206, !llvm.loop !25

235:                                              ; preds = %204, %235
  %236 = phi i64 [ %250, %235 ], [ 0, %204 ]
  %237 = getelementptr inbounds [2160 x float], ptr %6, i64 %205, i64 %236
  %238 = load float, ptr %237, align 4, !tbaa !5
  %239 = getelementptr inbounds [2160 x float], ptr %8, i64 %205, i64 %236
  %240 = load float, ptr %239, align 4, !tbaa !5
  %241 = fadd float %238, %240
  %242 = getelementptr inbounds [2160 x float], ptr %4, i64 %205, i64 %236
  store float %241, ptr %242, align 4, !tbaa !5
  %243 = or disjoint i64 %236, 1
  %244 = getelementptr inbounds [2160 x float], ptr %6, i64 %205, i64 %243
  %245 = load float, ptr %244, align 4, !tbaa !5
  %246 = getelementptr inbounds [2160 x float], ptr %8, i64 %205, i64 %243
  %247 = load float, ptr %246, align 4, !tbaa !5
  %248 = fadd float %245, %247
  %249 = getelementptr inbounds [2160 x float], ptr %4, i64 %205, i64 %243
  store float %248, ptr %249, align 4, !tbaa !5
  %250 = add nuw nsw i64 %236, 2
  %251 = icmp eq i64 %250, 2160
  br i1 %251, label %252, label %235, !llvm.loop !26

252:                                              ; preds = %206, %235
  %253 = add nuw nsw i64 %205, 1
  %254 = icmp eq i64 %253, 4096
  br i1 %254, label %255, label %204, !llvm.loop !27

255:                                              ; preds = %252
  %256 = load ptr, ptr @stdout, align 8, !tbaa !28
  %257 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %256)
  %258 = load ptr, ptr @stdout, align 8, !tbaa !28
  %259 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %260

260:                                              ; preds = %280, %255
  %261 = phi i64 [ 0, %255 ], [ %281, %280 ]
  %262 = mul nuw nsw i64 %261, 2160
  br label %263

263:                                              ; preds = %272, %260
  %264 = phi i64 [ 0, %260 ], [ %278, %272 ]
  %265 = add nuw nsw i64 %264, %262
  %266 = trunc i64 %265 to i32
  %267 = urem i32 %266, 20
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load ptr, ptr @stdout, align 8, !tbaa !28
  %271 = tail call i32 @fputc(i32 10, ptr %270)
  br label %272

272:                                              ; preds = %269, %263
  %273 = load ptr, ptr @stdout, align 8, !tbaa !28
  %274 = getelementptr inbounds [2160 x float], ptr %4, i64 %261, i64 %264
  %275 = load float, ptr %274, align 4, !tbaa !5
  %276 = fpext float %275 to double
  %277 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.4, double noundef %276)
  %278 = add nuw nsw i64 %264, 1
  %279 = icmp eq i64 %278, 2160
  br i1 %279, label %280, label %263, !llvm.loop !30

280:                                              ; preds = %272
  %281 = add nuw nsw i64 %261, 1
  %282 = icmp eq i64 %281, 4096
  br i1 %282, label %283, label %260, !llvm.loop !31

283:                                              ; preds = %280
  %284 = load ptr, ptr @stdout, align 8, !tbaa !28
  %285 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %284, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %286 = load ptr, ptr @stdout, align 8, !tbaa !28
  %287 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %286)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef nonnull %4) #6
  tail call void @free(ptr noundef %6) #6
  tail call void @free(ptr noundef %8) #6
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
