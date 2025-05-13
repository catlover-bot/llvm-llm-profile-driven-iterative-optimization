; ModuleID = 'src/PolyBenchC-4.2.1/ludcmp.c'
source_filename = "src/PolyBenchC-4.2.1/ludcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #8
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #8
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #8
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #8
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
  %56 = getelementptr i8, ptr %3, i64 8
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
  %74 = getelementptr inbounds [2000 x double], ptr %3, i64 %59, i64 %68
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
  %89 = getelementptr inbounds [2000 x double], ptr %3, i64 %59, i64 %83
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
  %99 = getelementptr inbounds [2000 x double], ptr %3, i64 %59, i64 %59
  store double 1.000000e+00, ptr %99, align 8, !tbaa !5
  %100 = add nuw nsw i64 %58, 1
  %101 = icmp eq i64 %93, 2000
  br i1 %101, label %102, label %57, !llvm.loop !16

102:                                              ; preds = %98
  %103 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #8
  %104 = ptrtoint ptr %103 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %103, i8 0, i64 32000000, i1 false), !tbaa !5
  %105 = getelementptr i8, ptr %103, i64 32000000
  %106 = getelementptr i8, ptr %3, i64 31984008
  br label %107

107:                                              ; preds = %167, %102
  %108 = phi i64 [ 0, %102 ], [ %168, %167 ]
  %109 = shl nuw nsw i64 %108, 3
  %110 = getelementptr i8, ptr %3, i64 %109
  %111 = getelementptr i8, ptr %106, i64 %109
  %112 = icmp ult ptr %103, %111
  %113 = icmp ult ptr %110, %105
  %114 = and i1 %112, %113
  br label %115

115:                                              ; preds = %164, %107
  %116 = phi i64 [ 0, %107 ], [ %165, %164 ]
  %117 = getelementptr inbounds [2000 x double], ptr %3, i64 %116, i64 %108
  br i1 %114, label %147, label %118

118:                                              ; preds = %115
  %119 = load double, ptr %117, align 8, !tbaa !5, !alias.scope !17
  %120 = insertelement <2 x double> poison, double %119, i64 0
  %121 = shufflevector <2 x double> %120, <2 x double> poison, <2 x i32> zeroinitializer
  br label %122

122:                                              ; preds = %118, %122
  %123 = phi i64 [ %145, %122 ], [ 0, %118 ]
  %124 = or disjoint i64 %123, 1
  %125 = or disjoint i64 %123, 2
  %126 = or disjoint i64 %123, 3
  %127 = getelementptr inbounds [2000 x double], ptr %3, i64 %123, i64 %108
  %128 = getelementptr inbounds [2000 x double], ptr %3, i64 %124, i64 %108
  %129 = getelementptr inbounds [2000 x double], ptr %3, i64 %125, i64 %108
  %130 = getelementptr inbounds [2000 x double], ptr %3, i64 %126, i64 %108
  %131 = load double, ptr %127, align 8, !tbaa !5, !alias.scope !20
  %132 = load double, ptr %128, align 8, !tbaa !5, !alias.scope !20
  %133 = insertelement <2 x double> poison, double %131, i64 0
  %134 = insertelement <2 x double> %133, double %132, i64 1
  %135 = load double, ptr %129, align 8, !tbaa !5, !alias.scope !20
  %136 = load double, ptr %130, align 8, !tbaa !5, !alias.scope !20
  %137 = insertelement <2 x double> poison, double %135, i64 0
  %138 = insertelement <2 x double> %137, double %136, i64 1
  %139 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %116, i64 %123
  %140 = getelementptr inbounds double, ptr %139, i64 2
  %141 = load <2 x double>, ptr %139, align 8, !tbaa !5, !alias.scope !22, !noalias !24
  %142 = load <2 x double>, ptr %140, align 8, !tbaa !5, !alias.scope !22, !noalias !24
  %143 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %121, <2 x double> %134, <2 x double> %141)
  %144 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %121, <2 x double> %138, <2 x double> %142)
  store <2 x double> %143, ptr %139, align 8, !tbaa !5, !alias.scope !22, !noalias !24
  store <2 x double> %144, ptr %140, align 8, !tbaa !5, !alias.scope !22, !noalias !24
  %145 = add nuw i64 %123, 4
  %146 = icmp eq i64 %145, 2000
  br i1 %146, label %164, label %122, !llvm.loop !25

147:                                              ; preds = %115, %147
  %148 = phi i64 [ %162, %147 ], [ 0, %115 ]
  %149 = load double, ptr %117, align 8, !tbaa !5
  %150 = getelementptr inbounds [2000 x double], ptr %3, i64 %148, i64 %108
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %116, i64 %148
  %153 = load double, ptr %152, align 8, !tbaa !5
  %154 = tail call double @llvm.fmuladd.f64(double %149, double %151, double %153)
  store double %154, ptr %152, align 8, !tbaa !5
  %155 = or disjoint i64 %148, 1
  %156 = load double, ptr %117, align 8, !tbaa !5
  %157 = getelementptr inbounds [2000 x double], ptr %3, i64 %155, i64 %108
  %158 = load double, ptr %157, align 8, !tbaa !5
  %159 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %116, i64 %155
  %160 = load double, ptr %159, align 8, !tbaa !5
  %161 = tail call double @llvm.fmuladd.f64(double %156, double %158, double %160)
  store double %161, ptr %159, align 8, !tbaa !5
  %162 = add nuw nsw i64 %148, 2
  %163 = icmp eq i64 %162, 2000
  br i1 %163, label %164, label %147, !llvm.loop !26

164:                                              ; preds = %122, %147
  %165 = add nuw nsw i64 %116, 1
  %166 = icmp eq i64 %165, 2000
  br i1 %166, label %167, label %115, !llvm.loop !27

167:                                              ; preds = %164
  %168 = add nuw nsw i64 %108, 1
  %169 = icmp eq i64 %168, 2000
  br i1 %169, label %170, label %107, !llvm.loop !28

170:                                              ; preds = %167
  %171 = sub i64 %4, %104
  %172 = icmp ult i64 %171, 32
  br label %173

173:                                              ; preds = %211, %170
  %174 = phi i64 [ %212, %211 ], [ 0, %170 ]
  br i1 %172, label %192, label %175

175:                                              ; preds = %173, %175
  %176 = phi i64 [ %190, %175 ], [ 0, %173 ]
  %177 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %174, i64 %176
  %178 = getelementptr inbounds double, ptr %177, i64 2
  %179 = load <2 x double>, ptr %177, align 8, !tbaa !5
  %180 = load <2 x double>, ptr %178, align 8, !tbaa !5
  %181 = getelementptr inbounds [2000 x double], ptr %3, i64 %174, i64 %176
  %182 = getelementptr inbounds double, ptr %181, i64 2
  store <2 x double> %179, ptr %181, align 8, !tbaa !5
  store <2 x double> %180, ptr %182, align 8, !tbaa !5
  %183 = or disjoint i64 %176, 4
  %184 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %174, i64 %183
  %185 = getelementptr inbounds double, ptr %184, i64 2
  %186 = load <2 x double>, ptr %184, align 8, !tbaa !5
  %187 = load <2 x double>, ptr %185, align 8, !tbaa !5
  %188 = getelementptr inbounds [2000 x double], ptr %3, i64 %174, i64 %183
  %189 = getelementptr inbounds double, ptr %188, i64 2
  store <2 x double> %186, ptr %188, align 8, !tbaa !5
  store <2 x double> %187, ptr %189, align 8, !tbaa !5
  %190 = add nuw nsw i64 %176, 8
  %191 = icmp eq i64 %190, 2000
  br i1 %191, label %211, label %175, !llvm.loop !29

192:                                              ; preds = %173, %192
  %193 = phi i64 [ %209, %192 ], [ 0, %173 ]
  %194 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %174, i64 %193
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = getelementptr inbounds [2000 x double], ptr %3, i64 %174, i64 %193
  store double %195, ptr %196, align 8, !tbaa !5
  %197 = or disjoint i64 %193, 1
  %198 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %174, i64 %197
  %199 = load double, ptr %198, align 8, !tbaa !5
  %200 = getelementptr inbounds [2000 x double], ptr %3, i64 %174, i64 %197
  store double %199, ptr %200, align 8, !tbaa !5
  %201 = or disjoint i64 %193, 2
  %202 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %174, i64 %201
  %203 = load double, ptr %202, align 8, !tbaa !5
  %204 = getelementptr inbounds [2000 x double], ptr %3, i64 %174, i64 %201
  store double %203, ptr %204, align 8, !tbaa !5
  %205 = or disjoint i64 %193, 3
  %206 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %174, i64 %205
  %207 = load double, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds [2000 x double], ptr %3, i64 %174, i64 %205
  store double %207, ptr %208, align 8, !tbaa !5
  %209 = add nuw nsw i64 %193, 4
  %210 = icmp eq i64 %209, 2000
  br i1 %210, label %211, label %192, !llvm.loop !30

211:                                              ; preds = %175, %192
  %212 = add nuw nsw i64 %174, 1
  %213 = icmp eq i64 %212, 2000
  br i1 %213, label %214, label %173, !llvm.loop !31

214:                                              ; preds = %211
  tail call void @free(ptr noundef nonnull %103) #8
  br label %215

215:                                              ; preds = %311, %214
  %216 = phi i64 [ 0, %214 ], [ %312, %311 ]
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %311, label %257

218:                                              ; preds = %306, %253
  %219 = phi i64 [ %255, %253 ], [ %216, %306 ]
  %220 = getelementptr inbounds [2000 x double], ptr %3, i64 %216, i64 %219
  %221 = load double, ptr %220, align 8, !tbaa !5
  br i1 %308, label %242, label %222

222:                                              ; preds = %218, %222
  %223 = phi i64 [ %239, %222 ], [ 0, %218 ]
  %224 = phi double [ %238, %222 ], [ %221, %218 ]
  %225 = phi i64 [ %240, %222 ], [ 0, %218 ]
  %226 = getelementptr inbounds [2000 x double], ptr %3, i64 %216, i64 %223
  %227 = load double, ptr %226, align 8, !tbaa !5
  %228 = getelementptr inbounds [2000 x double], ptr %3, i64 %223, i64 %219
  %229 = load double, ptr %228, align 8, !tbaa !5
  %230 = fneg double %227
  %231 = tail call double @llvm.fmuladd.f64(double %230, double %229, double %224)
  %232 = or disjoint i64 %223, 1
  %233 = getelementptr inbounds [2000 x double], ptr %3, i64 %216, i64 %232
  %234 = load double, ptr %233, align 8, !tbaa !5
  %235 = getelementptr inbounds [2000 x double], ptr %3, i64 %232, i64 %219
  %236 = load double, ptr %235, align 8, !tbaa !5
  %237 = fneg double %234
  %238 = tail call double @llvm.fmuladd.f64(double %237, double %236, double %231)
  %239 = add nuw nsw i64 %223, 2
  %240 = add i64 %225, 2
  %241 = icmp eq i64 %240, %309
  br i1 %241, label %242, label %222, !llvm.loop !32

242:                                              ; preds = %222, %218
  %243 = phi double [ undef, %218 ], [ %238, %222 ]
  %244 = phi i64 [ 0, %218 ], [ %239, %222 ]
  %245 = phi double [ %221, %218 ], [ %238, %222 ]
  br i1 %310, label %253, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds [2000 x double], ptr %3, i64 %216, i64 %244
  %248 = load double, ptr %247, align 8, !tbaa !5
  %249 = getelementptr inbounds [2000 x double], ptr %3, i64 %244, i64 %219
  %250 = load double, ptr %249, align 8, !tbaa !5
  %251 = fneg double %248
  %252 = tail call double @llvm.fmuladd.f64(double %251, double %250, double %245)
  br label %253

253:                                              ; preds = %242, %246
  %254 = phi double [ %243, %242 ], [ %252, %246 ]
  store double %254, ptr %220, align 8, !tbaa !5
  %255 = add nuw nsw i64 %219, 1
  %256 = icmp eq i64 %255, 2000
  br i1 %256, label %311, label %218, !llvm.loop !33

257:                                              ; preds = %215, %299
  %258 = phi i64 [ %304, %299 ], [ 0, %215 ]
  %259 = getelementptr inbounds [2000 x double], ptr %3, i64 %216, i64 %258
  %260 = load double, ptr %259, align 8, !tbaa !5
  %261 = icmp eq i64 %258, 0
  br i1 %261, label %299, label %262

262:                                              ; preds = %257
  %263 = and i64 %258, 1
  %264 = icmp eq i64 %258, 1
  br i1 %264, label %287, label %265

265:                                              ; preds = %262
  %266 = and i64 %258, 9223372036854775806
  br label %267

267:                                              ; preds = %267, %265
  %268 = phi i64 [ 0, %265 ], [ %284, %267 ]
  %269 = phi double [ %260, %265 ], [ %283, %267 ]
  %270 = phi i64 [ 0, %265 ], [ %285, %267 ]
  %271 = getelementptr inbounds [2000 x double], ptr %3, i64 %216, i64 %268
  %272 = load double, ptr %271, align 8, !tbaa !5
  %273 = getelementptr inbounds [2000 x double], ptr %3, i64 %268, i64 %258
  %274 = load double, ptr %273, align 8, !tbaa !5
  %275 = fneg double %272
  %276 = tail call double @llvm.fmuladd.f64(double %275, double %274, double %269)
  %277 = or disjoint i64 %268, 1
  %278 = getelementptr inbounds [2000 x double], ptr %3, i64 %216, i64 %277
  %279 = load double, ptr %278, align 8, !tbaa !5
  %280 = getelementptr inbounds [2000 x double], ptr %3, i64 %277, i64 %258
  %281 = load double, ptr %280, align 8, !tbaa !5
  %282 = fneg double %279
  %283 = tail call double @llvm.fmuladd.f64(double %282, double %281, double %276)
  %284 = add nuw nsw i64 %268, 2
  %285 = add i64 %270, 2
  %286 = icmp eq i64 %285, %266
  br i1 %286, label %287, label %267, !llvm.loop !34

287:                                              ; preds = %267, %262
  %288 = phi double [ undef, %262 ], [ %283, %267 ]
  %289 = phi i64 [ 0, %262 ], [ %284, %267 ]
  %290 = phi double [ %260, %262 ], [ %283, %267 ]
  %291 = icmp eq i64 %263, 0
  br i1 %291, label %299, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds [2000 x double], ptr %3, i64 %216, i64 %289
  %294 = load double, ptr %293, align 8, !tbaa !5
  %295 = getelementptr inbounds [2000 x double], ptr %3, i64 %289, i64 %258
  %296 = load double, ptr %295, align 8, !tbaa !5
  %297 = fneg double %294
  %298 = tail call double @llvm.fmuladd.f64(double %297, double %296, double %290)
  br label %299

299:                                              ; preds = %292, %287, %257
  %300 = phi double [ %260, %257 ], [ %288, %287 ], [ %298, %292 ]
  %301 = getelementptr inbounds [2000 x double], ptr %3, i64 %258, i64 %258
  %302 = load double, ptr %301, align 8, !tbaa !5
  %303 = fdiv double %300, %302
  store double %303, ptr %259, align 8, !tbaa !5
  %304 = add nuw nsw i64 %258, 1
  %305 = icmp eq i64 %304, %216
  br i1 %305, label %306, label %257, !llvm.loop !35

306:                                              ; preds = %299
  %307 = and i64 %216, 1
  %308 = icmp eq i64 %216, 1
  %309 = and i64 %216, 9223372036854775806
  %310 = icmp eq i64 %307, 0
  br label %218

311:                                              ; preds = %253, %215
  %312 = add nuw nsw i64 %216, 1
  %313 = icmp eq i64 %312, 2000
  br i1 %313, label %314, label %215, !llvm.loop !36

314:                                              ; preds = %311, %356
  %315 = phi i64 [ %359, %356 ], [ 0, %311 ]
  %316 = getelementptr inbounds double, ptr %5, i64 %315
  %317 = load double, ptr %316, align 8, !tbaa !5
  %318 = icmp eq i64 %315, 0
  br i1 %318, label %356, label %319

319:                                              ; preds = %314
  %320 = and i64 %315, 1
  %321 = icmp eq i64 %315, 1
  br i1 %321, label %344, label %322

322:                                              ; preds = %319
  %323 = and i64 %315, 9223372036854775806
  br label %324

324:                                              ; preds = %324, %322
  %325 = phi i64 [ 0, %322 ], [ %341, %324 ]
  %326 = phi double [ %317, %322 ], [ %340, %324 ]
  %327 = phi i64 [ 0, %322 ], [ %342, %324 ]
  %328 = getelementptr inbounds [2000 x double], ptr %3, i64 %315, i64 %325
  %329 = load double, ptr %328, align 8, !tbaa !5
  %330 = getelementptr inbounds double, ptr %7, i64 %325
  %331 = load double, ptr %330, align 8, !tbaa !5
  %332 = fneg double %329
  %333 = tail call double @llvm.fmuladd.f64(double %332, double %331, double %326)
  %334 = or disjoint i64 %325, 1
  %335 = getelementptr inbounds [2000 x double], ptr %3, i64 %315, i64 %334
  %336 = load double, ptr %335, align 8, !tbaa !5
  %337 = getelementptr inbounds double, ptr %7, i64 %334
  %338 = load double, ptr %337, align 8, !tbaa !5
  %339 = fneg double %336
  %340 = tail call double @llvm.fmuladd.f64(double %339, double %338, double %333)
  %341 = add nuw nsw i64 %325, 2
  %342 = add i64 %327, 2
  %343 = icmp eq i64 %342, %323
  br i1 %343, label %344, label %324, !llvm.loop !37

344:                                              ; preds = %324, %319
  %345 = phi double [ undef, %319 ], [ %340, %324 ]
  %346 = phi i64 [ 0, %319 ], [ %341, %324 ]
  %347 = phi double [ %317, %319 ], [ %340, %324 ]
  %348 = icmp eq i64 %320, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %344
  %350 = getelementptr inbounds [2000 x double], ptr %3, i64 %315, i64 %346
  %351 = load double, ptr %350, align 8, !tbaa !5
  %352 = getelementptr inbounds double, ptr %7, i64 %346
  %353 = load double, ptr %352, align 8, !tbaa !5
  %354 = fneg double %351
  %355 = tail call double @llvm.fmuladd.f64(double %354, double %353, double %347)
  br label %356

356:                                              ; preds = %349, %344, %314
  %357 = phi double [ %317, %314 ], [ %345, %344 ], [ %355, %349 ]
  %358 = getelementptr inbounds double, ptr %7, i64 %315
  store double %357, ptr %358, align 8, !tbaa !5
  %359 = add nuw nsw i64 %315, 1
  %360 = icmp eq i64 %359, 2000
  br i1 %360, label %361, label %314, !llvm.loop !38

361:                                              ; preds = %356, %401
  %362 = phi i64 [ %409, %401 ], [ 0, %356 ]
  %363 = phi i64 [ %407, %401 ], [ 1999, %356 ]
  %364 = getelementptr inbounds double, ptr %7, i64 %363
  %365 = load double, ptr %364, align 8, !tbaa !5
  %366 = icmp ult i64 %363, 1999
  br i1 %366, label %367, label %401

367:                                              ; preds = %361
  %368 = and i64 %362, 1
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %378, label %370

370:                                              ; preds = %367
  %371 = add nuw nsw i64 %363, 1
  %372 = getelementptr inbounds [2000 x double], ptr %3, i64 %363, i64 %371
  %373 = load double, ptr %372, align 8, !tbaa !5
  %374 = getelementptr inbounds double, ptr %6, i64 %371
  %375 = load double, ptr %374, align 8, !tbaa !5
  %376 = fneg double %373
  %377 = tail call double @llvm.fmuladd.f64(double %376, double %375, double %365)
  br label %378

378:                                              ; preds = %370, %367
  %379 = phi double [ undef, %367 ], [ %377, %370 ]
  %380 = phi i64 [ %363, %367 ], [ %371, %370 ]
  %381 = phi double [ %365, %367 ], [ %377, %370 ]
  %382 = icmp eq i64 %362, 1
  br i1 %382, label %401, label %383

383:                                              ; preds = %378, %383
  %384 = phi i64 [ %393, %383 ], [ %380, %378 ]
  %385 = phi double [ %399, %383 ], [ %381, %378 ]
  %386 = add nuw nsw i64 %384, 1
  %387 = getelementptr inbounds [2000 x double], ptr %3, i64 %363, i64 %386
  %388 = load double, ptr %387, align 8, !tbaa !5
  %389 = getelementptr inbounds double, ptr %6, i64 %386
  %390 = load double, ptr %389, align 8, !tbaa !5
  %391 = fneg double %388
  %392 = tail call double @llvm.fmuladd.f64(double %391, double %390, double %385)
  %393 = add nuw nsw i64 %384, 2
  %394 = getelementptr inbounds [2000 x double], ptr %3, i64 %363, i64 %393
  %395 = load double, ptr %394, align 8, !tbaa !5
  %396 = getelementptr inbounds double, ptr %6, i64 %393
  %397 = load double, ptr %396, align 8, !tbaa !5
  %398 = fneg double %395
  %399 = tail call double @llvm.fmuladd.f64(double %398, double %397, double %392)
  %400 = icmp eq i64 %393, 1999
  br i1 %400, label %401, label %383, !llvm.loop !39

401:                                              ; preds = %378, %383, %361
  %402 = phi double [ %365, %361 ], [ %379, %378 ], [ %399, %383 ]
  %403 = getelementptr inbounds [2000 x double], ptr %3, i64 %363, i64 %363
  %404 = load double, ptr %403, align 8, !tbaa !5
  %405 = fdiv double %402, %404
  %406 = getelementptr inbounds double, ptr %6, i64 %363
  store double %405, ptr %406, align 8, !tbaa !5
  %407 = add nsw i64 %363, -1
  %408 = icmp eq i64 %363, 0
  %409 = add i64 %362, 1
  br i1 %408, label %410, label %361, !llvm.loop !40

410:                                              ; preds = %401
  %411 = load ptr, ptr @stderr, align 8, !tbaa !41
  %412 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %411) #9
  %413 = load ptr, ptr @stderr, align 8, !tbaa !41
  %414 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %413, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %415

415:                                              ; preds = %423, %410
  %416 = phi i64 [ 0, %410 ], [ %428, %423 ]
  %417 = trunc i64 %416 to i16
  %418 = urem i16 %417, 20
  %419 = icmp eq i16 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %415
  %421 = load ptr, ptr @stderr, align 8, !tbaa !41
  %422 = tail call i32 @fputc(i32 10, ptr %421)
  br label %423

423:                                              ; preds = %420, %415
  %424 = load ptr, ptr @stderr, align 8, !tbaa !41
  %425 = getelementptr inbounds double, ptr %6, i64 %416
  %426 = load double, ptr %425, align 8, !tbaa !5
  %427 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %424, ptr noundef nonnull @.str.4, double noundef %426) #9
  %428 = add nuw nsw i64 %416, 1
  %429 = icmp eq i64 %428, 2000
  br i1 %429, label %430, label %415, !llvm.loop !43

430:                                              ; preds = %423
  %431 = load ptr, ptr @stderr, align 8, !tbaa !41
  %432 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %431, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #9
  %433 = load ptr, ptr @stderr, align 8, !tbaa !41
  %434 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %433) #9
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %5) #8
  tail call void @free(ptr noundef nonnull %6) #8
  tail call void @free(ptr noundef %7) #8
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold }

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
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = !{!23}
!23 = distinct !{!23, !19}
!24 = !{!21, !18}
!25 = distinct !{!25, !10, !11, !12}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10, !11, !12}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !10}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !7, i64 0}
!43 = distinct !{!43, !10}
