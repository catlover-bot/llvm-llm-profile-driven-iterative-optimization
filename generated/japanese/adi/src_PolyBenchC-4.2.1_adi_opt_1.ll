; ModuleID = 'outputs/src_PolyBenchC-4.2.1_adi_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_adi_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  br label %7

7:                                                ; preds = %2, %30
  %8 = phi i64 [ 0, %2 ], [ %31, %30 ]
  %9 = add nuw nsw i64 %8, 1000
  %10 = insertelement <2 x i64> poison, i64 %9, i64 0
  %11 = shufflevector <2 x i64> %10, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i64 [ 0, %7 ], [ %27, %12 ]
  %14 = phi <2 x i64> [ <i64 0, i64 1>, %7 ], [ %28, %12 ]
  %15 = sub nuw nsw <2 x i64> %11, %14
  %16 = trunc <2 x i64> %15 to <2 x i32>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, <double 1.000000e+03, double 1.000000e+03>
  %19 = getelementptr inbounds [1000 x double], ptr %3, i64 %8, i64 %13
  store <2 x double> %18, ptr %19, align 8, !tbaa !5
  %20 = or disjoint i64 %13, 2
  %21 = add <2 x i64> %14, <i64 2, i64 2>
  %22 = sub nuw nsw <2 x i64> %11, %21
  %23 = trunc <2 x i64> %22 to <2 x i32>
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, <double 1.000000e+03, double 1.000000e+03>
  %26 = getelementptr inbounds [1000 x double], ptr %3, i64 %8, i64 %20
  store <2 x double> %25, ptr %26, align 8, !tbaa !5
  %27 = add nuw nsw i64 %13, 4
  %28 = add <2 x i64> %14, <i64 4, i64 4>
  %29 = icmp eq i64 %27, 1000
  br i1 %29, label %30, label %12, !llvm.loop !9

30:                                               ; preds = %12
  %31 = add nuw nsw i64 %8, 1
  %32 = icmp eq i64 %31, 1000
  br i1 %32, label %33, label %7, !llvm.loop !13

33:                                               ; preds = %30, %133
  %34 = phi i32 [ %134, %133 ], [ 1, %30 ]
  br label %35

35:                                               ; preds = %109, %33
  %36 = phi i64 [ %111, %109 ], [ 0, %33 ]
  %37 = phi i64 [ %50, %109 ], [ 1, %33 ]
  %38 = mul nuw nsw i64 %36, 8000
  %39 = add i64 %38, 8000
  %40 = getelementptr i8, ptr %5, i64 %39
  %41 = add i64 %38, 15992
  %42 = getelementptr i8, ptr %5, i64 %41
  %43 = getelementptr i8, ptr %6, i64 %39
  %44 = getelementptr i8, ptr %6, i64 %41
  %45 = getelementptr inbounds [1000 x double], ptr %4, i64 0, i64 %37
  store double 1.000000e+00, ptr %45, align 8, !tbaa !5
  %46 = getelementptr inbounds [1000 x double], ptr %5, i64 %37
  store double 0.000000e+00, ptr %46, align 8, !tbaa !5
  %47 = load double, ptr %45, align 8, !tbaa !5
  %48 = getelementptr inbounds [1000 x double], ptr %6, i64 %37
  store double %47, ptr %48, align 8, !tbaa !5
  %49 = add nsw i64 %37, -1
  %50 = add nuw nsw i64 %37, 1
  %51 = icmp ult ptr %40, %44
  %52 = icmp ult ptr %43, %42
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %35, %54
  %55 = phi i64 [ %76, %54 ], [ 1, %35 ]
  %56 = add nsw i64 %55, -1
  %57 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !5
  %59 = tail call double @llvm.fmuladd.f64(double %58, double 0xC09F400000000001, double 0x40AF420000000001)
  %60 = fdiv double 0x409F400000000001, %59
  %61 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %55
  store double %60, ptr %61, align 8, !tbaa !5
  %62 = getelementptr inbounds [1000 x double], ptr %3, i64 %55, i64 %49
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds [1000 x double], ptr %3, i64 %55, i64 %37
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = fmul double %65, 0xC09F3C0000000001
  %67 = tail call double @llvm.fmuladd.f64(double %63, double 0x408F400000000001, double %66)
  %68 = getelementptr inbounds [1000 x double], ptr %3, i64 %55, i64 %50
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = tail call double @llvm.fmuladd.f64(double %69, double 0x408F400000000001, double %67)
  %71 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %56
  %72 = load double, ptr %71, align 8, !tbaa !5
  %73 = tail call double @llvm.fmuladd.f64(double %72, double 0x409F400000000001, double %70)
  %74 = fdiv double %73, %59
  %75 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %55
  store double %74, ptr %75, align 8, !tbaa !5
  %76 = add nuw nsw i64 %55, 1
  %77 = icmp eq i64 %76, 999
  br i1 %77, label %85, label %54, !llvm.loop !14

78:                                               ; preds = %35
  %79 = mul nuw nsw i64 %36, 8000
  %80 = add i64 %79, 8000
  %81 = getelementptr i8, ptr %6, i64 %80
  %82 = getelementptr i8, ptr %5, i64 %80
  %83 = load double, ptr %82, align 8
  %84 = load double, ptr %81, align 8
  br label %88

85:                                               ; preds = %88, %54
  %86 = getelementptr inbounds [1000 x double], ptr %4, i64 999, i64 %37
  store double 1.000000e+00, ptr %86, align 8, !tbaa !5
  %87 = getelementptr [1000 x double], ptr %4, i64 1, i64 %37
  br label %112

88:                                               ; preds = %88, %78
  %89 = phi double [ %84, %78 ], [ %105, %88 ]
  %90 = phi double [ %83, %78 ], [ %93, %88 ]
  %91 = phi i64 [ 1, %78 ], [ %107, %88 ]
  %92 = tail call double @llvm.fmuladd.f64(double %90, double 0xC09F400000000001, double 0x40AF420000000001)
  %93 = fdiv double 0x409F400000000001, %92
  %94 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %91
  store double %93, ptr %94, align 8, !tbaa !5
  %95 = getelementptr inbounds [1000 x double], ptr %3, i64 %91, i64 %49
  %96 = load double, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds [1000 x double], ptr %3, i64 %91, i64 %37
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = fmul double %98, 0xC09F3C0000000001
  %100 = tail call double @llvm.fmuladd.f64(double %96, double 0x408F400000000001, double %99)
  %101 = getelementptr inbounds [1000 x double], ptr %3, i64 %91, i64 %50
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = tail call double @llvm.fmuladd.f64(double %102, double 0x408F400000000001, double %100)
  %104 = tail call double @llvm.fmuladd.f64(double %89, double 0x409F400000000001, double %103)
  %105 = fdiv double %104, %92
  %106 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %91
  store double %105, ptr %106, align 8, !tbaa !5
  %107 = add nuw nsw i64 %91, 1
  %108 = icmp eq i64 %107, 999
  br i1 %108, label %85, label %88, !llvm.loop !14

109:                                              ; preds = %112
  %110 = icmp eq i64 %50, 999
  %111 = add i64 %36, 1
  br i1 %110, label %136, label %35, !llvm.loop !15

112:                                              ; preds = %112, %85
  %113 = phi i64 [ 998, %85 ], [ %131, %112 ]
  %114 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !5
  %116 = getelementptr [1000 x double], ptr %87, i64 %113
  %117 = load double, ptr %116, align 8, !tbaa !5
  %118 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %113
  %119 = load double, ptr %118, align 8, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %115, double %117, double %119)
  %121 = getelementptr inbounds [1000 x double], ptr %4, i64 %113, i64 %37
  store double %120, ptr %121, align 8, !tbaa !5
  %122 = add nsw i64 %113, -1
  %123 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !5
  %125 = getelementptr [1000 x double], ptr %87, i64 %122
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %122
  %128 = load double, ptr %127, align 8, !tbaa !5
  %129 = tail call double @llvm.fmuladd.f64(double %124, double %126, double %128)
  %130 = getelementptr inbounds [1000 x double], ptr %4, i64 %122, i64 %37
  store double %129, ptr %130, align 8, !tbaa !5
  %131 = add nsw i64 %113, -2
  %132 = icmp eq i64 %122, 1
  br i1 %132, label %109, label %112, !llvm.loop !16

133:                                              ; preds = %208
  %134 = add nuw nsw i32 %34, 1
  %135 = icmp eq i32 %134, 501
  br i1 %135, label %230, label %33, !llvm.loop !17

136:                                              ; preds = %109, %208
  %137 = phi i64 [ %211, %208 ], [ 0, %109 ]
  %138 = phi i64 [ %209, %208 ], [ 1, %109 ]
  %139 = mul nuw nsw i64 %137, 8000
  %140 = add i64 %139, 8000
  %141 = getelementptr i8, ptr %5, i64 %140
  %142 = add i64 %139, 15992
  %143 = getelementptr i8, ptr %5, i64 %142
  %144 = getelementptr i8, ptr %6, i64 %140
  %145 = getelementptr i8, ptr %6, i64 %142
  %146 = getelementptr inbounds [1000 x double], ptr %3, i64 %138
  store double 1.000000e+00, ptr %146, align 8, !tbaa !5
  %147 = getelementptr inbounds [1000 x double], ptr %5, i64 %138
  store double 0.000000e+00, ptr %147, align 8, !tbaa !5
  %148 = load double, ptr %146, align 8, !tbaa !5
  %149 = getelementptr inbounds [1000 x double], ptr %6, i64 %138
  store double %148, ptr %149, align 8, !tbaa !5
  %150 = getelementptr [1000 x double], ptr %4, i64 %138
  %151 = icmp ult ptr %141, %145
  %152 = icmp ult ptr %144, %143
  %153 = and i1 %151, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %136, %154
  %155 = phi i64 [ %176, %154 ], [ 1, %136 ]
  %156 = add nsw i64 %155, -1
  %157 = getelementptr inbounds [1000 x double], ptr %5, i64 %138, i64 %156
  %158 = load double, ptr %157, align 8, !tbaa !5
  %159 = tail call double @llvm.fmuladd.f64(double %158, double 0xC08F400000000001, double 0x409F440000000001)
  %160 = fdiv double 0x408F400000000001, %159
  %161 = getelementptr inbounds [1000 x double], ptr %5, i64 %138, i64 %155
  store double %160, ptr %161, align 8, !tbaa !5
  %162 = getelementptr [1000 x double], ptr %150, i64 -1, i64 %155
  %163 = load double, ptr %162, align 8, !tbaa !5
  %164 = getelementptr inbounds [1000 x double], ptr %4, i64 %138, i64 %155
  %165 = load double, ptr %164, align 8, !tbaa !5
  %166 = fmul double %165, 0xC0AF3E0000000001
  %167 = tail call double @llvm.fmuladd.f64(double %163, double 0x409F400000000001, double %166)
  %168 = getelementptr [1000 x double], ptr %150, i64 1, i64 %155
  %169 = load double, ptr %168, align 8, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %169, double 0x409F400000000001, double %167)
  %171 = getelementptr inbounds [1000 x double], ptr %6, i64 %138, i64 %156
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = tail call double @llvm.fmuladd.f64(double %172, double 0x408F400000000001, double %170)
  %174 = fdiv double %173, %159
  %175 = getelementptr inbounds [1000 x double], ptr %6, i64 %138, i64 %155
  store double %174, ptr %175, align 8, !tbaa !5
  %176 = add nuw nsw i64 %155, 1
  %177 = icmp eq i64 %176, 999
  br i1 %177, label %185, label %154, !llvm.loop !18

178:                                              ; preds = %136
  %179 = mul nuw nsw i64 %137, 8000
  %180 = add i64 %179, 8000
  %181 = getelementptr i8, ptr %6, i64 %180
  %182 = getelementptr i8, ptr %5, i64 %180
  %183 = load double, ptr %182, align 8
  %184 = load double, ptr %181, align 8
  br label %187

185:                                              ; preds = %187, %154
  %186 = getelementptr inbounds [1000 x double], ptr %3, i64 %138, i64 999
  store double 1.000000e+00, ptr %186, align 8, !tbaa !5
  br label %212

187:                                              ; preds = %187, %178
  %188 = phi double [ %184, %178 ], [ %204, %187 ]
  %189 = phi double [ %183, %178 ], [ %192, %187 ]
  %190 = phi i64 [ 1, %178 ], [ %206, %187 ]
  %191 = tail call double @llvm.fmuladd.f64(double %189, double 0xC08F400000000001, double 0x409F440000000001)
  %192 = fdiv double 0x408F400000000001, %191
  %193 = getelementptr inbounds [1000 x double], ptr %5, i64 %138, i64 %190
  store double %192, ptr %193, align 8, !tbaa !5
  %194 = getelementptr [1000 x double], ptr %150, i64 -1, i64 %190
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = getelementptr inbounds [1000 x double], ptr %4, i64 %138, i64 %190
  %197 = load double, ptr %196, align 8, !tbaa !5
  %198 = fmul double %197, 0xC0AF3E0000000001
  %199 = tail call double @llvm.fmuladd.f64(double %195, double 0x409F400000000001, double %198)
  %200 = getelementptr [1000 x double], ptr %150, i64 1, i64 %190
  %201 = load double, ptr %200, align 8, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %201, double 0x409F400000000001, double %199)
  %203 = tail call double @llvm.fmuladd.f64(double %188, double 0x408F400000000001, double %202)
  %204 = fdiv double %203, %191
  %205 = getelementptr inbounds [1000 x double], ptr %6, i64 %138, i64 %190
  store double %204, ptr %205, align 8, !tbaa !5
  %206 = add nuw nsw i64 %190, 1
  %207 = icmp eq i64 %206, 999
  br i1 %207, label %185, label %187, !llvm.loop !18

208:                                              ; preds = %212
  %209 = add nuw nsw i64 %138, 1
  %210 = icmp eq i64 %209, 999
  %211 = add i64 %137, 1
  br i1 %210, label %133, label %136, !llvm.loop !19

212:                                              ; preds = %212, %185
  %213 = phi double [ 1.000000e+00, %185 ], [ %226, %212 ]
  %214 = phi i64 [ 998, %185 ], [ %228, %212 ]
  %215 = getelementptr inbounds [1000 x double], ptr %5, i64 %138, i64 %214
  %216 = load double, ptr %215, align 8, !tbaa !5
  %217 = getelementptr inbounds [1000 x double], ptr %6, i64 %138, i64 %214
  %218 = load double, ptr %217, align 8, !tbaa !5
  %219 = tail call double @llvm.fmuladd.f64(double %216, double %213, double %218)
  %220 = getelementptr inbounds [1000 x double], ptr %3, i64 %138, i64 %214
  store double %219, ptr %220, align 8, !tbaa !5
  %221 = add nsw i64 %214, -1
  %222 = getelementptr inbounds [1000 x double], ptr %5, i64 %138, i64 %221
  %223 = load double, ptr %222, align 8, !tbaa !5
  %224 = getelementptr inbounds [1000 x double], ptr %6, i64 %138, i64 %221
  %225 = load double, ptr %224, align 8, !tbaa !5
  %226 = tail call double @llvm.fmuladd.f64(double %223, double %219, double %225)
  %227 = getelementptr inbounds [1000 x double], ptr %3, i64 %138, i64 %221
  store double %226, ptr %227, align 8, !tbaa !5
  %228 = add nsw i64 %214, -2
  %229 = icmp eq i64 %221, 1
  br i1 %229, label %208, label %212, !llvm.loop !20

230:                                              ; preds = %133
  %231 = load ptr, ptr @stdout, align 8, !tbaa !21
  %232 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %231)
  %233 = load ptr, ptr @stdout, align 8, !tbaa !21
  %234 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %233, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %235

235:                                              ; preds = %238, %230
  %236 = phi i64 [ 0, %230 ], [ %239, %238 ]
  %237 = mul nuw nsw i64 %236, 1000
  br label %241

238:                                              ; preds = %250
  %239 = add nuw nsw i64 %236, 1
  %240 = icmp eq i64 %239, 1000
  br i1 %240, label %257, label %235, !llvm.loop !23

241:                                              ; preds = %250, %235
  %242 = phi i64 [ 0, %235 ], [ %255, %250 ]
  %243 = add nuw nsw i64 %242, %237
  %244 = trunc i64 %243 to i32
  %245 = urem i32 %244, 20
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load ptr, ptr @stdout, align 8, !tbaa !21
  %249 = tail call i32 @fputc(i32 10, ptr %248)
  br label %250

250:                                              ; preds = %247, %241
  %251 = load ptr, ptr @stdout, align 8, !tbaa !21
  %252 = getelementptr inbounds [1000 x double], ptr %3, i64 %236, i64 %242
  %253 = load double, ptr %252, align 8, !tbaa !5
  %254 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %251, ptr noundef nonnull @.str.4, double noundef %253)
  %255 = add nuw nsw i64 %242, 1
  %256 = icmp eq i64 %255, 1000
  br i1 %256, label %238, label %241, !llvm.loop !24

257:                                              ; preds = %238
  %258 = load ptr, ptr @stdout, align 8, !tbaa !21
  %259 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %260 = load ptr, ptr @stdout, align 8, !tbaa !21
  %261 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %260)
  tail call void @free(ptr noundef nonnull %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef %5) #6
  tail call void @free(ptr noundef %6) #6
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
!6 = !{!"double", !7, i64 0}
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
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
