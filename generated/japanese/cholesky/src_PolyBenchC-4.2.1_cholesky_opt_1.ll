; ModuleID = 'outputs/src_PolyBenchC-4.2.1_cholesky_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_cholesky_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #8
  %4 = getelementptr i8, ptr %3, i64 8
  br label %5

5:                                                ; preds = %46, %2
  %6 = phi i64 [ 1, %2 ], [ %48, %46 ]
  %7 = phi i64 [ 0, %2 ], [ %41, %46 ]
  %8 = mul nuw nsw i64 %7, 16008
  %9 = shl i64 %7, 3
  %10 = sub nsw i64 15984, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp ult i64 %6, 2
  br i1 %12, label %28, label %13

13:                                               ; preds = %5
  %14 = and i64 %6, 9223372036854775806
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %23, %15 ]
  %17 = phi <2 x i32> [ <i32 0, i32 1>, %13 ], [ %24, %15 ]
  %18 = sub <2 x i32> zeroinitializer, %17
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, <double 2.000000e+03, double 2.000000e+03>
  %21 = fadd <2 x double> %20, <double 1.000000e+00, double 1.000000e+00>
  %22 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %16
  store <2 x double> %21, ptr %22, align 8, !tbaa !5
  %23 = add nuw i64 %16, 2
  %24 = add <2 x i32> %17, <i32 2, i32 2>
  %25 = icmp eq i64 %23, %14
  br i1 %25, label %26, label %15, !llvm.loop !9

26:                                               ; preds = %15
  %27 = icmp eq i64 %6, %14
  br i1 %27, label %40, label %28

28:                                               ; preds = %5, %26
  %29 = phi i64 [ 0, %5 ], [ %14, %26 ]
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %38, %30 ], [ %29, %28 ]
  %32 = trunc i64 %31 to i32
  %33 = sub i32 0, %32
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 2.000000e+03
  %36 = fadd double %35, 1.000000e+00
  %37 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %31
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = add nuw nsw i64 %31, 1
  %39 = icmp eq i64 %38, %6
  br i1 %39, label %40, label %30, !llvm.loop !13

40:                                               ; preds = %30, %26
  %41 = add nuw nsw i64 %7, 1
  %42 = icmp ult i64 %7, 1999
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %11, 8
  %45 = getelementptr i8, ptr %4, i64 %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %45, i8 0, i64 %44, i1 false), !tbaa !5
  br label %46

46:                                               ; preds = %43, %40
  %47 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %7
  store double 1.000000e+00, ptr %47, align 8, !tbaa !5
  %48 = add nuw nsw i64 %6, 1
  %49 = icmp eq i64 %41, 2000
  br i1 %49, label %50, label %5, !llvm.loop !14

50:                                               ; preds = %46
  %51 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #8
  br label %52

52:                                               ; preds = %67, %50
  %53 = phi i64 [ 0, %50 ], [ %68, %67 ]
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi i64 [ 0, %52 ], [ %65, %54 ]
  %56 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %53, i64 %55
  store double 0.000000e+00, ptr %56, align 8, !tbaa !5
  %57 = add nuw nsw i64 %55, 1
  %58 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %53, i64 %57
  store double 0.000000e+00, ptr %58, align 8, !tbaa !5
  %59 = add nuw nsw i64 %55, 2
  %60 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %53, i64 %59
  store double 0.000000e+00, ptr %60, align 8, !tbaa !5
  %61 = add nuw nsw i64 %55, 3
  %62 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %53, i64 %61
  store double 0.000000e+00, ptr %62, align 8, !tbaa !5
  %63 = add nuw nsw i64 %55, 4
  %64 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %53, i64 %63
  store double 0.000000e+00, ptr %64, align 8, !tbaa !5
  %65 = add nuw nsw i64 %55, 5
  %66 = icmp eq i64 %65, 2000
  br i1 %66, label %67, label %54, !llvm.loop !15

67:                                               ; preds = %54
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, 2000
  br i1 %69, label %70, label %52, !llvm.loop !16

70:                                               ; preds = %67, %95
  %71 = phi i64 [ %96, %95 ], [ 0, %67 ]
  br label %72

72:                                               ; preds = %92, %70
  %73 = phi i64 [ 0, %70 ], [ %93, %92 ]
  %74 = getelementptr inbounds [2000 x double], ptr %3, i64 %73, i64 %71
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i64 [ 0, %72 ], [ %90, %75 ]
  %77 = load double, ptr %74, align 8, !tbaa !5
  %78 = getelementptr inbounds [2000 x double], ptr %3, i64 %76, i64 %71
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %73, i64 %76
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = tail call double @llvm.fmuladd.f64(double %77, double %79, double %81)
  store double %82, ptr %80, align 8, !tbaa !5
  %83 = or disjoint i64 %76, 1
  %84 = load double, ptr %74, align 8, !tbaa !5
  %85 = getelementptr inbounds [2000 x double], ptr %3, i64 %83, i64 %71
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %73, i64 %83
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = tail call double @llvm.fmuladd.f64(double %84, double %86, double %88)
  store double %89, ptr %87, align 8, !tbaa !5
  %90 = add nuw nsw i64 %76, 2
  %91 = icmp eq i64 %90, 2000
  br i1 %91, label %92, label %75, !llvm.loop !17

92:                                               ; preds = %75
  %93 = add nuw nsw i64 %73, 1
  %94 = icmp eq i64 %93, 2000
  br i1 %94, label %95, label %72, !llvm.loop !18

95:                                               ; preds = %92
  %96 = add nuw nsw i64 %71, 1
  %97 = icmp eq i64 %96, 2000
  br i1 %97, label %98, label %70, !llvm.loop !19

98:                                               ; preds = %95
  %99 = getelementptr i8, ptr %3, i64 32000000
  %100 = getelementptr i8, ptr %51, i64 63999984008
  %101 = icmp ult ptr %3, %100
  %102 = icmp ult ptr %51, %99
  %103 = and i1 %101, %102
  br label %104

104:                                              ; preds = %146, %98
  %105 = phi i64 [ %147, %146 ], [ 0, %98 ]
  br i1 %103, label %127, label %106

106:                                              ; preds = %104, %106
  %107 = phi i64 [ %125, %106 ], [ 0, %104 ]
  %108 = or disjoint i64 %107, 1
  %109 = or disjoint i64 %107, 2
  %110 = or disjoint i64 %107, 3
  %111 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %105, i64 %107
  %112 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %105, i64 %108
  %113 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %105, i64 %109
  %114 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %105, i64 %110
  %115 = load double, ptr %111, align 8, !tbaa !5, !alias.scope !20
  %116 = load double, ptr %112, align 8, !tbaa !5, !alias.scope !20
  %117 = insertelement <2 x double> poison, double %115, i64 0
  %118 = insertelement <2 x double> %117, double %116, i64 1
  %119 = load double, ptr %113, align 8, !tbaa !5, !alias.scope !20
  %120 = load double, ptr %114, align 8, !tbaa !5, !alias.scope !20
  %121 = insertelement <2 x double> poison, double %119, i64 0
  %122 = insertelement <2 x double> %121, double %120, i64 1
  %123 = getelementptr inbounds [2000 x double], ptr %3, i64 %105, i64 %107
  %124 = getelementptr inbounds double, ptr %123, i64 2
  store <2 x double> %118, ptr %123, align 8, !tbaa !5, !alias.scope !23, !noalias !20
  store <2 x double> %122, ptr %124, align 8, !tbaa !5, !alias.scope !23, !noalias !20
  %125 = add nuw i64 %107, 4
  %126 = icmp eq i64 %125, 2000
  br i1 %126, label %146, label %106, !llvm.loop !25

127:                                              ; preds = %104, %127
  %128 = phi i64 [ %144, %127 ], [ 0, %104 ]
  %129 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %105, i64 %128
  %130 = load double, ptr %129, align 8, !tbaa !5
  %131 = getelementptr inbounds [2000 x double], ptr %3, i64 %105, i64 %128
  store double %130, ptr %131, align 8, !tbaa !5
  %132 = or disjoint i64 %128, 1
  %133 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %105, i64 %132
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = getelementptr inbounds [2000 x double], ptr %3, i64 %105, i64 %132
  store double %134, ptr %135, align 8, !tbaa !5
  %136 = or disjoint i64 %128, 2
  %137 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %105, i64 %136
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds [2000 x double], ptr %3, i64 %105, i64 %136
  store double %138, ptr %139, align 8, !tbaa !5
  %140 = or disjoint i64 %128, 3
  %141 = getelementptr inbounds [2000 x [2000 x double]], ptr %51, i64 %105, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = getelementptr inbounds [2000 x double], ptr %3, i64 %105, i64 %140
  store double %142, ptr %143, align 8, !tbaa !5
  %144 = add nuw nsw i64 %128, 4
  %145 = icmp eq i64 %144, 2000
  br i1 %145, label %146, label %127, !llvm.loop !26

146:                                              ; preds = %106, %127
  %147 = add nuw nsw i64 %105, 1
  %148 = icmp eq i64 %147, 2000
  br i1 %148, label %149, label %104, !llvm.loop !27

149:                                              ; preds = %146
  tail call void @free(ptr noundef nonnull %51) #8
  br label %150

150:                                              ; preds = %253, %149
  %151 = phi i64 [ 0, %149 ], [ %257, %253 ]
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load double, ptr %3, align 8, !tbaa !5
  br label %253

155:                                              ; preds = %150, %197
  %156 = phi i64 [ %202, %197 ], [ 0, %150 ]
  %157 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %156
  %158 = load double, ptr %157, align 8, !tbaa !5
  %159 = icmp eq i64 %156, 0
  br i1 %159, label %197, label %160

160:                                              ; preds = %155
  %161 = and i64 %156, 1
  %162 = icmp eq i64 %156, 1
  br i1 %162, label %185, label %163

163:                                              ; preds = %160
  %164 = and i64 %156, 9223372036854775806
  br label %165

165:                                              ; preds = %165, %163
  %166 = phi i64 [ 0, %163 ], [ %182, %165 ]
  %167 = phi double [ %158, %163 ], [ %181, %165 ]
  %168 = phi i64 [ 0, %163 ], [ %183, %165 ]
  %169 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %166
  %170 = load double, ptr %169, align 8, !tbaa !5
  %171 = getelementptr inbounds [2000 x double], ptr %3, i64 %156, i64 %166
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = fneg double %170
  %174 = tail call double @llvm.fmuladd.f64(double %173, double %172, double %167)
  %175 = or disjoint i64 %166, 1
  %176 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %175
  %177 = load double, ptr %176, align 8, !tbaa !5
  %178 = getelementptr inbounds [2000 x double], ptr %3, i64 %156, i64 %175
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = fneg double %177
  %181 = tail call double @llvm.fmuladd.f64(double %180, double %179, double %174)
  %182 = add nuw nsw i64 %166, 2
  %183 = add i64 %168, 2
  %184 = icmp eq i64 %183, %164
  br i1 %184, label %185, label %165, !llvm.loop !28

185:                                              ; preds = %165, %160
  %186 = phi double [ undef, %160 ], [ %181, %165 ]
  %187 = phi i64 [ 0, %160 ], [ %182, %165 ]
  %188 = phi double [ %158, %160 ], [ %181, %165 ]
  %189 = icmp eq i64 %161, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %187
  %192 = load double, ptr %191, align 8, !tbaa !5
  %193 = getelementptr inbounds [2000 x double], ptr %3, i64 %156, i64 %187
  %194 = load double, ptr %193, align 8, !tbaa !5
  %195 = fneg double %192
  %196 = tail call double @llvm.fmuladd.f64(double %195, double %194, double %188)
  br label %197

197:                                              ; preds = %190, %185, %155
  %198 = phi double [ %158, %155 ], [ %186, %185 ], [ %196, %190 ]
  %199 = getelementptr inbounds [2000 x double], ptr %3, i64 %156, i64 %156
  %200 = load double, ptr %199, align 8, !tbaa !5
  %201 = fdiv double %198, %200
  store double %201, ptr %157, align 8, !tbaa !5
  %202 = add nuw nsw i64 %156, 1
  %203 = icmp eq i64 %202, %151
  br i1 %203, label %204, label %155, !llvm.loop !29

204:                                              ; preds = %197
  %205 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %151
  %206 = load double, ptr %205, align 8, !tbaa !5
  %207 = and i64 %151, 3
  %208 = icmp ult i64 %151, 4
  br i1 %208, label %237, label %209

209:                                              ; preds = %204
  %210 = and i64 %151, 9223372036854775804
  br label %211

211:                                              ; preds = %211, %209
  %212 = phi i64 [ 0, %209 ], [ %234, %211 ]
  %213 = phi double [ %206, %209 ], [ %233, %211 ]
  %214 = phi i64 [ 0, %209 ], [ %235, %211 ]
  %215 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %212
  %216 = load double, ptr %215, align 8, !tbaa !5
  %217 = fneg double %216
  %218 = tail call double @llvm.fmuladd.f64(double %217, double %216, double %213)
  %219 = or disjoint i64 %212, 1
  %220 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %219
  %221 = load double, ptr %220, align 8, !tbaa !5
  %222 = fneg double %221
  %223 = tail call double @llvm.fmuladd.f64(double %222, double %221, double %218)
  %224 = or disjoint i64 %212, 2
  %225 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %224
  %226 = load double, ptr %225, align 8, !tbaa !5
  %227 = fneg double %226
  %228 = tail call double @llvm.fmuladd.f64(double %227, double %226, double %223)
  %229 = or disjoint i64 %212, 3
  %230 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %229
  %231 = load double, ptr %230, align 8, !tbaa !5
  %232 = fneg double %231
  %233 = tail call double @llvm.fmuladd.f64(double %232, double %231, double %228)
  %234 = add nuw nsw i64 %212, 4
  %235 = add i64 %214, 4
  %236 = icmp eq i64 %235, %210
  br i1 %236, label %237, label %211, !llvm.loop !30

237:                                              ; preds = %211, %204
  %238 = phi double [ undef, %204 ], [ %233, %211 ]
  %239 = phi i64 [ 0, %204 ], [ %234, %211 ]
  %240 = phi double [ %206, %204 ], [ %233, %211 ]
  %241 = icmp eq i64 %207, 0
  br i1 %241, label %253, label %242

242:                                              ; preds = %237, %242
  %243 = phi i64 [ %250, %242 ], [ %239, %237 ]
  %244 = phi double [ %249, %242 ], [ %240, %237 ]
  %245 = phi i64 [ %251, %242 ], [ 0, %237 ]
  %246 = getelementptr inbounds [2000 x double], ptr %3, i64 %151, i64 %243
  %247 = load double, ptr %246, align 8, !tbaa !5
  %248 = fneg double %247
  %249 = tail call double @llvm.fmuladd.f64(double %248, double %247, double %244)
  %250 = add nuw nsw i64 %243, 1
  %251 = add i64 %245, 1
  %252 = icmp eq i64 %251, %207
  br i1 %252, label %253, label %242, !llvm.loop !31

253:                                              ; preds = %237, %242, %153
  %254 = phi ptr [ %3, %153 ], [ %205, %242 ], [ %205, %237 ]
  %255 = phi double [ %154, %153 ], [ %238, %237 ], [ %249, %242 ]
  %256 = tail call double @sqrt(double noundef %255) #8
  store double %256, ptr %254, align 8, !tbaa !5
  %257 = add nuw nsw i64 %151, 1
  %258 = icmp eq i64 %257, 2000
  br i1 %258, label %259, label %150, !llvm.loop !33

259:                                              ; preds = %253
  %260 = load ptr, ptr @stdout, align 8, !tbaa !34
  %261 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %260)
  %262 = load ptr, ptr @stdout, align 8, !tbaa !34
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %264

264:                                              ; preds = %284, %259
  %265 = phi i64 [ 0, %259 ], [ %285, %284 ]
  %266 = phi i64 [ 1, %259 ], [ %286, %284 ]
  %267 = mul nuw nsw i64 %265, 2000
  br label %268

268:                                              ; preds = %277, %264
  %269 = phi i64 [ 0, %264 ], [ %282, %277 ]
  %270 = add nuw nsw i64 %269, %267
  %271 = trunc i64 %270 to i32
  %272 = urem i32 %271, 20
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = load ptr, ptr @stdout, align 8, !tbaa !34
  %276 = tail call i32 @fputc(i32 10, ptr %275)
  br label %277

277:                                              ; preds = %274, %268
  %278 = load ptr, ptr @stdout, align 8, !tbaa !34
  %279 = getelementptr inbounds [2000 x double], ptr %3, i64 %265, i64 %269
  %280 = load double, ptr %279, align 8, !tbaa !5
  %281 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %278, ptr noundef nonnull @.str.4, double noundef %280)
  %282 = add nuw nsw i64 %269, 1
  %283 = icmp eq i64 %282, %266
  br i1 %283, label %284, label %268, !llvm.loop !36

284:                                              ; preds = %277
  %285 = add nuw nsw i64 %265, 1
  %286 = add nuw nsw i64 %266, 1
  %287 = icmp eq i64 %285, 2000
  br i1 %287, label %288, label %264, !llvm.loop !37

288:                                              ; preds = %284
  %289 = load ptr, ptr @stdout, align 8, !tbaa !34
  %290 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %291 = load ptr, ptr @stdout, align 8, !tbaa !34
  %292 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %291)
  tail call void @free(ptr noundef nonnull %3) #8
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !10, !11, !12}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !10}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !7, i64 0}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
