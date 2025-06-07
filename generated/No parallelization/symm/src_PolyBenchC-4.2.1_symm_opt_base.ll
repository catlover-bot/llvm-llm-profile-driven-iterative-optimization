; ModuleID = 'src/PolyBenchC-4.2.1/symm.c'
source_filename = "src/PolyBenchC-4.2.1/symm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %4
  %9 = icmp ult i64 %8, 16
  br label %10

10:                                               ; preds = %52, %2
  %11 = phi i64 [ 0, %2 ], [ %53, %52 ]
  %12 = add nuw nsw i64 %11, 1200
  br i1 %9, label %36, label %13

13:                                               ; preds = %10
  %14 = insertelement <2 x i64> poison, i64 %11, i64 0
  %15 = shufflevector <2 x i64> %14, <2 x i64> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x i64> poison, i64 %12, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %18, %13
  %19 = phi i64 [ 0, %13 ], [ %33, %18 ]
  %20 = phi <2 x i64> [ <i64 0, i64 1>, %13 ], [ %34, %18 ]
  %21 = add nuw nsw <2 x i64> %20, %15
  %22 = trunc <2 x i64> %21 to <2 x i32>
  %23 = urem <2 x i32> %22, <i32 100, i32 100>
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, <double 1.000000e+03, double 1.000000e+03>
  %26 = getelementptr inbounds [1200 x double], ptr %3, i64 %11, i64 %19
  store <2 x double> %25, ptr %26, align 8, !tbaa !5
  %27 = sub nuw nsw <2 x i64> %17, %20
  %28 = trunc <2 x i64> %27 to <2 x i32>
  %29 = urem <2 x i32> %28, <i32 100, i32 100>
  %30 = sitofp <2 x i32> %29 to <2 x double>
  %31 = fdiv <2 x double> %30, <double 1.000000e+03, double 1.000000e+03>
  %32 = getelementptr inbounds [1200 x double], ptr %6, i64 %11, i64 %19
  store <2 x double> %31, ptr %32, align 8, !tbaa !5
  %33 = add nuw i64 %19, 2
  %34 = add <2 x i64> %20, <i64 2, i64 2>
  %35 = icmp eq i64 %33, 1200
  br i1 %35, label %52, label %18, !llvm.loop !9

36:                                               ; preds = %10, %36
  %37 = phi i64 [ %50, %36 ], [ 0, %10 ]
  %38 = add nuw nsw i64 %37, %11
  %39 = trunc i64 %38 to i32
  %40 = urem i32 %39, 100
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 1.000000e+03
  %43 = getelementptr inbounds [1200 x double], ptr %3, i64 %11, i64 %37
  store double %42, ptr %43, align 8, !tbaa !5
  %44 = sub nuw nsw i64 %12, %37
  %45 = trunc i64 %44 to i32
  %46 = urem i32 %45, 100
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+03
  %49 = getelementptr inbounds [1200 x double], ptr %6, i64 %11, i64 %37
  store double %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %37, 1
  %51 = icmp eq i64 %50, 1200
  br i1 %51, label %52, label %36, !llvm.loop !13

52:                                               ; preds = %18, %36
  %53 = add nuw nsw i64 %11, 1
  %54 = icmp eq i64 %53, 1000
  br i1 %54, label %69, label %10, !llvm.loop !14

55:                                               ; preds = %123, %119, %104
  %56 = add nuw nsw i64 %71, 1
  %57 = icmp eq i64 %105, 1000
  br i1 %57, label %58, label %69, !llvm.loop !15

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %3, i64 9600
  %60 = getelementptr i8, ptr %6, i64 9600
  %61 = getelementptr i8, ptr %5, i64 8000000
  %62 = icmp ult ptr %3, %60
  %63 = icmp ult ptr %6, %59
  %64 = and i1 %62, %63
  %65 = icmp ult ptr %3, %61
  %66 = icmp ult ptr %5, %59
  %67 = and i1 %65, %66
  %68 = or i1 %64, %67
  br label %128

69:                                               ; preds = %52, %55
  %70 = phi i64 [ %105, %55 ], [ 0, %52 ]
  %71 = phi i64 [ %56, %55 ], [ 1, %52 ]
  %72 = sub nsw i64 999, %70
  %73 = icmp ult i64 %71, 2
  br i1 %73, label %92, label %74

74:                                               ; preds = %69
  %75 = and i64 %71, 9223372036854775806
  %76 = insertelement <2 x i64> poison, i64 %70, i64 0
  %77 = shufflevector <2 x i64> %76, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %78

78:                                               ; preds = %78, %74
  %79 = phi i64 [ 0, %74 ], [ %87, %78 ]
  %80 = phi <2 x i64> [ <i64 0, i64 1>, %74 ], [ %88, %78 ]
  %81 = add nuw nsw <2 x i64> %80, %77
  %82 = trunc <2 x i64> %81 to <2 x i32>
  %83 = urem <2 x i32> %82, <i32 100, i32 100>
  %84 = sitofp <2 x i32> %83 to <2 x double>
  %85 = fdiv <2 x double> %84, <double 1.000000e+03, double 1.000000e+03>
  %86 = getelementptr inbounds [1000 x double], ptr %5, i64 %70, i64 %79
  store <2 x double> %85, ptr %86, align 8, !tbaa !5
  %87 = add nuw i64 %79, 2
  %88 = add <2 x i64> %80, <i64 2, i64 2>
  %89 = icmp eq i64 %87, %75
  br i1 %89, label %90, label %78, !llvm.loop !16

90:                                               ; preds = %78
  %91 = icmp eq i64 %71, %75
  br i1 %91, label %104, label %92

92:                                               ; preds = %69, %90
  %93 = phi i64 [ 0, %69 ], [ %75, %90 ]
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi i64 [ %102, %94 ], [ %93, %92 ]
  %96 = add nuw nsw i64 %95, %70
  %97 = trunc i64 %96 to i32
  %98 = urem i32 %97, 100
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %99, 1.000000e+03
  %101 = getelementptr inbounds [1000 x double], ptr %5, i64 %70, i64 %95
  store double %100, ptr %101, align 8, !tbaa !5
  %102 = add nuw nsw i64 %95, 1
  %103 = icmp eq i64 %102, %71
  br i1 %103, label %104, label %94, !llvm.loop !17

104:                                              ; preds = %94, %90
  %105 = add nuw nsw i64 %70, 1
  %106 = icmp ult i64 %70, 999
  br i1 %106, label %107, label %55

107:                                              ; preds = %104
  %108 = icmp ult i64 %72, 4
  br i1 %108, label %121, label %109

109:                                              ; preds = %107
  %110 = and i64 %72, -4
  %111 = add i64 %71, %110
  br label %112

112:                                              ; preds = %112, %109
  %113 = phi i64 [ 0, %109 ], [ %117, %112 ]
  %114 = add i64 %71, %113
  %115 = getelementptr inbounds [1000 x double], ptr %5, i64 %70, i64 %114
  %116 = getelementptr inbounds double, ptr %115, i64 2
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, ptr %115, align 8, !tbaa !5
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, ptr %116, align 8, !tbaa !5
  %117 = add nuw i64 %113, 4
  %118 = icmp eq i64 %117, %110
  br i1 %118, label %119, label %112, !llvm.loop !18

119:                                              ; preds = %112
  %120 = icmp eq i64 %72, %110
  br i1 %120, label %55, label %121

121:                                              ; preds = %107, %119
  %122 = phi i64 [ %71, %107 ], [ %111, %119 ]
  br label %123

123:                                              ; preds = %121, %123
  %124 = phi i64 [ %126, %123 ], [ %122, %121 ]
  %125 = getelementptr inbounds [1000 x double], ptr %5, i64 %70, i64 %124
  store double -9.990000e+02, ptr %125, align 8, !tbaa !5
  %126 = add nuw nsw i64 %124, 1
  %127 = icmp eq i64 %126, 1000
  br i1 %127, label %55, label %123, !llvm.loop !19

128:                                              ; preds = %58, %210
  %129 = phi i64 [ %211, %210 ], [ 0, %58 ]
  %130 = icmp eq i64 %129, 0
  %131 = getelementptr inbounds [1000 x double], ptr %5, i64 %129, i64 %129
  br i1 %130, label %132, label %157

132:                                              ; preds = %128
  br i1 %68, label %187, label %133

133:                                              ; preds = %132
  %134 = load double, ptr %131, align 8, !tbaa !5, !alias.scope !20
  %135 = insertelement <2 x double> poison, double %134, i64 0
  %136 = shufflevector <2 x double> %135, <2 x double> poison, <2 x i32> zeroinitializer
  br label %137

137:                                              ; preds = %133, %137
  %138 = phi i64 [ %155, %137 ], [ 0, %133 ]
  %139 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %138
  %140 = getelementptr inbounds double, ptr %139, i64 2
  %141 = load <2 x double>, ptr %139, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %142 = load <2 x double>, ptr %140, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %143 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %138
  %144 = getelementptr inbounds double, ptr %143, i64 2
  %145 = load <2 x double>, ptr %143, align 8, !tbaa !5, !alias.scope !27
  %146 = load <2 x double>, ptr %144, align 8, !tbaa !5, !alias.scope !27
  %147 = fmul <2 x double> %145, <double 1.500000e+00, double 1.500000e+00>
  %148 = fmul <2 x double> %146, <double 1.500000e+00, double 1.500000e+00>
  %149 = fmul <2 x double> %147, %136
  %150 = fmul <2 x double> %148, %136
  %151 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %141, <2 x double> <double 1.200000e+00, double 1.200000e+00>, <2 x double> %149)
  %152 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %142, <2 x double> <double 1.200000e+00, double 1.200000e+00>, <2 x double> %150)
  %153 = fadd <2 x double> %151, zeroinitializer
  %154 = fadd <2 x double> %152, zeroinitializer
  store <2 x double> %153, ptr %139, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  store <2 x double> %154, ptr %140, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %155 = add nuw i64 %138, 4
  %156 = icmp eq i64 %155, 1200
  br i1 %156, label %210, label %137, !llvm.loop !28

157:                                              ; preds = %128, %176
  %158 = phi i64 [ %185, %176 ], [ 0, %128 ]
  %159 = getelementptr inbounds [1200 x double], ptr %6, i64 %129, i64 %158
  br label %160

160:                                              ; preds = %160, %157
  %161 = phi i64 [ 0, %157 ], [ %174, %160 ]
  %162 = phi double [ 0.000000e+00, %157 ], [ %173, %160 ]
  %163 = load double, ptr %159, align 8, !tbaa !5
  %164 = fmul double %163, 1.500000e+00
  %165 = getelementptr inbounds [1000 x double], ptr %5, i64 %129, i64 %161
  %166 = load double, ptr %165, align 8, !tbaa !5
  %167 = getelementptr inbounds [1200 x double], ptr %3, i64 %161, i64 %158
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = tail call double @llvm.fmuladd.f64(double %164, double %166, double %168)
  store double %169, ptr %167, align 8, !tbaa !5
  %170 = getelementptr inbounds [1200 x double], ptr %6, i64 %161, i64 %158
  %171 = load double, ptr %170, align 8, !tbaa !5
  %172 = load double, ptr %165, align 8, !tbaa !5
  %173 = tail call double @llvm.fmuladd.f64(double %171, double %172, double %162)
  %174 = add nuw nsw i64 %161, 1
  %175 = icmp eq i64 %174, %129
  br i1 %175, label %176, label %160, !llvm.loop !29

176:                                              ; preds = %160
  %177 = getelementptr inbounds [1200 x double], ptr %3, i64 %129, i64 %158
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = load double, ptr %159, align 8, !tbaa !5
  %180 = fmul double %179, 1.500000e+00
  %181 = load double, ptr %131, align 8, !tbaa !5
  %182 = fmul double %180, %181
  %183 = tail call double @llvm.fmuladd.f64(double %178, double 1.200000e+00, double %182)
  %184 = tail call double @llvm.fmuladd.f64(double %173, double 1.500000e+00, double %183)
  store double %184, ptr %177, align 8, !tbaa !5
  %185 = add nuw nsw i64 %158, 1
  %186 = icmp eq i64 %185, 1200
  br i1 %186, label %210, label %157, !llvm.loop !30

187:                                              ; preds = %132, %187
  %188 = phi i64 [ %208, %187 ], [ 0, %132 ]
  %189 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %188
  %190 = load double, ptr %189, align 8, !tbaa !5
  %191 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %188
  %192 = load double, ptr %191, align 8, !tbaa !5
  %193 = fmul double %192, 1.500000e+00
  %194 = load double, ptr %131, align 8, !tbaa !5
  %195 = fmul double %193, %194
  %196 = tail call double @llvm.fmuladd.f64(double %190, double 1.200000e+00, double %195)
  %197 = fadd double %196, 0.000000e+00
  store double %197, ptr %189, align 8, !tbaa !5
  %198 = or disjoint i64 %188, 1
  %199 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %198
  %200 = load double, ptr %199, align 8, !tbaa !5
  %201 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %198
  %202 = load double, ptr %201, align 8, !tbaa !5
  %203 = fmul double %202, 1.500000e+00
  %204 = load double, ptr %131, align 8, !tbaa !5
  %205 = fmul double %203, %204
  %206 = tail call double @llvm.fmuladd.f64(double %200, double 1.200000e+00, double %205)
  %207 = fadd double %206, 0.000000e+00
  store double %207, ptr %199, align 8, !tbaa !5
  %208 = add nuw nsw i64 %188, 2
  %209 = icmp eq i64 %208, 1200
  br i1 %209, label %210, label %187, !llvm.loop !31

210:                                              ; preds = %176, %137, %187
  %211 = add nuw nsw i64 %129, 1
  %212 = icmp eq i64 %211, 1000
  br i1 %212, label %213, label %128, !llvm.loop !32

213:                                              ; preds = %210
  %214 = load ptr, ptr @stderr, align 8, !tbaa !33
  %215 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %214) #8
  %216 = load ptr, ptr @stderr, align 8, !tbaa !33
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %216, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %218

218:                                              ; preds = %237, %213
  %219 = phi i64 [ 0, %213 ], [ %238, %237 ]
  %220 = mul nuw nsw i64 %219, 1000
  br label %221

221:                                              ; preds = %230, %218
  %222 = phi i64 [ 0, %218 ], [ %235, %230 ]
  %223 = add nuw nsw i64 %222, %220
  %224 = trunc i64 %223 to i32
  %225 = urem i32 %224, 20
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load ptr, ptr @stderr, align 8, !tbaa !33
  %229 = tail call i32 @fputc(i32 10, ptr %228)
  br label %230

230:                                              ; preds = %227, %221
  %231 = load ptr, ptr @stderr, align 8, !tbaa !33
  %232 = getelementptr inbounds [1200 x double], ptr %3, i64 %219, i64 %222
  %233 = load double, ptr %232, align 8, !tbaa !5
  %234 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %231, ptr noundef nonnull @.str.4, double noundef %233) #8
  %235 = add nuw nsw i64 %222, 1
  %236 = icmp eq i64 %235, 1200
  br i1 %236, label %237, label %221, !llvm.loop !35

237:                                              ; preds = %230
  %238 = add nuw nsw i64 %219, 1
  %239 = icmp eq i64 %238, 1000
  br i1 %239, label %240, label %218, !llvm.loop !36

240:                                              ; preds = %237
  %241 = load ptr, ptr @stderr, align 8, !tbaa !33
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #8
  %243 = load ptr, ptr @stderr, align 8, !tbaa !33
  %244 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %243) #8
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %6) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold }

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
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !12, !11}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !12, !11}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = !{!26, !21}
!26 = distinct !{!26, !22}
!27 = !{!26}
!28 = distinct !{!28, !10, !11, !12}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10}
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !7, i64 0}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
