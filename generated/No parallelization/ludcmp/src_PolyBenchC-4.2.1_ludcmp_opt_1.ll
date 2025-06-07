; ModuleID = 'outputs/src_PolyBenchC-4.2.1_ludcmp_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_ludcmp_opt_1.c"
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

107:                                              ; preds = %165, %102
  %108 = phi i64 [ 0, %102 ], [ %166, %165 ]
  %109 = shl nuw nsw i64 %108, 3
  %110 = getelementptr i8, ptr %3, i64 %109
  %111 = getelementptr i8, ptr %106, i64 %109
  %112 = icmp ult ptr %103, %111
  %113 = icmp ult ptr %110, %105
  %114 = and i1 %112, %113
  br label %115

115:                                              ; preds = %162, %107
  %116 = phi i64 [ 0, %107 ], [ %163, %162 ]
  %117 = getelementptr inbounds [2000 x double], ptr %3, i64 %116, i64 %108
  %118 = load double, ptr %117, align 8, !tbaa !5
  br i1 %114, label %147, label %119

119:                                              ; preds = %115
  %120 = insertelement <2 x double> poison, double %118, i64 0
  %121 = shufflevector <2 x double> %120, <2 x double> poison, <2 x i32> zeroinitializer
  br label %122

122:                                              ; preds = %122, %119
  %123 = phi i64 [ 0, %119 ], [ %145, %122 ]
  %124 = or disjoint i64 %123, 1
  %125 = or disjoint i64 %123, 2
  %126 = or disjoint i64 %123, 3
  %127 = getelementptr inbounds [2000 x double], ptr %3, i64 %123, i64 %108
  %128 = getelementptr inbounds [2000 x double], ptr %3, i64 %124, i64 %108
  %129 = getelementptr inbounds [2000 x double], ptr %3, i64 %125, i64 %108
  %130 = getelementptr inbounds [2000 x double], ptr %3, i64 %126, i64 %108
  %131 = load double, ptr %127, align 8, !tbaa !5, !alias.scope !17
  %132 = load double, ptr %128, align 8, !tbaa !5, !alias.scope !17
  %133 = insertelement <2 x double> poison, double %131, i64 0
  %134 = insertelement <2 x double> %133, double %132, i64 1
  %135 = load double, ptr %129, align 8, !tbaa !5, !alias.scope !17
  %136 = load double, ptr %130, align 8, !tbaa !5, !alias.scope !17
  %137 = insertelement <2 x double> poison, double %135, i64 0
  %138 = insertelement <2 x double> %137, double %136, i64 1
  %139 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %116, i64 %123
  %140 = getelementptr inbounds double, ptr %139, i64 2
  %141 = load <2 x double>, ptr %139, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %142 = load <2 x double>, ptr %140, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %143 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %121, <2 x double> %134, <2 x double> %141)
  %144 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %121, <2 x double> %138, <2 x double> %142)
  store <2 x double> %143, ptr %139, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  store <2 x double> %144, ptr %140, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %145 = add nuw i64 %123, 4
  %146 = icmp eq i64 %145, 2000
  br i1 %146, label %162, label %122, !llvm.loop !22

147:                                              ; preds = %115, %147
  %148 = phi i64 [ %160, %147 ], [ 0, %115 ]
  %149 = getelementptr inbounds [2000 x double], ptr %3, i64 %148, i64 %108
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %116, i64 %148
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = tail call double @llvm.fmuladd.f64(double %118, double %150, double %152)
  store double %153, ptr %151, align 8, !tbaa !5
  %154 = or disjoint i64 %148, 1
  %155 = getelementptr inbounds [2000 x double], ptr %3, i64 %154, i64 %108
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %116, i64 %154
  %158 = load double, ptr %157, align 8, !tbaa !5
  %159 = tail call double @llvm.fmuladd.f64(double %118, double %156, double %158)
  store double %159, ptr %157, align 8, !tbaa !5
  %160 = add nuw nsw i64 %148, 2
  %161 = icmp eq i64 %160, 2000
  br i1 %161, label %162, label %147, !llvm.loop !23

162:                                              ; preds = %122, %147
  %163 = add nuw nsw i64 %116, 1
  %164 = icmp eq i64 %163, 2000
  br i1 %164, label %165, label %115, !llvm.loop !24

165:                                              ; preds = %162
  %166 = add nuw nsw i64 %108, 1
  %167 = icmp eq i64 %166, 2000
  br i1 %167, label %168, label %107, !llvm.loop !25

168:                                              ; preds = %165
  %169 = sub i64 %4, %104
  %170 = icmp ult i64 %169, 32
  br label %171

171:                                              ; preds = %209, %168
  %172 = phi i64 [ %210, %209 ], [ 0, %168 ]
  br i1 %170, label %190, label %173

173:                                              ; preds = %171, %173
  %174 = phi i64 [ %188, %173 ], [ 0, %171 ]
  %175 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %172, i64 %174
  %176 = getelementptr inbounds double, ptr %175, i64 2
  %177 = load <2 x double>, ptr %175, align 8, !tbaa !5
  %178 = load <2 x double>, ptr %176, align 8, !tbaa !5
  %179 = getelementptr inbounds [2000 x double], ptr %3, i64 %172, i64 %174
  %180 = getelementptr inbounds double, ptr %179, i64 2
  store <2 x double> %177, ptr %179, align 8, !tbaa !5
  store <2 x double> %178, ptr %180, align 8, !tbaa !5
  %181 = or disjoint i64 %174, 4
  %182 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %172, i64 %181
  %183 = getelementptr inbounds double, ptr %182, i64 2
  %184 = load <2 x double>, ptr %182, align 8, !tbaa !5
  %185 = load <2 x double>, ptr %183, align 8, !tbaa !5
  %186 = getelementptr inbounds [2000 x double], ptr %3, i64 %172, i64 %181
  %187 = getelementptr inbounds double, ptr %186, i64 2
  store <2 x double> %184, ptr %186, align 8, !tbaa !5
  store <2 x double> %185, ptr %187, align 8, !tbaa !5
  %188 = add nuw nsw i64 %174, 8
  %189 = icmp eq i64 %188, 2000
  br i1 %189, label %209, label %173, !llvm.loop !26

190:                                              ; preds = %171, %190
  %191 = phi i64 [ %207, %190 ], [ 0, %171 ]
  %192 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %172, i64 %191
  %193 = load double, ptr %192, align 8, !tbaa !5
  %194 = getelementptr inbounds [2000 x double], ptr %3, i64 %172, i64 %191
  store double %193, ptr %194, align 8, !tbaa !5
  %195 = or disjoint i64 %191, 1
  %196 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %172, i64 %195
  %197 = load double, ptr %196, align 8, !tbaa !5
  %198 = getelementptr inbounds [2000 x double], ptr %3, i64 %172, i64 %195
  store double %197, ptr %198, align 8, !tbaa !5
  %199 = or disjoint i64 %191, 2
  %200 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %172, i64 %199
  %201 = load double, ptr %200, align 8, !tbaa !5
  %202 = getelementptr inbounds [2000 x double], ptr %3, i64 %172, i64 %199
  store double %201, ptr %202, align 8, !tbaa !5
  %203 = or disjoint i64 %191, 3
  %204 = getelementptr inbounds [2000 x [2000 x double]], ptr %103, i64 0, i64 %172, i64 %203
  %205 = load double, ptr %204, align 8, !tbaa !5
  %206 = getelementptr inbounds [2000 x double], ptr %3, i64 %172, i64 %203
  store double %205, ptr %206, align 8, !tbaa !5
  %207 = add nuw nsw i64 %191, 4
  %208 = icmp eq i64 %207, 2000
  br i1 %208, label %209, label %190, !llvm.loop !27

209:                                              ; preds = %173, %190
  %210 = add nuw nsw i64 %172, 1
  %211 = icmp eq i64 %210, 2000
  br i1 %211, label %212, label %171, !llvm.loop !28

212:                                              ; preds = %209
  tail call void @free(ptr noundef nonnull %103) #8
  br label %213

213:                                              ; preds = %309, %212
  %214 = phi i64 [ 0, %212 ], [ %310, %309 ]
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %309, label %255

216:                                              ; preds = %304, %251
  %217 = phi i64 [ %253, %251 ], [ %214, %304 ]
  %218 = getelementptr inbounds [2000 x double], ptr %3, i64 %214, i64 %217
  %219 = load double, ptr %218, align 8, !tbaa !5
  br i1 %306, label %240, label %220

220:                                              ; preds = %216, %220
  %221 = phi i64 [ %237, %220 ], [ 0, %216 ]
  %222 = phi double [ %236, %220 ], [ %219, %216 ]
  %223 = phi i64 [ %238, %220 ], [ 0, %216 ]
  %224 = getelementptr inbounds [2000 x double], ptr %3, i64 %214, i64 %221
  %225 = load double, ptr %224, align 8, !tbaa !5
  %226 = getelementptr inbounds [2000 x double], ptr %3, i64 %221, i64 %217
  %227 = load double, ptr %226, align 8, !tbaa !5
  %228 = fneg double %225
  %229 = tail call double @llvm.fmuladd.f64(double %228, double %227, double %222)
  %230 = or disjoint i64 %221, 1
  %231 = getelementptr inbounds [2000 x double], ptr %3, i64 %214, i64 %230
  %232 = load double, ptr %231, align 8, !tbaa !5
  %233 = getelementptr inbounds [2000 x double], ptr %3, i64 %230, i64 %217
  %234 = load double, ptr %233, align 8, !tbaa !5
  %235 = fneg double %232
  %236 = tail call double @llvm.fmuladd.f64(double %235, double %234, double %229)
  %237 = add nuw nsw i64 %221, 2
  %238 = add i64 %223, 2
  %239 = icmp eq i64 %238, %307
  br i1 %239, label %240, label %220, !llvm.loop !29

240:                                              ; preds = %220, %216
  %241 = phi double [ undef, %216 ], [ %236, %220 ]
  %242 = phi i64 [ 0, %216 ], [ %237, %220 ]
  %243 = phi double [ %219, %216 ], [ %236, %220 ]
  br i1 %308, label %251, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds [2000 x double], ptr %3, i64 %214, i64 %242
  %246 = load double, ptr %245, align 8, !tbaa !5
  %247 = getelementptr inbounds [2000 x double], ptr %3, i64 %242, i64 %217
  %248 = load double, ptr %247, align 8, !tbaa !5
  %249 = fneg double %246
  %250 = tail call double @llvm.fmuladd.f64(double %249, double %248, double %243)
  br label %251

251:                                              ; preds = %240, %244
  %252 = phi double [ %241, %240 ], [ %250, %244 ]
  store double %252, ptr %218, align 8, !tbaa !5
  %253 = add nuw nsw i64 %217, 1
  %254 = icmp eq i64 %253, 2000
  br i1 %254, label %309, label %216, !llvm.loop !30

255:                                              ; preds = %213, %297
  %256 = phi i64 [ %302, %297 ], [ 0, %213 ]
  %257 = getelementptr inbounds [2000 x double], ptr %3, i64 %214, i64 %256
  %258 = load double, ptr %257, align 8, !tbaa !5
  %259 = icmp eq i64 %256, 0
  br i1 %259, label %297, label %260

260:                                              ; preds = %255
  %261 = and i64 %256, 1
  %262 = icmp eq i64 %256, 1
  br i1 %262, label %285, label %263

263:                                              ; preds = %260
  %264 = and i64 %256, 9223372036854775806
  br label %265

265:                                              ; preds = %265, %263
  %266 = phi i64 [ 0, %263 ], [ %282, %265 ]
  %267 = phi double [ %258, %263 ], [ %281, %265 ]
  %268 = phi i64 [ 0, %263 ], [ %283, %265 ]
  %269 = getelementptr inbounds [2000 x double], ptr %3, i64 %214, i64 %266
  %270 = load double, ptr %269, align 8, !tbaa !5
  %271 = getelementptr inbounds [2000 x double], ptr %3, i64 %266, i64 %256
  %272 = load double, ptr %271, align 8, !tbaa !5
  %273 = fneg double %270
  %274 = tail call double @llvm.fmuladd.f64(double %273, double %272, double %267)
  %275 = or disjoint i64 %266, 1
  %276 = getelementptr inbounds [2000 x double], ptr %3, i64 %214, i64 %275
  %277 = load double, ptr %276, align 8, !tbaa !5
  %278 = getelementptr inbounds [2000 x double], ptr %3, i64 %275, i64 %256
  %279 = load double, ptr %278, align 8, !tbaa !5
  %280 = fneg double %277
  %281 = tail call double @llvm.fmuladd.f64(double %280, double %279, double %274)
  %282 = add nuw nsw i64 %266, 2
  %283 = add i64 %268, 2
  %284 = icmp eq i64 %283, %264
  br i1 %284, label %285, label %265, !llvm.loop !31

285:                                              ; preds = %265, %260
  %286 = phi double [ undef, %260 ], [ %281, %265 ]
  %287 = phi i64 [ 0, %260 ], [ %282, %265 ]
  %288 = phi double [ %258, %260 ], [ %281, %265 ]
  %289 = icmp eq i64 %261, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %285
  %291 = getelementptr inbounds [2000 x double], ptr %3, i64 %214, i64 %287
  %292 = load double, ptr %291, align 8, !tbaa !5
  %293 = getelementptr inbounds [2000 x double], ptr %3, i64 %287, i64 %256
  %294 = load double, ptr %293, align 8, !tbaa !5
  %295 = fneg double %292
  %296 = tail call double @llvm.fmuladd.f64(double %295, double %294, double %288)
  br label %297

297:                                              ; preds = %290, %285, %255
  %298 = phi double [ %258, %255 ], [ %286, %285 ], [ %296, %290 ]
  %299 = getelementptr inbounds [2000 x double], ptr %3, i64 %256, i64 %256
  %300 = load double, ptr %299, align 8, !tbaa !5
  %301 = fdiv double %298, %300
  store double %301, ptr %257, align 8, !tbaa !5
  %302 = add nuw nsw i64 %256, 1
  %303 = icmp eq i64 %302, %214
  br i1 %303, label %304, label %255, !llvm.loop !32

304:                                              ; preds = %297
  %305 = and i64 %214, 1
  %306 = icmp eq i64 %214, 1
  %307 = and i64 %214, 9223372036854775806
  %308 = icmp eq i64 %305, 0
  br label %216

309:                                              ; preds = %251, %213
  %310 = add nuw nsw i64 %214, 1
  %311 = icmp eq i64 %310, 2000
  br i1 %311, label %312, label %213, !llvm.loop !33

312:                                              ; preds = %309, %354
  %313 = phi i64 [ %357, %354 ], [ 0, %309 ]
  %314 = getelementptr inbounds double, ptr %5, i64 %313
  %315 = load double, ptr %314, align 8, !tbaa !5
  %316 = icmp eq i64 %313, 0
  br i1 %316, label %354, label %317

317:                                              ; preds = %312
  %318 = and i64 %313, 1
  %319 = icmp eq i64 %313, 1
  br i1 %319, label %342, label %320

320:                                              ; preds = %317
  %321 = and i64 %313, 9223372036854775806
  br label %322

322:                                              ; preds = %322, %320
  %323 = phi i64 [ 0, %320 ], [ %339, %322 ]
  %324 = phi double [ %315, %320 ], [ %338, %322 ]
  %325 = phi i64 [ 0, %320 ], [ %340, %322 ]
  %326 = getelementptr inbounds [2000 x double], ptr %3, i64 %313, i64 %323
  %327 = load double, ptr %326, align 8, !tbaa !5
  %328 = getelementptr inbounds double, ptr %7, i64 %323
  %329 = load double, ptr %328, align 8, !tbaa !5
  %330 = fneg double %327
  %331 = tail call double @llvm.fmuladd.f64(double %330, double %329, double %324)
  %332 = or disjoint i64 %323, 1
  %333 = getelementptr inbounds [2000 x double], ptr %3, i64 %313, i64 %332
  %334 = load double, ptr %333, align 8, !tbaa !5
  %335 = getelementptr inbounds double, ptr %7, i64 %332
  %336 = load double, ptr %335, align 8, !tbaa !5
  %337 = fneg double %334
  %338 = tail call double @llvm.fmuladd.f64(double %337, double %336, double %331)
  %339 = add nuw nsw i64 %323, 2
  %340 = add i64 %325, 2
  %341 = icmp eq i64 %340, %321
  br i1 %341, label %342, label %322, !llvm.loop !34

342:                                              ; preds = %322, %317
  %343 = phi double [ undef, %317 ], [ %338, %322 ]
  %344 = phi i64 [ 0, %317 ], [ %339, %322 ]
  %345 = phi double [ %315, %317 ], [ %338, %322 ]
  %346 = icmp eq i64 %318, 0
  br i1 %346, label %354, label %347

347:                                              ; preds = %342
  %348 = getelementptr inbounds [2000 x double], ptr %3, i64 %313, i64 %344
  %349 = load double, ptr %348, align 8, !tbaa !5
  %350 = getelementptr inbounds double, ptr %7, i64 %344
  %351 = load double, ptr %350, align 8, !tbaa !5
  %352 = fneg double %349
  %353 = tail call double @llvm.fmuladd.f64(double %352, double %351, double %345)
  br label %354

354:                                              ; preds = %347, %342, %312
  %355 = phi double [ %315, %312 ], [ %343, %342 ], [ %353, %347 ]
  %356 = getelementptr inbounds double, ptr %7, i64 %313
  store double %355, ptr %356, align 8, !tbaa !5
  %357 = add nuw nsw i64 %313, 1
  %358 = icmp eq i64 %357, 2000
  br i1 %358, label %359, label %312, !llvm.loop !35

359:                                              ; preds = %354, %399
  %360 = phi i64 [ %407, %399 ], [ 0, %354 ]
  %361 = phi i64 [ %405, %399 ], [ 1999, %354 ]
  %362 = getelementptr inbounds double, ptr %7, i64 %361
  %363 = load double, ptr %362, align 8, !tbaa !5
  %364 = icmp ult i64 %361, 1999
  br i1 %364, label %365, label %399

365:                                              ; preds = %359
  %366 = and i64 %360, 1
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %376, label %368

368:                                              ; preds = %365
  %369 = add nuw nsw i64 %361, 1
  %370 = getelementptr inbounds [2000 x double], ptr %3, i64 %361, i64 %369
  %371 = load double, ptr %370, align 8, !tbaa !5
  %372 = getelementptr inbounds double, ptr %6, i64 %369
  %373 = load double, ptr %372, align 8, !tbaa !5
  %374 = fneg double %371
  %375 = tail call double @llvm.fmuladd.f64(double %374, double %373, double %363)
  br label %376

376:                                              ; preds = %368, %365
  %377 = phi double [ undef, %365 ], [ %375, %368 ]
  %378 = phi i64 [ %361, %365 ], [ %369, %368 ]
  %379 = phi double [ %363, %365 ], [ %375, %368 ]
  %380 = icmp eq i64 %360, 1
  br i1 %380, label %399, label %381

381:                                              ; preds = %376, %381
  %382 = phi i64 [ %391, %381 ], [ %378, %376 ]
  %383 = phi double [ %397, %381 ], [ %379, %376 ]
  %384 = add nuw nsw i64 %382, 1
  %385 = getelementptr inbounds [2000 x double], ptr %3, i64 %361, i64 %384
  %386 = load double, ptr %385, align 8, !tbaa !5
  %387 = getelementptr inbounds double, ptr %6, i64 %384
  %388 = load double, ptr %387, align 8, !tbaa !5
  %389 = fneg double %386
  %390 = tail call double @llvm.fmuladd.f64(double %389, double %388, double %383)
  %391 = add nuw nsw i64 %382, 2
  %392 = getelementptr inbounds [2000 x double], ptr %3, i64 %361, i64 %391
  %393 = load double, ptr %392, align 8, !tbaa !5
  %394 = getelementptr inbounds double, ptr %6, i64 %391
  %395 = load double, ptr %394, align 8, !tbaa !5
  %396 = fneg double %393
  %397 = tail call double @llvm.fmuladd.f64(double %396, double %395, double %390)
  %398 = icmp eq i64 %391, 1999
  br i1 %398, label %399, label %381, !llvm.loop !36

399:                                              ; preds = %376, %381, %359
  %400 = phi double [ %363, %359 ], [ %377, %376 ], [ %397, %381 ]
  %401 = getelementptr inbounds [2000 x double], ptr %3, i64 %361, i64 %361
  %402 = load double, ptr %401, align 8, !tbaa !5
  %403 = fdiv double %400, %402
  %404 = getelementptr inbounds double, ptr %6, i64 %361
  store double %403, ptr %404, align 8, !tbaa !5
  %405 = add nsw i64 %361, -1
  %406 = icmp eq i64 %361, 0
  %407 = add i64 %360, 1
  br i1 %406, label %408, label %359, !llvm.loop !37

408:                                              ; preds = %399
  %409 = load ptr, ptr @stdout, align 8, !tbaa !38
  %410 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %409)
  %411 = load ptr, ptr @stdout, align 8, !tbaa !38
  %412 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %411, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %413

413:                                              ; preds = %421, %408
  %414 = phi i64 [ 0, %408 ], [ %426, %421 ]
  %415 = trunc i64 %414 to i16
  %416 = urem i16 %415, 20
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %413
  %419 = load ptr, ptr @stdout, align 8, !tbaa !38
  %420 = tail call i32 @fputc(i32 10, ptr %419)
  br label %421

421:                                              ; preds = %418, %413
  %422 = load ptr, ptr @stdout, align 8, !tbaa !38
  %423 = getelementptr inbounds double, ptr %6, i64 %414
  %424 = load double, ptr %423, align 8, !tbaa !5
  %425 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %422, ptr noundef nonnull @.str.4, double noundef %424)
  %426 = add nuw nsw i64 %414, 1
  %427 = icmp eq i64 %426, 2000
  br i1 %427, label %428, label %413, !llvm.loop !40

428:                                              ; preds = %421
  %429 = load ptr, ptr @stdout, align 8, !tbaa !38
  %430 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %429, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %431 = load ptr, ptr @stdout, align 8, !tbaa !38
  %432 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %431)
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
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10, !11}
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
