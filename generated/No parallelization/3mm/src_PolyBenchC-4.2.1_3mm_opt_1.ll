; ModuleID = 'outputs/src_PolyBenchC-4.2.1_3mm_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_3mm_opt_1.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 720000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 800000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 900000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 990000, i32 noundef 8) #6
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 1080000, i32 noundef 8) #6
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 8) #6
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 880000, i32 noundef 8) #6
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

92:                                               ; preds = %89, %128
  %93 = phi i64 [ %129, %128 ], [ 0, %89 ]
  br label %94

94:                                               ; preds = %124, %92
  %95 = phi i64 [ 0, %92 ], [ %126, %124 ]
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i64 [ 0, %94 ], [ %122, %96 ]
  %98 = phi double [ 0.000000e+00, %94 ], [ %121, %96 ]
  %99 = getelementptr inbounds [1000 x double], ptr %4, i64 %93, i64 %97
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = getelementptr inbounds [900 x double], ptr %5, i64 %97, i64 %95
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = tail call double @llvm.fmuladd.f64(double %100, double %102, double %98)
  %104 = or disjoint i64 %97, 1
  %105 = getelementptr inbounds [1000 x double], ptr %4, i64 %93, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = getelementptr inbounds [900 x double], ptr %5, i64 %104, i64 %95
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = tail call double @llvm.fmuladd.f64(double %106, double %108, double %103)
  %110 = or disjoint i64 %97, 2
  %111 = getelementptr inbounds [1000 x double], ptr %4, i64 %93, i64 %110
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = getelementptr inbounds [900 x double], ptr %5, i64 %110, i64 %95
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = tail call double @llvm.fmuladd.f64(double %112, double %114, double %109)
  %116 = or disjoint i64 %97, 3
  %117 = getelementptr inbounds [1000 x double], ptr %4, i64 %93, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = getelementptr inbounds [900 x double], ptr %5, i64 %116, i64 %95
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = tail call double @llvm.fmuladd.f64(double %118, double %120, double %115)
  %122 = add nuw nsw i64 %97, 4
  %123 = icmp ult i64 %97, 996
  br i1 %123, label %96, label %124, !llvm.loop !20

124:                                              ; preds = %96
  %125 = getelementptr inbounds [900 x double], ptr %3, i64 %93, i64 %95
  store double %121, ptr %125, align 8, !tbaa !5
  %126 = add nuw nsw i64 %95, 1
  %127 = icmp eq i64 %126, 900
  br i1 %127, label %128, label %94, !llvm.loop !21

128:                                              ; preds = %124
  %129 = add nuw nsw i64 %93, 1
  %130 = icmp eq i64 %129, 800
  br i1 %130, label %131, label %92, !llvm.loop !22

131:                                              ; preds = %128, %167
  %132 = phi i64 [ %168, %167 ], [ 0, %128 ]
  br label %133

133:                                              ; preds = %163, %131
  %134 = phi i64 [ 0, %131 ], [ %165, %163 ]
  br label %135

135:                                              ; preds = %135, %133
  %136 = phi i64 [ 0, %133 ], [ %161, %135 ]
  %137 = phi double [ 0.000000e+00, %133 ], [ %160, %135 ]
  %138 = getelementptr inbounds [1200 x double], ptr %7, i64 %132, i64 %136
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = getelementptr inbounds [1100 x double], ptr %8, i64 %136, i64 %134
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %139, double %141, double %137)
  %143 = or disjoint i64 %136, 1
  %144 = getelementptr inbounds [1200 x double], ptr %7, i64 %132, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds [1100 x double], ptr %8, i64 %143, i64 %134
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = tail call double @llvm.fmuladd.f64(double %145, double %147, double %142)
  %149 = or disjoint i64 %136, 2
  %150 = getelementptr inbounds [1200 x double], ptr %7, i64 %132, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds [1100 x double], ptr %8, i64 %149, i64 %134
  %153 = load double, ptr %152, align 8, !tbaa !5
  %154 = tail call double @llvm.fmuladd.f64(double %151, double %153, double %148)
  %155 = or disjoint i64 %136, 3
  %156 = getelementptr inbounds [1200 x double], ptr %7, i64 %132, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = getelementptr inbounds [1100 x double], ptr %8, i64 %155, i64 %134
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %157, double %159, double %154)
  %161 = add nuw nsw i64 %136, 4
  %162 = icmp ult i64 %136, 1196
  br i1 %162, label %135, label %163, !llvm.loop !23

163:                                              ; preds = %135
  %164 = getelementptr inbounds [1100 x double], ptr %6, i64 %132, i64 %134
  store double %160, ptr %164, align 8, !tbaa !5
  %165 = add nuw nsw i64 %134, 1
  %166 = icmp eq i64 %165, 1100
  br i1 %166, label %167, label %133, !llvm.loop !24

167:                                              ; preds = %163
  %168 = add nuw nsw i64 %132, 1
  %169 = icmp eq i64 %168, 900
  br i1 %169, label %170, label %131, !llvm.loop !25

170:                                              ; preds = %167, %206
  %171 = phi i64 [ %207, %206 ], [ 0, %167 ]
  br label %172

172:                                              ; preds = %202, %170
  %173 = phi i64 [ 0, %170 ], [ %204, %202 ]
  br label %174

174:                                              ; preds = %174, %172
  %175 = phi i64 [ 0, %172 ], [ %200, %174 ]
  %176 = phi double [ 0.000000e+00, %172 ], [ %199, %174 ]
  %177 = getelementptr inbounds [900 x double], ptr %3, i64 %171, i64 %175
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = getelementptr inbounds [1100 x double], ptr %6, i64 %175, i64 %173
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = tail call double @llvm.fmuladd.f64(double %178, double %180, double %176)
  %182 = or disjoint i64 %175, 1
  %183 = getelementptr inbounds [900 x double], ptr %3, i64 %171, i64 %182
  %184 = load double, ptr %183, align 8, !tbaa !5
  %185 = getelementptr inbounds [1100 x double], ptr %6, i64 %182, i64 %173
  %186 = load double, ptr %185, align 8, !tbaa !5
  %187 = tail call double @llvm.fmuladd.f64(double %184, double %186, double %181)
  %188 = or disjoint i64 %175, 2
  %189 = getelementptr inbounds [900 x double], ptr %3, i64 %171, i64 %188
  %190 = load double, ptr %189, align 8, !tbaa !5
  %191 = getelementptr inbounds [1100 x double], ptr %6, i64 %188, i64 %173
  %192 = load double, ptr %191, align 8, !tbaa !5
  %193 = tail call double @llvm.fmuladd.f64(double %190, double %192, double %187)
  %194 = or disjoint i64 %175, 3
  %195 = getelementptr inbounds [900 x double], ptr %3, i64 %171, i64 %194
  %196 = load double, ptr %195, align 8, !tbaa !5
  %197 = getelementptr inbounds [1100 x double], ptr %6, i64 %194, i64 %173
  %198 = load double, ptr %197, align 8, !tbaa !5
  %199 = tail call double @llvm.fmuladd.f64(double %196, double %198, double %193)
  %200 = add nuw nsw i64 %175, 4
  %201 = icmp ult i64 %175, 896
  br i1 %201, label %174, label %202, !llvm.loop !26

202:                                              ; preds = %174
  %203 = getelementptr inbounds [1100 x double], ptr %9, i64 %171, i64 %173
  store double %199, ptr %203, align 8, !tbaa !5
  %204 = add nuw nsw i64 %173, 1
  %205 = icmp eq i64 %204, 1100
  br i1 %205, label %206, label %172, !llvm.loop !27

206:                                              ; preds = %202
  %207 = add nuw nsw i64 %171, 1
  %208 = icmp eq i64 %207, 800
  br i1 %208, label %209, label %170, !llvm.loop !28

209:                                              ; preds = %206
  %210 = load ptr, ptr @stdout, align 8, !tbaa !29
  %211 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %210)
  %212 = load ptr, ptr @stdout, align 8, !tbaa !29
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %214

214:                                              ; preds = %233, %209
  %215 = phi i64 [ 0, %209 ], [ %234, %233 ]
  %216 = mul nuw nsw i64 %215, 800
  br label %217

217:                                              ; preds = %226, %214
  %218 = phi i64 [ 0, %214 ], [ %231, %226 ]
  %219 = add nuw nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  %221 = urem i32 %220, 20
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  %224 = load ptr, ptr @stdout, align 8, !tbaa !29
  %225 = tail call i32 @fputc(i32 10, ptr %224)
  br label %226

226:                                              ; preds = %223, %217
  %227 = load ptr, ptr @stdout, align 8, !tbaa !29
  %228 = getelementptr inbounds [1100 x double], ptr %9, i64 %215, i64 %218
  %229 = load double, ptr %228, align 8, !tbaa !5
  %230 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.4, double noundef %229)
  %231 = add nuw nsw i64 %218, 1
  %232 = icmp eq i64 %231, 1100
  br i1 %232, label %233, label %217, !llvm.loop !31

233:                                              ; preds = %226
  %234 = add nuw nsw i64 %215, 1
  %235 = icmp eq i64 %234, 800
  br i1 %235, label %236, label %214, !llvm.loop !32

236:                                              ; preds = %233
  %237 = load ptr, ptr @stdout, align 8, !tbaa !29
  %238 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %237, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %239 = load ptr, ptr @stdout, align 8, !tbaa !29
  %240 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %239)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef %5) #6
  tail call void @free(ptr noundef %6) #6
  tail call void @free(ptr noundef %7) #6
  tail call void @free(ptr noundef %8) #6
  tail call void @free(ptr noundef nonnull %9) #6
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
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
