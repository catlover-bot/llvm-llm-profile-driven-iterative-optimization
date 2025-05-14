; ModuleID = 'src/PolyBenchC-4.2.1/lu.c'
source_filename = "src/PolyBenchC-4.2.1/lu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #8
  %4 = ptrtoint ptr %3 to i64
  %5 = getelementptr i8, ptr %3, i64 8
  br label %6

6:                                                ; preds = %47, %2
  %7 = phi i64 [ 1, %2 ], [ %49, %47 ]
  %8 = phi i64 [ 0, %2 ], [ %42, %47 ]
  %9 = mul nuw nsw i64 %8, 16008
  %10 = shl i64 %8, 3
  %11 = sub nsw i64 15984, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp ult i64 %7, 2
  br i1 %13, label %29, label %14

14:                                               ; preds = %6
  %15 = and i64 %7, 9223372036854775806
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %24, %16 ]
  %18 = phi <2 x i32> [ <i32 0, i32 1>, %14 ], [ %25, %16 ]
  %19 = sub <2 x i32> zeroinitializer, %18
  %20 = sitofp <2 x i32> %19 to <2 x double>
  %21 = fdiv <2 x double> %20, <double 2.000000e+03, double 2.000000e+03>
  %22 = fadd <2 x double> %21, <double 1.000000e+00, double 1.000000e+00>
  %23 = getelementptr inbounds [2000 x double], ptr %3, i64 %8, i64 %17
  store <2 x double> %22, ptr %23, align 8, !tbaa !5
  %24 = add nuw i64 %17, 2
  %25 = add <2 x i32> %18, <i32 2, i32 2>
  %26 = icmp eq i64 %24, %15
  br i1 %26, label %27, label %16, !llvm.loop !9

27:                                               ; preds = %16
  %28 = icmp eq i64 %7, %15
  br i1 %28, label %41, label %29

29:                                               ; preds = %6, %27
  %30 = phi i64 [ 0, %6 ], [ %15, %27 ]
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ %39, %31 ], [ %30, %29 ]
  %33 = trunc i64 %32 to i32
  %34 = sub i32 0, %33
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 2.000000e+03
  %37 = fadd double %36, 1.000000e+00
  %38 = getelementptr inbounds [2000 x double], ptr %3, i64 %8, i64 %32
  store double %37, ptr %38, align 8, !tbaa !5
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, %7
  br i1 %40, label %41, label %31, !llvm.loop !13

41:                                               ; preds = %31, %27
  %42 = add nuw nsw i64 %8, 1
  %43 = icmp ult i64 %8, 1999
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = add nuw nsw i64 %12, 8
  %46 = getelementptr i8, ptr %5, i64 %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %46, i8 0, i64 %45, i1 false), !tbaa !5
  br label %47

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds [2000 x double], ptr %3, i64 %8, i64 %8
  store double 1.000000e+00, ptr %48, align 8, !tbaa !5
  %49 = add nuw nsw i64 %7, 1
  %50 = icmp eq i64 %42, 2000
  br i1 %50, label %51, label %6, !llvm.loop !14

51:                                               ; preds = %47
  %52 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #8
  %53 = ptrtoint ptr %52 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %52, i8 0, i64 32000000, i1 false), !tbaa !5
  %54 = getelementptr i8, ptr %52, i64 32000000
  %55 = getelementptr i8, ptr %3, i64 31984008
  br label %56

56:                                               ; preds = %116, %51
  %57 = phi i64 [ 0, %51 ], [ %117, %116 ]
  %58 = shl nuw nsw i64 %57, 3
  %59 = getelementptr i8, ptr %3, i64 %58
  %60 = getelementptr i8, ptr %55, i64 %58
  %61 = icmp ult ptr %52, %60
  %62 = icmp ult ptr %59, %54
  %63 = and i1 %61, %62
  br label %64

64:                                               ; preds = %113, %56
  %65 = phi i64 [ 0, %56 ], [ %114, %113 ]
  %66 = getelementptr inbounds [2000 x double], ptr %3, i64 %65, i64 %57
  br i1 %63, label %96, label %67

67:                                               ; preds = %64
  %68 = load double, ptr %66, align 8, !tbaa !5, !alias.scope !15
  %69 = insertelement <2 x double> poison, double %68, i64 0
  %70 = shufflevector <2 x double> %69, <2 x double> poison, <2 x i32> zeroinitializer
  br label %71

71:                                               ; preds = %67, %71
  %72 = phi i64 [ %94, %71 ], [ 0, %67 ]
  %73 = or disjoint i64 %72, 1
  %74 = or disjoint i64 %72, 2
  %75 = or disjoint i64 %72, 3
  %76 = getelementptr inbounds [2000 x double], ptr %3, i64 %72, i64 %57
  %77 = getelementptr inbounds [2000 x double], ptr %3, i64 %73, i64 %57
  %78 = getelementptr inbounds [2000 x double], ptr %3, i64 %74, i64 %57
  %79 = getelementptr inbounds [2000 x double], ptr %3, i64 %75, i64 %57
  %80 = load double, ptr %76, align 8, !tbaa !5, !alias.scope !18
  %81 = load double, ptr %77, align 8, !tbaa !5, !alias.scope !18
  %82 = insertelement <2 x double> poison, double %80, i64 0
  %83 = insertelement <2 x double> %82, double %81, i64 1
  %84 = load double, ptr %78, align 8, !tbaa !5, !alias.scope !18
  %85 = load double, ptr %79, align 8, !tbaa !5, !alias.scope !18
  %86 = insertelement <2 x double> poison, double %84, i64 0
  %87 = insertelement <2 x double> %86, double %85, i64 1
  %88 = getelementptr inbounds [2000 x [2000 x double]], ptr %52, i64 0, i64 %65, i64 %72
  %89 = getelementptr inbounds double, ptr %88, i64 2
  %90 = load <2 x double>, ptr %88, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  %91 = load <2 x double>, ptr %89, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  %92 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %70, <2 x double> %83, <2 x double> %90)
  %93 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %70, <2 x double> %87, <2 x double> %91)
  store <2 x double> %92, ptr %88, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  store <2 x double> %93, ptr %89, align 8, !tbaa !5, !alias.scope !20, !noalias !22
  %94 = add nuw i64 %72, 4
  %95 = icmp eq i64 %94, 2000
  br i1 %95, label %113, label %71, !llvm.loop !23

96:                                               ; preds = %64, %96
  %97 = phi i64 [ %111, %96 ], [ 0, %64 ]
  %98 = load double, ptr %66, align 8, !tbaa !5
  %99 = getelementptr inbounds [2000 x double], ptr %3, i64 %97, i64 %57
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = getelementptr inbounds [2000 x [2000 x double]], ptr %52, i64 0, i64 %65, i64 %97
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = tail call double @llvm.fmuladd.f64(double %98, double %100, double %102)
  store double %103, ptr %101, align 8, !tbaa !5
  %104 = or disjoint i64 %97, 1
  %105 = load double, ptr %66, align 8, !tbaa !5
  %106 = getelementptr inbounds [2000 x double], ptr %3, i64 %104, i64 %57
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds [2000 x [2000 x double]], ptr %52, i64 0, i64 %65, i64 %104
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %105, double %107, double %109)
  store double %110, ptr %108, align 8, !tbaa !5
  %111 = add nuw nsw i64 %97, 2
  %112 = icmp eq i64 %111, 2000
  br i1 %112, label %113, label %96, !llvm.loop !24

113:                                              ; preds = %71, %96
  %114 = add nuw nsw i64 %65, 1
  %115 = icmp eq i64 %114, 2000
  br i1 %115, label %116, label %64, !llvm.loop !25

116:                                              ; preds = %113
  %117 = add nuw nsw i64 %57, 1
  %118 = icmp eq i64 %117, 2000
  br i1 %118, label %119, label %56, !llvm.loop !26

119:                                              ; preds = %116
  %120 = sub i64 %4, %53
  %121 = icmp ult i64 %120, 32
  br label %122

122:                                              ; preds = %160, %119
  %123 = phi i64 [ %161, %160 ], [ 0, %119 ]
  br i1 %121, label %141, label %124

124:                                              ; preds = %122, %124
  %125 = phi i64 [ %139, %124 ], [ 0, %122 ]
  %126 = getelementptr inbounds [2000 x [2000 x double]], ptr %52, i64 0, i64 %123, i64 %125
  %127 = getelementptr inbounds double, ptr %126, i64 2
  %128 = load <2 x double>, ptr %126, align 8, !tbaa !5
  %129 = load <2 x double>, ptr %127, align 8, !tbaa !5
  %130 = getelementptr inbounds [2000 x double], ptr %3, i64 %123, i64 %125
  %131 = getelementptr inbounds double, ptr %130, i64 2
  store <2 x double> %128, ptr %130, align 8, !tbaa !5
  store <2 x double> %129, ptr %131, align 8, !tbaa !5
  %132 = or disjoint i64 %125, 4
  %133 = getelementptr inbounds [2000 x [2000 x double]], ptr %52, i64 0, i64 %123, i64 %132
  %134 = getelementptr inbounds double, ptr %133, i64 2
  %135 = load <2 x double>, ptr %133, align 8, !tbaa !5
  %136 = load <2 x double>, ptr %134, align 8, !tbaa !5
  %137 = getelementptr inbounds [2000 x double], ptr %3, i64 %123, i64 %132
  %138 = getelementptr inbounds double, ptr %137, i64 2
  store <2 x double> %135, ptr %137, align 8, !tbaa !5
  store <2 x double> %136, ptr %138, align 8, !tbaa !5
  %139 = add nuw nsw i64 %125, 8
  %140 = icmp eq i64 %139, 2000
  br i1 %140, label %160, label %124, !llvm.loop !27

141:                                              ; preds = %122, %141
  %142 = phi i64 [ %158, %141 ], [ 0, %122 ]
  %143 = getelementptr inbounds [2000 x [2000 x double]], ptr %52, i64 0, i64 %123, i64 %142
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = getelementptr inbounds [2000 x double], ptr %3, i64 %123, i64 %142
  store double %144, ptr %145, align 8, !tbaa !5
  %146 = or disjoint i64 %142, 1
  %147 = getelementptr inbounds [2000 x [2000 x double]], ptr %52, i64 0, i64 %123, i64 %146
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = getelementptr inbounds [2000 x double], ptr %3, i64 %123, i64 %146
  store double %148, ptr %149, align 8, !tbaa !5
  %150 = or disjoint i64 %142, 2
  %151 = getelementptr inbounds [2000 x [2000 x double]], ptr %52, i64 0, i64 %123, i64 %150
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = getelementptr inbounds [2000 x double], ptr %3, i64 %123, i64 %150
  store double %152, ptr %153, align 8, !tbaa !5
  %154 = or disjoint i64 %142, 3
  %155 = getelementptr inbounds [2000 x [2000 x double]], ptr %52, i64 0, i64 %123, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = getelementptr inbounds [2000 x double], ptr %3, i64 %123, i64 %154
  store double %156, ptr %157, align 8, !tbaa !5
  %158 = add nuw nsw i64 %142, 4
  %159 = icmp eq i64 %158, 2000
  br i1 %159, label %160, label %141, !llvm.loop !28

160:                                              ; preds = %124, %141
  %161 = add nuw nsw i64 %123, 1
  %162 = icmp eq i64 %161, 2000
  br i1 %162, label %163, label %122, !llvm.loop !29

163:                                              ; preds = %160
  tail call void @free(ptr noundef nonnull %52) #8
  br label %164

164:                                              ; preds = %263, %163
  %165 = phi i64 [ 0, %163 ], [ %264, %263 ]
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %263, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 0
  br label %206

169:                                              ; preds = %258, %203
  %170 = phi i64 [ %204, %203 ], [ %165, %258 ]
  %171 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 %170
  %172 = load double, ptr %171, align 8, !tbaa !5
  br i1 %260, label %193, label %173

173:                                              ; preds = %169, %173
  %174 = phi i64 [ %190, %173 ], [ 0, %169 ]
  %175 = phi double [ %189, %173 ], [ %172, %169 ]
  %176 = phi i64 [ %191, %173 ], [ 0, %169 ]
  %177 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 %174
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = getelementptr inbounds [2000 x double], ptr %3, i64 %174, i64 %170
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = fneg double %178
  %182 = tail call double @llvm.fmuladd.f64(double %181, double %180, double %175)
  store double %182, ptr %171, align 8, !tbaa !5
  %183 = or disjoint i64 %174, 1
  %184 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 %183
  %185 = load double, ptr %184, align 8, !tbaa !5
  %186 = getelementptr inbounds [2000 x double], ptr %3, i64 %183, i64 %170
  %187 = load double, ptr %186, align 8, !tbaa !5
  %188 = fneg double %185
  %189 = tail call double @llvm.fmuladd.f64(double %188, double %187, double %182)
  store double %189, ptr %171, align 8, !tbaa !5
  %190 = add nuw nsw i64 %174, 2
  %191 = add i64 %176, 2
  %192 = icmp eq i64 %191, %261
  br i1 %192, label %193, label %173, !llvm.loop !30

193:                                              ; preds = %173, %169
  %194 = phi i64 [ 0, %169 ], [ %190, %173 ]
  %195 = phi double [ %172, %169 ], [ %189, %173 ]
  br i1 %262, label %203, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 %194
  %198 = load double, ptr %197, align 8, !tbaa !5
  %199 = getelementptr inbounds [2000 x double], ptr %3, i64 %194, i64 %170
  %200 = load double, ptr %199, align 8, !tbaa !5
  %201 = fneg double %198
  %202 = tail call double @llvm.fmuladd.f64(double %201, double %200, double %195)
  store double %202, ptr %171, align 8, !tbaa !5
  br label %203

203:                                              ; preds = %193, %196
  %204 = add nuw nsw i64 %170, 1
  %205 = icmp eq i64 %204, 2000
  br i1 %205, label %263, label %169, !llvm.loop !31

206:                                              ; preds = %250, %167
  %207 = phi i64 [ 0, %167 ], [ %256, %250 ]
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load double, ptr %168, align 8, !tbaa !5
  br label %250

211:                                              ; preds = %206
  %212 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 %207
  %213 = load double, ptr %212, align 8, !tbaa !5
  %214 = and i64 %207, 1
  %215 = icmp eq i64 %207, 1
  br i1 %215, label %238, label %216

216:                                              ; preds = %211
  %217 = and i64 %207, 9223372036854775806
  br label %218

218:                                              ; preds = %218, %216
  %219 = phi i64 [ 0, %216 ], [ %235, %218 ]
  %220 = phi double [ %213, %216 ], [ %234, %218 ]
  %221 = phi i64 [ 0, %216 ], [ %236, %218 ]
  %222 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 %219
  %223 = load double, ptr %222, align 8, !tbaa !5
  %224 = getelementptr inbounds [2000 x double], ptr %3, i64 %219, i64 %207
  %225 = load double, ptr %224, align 8, !tbaa !5
  %226 = fneg double %223
  %227 = tail call double @llvm.fmuladd.f64(double %226, double %225, double %220)
  store double %227, ptr %212, align 8, !tbaa !5
  %228 = or disjoint i64 %219, 1
  %229 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 %228
  %230 = load double, ptr %229, align 8, !tbaa !5
  %231 = getelementptr inbounds [2000 x double], ptr %3, i64 %228, i64 %207
  %232 = load double, ptr %231, align 8, !tbaa !5
  %233 = fneg double %230
  %234 = tail call double @llvm.fmuladd.f64(double %233, double %232, double %227)
  store double %234, ptr %212, align 8, !tbaa !5
  %235 = add nuw nsw i64 %219, 2
  %236 = add i64 %221, 2
  %237 = icmp eq i64 %236, %217
  br i1 %237, label %238, label %218, !llvm.loop !32

238:                                              ; preds = %218, %211
  %239 = phi double [ undef, %211 ], [ %234, %218 ]
  %240 = phi i64 [ 0, %211 ], [ %235, %218 ]
  %241 = phi double [ %213, %211 ], [ %234, %218 ]
  %242 = icmp eq i64 %214, 0
  br i1 %242, label %250, label %243

243:                                              ; preds = %238
  %244 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 %240
  %245 = load double, ptr %244, align 8, !tbaa !5
  %246 = getelementptr inbounds [2000 x double], ptr %3, i64 %240, i64 %207
  %247 = load double, ptr %246, align 8, !tbaa !5
  %248 = fneg double %245
  %249 = tail call double @llvm.fmuladd.f64(double %248, double %247, double %241)
  store double %249, ptr %212, align 8, !tbaa !5
  br label %250

250:                                              ; preds = %243, %238, %209
  %251 = phi double [ %210, %209 ], [ %239, %238 ], [ %249, %243 ]
  %252 = getelementptr inbounds [2000 x double], ptr %3, i64 %207, i64 %207
  %253 = load double, ptr %252, align 8, !tbaa !5
  %254 = getelementptr inbounds [2000 x double], ptr %3, i64 %165, i64 %207
  %255 = fdiv double %251, %253
  store double %255, ptr %254, align 8, !tbaa !5
  %256 = add nuw nsw i64 %207, 1
  %257 = icmp eq i64 %256, %165
  br i1 %257, label %258, label %206, !llvm.loop !33

258:                                              ; preds = %250
  %259 = and i64 %165, 1
  %260 = icmp eq i64 %165, 1
  %261 = and i64 %165, 9223372036854775806
  %262 = icmp eq i64 %259, 0
  br label %169

263:                                              ; preds = %203, %164
  %264 = add nuw nsw i64 %165, 1
  %265 = icmp eq i64 %264, 2000
  br i1 %265, label %266, label %164, !llvm.loop !34

266:                                              ; preds = %263
  %267 = load ptr, ptr @stderr, align 8, !tbaa !35
  %268 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %267) #9
  %269 = load ptr, ptr @stderr, align 8, !tbaa !35
  %270 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %269, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %271

271:                                              ; preds = %290, %266
  %272 = phi i64 [ 0, %266 ], [ %291, %290 ]
  %273 = mul nuw nsw i64 %272, 2000
  br label %274

274:                                              ; preds = %283, %271
  %275 = phi i64 [ 0, %271 ], [ %288, %283 ]
  %276 = add nuw nsw i64 %275, %273
  %277 = trunc i64 %276 to i32
  %278 = urem i32 %277, 20
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %274
  %281 = load ptr, ptr @stderr, align 8, !tbaa !35
  %282 = tail call i32 @fputc(i32 10, ptr %281)
  br label %283

283:                                              ; preds = %280, %274
  %284 = load ptr, ptr @stderr, align 8, !tbaa !35
  %285 = getelementptr inbounds [2000 x double], ptr %3, i64 %272, i64 %275
  %286 = load double, ptr %285, align 8, !tbaa !5
  %287 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %284, ptr noundef nonnull @.str.4, double noundef %286) #9
  %288 = add nuw nsw i64 %275, 1
  %289 = icmp eq i64 %288, 2000
  br i1 %289, label %290, label %274, !llvm.loop !37

290:                                              ; preds = %283
  %291 = add nuw nsw i64 %272, 1
  %292 = icmp eq i64 %291, 2000
  br i1 %292, label %293, label %271, !llvm.loop !38

293:                                              ; preds = %290
  %294 = load ptr, ptr @stderr, align 8, !tbaa !35
  %295 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %294, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #9
  %296 = load ptr, ptr @stderr, align 8, !tbaa !35
  %297 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %296) #9
  tail call void @free(ptr noundef nonnull %3) #8
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
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = !{!21}
!21 = distinct !{!21, !17}
!22 = !{!19, !16}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !11, !12}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !7, i64 0}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
