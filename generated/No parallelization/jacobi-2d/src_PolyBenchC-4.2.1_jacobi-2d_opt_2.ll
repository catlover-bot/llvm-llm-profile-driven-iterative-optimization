; ModuleID = 'outputs/src_PolyBenchC-4.2.1_jacobi-2d_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_jacobi-2d_opt_2.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8) #7
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1690000, i32 noundef 8) #7
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %4
  %8 = icmp ult i64 %7, 16
  br label %9

9:                                                ; preds = %45, %2
  %10 = phi i64 [ 0, %2 ], [ %46, %45 ]
  %11 = trunc i64 %10 to i32
  %12 = sitofp i32 %11 to double
  br i1 %8, label %31, label %13

13:                                               ; preds = %9
  %14 = insertelement <2 x double> poison, double %12, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %28, %16 ]
  %18 = phi <2 x i32> [ <i32 0, i32 1>, %13 ], [ %29, %16 ]
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fadd <2 x double> %19, <double 2.000000e+00, double 2.000000e+00>
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %20, <2 x double> <double 2.000000e+00, double 2.000000e+00>)
  %22 = fdiv <2 x double> %21, <double 1.300000e+03, double 1.300000e+03>
  %23 = getelementptr inbounds [1300 x double], ptr %3, i64 %10, i64 %17
  store <2 x double> %22, ptr %23, align 8, !tbaa !5
  %24 = fadd <2 x double> %19, <double 3.000000e+00, double 3.000000e+00>
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %24, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %26 = fdiv <2 x double> %25, <double 1.300000e+03, double 1.300000e+03>
  %27 = getelementptr inbounds [1300 x double], ptr %5, i64 %10, i64 %17
  store <2 x double> %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw i64 %17, 2
  %29 = add <2 x i32> %18, <i32 2, i32 2>
  %30 = icmp eq i64 %28, 1300
  br i1 %30, label %45, label %16, !llvm.loop !9

31:                                               ; preds = %9, %31
  %32 = phi i64 [ %43, %31 ], [ 0, %9 ]
  %33 = trunc i64 %32 to i32
  %34 = sitofp i32 %33 to double
  %35 = fadd double %34, 2.000000e+00
  %36 = tail call double @llvm.fmuladd.f64(double %12, double %35, double 2.000000e+00)
  %37 = fdiv double %36, 1.300000e+03
  %38 = getelementptr inbounds [1300 x double], ptr %3, i64 %10, i64 %32
  store double %37, ptr %38, align 8, !tbaa !5
  %39 = fadd double %34, 3.000000e+00
  %40 = tail call double @llvm.fmuladd.f64(double %12, double %39, double 3.000000e+00)
  %41 = fdiv double %40, 1.300000e+03
  %42 = getelementptr inbounds [1300 x double], ptr %5, i64 %10, i64 %32
  store double %41, ptr %42, align 8, !tbaa !5
  %43 = add nuw nsw i64 %32, 1
  %44 = icmp eq i64 %43, 1300
  br i1 %44, label %45, label %31, !llvm.loop !13

45:                                               ; preds = %16, %31
  %46 = add nuw nsw i64 %10, 1
  %47 = icmp eq i64 %46, 1300
  br i1 %47, label %48, label %9, !llvm.loop !14

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %3, i64 10408
  %50 = getelementptr i8, ptr %3, i64 13509592
  %51 = getelementptr i8, ptr %5, i64 8
  %52 = getelementptr i8, ptr %5, i64 13519992
  %53 = getelementptr i8, ptr %5, i64 10408
  %54 = getelementptr i8, ptr %5, i64 13509592
  %55 = getelementptr i8, ptr %3, i64 8
  %56 = getelementptr i8, ptr %3, i64 13519992
  %57 = icmp ult ptr %53, %56
  %58 = icmp ult ptr %55, %54
  %59 = and i1 %57, %58
  %60 = getelementptr double, ptr %3, i64 -1
  %61 = getelementptr double, ptr %5, i64 -1
  %62 = icmp ult ptr %49, %52
  %63 = icmp ult ptr %51, %50
  %64 = and i1 %62, %63
  %65 = getelementptr double, ptr %5, i64 -1
  %66 = getelementptr double, ptr %3, i64 -1
  br label %67

67:                                               ; preds = %48, %197
  %68 = phi i32 [ %198, %197 ], [ 0, %48 ]
  br label %69

69:                                               ; preds = %130, %67
  %70 = phi i64 [ 1, %67 ], [ %131, %130 ]
  %71 = getelementptr [1300 x double], ptr %3, i64 %70
  br i1 %59, label %107, label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ %105, %72 ], [ 0, %69 ]
  %74 = shl i64 %73, 1
  %75 = or disjoint i64 %74, 1
  %76 = getelementptr [1300 x double], ptr %60, i64 %70, i64 %75
  %77 = load <4 x double>, ptr %76, align 8, !tbaa !5
  %78 = shufflevector <4 x double> %77, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %79 = shufflevector <4 x double> %77, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %80 = or disjoint i64 %74, 2
  %81 = getelementptr inbounds [1300 x double], ptr %3, i64 %70, i64 %80
  %82 = load <4 x double>, ptr %81, align 8, !tbaa !5
  %83 = shufflevector <4 x double> %82, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %84 = shufflevector <4 x double> %82, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %85 = getelementptr [1300 x double], ptr %71, i64 1, i64 %75
  %86 = load <4 x double>, ptr %85, align 8, !tbaa !5
  %87 = shufflevector <4 x double> %86, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %88 = shufflevector <4 x double> %86, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %89 = getelementptr [1300 x double], ptr %71, i64 -1, i64 %75
  %90 = load <4 x double>, ptr %89, align 8, !tbaa !5
  %91 = shufflevector <4 x double> %90, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %92 = shufflevector <4 x double> %90, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %93 = fadd <2 x double> %79, %78
  %94 = fadd <2 x double> %83, %93
  %95 = fadd <2 x double> %94, %87
  %96 = fadd <2 x double> %95, %91
  %97 = fmul <2 x double> %96, <double 2.000000e-01, double 2.000000e-01>
  %98 = fadd <2 x double> %79, %83
  %99 = fadd <2 x double> %98, %84
  %100 = fadd <2 x double> %99, %88
  %101 = fadd <2 x double> %100, %92
  %102 = fmul <2 x double> %101, <double 2.000000e-01, double 2.000000e-01>
  %103 = getelementptr [1300 x double], ptr %61, i64 %70, i64 %80
  %104 = shufflevector <2 x double> %97, <2 x double> %102, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %104, ptr %103, align 8, !tbaa !5
  %105 = add nuw i64 %73, 2
  %106 = icmp eq i64 %105, 648
  br i1 %106, label %107, label %72, !llvm.loop !15

107:                                              ; preds = %72, %69
  %108 = phi i64 [ 1, %69 ], [ 1297, %72 ]
  br label %109

109:                                              ; preds = %107, %109
  %110 = phi i64 [ %115, %109 ], [ %108, %107 ]
  %111 = add nuw nsw i64 %110, 1
  %112 = getelementptr inbounds [1300 x double], ptr %3, i64 %70, i64 %111
  %113 = add nsw i64 %110, -1
  %114 = getelementptr inbounds [1300 x double], ptr %3, i64 %70, i64 %113
  %115 = add nuw nsw i64 %110, 2
  %116 = getelementptr [1300 x double], ptr %71, i64 1, i64 %110
  %117 = getelementptr [1300 x double], ptr %71, i64 -1, i64 %110
  %118 = getelementptr inbounds [1300 x double], ptr %5, i64 %70, i64 %110
  %119 = load <2 x double>, ptr %114, align 8, !tbaa !5
  %120 = load <2 x double>, ptr %112, align 8, !tbaa !5
  %121 = load <2 x double>, ptr %116, align 8, !tbaa !5
  %122 = load <2 x double>, ptr %117, align 8, !tbaa !5
  %123 = shufflevector <2 x double> %119, <2 x double> %120, <2 x i32> <i32 1, i32 2>
  %124 = fadd <2 x double> %119, %123
  %125 = fadd <2 x double> %120, %124
  %126 = fadd <2 x double> %125, %121
  %127 = fadd <2 x double> %126, %122
  %128 = fmul <2 x double> %127, <double 2.000000e-01, double 2.000000e-01>
  store <2 x double> %128, ptr %118, align 8, !tbaa !5
  %129 = icmp ult i64 %110, 1297
  br i1 %129, label %109, label %130, !llvm.loop !16

130:                                              ; preds = %109
  %131 = add nuw nsw i64 %70, 1
  %132 = icmp eq i64 %131, 1299
  br i1 %132, label %133, label %69, !llvm.loop !17

133:                                              ; preds = %130, %194
  %134 = phi i64 [ %195, %194 ], [ 1, %130 ]
  %135 = getelementptr [1300 x double], ptr %5, i64 %134
  br i1 %64, label %171, label %136

136:                                              ; preds = %133, %136
  %137 = phi i64 [ %169, %136 ], [ 0, %133 ]
  %138 = shl i64 %137, 1
  %139 = or disjoint i64 %138, 1
  %140 = getelementptr [1300 x double], ptr %65, i64 %134, i64 %139
  %141 = load <4 x double>, ptr %140, align 8, !tbaa !5
  %142 = shufflevector <4 x double> %141, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %143 = shufflevector <4 x double> %141, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %144 = or disjoint i64 %138, 2
  %145 = getelementptr inbounds [1300 x double], ptr %5, i64 %134, i64 %144
  %146 = load <4 x double>, ptr %145, align 8, !tbaa !5
  %147 = shufflevector <4 x double> %146, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %148 = shufflevector <4 x double> %146, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %149 = getelementptr [1300 x double], ptr %135, i64 1, i64 %139
  %150 = load <4 x double>, ptr %149, align 8, !tbaa !5
  %151 = shufflevector <4 x double> %150, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %152 = shufflevector <4 x double> %150, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %153 = getelementptr [1300 x double], ptr %135, i64 -1, i64 %139
  %154 = load <4 x double>, ptr %153, align 8, !tbaa !5
  %155 = shufflevector <4 x double> %154, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %156 = shufflevector <4 x double> %154, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %157 = fadd <2 x double> %143, %142
  %158 = fadd <2 x double> %147, %157
  %159 = fadd <2 x double> %158, %151
  %160 = fadd <2 x double> %159, %155
  %161 = fmul <2 x double> %160, <double 2.000000e-01, double 2.000000e-01>
  %162 = fadd <2 x double> %143, %147
  %163 = fadd <2 x double> %162, %148
  %164 = fadd <2 x double> %163, %152
  %165 = fadd <2 x double> %164, %156
  %166 = fmul <2 x double> %165, <double 2.000000e-01, double 2.000000e-01>
  %167 = getelementptr [1300 x double], ptr %66, i64 %134, i64 %144
  %168 = shufflevector <2 x double> %161, <2 x double> %166, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %168, ptr %167, align 8, !tbaa !5
  %169 = add nuw i64 %137, 2
  %170 = icmp eq i64 %169, 648
  br i1 %170, label %171, label %136, !llvm.loop !18

171:                                              ; preds = %136, %133
  %172 = phi i64 [ 1, %133 ], [ 1297, %136 ]
  br label %173

173:                                              ; preds = %171, %173
  %174 = phi i64 [ %179, %173 ], [ %172, %171 ]
  %175 = add nuw nsw i64 %174, 1
  %176 = getelementptr inbounds [1300 x double], ptr %5, i64 %134, i64 %175
  %177 = add nsw i64 %174, -1
  %178 = getelementptr inbounds [1300 x double], ptr %5, i64 %134, i64 %177
  %179 = add nuw nsw i64 %174, 2
  %180 = getelementptr [1300 x double], ptr %135, i64 1, i64 %174
  %181 = getelementptr [1300 x double], ptr %135, i64 -1, i64 %174
  %182 = getelementptr inbounds [1300 x double], ptr %3, i64 %134, i64 %174
  %183 = load <2 x double>, ptr %178, align 8, !tbaa !5
  %184 = load <2 x double>, ptr %176, align 8, !tbaa !5
  %185 = load <2 x double>, ptr %180, align 8, !tbaa !5
  %186 = load <2 x double>, ptr %181, align 8, !tbaa !5
  %187 = shufflevector <2 x double> %183, <2 x double> %184, <2 x i32> <i32 1, i32 2>
  %188 = fadd <2 x double> %183, %187
  %189 = fadd <2 x double> %184, %188
  %190 = fadd <2 x double> %189, %185
  %191 = fadd <2 x double> %190, %186
  %192 = fmul <2 x double> %191, <double 2.000000e-01, double 2.000000e-01>
  store <2 x double> %192, ptr %182, align 8, !tbaa !5
  %193 = icmp ult i64 %174, 1297
  br i1 %193, label %173, label %194, !llvm.loop !19

194:                                              ; preds = %173
  %195 = add nuw nsw i64 %134, 1
  %196 = icmp eq i64 %195, 1299
  br i1 %196, label %197, label %133, !llvm.loop !20

197:                                              ; preds = %194
  %198 = add nuw nsw i32 %68, 1
  %199 = icmp eq i32 %198, 500
  br i1 %199, label %200, label %67, !llvm.loop !21

200:                                              ; preds = %197
  %201 = load ptr, ptr @stdout, align 8, !tbaa !22
  %202 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %201)
  %203 = load ptr, ptr @stdout, align 8, !tbaa !22
  %204 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %205

205:                                              ; preds = %224, %200
  %206 = phi i64 [ 0, %200 ], [ %225, %224 ]
  %207 = mul nuw nsw i64 %206, 1300
  br label %208

208:                                              ; preds = %217, %205
  %209 = phi i64 [ 0, %205 ], [ %222, %217 ]
  %210 = add nuw nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  %212 = urem i32 %211, 20
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load ptr, ptr @stdout, align 8, !tbaa !22
  %216 = tail call i32 @fputc(i32 10, ptr %215)
  br label %217

217:                                              ; preds = %214, %208
  %218 = load ptr, ptr @stdout, align 8, !tbaa !22
  %219 = getelementptr inbounds [1300 x double], ptr %3, i64 %206, i64 %209
  %220 = load double, ptr %219, align 8, !tbaa !5
  %221 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef nonnull @.str.4, double noundef %220)
  %222 = add nuw nsw i64 %209, 1
  %223 = icmp eq i64 %222, 1300
  br i1 %223, label %224, label %208, !llvm.loop !24

224:                                              ; preds = %217
  %225 = add nuw nsw i64 %206, 1
  %226 = icmp eq i64 %225, 1300
  br i1 %226, label %227, label %205, !llvm.loop !25

227:                                              ; preds = %224
  %228 = load ptr, ptr @stdout, align 8, !tbaa !22
  %229 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %230 = load ptr, ptr @stdout, align 8, !tbaa !22
  %231 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %230)
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %5) #7
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
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
