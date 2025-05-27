; ModuleID = 'outputs/src_PolyBenchC-4.2.1_3mm_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_3mm_opt_2.c"
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

92:                                               ; preds = %89, %130
  %93 = phi i64 [ %131, %130 ], [ 0, %89 ]
  br label %94

94:                                               ; preds = %119, %92
  %95 = phi i64 [ 0, %92 ], [ %128, %119 ]
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i64 [ 0, %94 ], [ %117, %96 ]
  %98 = phi <4 x double> [ zeroinitializer, %94 ], [ %116, %96 ]
  %99 = getelementptr inbounds [1000 x double], ptr %4, i64 %93, i64 %97
  %100 = getelementptr inbounds [900 x double], ptr %5, i64 %97, i64 %95
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = or disjoint i64 %97, 1
  %103 = getelementptr inbounds [900 x double], ptr %5, i64 %102, i64 %95
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = or disjoint i64 %97, 2
  %106 = getelementptr inbounds [900 x double], ptr %5, i64 %105, i64 %95
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = or disjoint i64 %97, 3
  %109 = load <4 x double>, ptr %99, align 8, !tbaa !5
  %110 = getelementptr inbounds [900 x double], ptr %5, i64 %108, i64 %95
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = insertelement <4 x double> poison, double %101, i64 0
  %113 = insertelement <4 x double> %112, double %104, i64 1
  %114 = insertelement <4 x double> %113, double %107, i64 2
  %115 = insertelement <4 x double> %114, double %111, i64 3
  %116 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %109, <4 x double> %115, <4 x double> %98)
  %117 = add nuw nsw i64 %97, 4
  %118 = icmp ult i64 %97, 996
  br i1 %118, label %96, label %119, !llvm.loop !20

119:                                              ; preds = %96
  %120 = extractelement <4 x double> %116, i64 0
  %121 = extractelement <4 x double> %116, i64 1
  %122 = fadd double %120, %121
  %123 = extractelement <4 x double> %116, i64 2
  %124 = fadd double %122, %123
  %125 = extractelement <4 x double> %116, i64 3
  %126 = fadd double %124, %125
  %127 = getelementptr inbounds [900 x double], ptr %3, i64 %93, i64 %95
  store double %126, ptr %127, align 8, !tbaa !5
  %128 = add nuw nsw i64 %95, 1
  %129 = icmp eq i64 %128, 900
  br i1 %129, label %130, label %94, !llvm.loop !21

130:                                              ; preds = %119
  %131 = add nuw nsw i64 %93, 1
  %132 = icmp eq i64 %131, 800
  br i1 %132, label %133, label %92, !llvm.loop !22

133:                                              ; preds = %130, %171
  %134 = phi i64 [ %172, %171 ], [ 0, %130 ]
  br label %135

135:                                              ; preds = %160, %133
  %136 = phi i64 [ 0, %133 ], [ %169, %160 ]
  br label %137

137:                                              ; preds = %137, %135
  %138 = phi i64 [ 0, %135 ], [ %158, %137 ]
  %139 = phi <4 x double> [ zeroinitializer, %135 ], [ %157, %137 ]
  %140 = getelementptr inbounds [1200 x double], ptr %7, i64 %134, i64 %138
  %141 = getelementptr inbounds [1100 x double], ptr %8, i64 %138, i64 %136
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = or disjoint i64 %138, 1
  %144 = getelementptr inbounds [1100 x double], ptr %8, i64 %143, i64 %136
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = or disjoint i64 %138, 2
  %147 = getelementptr inbounds [1100 x double], ptr %8, i64 %146, i64 %136
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = or disjoint i64 %138, 3
  %150 = load <4 x double>, ptr %140, align 8, !tbaa !5
  %151 = getelementptr inbounds [1100 x double], ptr %8, i64 %149, i64 %136
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = insertelement <4 x double> poison, double %142, i64 0
  %154 = insertelement <4 x double> %153, double %145, i64 1
  %155 = insertelement <4 x double> %154, double %148, i64 2
  %156 = insertelement <4 x double> %155, double %152, i64 3
  %157 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %150, <4 x double> %156, <4 x double> %139)
  %158 = add nuw nsw i64 %138, 4
  %159 = icmp ult i64 %138, 1196
  br i1 %159, label %137, label %160, !llvm.loop !23

160:                                              ; preds = %137
  %161 = extractelement <4 x double> %157, i64 0
  %162 = extractelement <4 x double> %157, i64 1
  %163 = fadd double %161, %162
  %164 = extractelement <4 x double> %157, i64 2
  %165 = fadd double %163, %164
  %166 = extractelement <4 x double> %157, i64 3
  %167 = fadd double %165, %166
  %168 = getelementptr inbounds [1100 x double], ptr %6, i64 %134, i64 %136
  store double %167, ptr %168, align 8, !tbaa !5
  %169 = add nuw nsw i64 %136, 1
  %170 = icmp eq i64 %169, 1100
  br i1 %170, label %171, label %135, !llvm.loop !24

171:                                              ; preds = %160
  %172 = add nuw nsw i64 %134, 1
  %173 = icmp eq i64 %172, 900
  br i1 %173, label %174, label %133, !llvm.loop !25

174:                                              ; preds = %171, %212
  %175 = phi i64 [ %213, %212 ], [ 0, %171 ]
  br label %176

176:                                              ; preds = %201, %174
  %177 = phi i64 [ 0, %174 ], [ %210, %201 ]
  br label %178

178:                                              ; preds = %178, %176
  %179 = phi i64 [ 0, %176 ], [ %199, %178 ]
  %180 = phi <4 x double> [ zeroinitializer, %176 ], [ %198, %178 ]
  %181 = getelementptr inbounds [900 x double], ptr %3, i64 %175, i64 %179
  %182 = getelementptr inbounds [1100 x double], ptr %6, i64 %179, i64 %177
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = or disjoint i64 %179, 1
  %185 = getelementptr inbounds [1100 x double], ptr %6, i64 %184, i64 %177
  %186 = load double, ptr %185, align 8, !tbaa !5
  %187 = or disjoint i64 %179, 2
  %188 = getelementptr inbounds [1100 x double], ptr %6, i64 %187, i64 %177
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = or disjoint i64 %179, 3
  %191 = load <4 x double>, ptr %181, align 8, !tbaa !5
  %192 = getelementptr inbounds [1100 x double], ptr %6, i64 %190, i64 %177
  %193 = load double, ptr %192, align 8, !tbaa !5
  %194 = insertelement <4 x double> poison, double %183, i64 0
  %195 = insertelement <4 x double> %194, double %186, i64 1
  %196 = insertelement <4 x double> %195, double %189, i64 2
  %197 = insertelement <4 x double> %196, double %193, i64 3
  %198 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %191, <4 x double> %197, <4 x double> %180)
  %199 = add nuw nsw i64 %179, 4
  %200 = icmp ult i64 %179, 896
  br i1 %200, label %178, label %201, !llvm.loop !26

201:                                              ; preds = %178
  %202 = extractelement <4 x double> %198, i64 0
  %203 = extractelement <4 x double> %198, i64 1
  %204 = fadd double %202, %203
  %205 = extractelement <4 x double> %198, i64 2
  %206 = fadd double %204, %205
  %207 = extractelement <4 x double> %198, i64 3
  %208 = fadd double %206, %207
  %209 = getelementptr inbounds [1100 x double], ptr %9, i64 %175, i64 %177
  store double %208, ptr %209, align 8, !tbaa !5
  %210 = add nuw nsw i64 %177, 1
  %211 = icmp eq i64 %210, 1100
  br i1 %211, label %212, label %176, !llvm.loop !27

212:                                              ; preds = %201
  %213 = add nuw nsw i64 %175, 1
  %214 = icmp eq i64 %213, 800
  br i1 %214, label %215, label %174, !llvm.loop !28

215:                                              ; preds = %212
  %216 = load ptr, ptr @stdout, align 8, !tbaa !29
  %217 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %216)
  %218 = load ptr, ptr @stdout, align 8, !tbaa !29
  %219 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %220

220:                                              ; preds = %239, %215
  %221 = phi i64 [ 0, %215 ], [ %240, %239 ]
  %222 = mul nuw nsw i64 %221, 800
  br label %223

223:                                              ; preds = %232, %220
  %224 = phi i64 [ 0, %220 ], [ %237, %232 ]
  %225 = add nuw nsw i64 %224, %222
  %226 = trunc i64 %225 to i32
  %227 = urem i32 %226, 20
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load ptr, ptr @stdout, align 8, !tbaa !29
  %231 = tail call i32 @fputc(i32 10, ptr %230)
  br label %232

232:                                              ; preds = %229, %223
  %233 = load ptr, ptr @stdout, align 8, !tbaa !29
  %234 = getelementptr inbounds [1100 x double], ptr %9, i64 %221, i64 %224
  %235 = load double, ptr %234, align 8, !tbaa !5
  %236 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %233, ptr noundef nonnull @.str.4, double noundef %235)
  %237 = add nuw nsw i64 %224, 1
  %238 = icmp eq i64 %237, 1100
  br i1 %238, label %239, label %223, !llvm.loop !31

239:                                              ; preds = %232
  %240 = add nuw nsw i64 %221, 1
  %241 = icmp eq i64 %240, 800
  br i1 %241, label %242, label %220, !llvm.loop !32

242:                                              ; preds = %239
  %243 = load ptr, ptr @stdout, align 8, !tbaa !29
  %244 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %245 = load ptr, ptr @stdout, align 8, !tbaa !29
  %246 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %245)
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

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
