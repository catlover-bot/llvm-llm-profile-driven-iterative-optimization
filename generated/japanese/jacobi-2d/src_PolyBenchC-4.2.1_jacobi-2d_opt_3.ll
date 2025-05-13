; ModuleID = 'outputs/src_PolyBenchC-4.2.1_jacobi-2d_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_jacobi-2d_opt_3.c"
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

9:                                                ; preds = %47, %2
  %10 = phi i64 [ 0, %2 ], [ %48, %47 ]
  %11 = trunc i64 %10 to i32
  %12 = sitofp i32 %11 to double
  br i1 %8, label %32, label %13

13:                                               ; preds = %9
  %14 = insertelement <2 x double> poison, double %12, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %29, %16 ]
  %18 = phi <2 x i32> [ <i32 0, i32 1>, %13 ], [ %30, %16 ]
  %19 = add <2 x i32> %18, <i32 2, i32 2>
  %20 = sitofp <2 x i32> %19 to <2 x double>
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %20, <2 x double> <double 2.000000e+00, double 2.000000e+00>)
  %22 = fdiv <2 x double> %21, <double 1.300000e+03, double 1.300000e+03>
  %23 = getelementptr inbounds [1300 x double], ptr %3, i64 %10, i64 %17
  store <2 x double> %22, ptr %23, align 8, !tbaa !5
  %24 = add <2 x i32> %18, <i32 3, i32 3>
  %25 = sitofp <2 x i32> %24 to <2 x double>
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %25, <2 x double> <double 3.000000e+00, double 3.000000e+00>)
  %27 = fdiv <2 x double> %26, <double 1.300000e+03, double 1.300000e+03>
  %28 = getelementptr inbounds [1300 x double], ptr %5, i64 %10, i64 %17
  store <2 x double> %27, ptr %28, align 8, !tbaa !5
  %29 = add nuw i64 %17, 2
  %30 = add <2 x i32> %18, <i32 2, i32 2>
  %31 = icmp eq i64 %29, 1300
  br i1 %31, label %47, label %16, !llvm.loop !9

32:                                               ; preds = %9, %32
  %33 = phi i64 [ %45, %32 ], [ 0, %9 ]
  %34 = trunc i64 %33 to i32
  %35 = add i32 %34, 2
  %36 = sitofp i32 %35 to double
  %37 = tail call double @llvm.fmuladd.f64(double %12, double %36, double 2.000000e+00)
  %38 = fdiv double %37, 1.300000e+03
  %39 = getelementptr inbounds [1300 x double], ptr %3, i64 %10, i64 %33
  store double %38, ptr %39, align 8, !tbaa !5
  %40 = add i32 %34, 3
  %41 = sitofp i32 %40 to double
  %42 = tail call double @llvm.fmuladd.f64(double %12, double %41, double 3.000000e+00)
  %43 = fdiv double %42, 1.300000e+03
  %44 = getelementptr inbounds [1300 x double], ptr %5, i64 %10, i64 %33
  store double %43, ptr %44, align 8, !tbaa !5
  %45 = add nuw nsw i64 %33, 1
  %46 = icmp eq i64 %45, 1300
  br i1 %46, label %47, label %32, !llvm.loop !13

47:                                               ; preds = %16, %32
  %48 = add nuw nsw i64 %10, 1
  %49 = icmp eq i64 %48, 1300
  br i1 %49, label %50, label %9, !llvm.loop !14

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %3, i64 10408
  %52 = getelementptr i8, ptr %3, i64 13509592
  %53 = getelementptr i8, ptr %5, i64 8
  %54 = getelementptr i8, ptr %5, i64 13519992
  %55 = getelementptr i8, ptr %5, i64 10408
  %56 = getelementptr i8, ptr %5, i64 13509592
  %57 = getelementptr i8, ptr %3, i64 8
  %58 = getelementptr i8, ptr %3, i64 13519992
  %59 = icmp ult ptr %55, %58
  %60 = icmp ult ptr %57, %56
  %61 = and i1 %59, %60
  %62 = icmp ult ptr %51, %54
  %63 = icmp ult ptr %53, %52
  %64 = and i1 %62, %63
  br label %65

65:                                               ; preds = %50, %201
  %66 = phi i32 [ %202, %201 ], [ 0, %50 ]
  br label %67

67:                                               ; preds = %131, %65
  %68 = phi i64 [ 1, %65 ], [ %132, %131 ]
  %69 = getelementptr [1300 x double], ptr %3, i64 %68
  br i1 %61, label %108, label %70

70:                                               ; preds = %67, %70
  %71 = phi i64 [ %106, %70 ], [ 0, %67 ]
  %72 = or disjoint i64 %71, 1
  %73 = getelementptr inbounds [1300 x double], ptr %3, i64 %68, i64 %72
  %74 = getelementptr inbounds double, ptr %73, i64 2
  %75 = load <2 x double>, ptr %73, align 8, !tbaa !5, !alias.scope !15
  %76 = load <2 x double>, ptr %74, align 8, !tbaa !5, !alias.scope !15
  %77 = getelementptr inbounds [1300 x double], ptr %3, i64 %68, i64 %71
  %78 = getelementptr inbounds double, ptr %77, i64 2
  %79 = load <2 x double>, ptr %77, align 8, !tbaa !5, !alias.scope !15
  %80 = load <2 x double>, ptr %78, align 8, !tbaa !5, !alias.scope !15
  %81 = fadd <2 x double> %75, %79
  %82 = fadd <2 x double> %76, %80
  %83 = or disjoint i64 %71, 2
  %84 = getelementptr inbounds [1300 x double], ptr %3, i64 %68, i64 %83
  %85 = getelementptr inbounds double, ptr %84, i64 2
  %86 = load <2 x double>, ptr %84, align 8, !tbaa !5, !alias.scope !15
  %87 = load <2 x double>, ptr %85, align 8, !tbaa !5, !alias.scope !15
  %88 = fadd <2 x double> %81, %86
  %89 = fadd <2 x double> %82, %87
  %90 = getelementptr [1300 x double], ptr %69, i64 1, i64 %72
  %91 = getelementptr double, ptr %90, i64 2
  %92 = load <2 x double>, ptr %90, align 8, !tbaa !5, !alias.scope !15
  %93 = load <2 x double>, ptr %91, align 8, !tbaa !5, !alias.scope !15
  %94 = fadd <2 x double> %88, %92
  %95 = fadd <2 x double> %89, %93
  %96 = getelementptr [1300 x double], ptr %69, i64 -1, i64 %72
  %97 = getelementptr double, ptr %96, i64 2
  %98 = load <2 x double>, ptr %96, align 8, !tbaa !5, !alias.scope !15
  %99 = load <2 x double>, ptr %97, align 8, !tbaa !5, !alias.scope !15
  %100 = fadd <2 x double> %94, %98
  %101 = fadd <2 x double> %95, %99
  %102 = fmul <2 x double> %100, <double 2.000000e-01, double 2.000000e-01>
  %103 = fmul <2 x double> %101, <double 2.000000e-01, double 2.000000e-01>
  %104 = getelementptr inbounds [1300 x double], ptr %5, i64 %68, i64 %72
  %105 = getelementptr inbounds double, ptr %104, i64 2
  store <2 x double> %102, ptr %104, align 8, !tbaa !5, !alias.scope !18, !noalias !15
  store <2 x double> %103, ptr %105, align 8, !tbaa !5, !alias.scope !18, !noalias !15
  %106 = add nuw i64 %71, 4
  %107 = icmp eq i64 %106, 1296
  br i1 %107, label %108, label %70, !llvm.loop !20

108:                                              ; preds = %70, %67
  %109 = phi i64 [ 1, %67 ], [ 1297, %70 ]
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi i64 [ %118, %110 ], [ %109, %108 ]
  %112 = getelementptr inbounds [1300 x double], ptr %3, i64 %68, i64 %111
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = add nsw i64 %111, -1
  %115 = getelementptr inbounds [1300 x double], ptr %3, i64 %68, i64 %114
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = fadd double %113, %116
  %118 = add nuw nsw i64 %111, 1
  %119 = getelementptr inbounds [1300 x double], ptr %3, i64 %68, i64 %118
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = fadd double %117, %120
  %122 = getelementptr [1300 x double], ptr %69, i64 1, i64 %111
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = fadd double %121, %123
  %125 = getelementptr [1300 x double], ptr %69, i64 -1, i64 %111
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = fadd double %124, %126
  %128 = fmul double %127, 2.000000e-01
  %129 = getelementptr inbounds [1300 x double], ptr %5, i64 %68, i64 %111
  store double %128, ptr %129, align 8, !tbaa !5
  %130 = icmp eq i64 %118, 1299
  br i1 %130, label %131, label %110, !llvm.loop !21

131:                                              ; preds = %110
  %132 = add nuw nsw i64 %68, 1
  %133 = icmp eq i64 %132, 1299
  br i1 %133, label %134, label %67, !llvm.loop !22

134:                                              ; preds = %131, %198
  %135 = phi i64 [ %199, %198 ], [ 1, %131 ]
  %136 = getelementptr [1300 x double], ptr %5, i64 %135
  br i1 %64, label %175, label %137

137:                                              ; preds = %134, %137
  %138 = phi i64 [ %173, %137 ], [ 0, %134 ]
  %139 = or disjoint i64 %138, 1
  %140 = getelementptr inbounds [1300 x double], ptr %5, i64 %135, i64 %139
  %141 = getelementptr inbounds double, ptr %140, i64 2
  %142 = load <2 x double>, ptr %140, align 8, !tbaa !5, !alias.scope !23
  %143 = load <2 x double>, ptr %141, align 8, !tbaa !5, !alias.scope !23
  %144 = getelementptr inbounds [1300 x double], ptr %5, i64 %135, i64 %138
  %145 = getelementptr inbounds double, ptr %144, i64 2
  %146 = load <2 x double>, ptr %144, align 8, !tbaa !5, !alias.scope !23
  %147 = load <2 x double>, ptr %145, align 8, !tbaa !5, !alias.scope !23
  %148 = fadd <2 x double> %142, %146
  %149 = fadd <2 x double> %143, %147
  %150 = or disjoint i64 %138, 2
  %151 = getelementptr inbounds [1300 x double], ptr %5, i64 %135, i64 %150
  %152 = getelementptr inbounds double, ptr %151, i64 2
  %153 = load <2 x double>, ptr %151, align 8, !tbaa !5, !alias.scope !23
  %154 = load <2 x double>, ptr %152, align 8, !tbaa !5, !alias.scope !23
  %155 = fadd <2 x double> %148, %153
  %156 = fadd <2 x double> %149, %154
  %157 = getelementptr [1300 x double], ptr %136, i64 1, i64 %139
  %158 = getelementptr double, ptr %157, i64 2
  %159 = load <2 x double>, ptr %157, align 8, !tbaa !5, !alias.scope !23
  %160 = load <2 x double>, ptr %158, align 8, !tbaa !5, !alias.scope !23
  %161 = fadd <2 x double> %155, %159
  %162 = fadd <2 x double> %156, %160
  %163 = getelementptr [1300 x double], ptr %136, i64 -1, i64 %139
  %164 = getelementptr double, ptr %163, i64 2
  %165 = load <2 x double>, ptr %163, align 8, !tbaa !5, !alias.scope !23
  %166 = load <2 x double>, ptr %164, align 8, !tbaa !5, !alias.scope !23
  %167 = fadd <2 x double> %161, %165
  %168 = fadd <2 x double> %162, %166
  %169 = fmul <2 x double> %167, <double 2.000000e-01, double 2.000000e-01>
  %170 = fmul <2 x double> %168, <double 2.000000e-01, double 2.000000e-01>
  %171 = getelementptr inbounds [1300 x double], ptr %3, i64 %135, i64 %139
  %172 = getelementptr inbounds double, ptr %171, i64 2
  store <2 x double> %169, ptr %171, align 8, !tbaa !5, !alias.scope !26, !noalias !23
  store <2 x double> %170, ptr %172, align 8, !tbaa !5, !alias.scope !26, !noalias !23
  %173 = add nuw i64 %138, 4
  %174 = icmp eq i64 %173, 1296
  br i1 %174, label %175, label %137, !llvm.loop !28

175:                                              ; preds = %137, %134
  %176 = phi i64 [ 1, %134 ], [ 1297, %137 ]
  br label %177

177:                                              ; preds = %175, %177
  %178 = phi i64 [ %185, %177 ], [ %176, %175 ]
  %179 = getelementptr inbounds [1300 x double], ptr %5, i64 %135, i64 %178
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = add nsw i64 %178, -1
  %182 = getelementptr inbounds [1300 x double], ptr %5, i64 %135, i64 %181
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = fadd double %180, %183
  %185 = add nuw nsw i64 %178, 1
  %186 = getelementptr inbounds [1300 x double], ptr %5, i64 %135, i64 %185
  %187 = load double, ptr %186, align 8, !tbaa !5
  %188 = fadd double %184, %187
  %189 = getelementptr [1300 x double], ptr %136, i64 1, i64 %178
  %190 = load double, ptr %189, align 8, !tbaa !5
  %191 = fadd double %188, %190
  %192 = getelementptr [1300 x double], ptr %136, i64 -1, i64 %178
  %193 = load double, ptr %192, align 8, !tbaa !5
  %194 = fadd double %191, %193
  %195 = fmul double %194, 2.000000e-01
  %196 = getelementptr inbounds [1300 x double], ptr %3, i64 %135, i64 %178
  store double %195, ptr %196, align 8, !tbaa !5
  %197 = icmp eq i64 %185, 1299
  br i1 %197, label %198, label %177, !llvm.loop !29

198:                                              ; preds = %177
  %199 = add nuw nsw i64 %135, 1
  %200 = icmp eq i64 %199, 1299
  br i1 %200, label %201, label %134, !llvm.loop !30

201:                                              ; preds = %198
  %202 = add nuw nsw i32 %66, 1
  %203 = icmp eq i32 %202, 500
  br i1 %203, label %204, label %65, !llvm.loop !31

204:                                              ; preds = %201
  %205 = load ptr, ptr @stdout, align 8, !tbaa !32
  %206 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %205)
  %207 = load ptr, ptr @stdout, align 8, !tbaa !32
  %208 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %209

209:                                              ; preds = %228, %204
  %210 = phi i64 [ 0, %204 ], [ %229, %228 ]
  %211 = mul nuw nsw i64 %210, 1300
  br label %212

212:                                              ; preds = %221, %209
  %213 = phi i64 [ 0, %209 ], [ %226, %221 ]
  %214 = add nuw nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  %216 = urem i32 %215, 20
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load ptr, ptr @stdout, align 8, !tbaa !32
  %220 = tail call i32 @fputc(i32 10, ptr %219)
  br label %221

221:                                              ; preds = %218, %212
  %222 = load ptr, ptr @stdout, align 8, !tbaa !32
  %223 = getelementptr inbounds [1300 x double], ptr %3, i64 %210, i64 %213
  %224 = load double, ptr %223, align 8, !tbaa !5
  %225 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef nonnull @.str.4, double noundef %224)
  %226 = add nuw nsw i64 %213, 1
  %227 = icmp eq i64 %226, 1300
  br i1 %227, label %228, label %212, !llvm.loop !34

228:                                              ; preds = %221
  %229 = add nuw nsw i64 %210, 1
  %230 = icmp eq i64 %229, 1300
  br i1 %230, label %231, label %209, !llvm.loop !35

231:                                              ; preds = %228
  %232 = load ptr, ptr @stdout, align 8, !tbaa !32
  %233 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %234 = load ptr, ptr @stdout, align 8, !tbaa !32
  %235 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %234)
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
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !10, !11, !12}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !7, i64 0}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
