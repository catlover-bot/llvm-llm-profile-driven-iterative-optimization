; ModuleID = 'outputs/src_PolyBenchC-4.2.1_deriche_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_deriche_opt_3.c"
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

31:                                               ; preds = %28, %33
  %32 = phi i64 [ %34, %33 ], [ 0, %28 ]
  br label %36

33:                                               ; preds = %36
  %34 = add nuw nsw i64 %32, 1
  %35 = icmp eq i64 %34, 4096
  br i1 %35, label %51, label %31, !llvm.loop !14

36:                                               ; preds = %36, %31
  %37 = phi i64 [ 0, %31 ], [ %49, %36 ]
  %38 = phi float [ 0.000000e+00, %31 ], [ %48, %36 ]
  %39 = phi float [ 0.000000e+00, %31 ], [ %40, %36 ]
  %40 = phi float [ 0.000000e+00, %31 ], [ %46, %36 ]
  %41 = getelementptr inbounds [2160 x float], ptr %3, i64 %32, i64 %37
  %42 = load float, ptr %41, align 4, !tbaa !5
  %43 = fmul float %38, 0xBFA2B0ED00000000
  %44 = tail call float @llvm.fmuladd.f32(float %42, float 0x3FAFFFF4A0000000, float %43)
  %45 = tail call float @llvm.fmuladd.f32(float %40, float 0x3FEAE89FA0000000, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %39, float 0xBFE368B300000000, float %45)
  %47 = getelementptr inbounds [2160 x float], ptr %6, i64 %32, i64 %37
  store float %46, ptr %47, align 4, !tbaa !5
  %48 = load float, ptr %41, align 4, !tbaa !5
  %49 = add nuw nsw i64 %37, 1
  %50 = icmp eq i64 %49, 2160
  br i1 %50, label %33, label %36, !llvm.loop !15

51:                                               ; preds = %33, %53
  %52 = phi i64 [ %54, %53 ], [ 0, %33 ]
  br label %62

53:                                               ; preds = %62
  %54 = add nuw nsw i64 %52, 1
  %55 = icmp eq i64 %54, 4096
  br i1 %55, label %56, label %51, !llvm.loop !16

56:                                               ; preds = %53
  %57 = sub i64 %5, %7
  %58 = sub i64 %5, %9
  %59 = icmp ult i64 %57, 32
  %60 = icmp ult i64 %58, 32
  %61 = or i1 %59, %60
  br label %85

62:                                               ; preds = %62, %51
  %63 = phi i64 [ 2159, %51 ], [ %83, %62 ]
  %64 = phi float [ 0.000000e+00, %51 ], [ %74, %62 ]
  %65 = phi float [ 0.000000e+00, %51 ], [ %82, %62 ]
  %66 = phi float [ 0.000000e+00, %51 ], [ %71, %62 ]
  %67 = phi float [ 0.000000e+00, %51 ], [ %79, %62 ]
  %68 = fmul float %64, 0xBFA368AC20000000
  %69 = tail call float @llvm.fmuladd.f32(float %65, float 0x3FAF26E080000000, float %68)
  %70 = tail call float @llvm.fmuladd.f32(float %67, float 0x3FEAE89FA0000000, float %69)
  %71 = tail call float @llvm.fmuladd.f32(float %66, float 0xBFE368B300000000, float %70)
  %72 = getelementptr inbounds [2160 x float], ptr %8, i64 %52, i64 %63
  store float %71, ptr %72, align 4, !tbaa !5
  %73 = getelementptr inbounds [2160 x float], ptr %3, i64 %52, i64 %63
  %74 = load float, ptr %73, align 4, !tbaa !5
  %75 = add nsw i64 %63, -1
  %76 = fmul float %65, 0xBFA368AC20000000
  %77 = tail call float @llvm.fmuladd.f32(float %74, float 0x3FAF26E080000000, float %76)
  %78 = tail call float @llvm.fmuladd.f32(float %71, float 0x3FEAE89FA0000000, float %77)
  %79 = tail call float @llvm.fmuladd.f32(float %67, float 0xBFE368B300000000, float %78)
  %80 = getelementptr inbounds [2160 x float], ptr %8, i64 %52, i64 %75
  store float %79, ptr %80, align 4, !tbaa !5
  %81 = getelementptr inbounds [2160 x float], ptr %3, i64 %52, i64 %75
  %82 = load float, ptr %81, align 4, !tbaa !5
  %83 = add nsw i64 %63, -2
  %84 = icmp eq i64 %75, 0
  br i1 %84, label %53, label %62, !llvm.loop !17

85:                                               ; preds = %116, %56
  %86 = phi i64 [ %117, %116 ], [ 0, %56 ]
  br i1 %61, label %119, label %87

87:                                               ; preds = %85, %87
  %88 = phi i64 [ %114, %87 ], [ 0, %85 ]
  %89 = getelementptr inbounds [2160 x float], ptr %6, i64 %86, i64 %88
  %90 = getelementptr inbounds float, ptr %89, i64 4
  %91 = load <4 x float>, ptr %89, align 4, !tbaa !5
  %92 = load <4 x float>, ptr %90, align 4, !tbaa !5
  %93 = getelementptr inbounds [2160 x float], ptr %8, i64 %86, i64 %88
  %94 = getelementptr inbounds float, ptr %93, i64 4
  %95 = load <4 x float>, ptr %93, align 4, !tbaa !5
  %96 = load <4 x float>, ptr %94, align 4, !tbaa !5
  %97 = fadd <4 x float> %91, %95
  %98 = fadd <4 x float> %92, %96
  %99 = getelementptr inbounds [2160 x float], ptr %4, i64 %86, i64 %88
  %100 = getelementptr inbounds float, ptr %99, i64 4
  store <4 x float> %97, ptr %99, align 4, !tbaa !5
  store <4 x float> %98, ptr %100, align 4, !tbaa !5
  %101 = or disjoint i64 %88, 8
  %102 = getelementptr inbounds [2160 x float], ptr %6, i64 %86, i64 %101
  %103 = getelementptr inbounds float, ptr %102, i64 4
  %104 = load <4 x float>, ptr %102, align 4, !tbaa !5
  %105 = load <4 x float>, ptr %103, align 4, !tbaa !5
  %106 = getelementptr inbounds [2160 x float], ptr %8, i64 %86, i64 %101
  %107 = getelementptr inbounds float, ptr %106, i64 4
  %108 = load <4 x float>, ptr %106, align 4, !tbaa !5
  %109 = load <4 x float>, ptr %107, align 4, !tbaa !5
  %110 = fadd <4 x float> %104, %108
  %111 = fadd <4 x float> %105, %109
  %112 = getelementptr inbounds [2160 x float], ptr %4, i64 %86, i64 %101
  %113 = getelementptr inbounds float, ptr %112, i64 4
  store <4 x float> %110, ptr %112, align 4, !tbaa !5
  store <4 x float> %111, ptr %113, align 4, !tbaa !5
  %114 = add nuw nsw i64 %88, 16
  %115 = icmp eq i64 %114, 2160
  br i1 %115, label %116, label %87, !llvm.loop !18

116:                                              ; preds = %87, %119
  %117 = add nuw nsw i64 %86, 1
  %118 = icmp eq i64 %117, 4096
  br i1 %118, label %136, label %85, !llvm.loop !19

119:                                              ; preds = %85, %119
  %120 = phi i64 [ %134, %119 ], [ 0, %85 ]
  %121 = getelementptr inbounds [2160 x float], ptr %6, i64 %86, i64 %120
  %122 = load float, ptr %121, align 4, !tbaa !5
  %123 = getelementptr inbounds [2160 x float], ptr %8, i64 %86, i64 %120
  %124 = load float, ptr %123, align 4, !tbaa !5
  %125 = fadd float %122, %124
  %126 = getelementptr inbounds [2160 x float], ptr %4, i64 %86, i64 %120
  store float %125, ptr %126, align 4, !tbaa !5
  %127 = or disjoint i64 %120, 1
  %128 = getelementptr inbounds [2160 x float], ptr %6, i64 %86, i64 %127
  %129 = load float, ptr %128, align 4, !tbaa !5
  %130 = getelementptr inbounds [2160 x float], ptr %8, i64 %86, i64 %127
  %131 = load float, ptr %130, align 4, !tbaa !5
  %132 = fadd float %129, %131
  %133 = getelementptr inbounds [2160 x float], ptr %4, i64 %86, i64 %127
  store float %132, ptr %133, align 4, !tbaa !5
  %134 = add nuw nsw i64 %120, 2
  %135 = icmp eq i64 %134, 2160
  br i1 %135, label %116, label %119, !llvm.loop !20

136:                                              ; preds = %116, %138
  %137 = phi i64 [ %139, %138 ], [ 0, %116 ]
  br label %141

138:                                              ; preds = %141
  %139 = add nuw nsw i64 %137, 1
  %140 = icmp eq i64 %139, 2160
  br i1 %140, label %156, label %136, !llvm.loop !21

141:                                              ; preds = %141, %136
  %142 = phi i64 [ 0, %136 ], [ %154, %141 ]
  %143 = phi float [ 0.000000e+00, %136 ], [ %144, %141 ]
  %144 = phi float [ 0.000000e+00, %136 ], [ %151, %141 ]
  %145 = phi float [ 0.000000e+00, %136 ], [ %153, %141 ]
  %146 = getelementptr inbounds [2160 x float], ptr %4, i64 %142, i64 %137
  %147 = load float, ptr %146, align 4, !tbaa !5
  %148 = fmul float %145, 0xBFA2B0ED00000000
  %149 = tail call float @llvm.fmuladd.f32(float %147, float 0x3FAFFFF4A0000000, float %148)
  %150 = tail call float @llvm.fmuladd.f32(float %144, float 0x3FEAE89FA0000000, float %149)
  %151 = tail call float @llvm.fmuladd.f32(float %143, float 0xBFE368B300000000, float %150)
  %152 = getelementptr inbounds [2160 x float], ptr %6, i64 %142, i64 %137
  store float %151, ptr %152, align 4, !tbaa !5
  %153 = load float, ptr %146, align 4, !tbaa !5
  %154 = add nuw nsw i64 %142, 1
  %155 = icmp eq i64 %154, 4096
  br i1 %155, label %138, label %141, !llvm.loop !22

156:                                              ; preds = %138, %158
  %157 = phi i64 [ %159, %158 ], [ 0, %138 ]
  br label %167

158:                                              ; preds = %167
  %159 = add nuw nsw i64 %157, 1
  %160 = icmp eq i64 %159, 2160
  br i1 %160, label %161, label %156, !llvm.loop !23

161:                                              ; preds = %158
  %162 = sub i64 %5, %7
  %163 = sub i64 %5, %9
  %164 = icmp ult i64 %162, 32
  %165 = icmp ult i64 %163, 32
  %166 = or i1 %164, %165
  br label %190

167:                                              ; preds = %167, %156
  %168 = phi i64 [ 4095, %156 ], [ %188, %167 ]
  %169 = phi float [ 0.000000e+00, %156 ], [ %176, %167 ]
  %170 = phi float [ 0.000000e+00, %156 ], [ %184, %167 ]
  %171 = phi float [ 0.000000e+00, %156 ], [ %179, %167 ]
  %172 = phi float [ 0.000000e+00, %156 ], [ %187, %167 ]
  %173 = fmul float %171, 0xBFA368AC20000000
  %174 = tail call float @llvm.fmuladd.f32(float %172, float 0x3FAF26E080000000, float %173)
  %175 = tail call float @llvm.fmuladd.f32(float %170, float 0x3FEAE89FA0000000, float %174)
  %176 = tail call float @llvm.fmuladd.f32(float %169, float 0xBFE368B300000000, float %175)
  %177 = getelementptr inbounds [2160 x float], ptr %8, i64 %168, i64 %157
  store float %176, ptr %177, align 4, !tbaa !5
  %178 = getelementptr inbounds [2160 x float], ptr %4, i64 %168, i64 %157
  %179 = load float, ptr %178, align 4, !tbaa !5
  %180 = add nsw i64 %168, -1
  %181 = fmul float %172, 0xBFA368AC20000000
  %182 = tail call float @llvm.fmuladd.f32(float %179, float 0x3FAF26E080000000, float %181)
  %183 = tail call float @llvm.fmuladd.f32(float %176, float 0x3FEAE89FA0000000, float %182)
  %184 = tail call float @llvm.fmuladd.f32(float %170, float 0xBFE368B300000000, float %183)
  %185 = getelementptr inbounds [2160 x float], ptr %8, i64 %180, i64 %157
  store float %184, ptr %185, align 4, !tbaa !5
  %186 = getelementptr inbounds [2160 x float], ptr %4, i64 %180, i64 %157
  %187 = load float, ptr %186, align 4, !tbaa !5
  %188 = add nsw i64 %168, -2
  %189 = icmp eq i64 %180, 0
  br i1 %189, label %158, label %167, !llvm.loop !24

190:                                              ; preds = %221, %161
  %191 = phi i64 [ %222, %221 ], [ 0, %161 ]
  br i1 %166, label %224, label %192

192:                                              ; preds = %190, %192
  %193 = phi i64 [ %219, %192 ], [ 0, %190 ]
  %194 = getelementptr inbounds [2160 x float], ptr %6, i64 %191, i64 %193
  %195 = getelementptr inbounds float, ptr %194, i64 4
  %196 = load <4 x float>, ptr %194, align 4, !tbaa !5
  %197 = load <4 x float>, ptr %195, align 4, !tbaa !5
  %198 = getelementptr inbounds [2160 x float], ptr %8, i64 %191, i64 %193
  %199 = getelementptr inbounds float, ptr %198, i64 4
  %200 = load <4 x float>, ptr %198, align 4, !tbaa !5
  %201 = load <4 x float>, ptr %199, align 4, !tbaa !5
  %202 = fadd <4 x float> %196, %200
  %203 = fadd <4 x float> %197, %201
  %204 = getelementptr inbounds [2160 x float], ptr %4, i64 %191, i64 %193
  %205 = getelementptr inbounds float, ptr %204, i64 4
  store <4 x float> %202, ptr %204, align 4, !tbaa !5
  store <4 x float> %203, ptr %205, align 4, !tbaa !5
  %206 = or disjoint i64 %193, 8
  %207 = getelementptr inbounds [2160 x float], ptr %6, i64 %191, i64 %206
  %208 = getelementptr inbounds float, ptr %207, i64 4
  %209 = load <4 x float>, ptr %207, align 4, !tbaa !5
  %210 = load <4 x float>, ptr %208, align 4, !tbaa !5
  %211 = getelementptr inbounds [2160 x float], ptr %8, i64 %191, i64 %206
  %212 = getelementptr inbounds float, ptr %211, i64 4
  %213 = load <4 x float>, ptr %211, align 4, !tbaa !5
  %214 = load <4 x float>, ptr %212, align 4, !tbaa !5
  %215 = fadd <4 x float> %209, %213
  %216 = fadd <4 x float> %210, %214
  %217 = getelementptr inbounds [2160 x float], ptr %4, i64 %191, i64 %206
  %218 = getelementptr inbounds float, ptr %217, i64 4
  store <4 x float> %215, ptr %217, align 4, !tbaa !5
  store <4 x float> %216, ptr %218, align 4, !tbaa !5
  %219 = add nuw nsw i64 %193, 16
  %220 = icmp eq i64 %219, 2160
  br i1 %220, label %221, label %192, !llvm.loop !25

221:                                              ; preds = %192, %224
  %222 = add nuw nsw i64 %191, 1
  %223 = icmp eq i64 %222, 4096
  br i1 %223, label %241, label %190, !llvm.loop !26

224:                                              ; preds = %190, %224
  %225 = phi i64 [ %239, %224 ], [ 0, %190 ]
  %226 = getelementptr inbounds [2160 x float], ptr %6, i64 %191, i64 %225
  %227 = load float, ptr %226, align 4, !tbaa !5
  %228 = getelementptr inbounds [2160 x float], ptr %8, i64 %191, i64 %225
  %229 = load float, ptr %228, align 4, !tbaa !5
  %230 = fadd float %227, %229
  %231 = getelementptr inbounds [2160 x float], ptr %4, i64 %191, i64 %225
  store float %230, ptr %231, align 4, !tbaa !5
  %232 = or disjoint i64 %225, 1
  %233 = getelementptr inbounds [2160 x float], ptr %6, i64 %191, i64 %232
  %234 = load float, ptr %233, align 4, !tbaa !5
  %235 = getelementptr inbounds [2160 x float], ptr %8, i64 %191, i64 %232
  %236 = load float, ptr %235, align 4, !tbaa !5
  %237 = fadd float %234, %236
  %238 = getelementptr inbounds [2160 x float], ptr %4, i64 %191, i64 %232
  store float %237, ptr %238, align 4, !tbaa !5
  %239 = add nuw nsw i64 %225, 2
  %240 = icmp eq i64 %239, 2160
  br i1 %240, label %221, label %224, !llvm.loop !27

241:                                              ; preds = %221
  %242 = load ptr, ptr @stdout, align 8, !tbaa !28
  %243 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %242)
  %244 = load ptr, ptr @stdout, align 8, !tbaa !28
  %245 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %246

246:                                              ; preds = %249, %241
  %247 = phi i64 [ 0, %241 ], [ %250, %249 ]
  %248 = mul nuw nsw i64 %247, 2160
  br label %252

249:                                              ; preds = %261
  %250 = add nuw nsw i64 %247, 1
  %251 = icmp eq i64 %250, 4096
  br i1 %251, label %269, label %246, !llvm.loop !30

252:                                              ; preds = %261, %246
  %253 = phi i64 [ 0, %246 ], [ %267, %261 ]
  %254 = add nuw nsw i64 %253, %248
  %255 = trunc i64 %254 to i32
  %256 = urem i32 %255, 20
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %252
  %259 = load ptr, ptr @stdout, align 8, !tbaa !28
  %260 = tail call i32 @fputc(i32 10, ptr %259)
  br label %261

261:                                              ; preds = %258, %252
  %262 = load ptr, ptr @stdout, align 8, !tbaa !28
  %263 = getelementptr inbounds [2160 x float], ptr %4, i64 %247, i64 %253
  %264 = load float, ptr %263, align 4, !tbaa !5
  %265 = fpext float %264 to double
  %266 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef nonnull @.str.4, double noundef %265)
  %267 = add nuw nsw i64 %253, 1
  %268 = icmp eq i64 %267, 2160
  br i1 %268, label %249, label %252, !llvm.loop !31

269:                                              ; preds = %249
  %270 = load ptr, ptr @stdout, align 8, !tbaa !28
  %271 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %270, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %272 = load ptr, ptr @stdout, align 8, !tbaa !28
  %273 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %272)
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
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10, !11, !12}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !11}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !7, i64 0}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
