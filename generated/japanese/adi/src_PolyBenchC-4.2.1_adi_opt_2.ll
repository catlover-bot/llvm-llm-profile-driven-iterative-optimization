; ModuleID = 'outputs/src_PolyBenchC-4.2.1_adi_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_adi_opt_2.c"
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

33:                                               ; preds = %30, %132
  %34 = phi i32 [ %133, %132 ], [ 1, %30 ]
  br label %35

35:                                               ; preds = %108, %33
  %36 = phi i64 [ %110, %108 ], [ 0, %33 ]
  %37 = phi i64 [ %49, %108 ], [ 1, %33 ]
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
  %47 = getelementptr inbounds [1000 x double], ptr %6, i64 %37
  store double 1.000000e+00, ptr %47, align 8, !tbaa !5
  %48 = add nsw i64 %37, -1
  %49 = add nuw nsw i64 %37, 1
  %50 = icmp ult ptr %40, %44
  %51 = icmp ult ptr %43, %42
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %35, %53
  %54 = phi i64 [ %75, %53 ], [ 1, %35 ]
  %55 = add nsw i64 %54, -1
  %56 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = tail call double @llvm.fmuladd.f64(double %57, double 0xC09F400000000001, double 0x40AF420000000001)
  %59 = fdiv double 0x409F400000000001, %58
  %60 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %54
  store double %59, ptr %60, align 8, !tbaa !5
  %61 = getelementptr inbounds [1000 x double], ptr %3, i64 %54, i64 %48
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds [1000 x double], ptr %3, i64 %54, i64 %37
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = fmul double %64, 0xC09F3C0000000001
  %66 = tail call double @llvm.fmuladd.f64(double %62, double 0x408F400000000001, double %65)
  %67 = getelementptr inbounds [1000 x double], ptr %3, i64 %54, i64 %49
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = tail call double @llvm.fmuladd.f64(double %68, double 0x408F400000000001, double %66)
  %70 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %55
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = tail call double @llvm.fmuladd.f64(double %71, double 0x409F400000000001, double %69)
  %73 = fdiv double %72, %58
  %74 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %54
  store double %73, ptr %74, align 8, !tbaa !5
  %75 = add nuw nsw i64 %54, 1
  %76 = icmp eq i64 %75, 999
  br i1 %76, label %84, label %53, !llvm.loop !14

77:                                               ; preds = %35
  %78 = mul nuw nsw i64 %36, 8000
  %79 = add i64 %78, 8000
  %80 = getelementptr i8, ptr %6, i64 %79
  %81 = getelementptr i8, ptr %5, i64 %79
  %82 = load double, ptr %81, align 8
  %83 = load double, ptr %80, align 8
  br label %87

84:                                               ; preds = %87, %53
  %85 = getelementptr inbounds [1000 x double], ptr %4, i64 999, i64 %37
  store double 1.000000e+00, ptr %85, align 8, !tbaa !5
  %86 = getelementptr [1000 x double], ptr %4, i64 1, i64 %37
  br label %111

87:                                               ; preds = %87, %77
  %88 = phi double [ %83, %77 ], [ %104, %87 ]
  %89 = phi double [ %82, %77 ], [ %92, %87 ]
  %90 = phi i64 [ 1, %77 ], [ %106, %87 ]
  %91 = tail call double @llvm.fmuladd.f64(double %89, double 0xC09F400000000001, double 0x40AF420000000001)
  %92 = fdiv double 0x409F400000000001, %91
  %93 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %90
  store double %92, ptr %93, align 8, !tbaa !5
  %94 = getelementptr inbounds [1000 x double], ptr %3, i64 %90, i64 %48
  %95 = load double, ptr %94, align 8, !tbaa !5
  %96 = getelementptr inbounds [1000 x double], ptr %3, i64 %90, i64 %37
  %97 = load double, ptr %96, align 8, !tbaa !5
  %98 = fmul double %97, 0xC09F3C0000000001
  %99 = tail call double @llvm.fmuladd.f64(double %95, double 0x408F400000000001, double %98)
  %100 = getelementptr inbounds [1000 x double], ptr %3, i64 %90, i64 %49
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = tail call double @llvm.fmuladd.f64(double %101, double 0x408F400000000001, double %99)
  %103 = tail call double @llvm.fmuladd.f64(double %88, double 0x409F400000000001, double %102)
  %104 = fdiv double %103, %91
  %105 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %90
  store double %104, ptr %105, align 8, !tbaa !5
  %106 = add nuw nsw i64 %90, 1
  %107 = icmp eq i64 %106, 999
  br i1 %107, label %84, label %87, !llvm.loop !14

108:                                              ; preds = %111
  %109 = icmp eq i64 %49, 999
  %110 = add i64 %36, 1
  br i1 %109, label %135, label %35, !llvm.loop !15

111:                                              ; preds = %111, %84
  %112 = phi i64 [ 998, %84 ], [ %130, %111 ]
  %113 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = getelementptr [1000 x double], ptr %86, i64 %112
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %112
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = tail call double @llvm.fmuladd.f64(double %114, double %116, double %118)
  %120 = getelementptr inbounds [1000 x double], ptr %4, i64 %112, i64 %37
  store double %119, ptr %120, align 8, !tbaa !5
  %121 = add nsw i64 %112, -1
  %122 = getelementptr inbounds [1000 x double], ptr %5, i64 %37, i64 %121
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = getelementptr [1000 x double], ptr %86, i64 %121
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds [1000 x double], ptr %6, i64 %37, i64 %121
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = tail call double @llvm.fmuladd.f64(double %123, double %125, double %127)
  %129 = getelementptr inbounds [1000 x double], ptr %4, i64 %121, i64 %37
  store double %128, ptr %129, align 8, !tbaa !5
  %130 = add nsw i64 %112, -2
  %131 = icmp eq i64 %121, 1
  br i1 %131, label %108, label %111, !llvm.loop !16

132:                                              ; preds = %207
  %133 = add nuw nsw i32 %34, 1
  %134 = icmp eq i32 %133, 501
  br i1 %134, label %229, label %33, !llvm.loop !17

135:                                              ; preds = %108, %207
  %136 = phi i64 [ %210, %207 ], [ 0, %108 ]
  %137 = phi i64 [ %208, %207 ], [ 1, %108 ]
  %138 = mul nuw nsw i64 %136, 8000
  %139 = add i64 %138, 8000
  %140 = getelementptr i8, ptr %5, i64 %139
  %141 = add i64 %138, 15992
  %142 = getelementptr i8, ptr %5, i64 %141
  %143 = getelementptr i8, ptr %6, i64 %139
  %144 = getelementptr i8, ptr %6, i64 %141
  %145 = getelementptr inbounds [1000 x double], ptr %3, i64 %137
  store double 1.000000e+00, ptr %145, align 8, !tbaa !5
  %146 = getelementptr inbounds [1000 x double], ptr %5, i64 %137
  store double 0.000000e+00, ptr %146, align 8, !tbaa !5
  %147 = load double, ptr %145, align 8, !tbaa !5
  %148 = getelementptr inbounds [1000 x double], ptr %6, i64 %137
  store double %147, ptr %148, align 8, !tbaa !5
  %149 = getelementptr [1000 x double], ptr %4, i64 %137
  %150 = icmp ult ptr %140, %144
  %151 = icmp ult ptr %143, %142
  %152 = and i1 %150, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %135, %153
  %154 = phi i64 [ %175, %153 ], [ 1, %135 ]
  %155 = add nsw i64 %154, -1
  %156 = getelementptr inbounds [1000 x double], ptr %5, i64 %137, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = tail call double @llvm.fmuladd.f64(double %157, double 0xC08F400000000001, double 0x409F440000000001)
  %159 = fdiv double 0x408F400000000001, %158
  %160 = getelementptr inbounds [1000 x double], ptr %5, i64 %137, i64 %154
  store double %159, ptr %160, align 8, !tbaa !5
  %161 = getelementptr [1000 x double], ptr %149, i64 -1, i64 %154
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = getelementptr inbounds [1000 x double], ptr %4, i64 %137, i64 %154
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = fmul double %164, 0xC0AF3E0000000001
  %166 = tail call double @llvm.fmuladd.f64(double %162, double 0x409F400000000001, double %165)
  %167 = getelementptr [1000 x double], ptr %149, i64 1, i64 %154
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = tail call double @llvm.fmuladd.f64(double %168, double 0x409F400000000001, double %166)
  %170 = getelementptr inbounds [1000 x double], ptr %6, i64 %137, i64 %155
  %171 = load double, ptr %170, align 8, !tbaa !5
  %172 = tail call double @llvm.fmuladd.f64(double %171, double 0x408F400000000001, double %169)
  %173 = fdiv double %172, %158
  %174 = getelementptr inbounds [1000 x double], ptr %6, i64 %137, i64 %154
  store double %173, ptr %174, align 8, !tbaa !5
  %175 = add nuw nsw i64 %154, 1
  %176 = icmp eq i64 %175, 999
  br i1 %176, label %184, label %153, !llvm.loop !18

177:                                              ; preds = %135
  %178 = mul nuw nsw i64 %136, 8000
  %179 = add i64 %178, 8000
  %180 = getelementptr i8, ptr %6, i64 %179
  %181 = getelementptr i8, ptr %5, i64 %179
  %182 = load double, ptr %181, align 8
  %183 = load double, ptr %180, align 8
  br label %186

184:                                              ; preds = %186, %153
  %185 = getelementptr inbounds [1000 x double], ptr %3, i64 %137, i64 999
  store double 1.000000e+00, ptr %185, align 8, !tbaa !5
  br label %211

186:                                              ; preds = %186, %177
  %187 = phi double [ %183, %177 ], [ %203, %186 ]
  %188 = phi double [ %182, %177 ], [ %191, %186 ]
  %189 = phi i64 [ 1, %177 ], [ %205, %186 ]
  %190 = tail call double @llvm.fmuladd.f64(double %188, double 0xC08F400000000001, double 0x409F440000000001)
  %191 = fdiv double 0x408F400000000001, %190
  %192 = getelementptr inbounds [1000 x double], ptr %5, i64 %137, i64 %189
  store double %191, ptr %192, align 8, !tbaa !5
  %193 = getelementptr [1000 x double], ptr %149, i64 -1, i64 %189
  %194 = load double, ptr %193, align 8, !tbaa !5
  %195 = getelementptr inbounds [1000 x double], ptr %4, i64 %137, i64 %189
  %196 = load double, ptr %195, align 8, !tbaa !5
  %197 = fmul double %196, 0xC0AF3E0000000001
  %198 = tail call double @llvm.fmuladd.f64(double %194, double 0x409F400000000001, double %197)
  %199 = getelementptr [1000 x double], ptr %149, i64 1, i64 %189
  %200 = load double, ptr %199, align 8, !tbaa !5
  %201 = tail call double @llvm.fmuladd.f64(double %200, double 0x409F400000000001, double %198)
  %202 = tail call double @llvm.fmuladd.f64(double %187, double 0x408F400000000001, double %201)
  %203 = fdiv double %202, %190
  %204 = getelementptr inbounds [1000 x double], ptr %6, i64 %137, i64 %189
  store double %203, ptr %204, align 8, !tbaa !5
  %205 = add nuw nsw i64 %189, 1
  %206 = icmp eq i64 %205, 999
  br i1 %206, label %184, label %186, !llvm.loop !18

207:                                              ; preds = %211
  %208 = add nuw nsw i64 %137, 1
  %209 = icmp eq i64 %208, 999
  %210 = add i64 %136, 1
  br i1 %209, label %132, label %135, !llvm.loop !19

211:                                              ; preds = %211, %184
  %212 = phi double [ 1.000000e+00, %184 ], [ %225, %211 ]
  %213 = phi i64 [ 998, %184 ], [ %227, %211 ]
  %214 = getelementptr inbounds [1000 x double], ptr %5, i64 %137, i64 %213
  %215 = load double, ptr %214, align 8, !tbaa !5
  %216 = getelementptr inbounds [1000 x double], ptr %6, i64 %137, i64 %213
  %217 = load double, ptr %216, align 8, !tbaa !5
  %218 = tail call double @llvm.fmuladd.f64(double %215, double %212, double %217)
  %219 = getelementptr inbounds [1000 x double], ptr %3, i64 %137, i64 %213
  store double %218, ptr %219, align 8, !tbaa !5
  %220 = add nsw i64 %213, -1
  %221 = getelementptr inbounds [1000 x double], ptr %5, i64 %137, i64 %220
  %222 = load double, ptr %221, align 8, !tbaa !5
  %223 = getelementptr inbounds [1000 x double], ptr %6, i64 %137, i64 %220
  %224 = load double, ptr %223, align 8, !tbaa !5
  %225 = tail call double @llvm.fmuladd.f64(double %222, double %218, double %224)
  %226 = getelementptr inbounds [1000 x double], ptr %3, i64 %137, i64 %220
  store double %225, ptr %226, align 8, !tbaa !5
  %227 = add nsw i64 %213, -2
  %228 = icmp eq i64 %220, 1
  br i1 %228, label %207, label %211, !llvm.loop !20

229:                                              ; preds = %132
  %230 = load ptr, ptr @stdout, align 8, !tbaa !21
  %231 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %230)
  %232 = load ptr, ptr @stdout, align 8, !tbaa !21
  %233 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %234

234:                                              ; preds = %237, %229
  %235 = phi i64 [ 0, %229 ], [ %238, %237 ]
  %236 = mul nuw nsw i64 %235, 1000
  br label %240

237:                                              ; preds = %249
  %238 = add nuw nsw i64 %235, 1
  %239 = icmp eq i64 %238, 1000
  br i1 %239, label %256, label %234, !llvm.loop !23

240:                                              ; preds = %249, %234
  %241 = phi i64 [ 0, %234 ], [ %254, %249 ]
  %242 = add nuw nsw i64 %241, %236
  %243 = trunc i64 %242 to i32
  %244 = urem i32 %243, 20
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load ptr, ptr @stdout, align 8, !tbaa !21
  %248 = tail call i32 @fputc(i32 10, ptr %247)
  br label %249

249:                                              ; preds = %246, %240
  %250 = load ptr, ptr @stdout, align 8, !tbaa !21
  %251 = getelementptr inbounds [1000 x double], ptr %3, i64 %235, i64 %241
  %252 = load double, ptr %251, align 8, !tbaa !5
  %253 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %250, ptr noundef nonnull @.str.4, double noundef %252)
  %254 = add nuw nsw i64 %241, 1
  %255 = icmp eq i64 %254, 1000
  br i1 %255, label %237, label %240, !llvm.loop !24

256:                                              ; preds = %237
  %257 = load ptr, ptr @stdout, align 8, !tbaa !21
  %258 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %257, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %259 = load ptr, ptr @stdout, align 8, !tbaa !21
  %260 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %259)
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
