; ModuleID = 'outputs/src_PolyBenchC-4.2.1_symm_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_symm_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
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

10:                                               ; preds = %74, %2
  %11 = phi <2 x i64> [ <i64 0, i64 1>, %2 ], [ %75, %74 ]
  %12 = extractelement <2 x i64> %11, i64 0
  %13 = add nuw nsw i64 %12, 1200
  br i1 %9, label %36, label %14

14:                                               ; preds = %10
  %15 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x i64> poison, i64 %13, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %33, %18 ]
  %20 = phi <2 x i64> [ <i64 0, i64 1>, %14 ], [ %34, %18 ]
  %21 = add nuw nsw <2 x i64> %20, %15
  %22 = trunc <2 x i64> %21 to <2 x i32>
  %23 = urem <2 x i32> %22, <i32 100, i32 100>
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, <double 1.000000e+03, double 1.000000e+03>
  %26 = getelementptr inbounds [1200 x double], ptr %3, i64 %12, i64 %19
  store <2 x double> %25, ptr %26, align 8, !tbaa !5
  %27 = sub nuw nsw <2 x i64> %17, %20
  %28 = trunc <2 x i64> %27 to <2 x i32>
  %29 = urem <2 x i32> %28, <i32 100, i32 100>
  %30 = sitofp <2 x i32> %29 to <2 x double>
  %31 = fdiv <2 x double> %30, <double 1.000000e+03, double 1.000000e+03>
  %32 = getelementptr inbounds [1200 x double], ptr %6, i64 %12, i64 %19
  store <2 x double> %31, ptr %32, align 8, !tbaa !5
  %33 = add nuw i64 %19, 2
  %34 = add <2 x i64> %20, <i64 2, i64 2>
  %35 = icmp eq i64 %33, 1200
  br i1 %35, label %52, label %18, !llvm.loop !9

36:                                               ; preds = %10, %36
  %37 = phi i64 [ %50, %36 ], [ 0, %10 ]
  %38 = add nuw nsw i64 %37, %12
  %39 = trunc i64 %38 to i32
  %40 = urem i32 %39, 100
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 1.000000e+03
  %43 = getelementptr inbounds [1200 x double], ptr %3, i64 %12, i64 %37
  store double %42, ptr %43, align 8, !tbaa !5
  %44 = sub nuw nsw i64 %13, %37
  %45 = trunc i64 %44 to i32
  %46 = urem i32 %45, 100
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 1.000000e+03
  %49 = getelementptr inbounds [1200 x double], ptr %6, i64 %12, i64 %37
  store double %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %37, 1
  %51 = icmp eq i64 %50, 1200
  br i1 %51, label %52, label %36, !llvm.loop !13

52:                                               ; preds = %18, %36
  %53 = extractelement <2 x i64> %11, i64 1
  %54 = icmp ult i64 %53, 2
  br i1 %54, label %72, label %55

55:                                               ; preds = %52
  %56 = and i64 %53, 9223372036854775806
  %57 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i64 [ 0, %55 ], [ %67, %58 ]
  %60 = phi <2 x i64> [ <i64 0, i64 1>, %55 ], [ %68, %58 ]
  %61 = add nuw nsw <2 x i64> %60, %57
  %62 = trunc <2 x i64> %61 to <2 x i32>
  %63 = urem <2 x i32> %62, <i32 100, i32 100>
  %64 = sitofp <2 x i32> %63 to <2 x double>
  %65 = fdiv <2 x double> %64, <double 1.000000e+03, double 1.000000e+03>
  %66 = getelementptr inbounds [1000 x double], ptr %5, i64 %12, i64 %59
  store <2 x double> %65, ptr %66, align 8, !tbaa !5
  %67 = add nuw i64 %59, 2
  %68 = add <2 x i64> %60, <i64 2, i64 2>
  %69 = icmp eq i64 %67, %56
  br i1 %69, label %70, label %58, !llvm.loop !14

70:                                               ; preds = %58
  %71 = icmp eq i64 %53, %56
  br i1 %71, label %74, label %72

72:                                               ; preds = %52, %70
  %73 = phi i64 [ 0, %52 ], [ %56, %70 ]
  br label %89

74:                                               ; preds = %89, %70
  %75 = add nuw nsw <2 x i64> %11, <i64 1, i64 1>
  %76 = extractelement <2 x i64> %75, i64 0
  %77 = icmp eq i64 %76, 1000
  br i1 %77, label %78, label %10, !llvm.loop !15

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %3, i64 9600
  %80 = getelementptr i8, ptr %6, i64 9600
  %81 = getelementptr i8, ptr %5, i64 8000000
  %82 = icmp ult ptr %3, %80
  %83 = icmp ult ptr %6, %79
  %84 = and i1 %82, %83
  %85 = icmp ult ptr %3, %81
  %86 = icmp ult ptr %5, %79
  %87 = and i1 %85, %86
  %88 = or i1 %84, %87
  br label %99

89:                                               ; preds = %72, %89
  %90 = phi i64 [ %97, %89 ], [ %73, %72 ]
  %91 = add nuw nsw i64 %90, %12
  %92 = trunc i64 %91 to i32
  %93 = urem i32 %92, 100
  %94 = sitofp i32 %93 to double
  %95 = fdiv double %94, 1.000000e+03
  %96 = getelementptr inbounds [1000 x double], ptr %5, i64 %12, i64 %90
  store double %95, ptr %96, align 8, !tbaa !5
  %97 = add nuw nsw i64 %90, 1
  %98 = icmp eq i64 %97, %53
  br i1 %98, label %74, label %89, !llvm.loop !16

99:                                               ; preds = %78, %156
  %100 = phi i64 [ %157, %156 ], [ 0, %78 ]
  %101 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %100
  %102 = icmp eq i64 %100, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  br i1 %88, label %159, label %104

104:                                              ; preds = %103
  %105 = load double, ptr %101, align 8, !tbaa !5, !alias.scope !17
  %106 = insertelement <2 x double> poison, double %105, i64 0
  %107 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> zeroinitializer
  br label %108

108:                                              ; preds = %104, %108
  %109 = phi i64 [ %126, %108 ], [ 0, %104 ]
  %110 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %109
  %111 = getelementptr inbounds double, ptr %110, i64 2
  %112 = load <2 x double>, ptr %110, align 8, !tbaa !5, !alias.scope !20
  %113 = load <2 x double>, ptr %111, align 8, !tbaa !5, !alias.scope !20
  %114 = fmul <2 x double> %112, <double 1.500000e+00, double 1.500000e+00>
  %115 = fmul <2 x double> %113, <double 1.500000e+00, double 1.500000e+00>
  %116 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %109
  %117 = getelementptr inbounds double, ptr %116, i64 2
  %118 = load <2 x double>, ptr %116, align 8, !tbaa !5, !alias.scope !22, !noalias !24
  %119 = load <2 x double>, ptr %117, align 8, !tbaa !5, !alias.scope !22, !noalias !24
  %120 = fmul <2 x double> %114, %107
  %121 = fmul <2 x double> %115, %107
  %122 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %118, <2 x double> <double 1.200000e+00, double 1.200000e+00>, <2 x double> %120)
  %123 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %119, <2 x double> <double 1.200000e+00, double 1.200000e+00>, <2 x double> %121)
  %124 = fadd <2 x double> %122, zeroinitializer
  %125 = fadd <2 x double> %123, zeroinitializer
  store <2 x double> %124, ptr %116, align 8, !tbaa !5, !alias.scope !22, !noalias !24
  store <2 x double> %125, ptr %117, align 8, !tbaa !5, !alias.scope !22, !noalias !24
  %126 = add nuw i64 %109, 4
  %127 = icmp eq i64 %126, 1200
  br i1 %127, label %156, label %108, !llvm.loop !25

128:                                              ; preds = %99, %147
  %129 = phi i64 [ %154, %147 ], [ 0, %99 ]
  %130 = getelementptr inbounds [1200 x double], ptr %6, i64 %100, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !5
  %132 = fmul double %131, 1.500000e+00
  br label %133

133:                                              ; preds = %133, %128
  %134 = phi i64 [ 0, %128 ], [ %145, %133 ]
  %135 = phi double [ 0.000000e+00, %128 ], [ %144, %133 ]
  %136 = getelementptr inbounds [1000 x double], ptr %5, i64 %100, i64 %134
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds [1200 x double], ptr %3, i64 %134, i64 %129
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %132, double %137, double %139)
  store double %140, ptr %138, align 8, !tbaa !5
  %141 = getelementptr inbounds [1200 x double], ptr %6, i64 %134, i64 %129
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = load double, ptr %136, align 8, !tbaa !5
  %144 = tail call double @llvm.fmuladd.f64(double %142, double %143, double %135)
  %145 = add nuw nsw i64 %134, 1
  %146 = icmp eq i64 %145, %100
  br i1 %146, label %147, label %133, !llvm.loop !26

147:                                              ; preds = %133
  %148 = getelementptr inbounds [1200 x double], ptr %3, i64 %100, i64 %129
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = load double, ptr %101, align 8, !tbaa !5
  %151 = fmul double %132, %150
  %152 = tail call double @llvm.fmuladd.f64(double %149, double 1.200000e+00, double %151)
  %153 = tail call double @llvm.fmuladd.f64(double %144, double 1.500000e+00, double %152)
  store double %153, ptr %148, align 8, !tbaa !5
  %154 = add nuw nsw i64 %129, 1
  %155 = icmp eq i64 %154, 1200
  br i1 %155, label %156, label %128, !llvm.loop !27

156:                                              ; preds = %147, %108, %159
  %157 = add nuw nsw i64 %100, 1
  %158 = icmp eq i64 %157, 1000
  br i1 %158, label %182, label %99, !llvm.loop !28

159:                                              ; preds = %103, %159
  %160 = phi i64 [ %180, %159 ], [ 0, %103 ]
  %161 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %160
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = fmul double %162, 1.500000e+00
  %164 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %160
  %165 = load double, ptr %164, align 8, !tbaa !5
  %166 = load double, ptr %101, align 8, !tbaa !5
  %167 = fmul double %163, %166
  %168 = tail call double @llvm.fmuladd.f64(double %165, double 1.200000e+00, double %167)
  %169 = fadd double %168, 0.000000e+00
  store double %169, ptr %164, align 8, !tbaa !5
  %170 = or disjoint i64 %160, 1
  %171 = getelementptr inbounds [1200 x double], ptr %6, i64 0, i64 %170
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = fmul double %172, 1.500000e+00
  %174 = getelementptr inbounds [1200 x double], ptr %3, i64 0, i64 %170
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = load double, ptr %101, align 8, !tbaa !5
  %177 = fmul double %173, %176
  %178 = tail call double @llvm.fmuladd.f64(double %175, double 1.200000e+00, double %177)
  %179 = fadd double %178, 0.000000e+00
  store double %179, ptr %174, align 8, !tbaa !5
  %180 = add nuw nsw i64 %160, 2
  %181 = icmp eq i64 %180, 1200
  br i1 %181, label %156, label %159, !llvm.loop !29

182:                                              ; preds = %156
  %183 = load ptr, ptr @stdout, align 8, !tbaa !30
  %184 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %183)
  %185 = load ptr, ptr @stdout, align 8, !tbaa !30
  %186 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %187

187:                                              ; preds = %190, %182
  %188 = phi i64 [ 0, %182 ], [ %191, %190 ]
  %189 = mul nuw nsw i64 %188, 1000
  br label %193

190:                                              ; preds = %202
  %191 = add nuw nsw i64 %188, 1
  %192 = icmp eq i64 %191, 1000
  br i1 %192, label %209, label %187, !llvm.loop !32

193:                                              ; preds = %202, %187
  %194 = phi i64 [ 0, %187 ], [ %207, %202 ]
  %195 = add nuw nsw i64 %194, %189
  %196 = trunc i64 %195 to i32
  %197 = urem i32 %196, 20
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load ptr, ptr @stdout, align 8, !tbaa !30
  %201 = tail call i32 @fputc(i32 10, ptr %200)
  br label %202

202:                                              ; preds = %199, %193
  %203 = load ptr, ptr @stdout, align 8, !tbaa !30
  %204 = getelementptr inbounds [1200 x double], ptr %3, i64 %188, i64 %194
  %205 = load double, ptr %204, align 8, !tbaa !5
  %206 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.4, double noundef %205)
  %207 = add nuw nsw i64 %194, 1
  %208 = icmp eq i64 %207, 1200
  br i1 %208, label %190, label %193, !llvm.loop !33

209:                                              ; preds = %190
  %210 = load ptr, ptr @stdout, align 8, !tbaa !30
  %211 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %212 = load ptr, ptr @stdout, align 8, !tbaa !30
  %213 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %212)
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
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !12, !11}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = !{!23}
!23 = distinct !{!23, !19}
!24 = !{!21, !18}
!25 = distinct !{!25, !10, !11, !12}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10, !11}
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
