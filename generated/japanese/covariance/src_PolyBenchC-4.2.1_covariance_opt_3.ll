; ModuleID = 'outputs/src_PolyBenchC-4.2.1_covariance_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_covariance_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cov\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #6
  br label %6

6:                                                ; preds = %2, %34
  %7 = phi i64 [ 0, %2 ], [ %35, %34 ]
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 0, %6 ], [ %31, %12 ]
  %14 = phi <2 x i32> [ <i32 0, i32 1>, %6 ], [ %32, %12 ]
  %15 = sitofp <2 x i32> %14 to <2 x double>
  %16 = fmul <2 x double> %11, %15
  %17 = fdiv <2 x double> %16, <double 1.200000e+03, double 1.200000e+03>
  %18 = getelementptr inbounds [1200 x double], ptr %3, i64 %7, i64 %13
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = add nuw nsw i64 %13, 2
  %20 = add <2 x i32> %14, <i32 2, i32 2>
  %21 = sitofp <2 x i32> %20 to <2 x double>
  %22 = fmul <2 x double> %11, %21
  %23 = fdiv <2 x double> %22, <double 1.200000e+03, double 1.200000e+03>
  %24 = getelementptr inbounds [1200 x double], ptr %3, i64 %7, i64 %19
  store <2 x double> %23, ptr %24, align 8, !tbaa !5
  %25 = add nuw nsw i64 %13, 4
  %26 = add <2 x i32> %14, <i32 4, i32 4>
  %27 = sitofp <2 x i32> %26 to <2 x double>
  %28 = fmul <2 x double> %11, %27
  %29 = fdiv <2 x double> %28, <double 1.200000e+03, double 1.200000e+03>
  %30 = getelementptr inbounds [1200 x double], ptr %3, i64 %7, i64 %25
  store <2 x double> %29, ptr %30, align 8, !tbaa !5
  %31 = add nuw nsw i64 %13, 6
  %32 = add <2 x i32> %14, <i32 6, i32 6>
  %33 = icmp eq i64 %31, 1200
  br i1 %33, label %34, label %12, !llvm.loop !9

34:                                               ; preds = %12
  %35 = add nuw nsw i64 %7, 1
  %36 = icmp eq i64 %35, 1400
  br i1 %36, label %37, label %6, !llvm.loop !13

37:                                               ; preds = %34, %63
  %38 = phi i64 [ %66, %63 ], [ 0, %34 ]
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %61, %39 ]
  %41 = phi double [ 0.000000e+00, %37 ], [ %60, %39 ]
  %42 = getelementptr inbounds [1200 x double], ptr %3, i64 %40, i64 %38
  %43 = load double, ptr %42, align 8, !tbaa !5
  %44 = fadd double %41, %43
  %45 = add nuw nsw i64 %40, 1
  %46 = getelementptr inbounds [1200 x double], ptr %3, i64 %45, i64 %38
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = fadd double %44, %47
  %49 = add nuw nsw i64 %40, 2
  %50 = getelementptr inbounds [1200 x double], ptr %3, i64 %49, i64 %38
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = fadd double %48, %51
  %53 = add nuw nsw i64 %40, 3
  %54 = getelementptr inbounds [1200 x double], ptr %3, i64 %53, i64 %38
  %55 = load double, ptr %54, align 8, !tbaa !5
  %56 = fadd double %52, %55
  %57 = add nuw nsw i64 %40, 4
  %58 = getelementptr inbounds [1200 x double], ptr %3, i64 %57, i64 %38
  %59 = load double, ptr %58, align 8, !tbaa !5
  %60 = fadd double %56, %59
  %61 = add nuw nsw i64 %40, 5
  %62 = icmp eq i64 %61, 1400
  br i1 %62, label %63, label %39, !llvm.loop !14

63:                                               ; preds = %39
  %64 = fdiv double %60, 1.400000e+03
  %65 = getelementptr inbounds double, ptr %5, i64 %38
  store double %64, ptr %65, align 8, !tbaa !5
  %66 = add nuw nsw i64 %38, 1
  %67 = icmp eq i64 %66, 1200
  br i1 %67, label %68, label %37, !llvm.loop !15

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %3, i64 13440000
  %70 = getelementptr i8, ptr %5, i64 9600
  %71 = icmp ult ptr %3, %70
  %72 = icmp ult ptr %5, %69
  %73 = and i1 %71, %72
  br label %74

74:                                               ; preds = %122, %68
  %75 = phi i64 [ %123, %122 ], [ 0, %68 ]
  br i1 %73, label %101, label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ %99, %76 ], [ 0, %74 ]
  %78 = getelementptr inbounds double, ptr %5, i64 %77
  %79 = getelementptr inbounds double, ptr %78, i64 2
  %80 = load <2 x double>, ptr %78, align 8, !tbaa !5, !alias.scope !16
  %81 = load <2 x double>, ptr %79, align 8, !tbaa !5, !alias.scope !16
  %82 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %77
  %83 = getelementptr inbounds double, ptr %82, i64 2
  %84 = load <2 x double>, ptr %82, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %85 = load <2 x double>, ptr %83, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %86 = fsub <2 x double> %84, %80
  %87 = fsub <2 x double> %85, %81
  store <2 x double> %86, ptr %82, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  store <2 x double> %87, ptr %83, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %88 = or disjoint i64 %77, 4
  %89 = getelementptr inbounds double, ptr %5, i64 %88
  %90 = getelementptr inbounds double, ptr %89, i64 2
  %91 = load <2 x double>, ptr %89, align 8, !tbaa !5, !alias.scope !16
  %92 = load <2 x double>, ptr %90, align 8, !tbaa !5, !alias.scope !16
  %93 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %88
  %94 = getelementptr inbounds double, ptr %93, i64 2
  %95 = load <2 x double>, ptr %93, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %96 = load <2 x double>, ptr %94, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %97 = fsub <2 x double> %95, %91
  %98 = fsub <2 x double> %96, %92
  store <2 x double> %97, ptr %93, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  store <2 x double> %98, ptr %94, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %99 = add nuw nsw i64 %77, 8
  %100 = icmp eq i64 %99, 1200
  br i1 %100, label %122, label %76, !llvm.loop !21

101:                                              ; preds = %74, %101
  %102 = phi i64 [ %120, %101 ], [ 0, %74 ]
  %103 = getelementptr inbounds double, ptr %5, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %102
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = fsub double %106, %104
  store double %107, ptr %105, align 8, !tbaa !5
  %108 = add nuw nsw i64 %102, 1
  %109 = getelementptr inbounds double, ptr %5, i64 %108
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %108
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = fsub double %112, %110
  store double %113, ptr %111, align 8, !tbaa !5
  %114 = add nuw nsw i64 %102, 2
  %115 = getelementptr inbounds double, ptr %5, i64 %114
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = getelementptr inbounds [1200 x double], ptr %3, i64 %75, i64 %114
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = fsub double %118, %116
  store double %119, ptr %117, align 8, !tbaa !5
  %120 = add nuw nsw i64 %102, 3
  %121 = icmp eq i64 %120, 1200
  br i1 %121, label %122, label %101, !llvm.loop !22

122:                                              ; preds = %76, %101
  %123 = add nuw nsw i64 %75, 1
  %124 = icmp eq i64 %123, 1400
  br i1 %124, label %125, label %74, !llvm.loop !23

125:                                              ; preds = %122, %151
  %126 = phi i64 [ %152, %151 ], [ 0, %122 ]
  br label %127

127:                                              ; preds = %145, %125
  %128 = phi i64 [ %126, %125 ], [ %149, %145 ]
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ 0, %127 ], [ %143, %129 ]
  %131 = phi double [ 0.000000e+00, %127 ], [ %142, %129 ]
  %132 = getelementptr inbounds [1200 x double], ptr %3, i64 %130, i64 %126
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = getelementptr inbounds [1200 x double], ptr %3, i64 %130, i64 %128
  %135 = load double, ptr %134, align 8, !tbaa !5
  %136 = tail call double @llvm.fmuladd.f64(double %133, double %135, double %131)
  %137 = or disjoint i64 %130, 1
  %138 = getelementptr inbounds [1200 x double], ptr %3, i64 %137, i64 %126
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = getelementptr inbounds [1200 x double], ptr %3, i64 %137, i64 %128
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = tail call double @llvm.fmuladd.f64(double %139, double %141, double %136)
  %143 = add nuw nsw i64 %130, 2
  %144 = icmp eq i64 %143, 1400
  br i1 %144, label %145, label %129, !llvm.loop !24

145:                                              ; preds = %129
  %146 = fdiv double %142, 1.399000e+03
  %147 = getelementptr inbounds [1200 x double], ptr %4, i64 %126, i64 %128
  store double %146, ptr %147, align 8, !tbaa !5
  %148 = getelementptr inbounds [1200 x double], ptr %4, i64 %128, i64 %126
  store double %146, ptr %148, align 8, !tbaa !5
  %149 = add nuw nsw i64 %128, 1
  %150 = icmp eq i64 %149, 1200
  br i1 %150, label %151, label %127, !llvm.loop !25

151:                                              ; preds = %145
  %152 = add nuw nsw i64 %126, 1
  %153 = icmp eq i64 %152, 1200
  br i1 %153, label %154, label %125, !llvm.loop !26

154:                                              ; preds = %151
  %155 = load ptr, ptr @stdout, align 8, !tbaa !27
  %156 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %155)
  %157 = load ptr, ptr @stdout, align 8, !tbaa !27
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %159

159:                                              ; preds = %178, %154
  %160 = phi i64 [ 0, %154 ], [ %179, %178 ]
  %161 = mul nuw nsw i64 %160, 1200
  br label %162

162:                                              ; preds = %171, %159
  %163 = phi i64 [ 0, %159 ], [ %176, %171 ]
  %164 = add nuw nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  %166 = urem i32 %165, 20
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load ptr, ptr @stdout, align 8, !tbaa !27
  %170 = tail call i32 @fputc(i32 10, ptr %169)
  br label %171

171:                                              ; preds = %168, %162
  %172 = load ptr, ptr @stdout, align 8, !tbaa !27
  %173 = getelementptr inbounds [1200 x double], ptr %4, i64 %160, i64 %163
  %174 = load double, ptr %173, align 8, !tbaa !5
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.4, double noundef %174)
  %176 = add nuw nsw i64 %163, 1
  %177 = icmp eq i64 %176, 1200
  br i1 %177, label %178, label %162, !llvm.loop !29

178:                                              ; preds = %171
  %179 = add nuw nsw i64 %160, 1
  %180 = icmp eq i64 %179, 1200
  br i1 %180, label %181, label %159, !llvm.loop !30

181:                                              ; preds = %178
  %182 = load ptr, ptr @stdout, align 8, !tbaa !27
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %184 = load ptr, ptr @stdout, align 8, !tbaa !27
  %185 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %184)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef nonnull %4) #6
  tail call void @free(ptr noundef %5) #6
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
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
