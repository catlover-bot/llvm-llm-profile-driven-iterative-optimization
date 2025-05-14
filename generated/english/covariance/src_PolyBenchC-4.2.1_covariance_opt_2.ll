; ModuleID = 'outputs/src_PolyBenchC-4.2.1_covariance_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_covariance_opt_2.c"
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

6:                                                ; preds = %2, %35
  %7 = phi i64 [ 0, %2 ], [ %36, %35 ]
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 1.200000e+03
  %11 = insertelement <2 x double> poison, double %10, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  br label %13

13:                                               ; preds = %13, %6
  %14 = phi i64 [ 0, %6 ], [ %32, %13 ]
  %15 = phi <2 x i32> [ <i32 0, i32 1>, %6 ], [ %33, %13 ]
  %16 = add <2 x i32> %15, <i32 2, i32 2>
  %17 = sitofp <2 x i32> %15 to <2 x double>
  %18 = sitofp <2 x i32> %16 to <2 x double>
  %19 = fmul <2 x double> %12, %17
  %20 = fmul <2 x double> %12, %18
  %21 = getelementptr inbounds [1200 x double], ptr %3, i64 %7, i64 %14
  %22 = getelementptr inbounds double, ptr %21, i64 2
  store <2 x double> %19, ptr %21, align 8, !tbaa !5
  store <2 x double> %20, ptr %22, align 8, !tbaa !5
  %23 = or disjoint i64 %14, 4
  %24 = add <2 x i32> %15, <i32 4, i32 4>
  %25 = add <2 x i32> %15, <i32 6, i32 6>
  %26 = sitofp <2 x i32> %24 to <2 x double>
  %27 = sitofp <2 x i32> %25 to <2 x double>
  %28 = fmul <2 x double> %12, %26
  %29 = fmul <2 x double> %12, %27
  %30 = getelementptr inbounds [1200 x double], ptr %3, i64 %7, i64 %23
  %31 = getelementptr inbounds double, ptr %30, i64 2
  store <2 x double> %28, ptr %30, align 8, !tbaa !5
  store <2 x double> %29, ptr %31, align 8, !tbaa !5
  %32 = add nuw nsw i64 %14, 8
  %33 = add <2 x i32> %15, <i32 8, i32 8>
  %34 = icmp eq i64 %32, 1200
  br i1 %34, label %35, label %13, !llvm.loop !9

35:                                               ; preds = %13
  %36 = add nuw nsw i64 %7, 1
  %37 = icmp eq i64 %36, 1400
  br i1 %37, label %38, label %6, !llvm.loop !13

38:                                               ; preds = %35, %64
  %39 = phi i64 [ %67, %64 ], [ 0, %35 ]
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %62, %40 ]
  %42 = phi double [ 0.000000e+00, %38 ], [ %61, %40 ]
  %43 = getelementptr inbounds [1200 x double], ptr %3, i64 %41, i64 %39
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = fadd double %42, %44
  %46 = add nuw nsw i64 %41, 1
  %47 = getelementptr inbounds [1200 x double], ptr %3, i64 %46, i64 %39
  %48 = load double, ptr %47, align 8, !tbaa !5
  %49 = fadd double %45, %48
  %50 = add nuw nsw i64 %41, 2
  %51 = getelementptr inbounds [1200 x double], ptr %3, i64 %50, i64 %39
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = fadd double %49, %52
  %54 = add nuw nsw i64 %41, 3
  %55 = getelementptr inbounds [1200 x double], ptr %3, i64 %54, i64 %39
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = fadd double %53, %56
  %58 = add nuw nsw i64 %41, 4
  %59 = getelementptr inbounds [1200 x double], ptr %3, i64 %58, i64 %39
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = fadd double %57, %60
  %62 = add nuw nsw i64 %41, 5
  %63 = icmp eq i64 %62, 1400
  br i1 %63, label %64, label %40, !llvm.loop !14

64:                                               ; preds = %40
  %65 = fdiv double %61, 1.400000e+03
  %66 = getelementptr inbounds double, ptr %5, i64 %39
  store double %65, ptr %66, align 8, !tbaa !5
  %67 = add nuw nsw i64 %39, 1
  %68 = icmp eq i64 %67, 1200
  br i1 %68, label %69, label %38, !llvm.loop !15

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %3, i64 13440000
  %71 = getelementptr i8, ptr %5, i64 9600
  %72 = icmp ult ptr %3, %71
  %73 = icmp ult ptr %5, %70
  %74 = and i1 %72, %73
  br label %75

75:                                               ; preds = %123, %69
  %76 = phi i64 [ %124, %123 ], [ 0, %69 ]
  br i1 %74, label %102, label %77

77:                                               ; preds = %75, %77
  %78 = phi i64 [ %100, %77 ], [ 0, %75 ]
  %79 = getelementptr inbounds double, ptr %5, i64 %78
  %80 = getelementptr inbounds double, ptr %79, i64 2
  %81 = load <2 x double>, ptr %79, align 8, !tbaa !5, !alias.scope !16
  %82 = load <2 x double>, ptr %80, align 8, !tbaa !5, !alias.scope !16
  %83 = getelementptr inbounds [1200 x double], ptr %3, i64 %76, i64 %78
  %84 = getelementptr inbounds double, ptr %83, i64 2
  %85 = load <2 x double>, ptr %83, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %86 = load <2 x double>, ptr %84, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %87 = fsub <2 x double> %85, %81
  %88 = fsub <2 x double> %86, %82
  store <2 x double> %87, ptr %83, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  store <2 x double> %88, ptr %84, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %89 = or disjoint i64 %78, 4
  %90 = getelementptr inbounds double, ptr %5, i64 %89
  %91 = getelementptr inbounds double, ptr %90, i64 2
  %92 = load <2 x double>, ptr %90, align 8, !tbaa !5, !alias.scope !16
  %93 = load <2 x double>, ptr %91, align 8, !tbaa !5, !alias.scope !16
  %94 = getelementptr inbounds [1200 x double], ptr %3, i64 %76, i64 %89
  %95 = getelementptr inbounds double, ptr %94, i64 2
  %96 = load <2 x double>, ptr %94, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %97 = load <2 x double>, ptr %95, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %98 = fsub <2 x double> %96, %92
  %99 = fsub <2 x double> %97, %93
  store <2 x double> %98, ptr %94, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  store <2 x double> %99, ptr %95, align 8, !tbaa !5, !alias.scope !19, !noalias !16
  %100 = add nuw nsw i64 %78, 8
  %101 = icmp eq i64 %100, 1200
  br i1 %101, label %123, label %77, !llvm.loop !21

102:                                              ; preds = %75, %102
  %103 = phi i64 [ %121, %102 ], [ 0, %75 ]
  %104 = getelementptr inbounds double, ptr %5, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds [1200 x double], ptr %3, i64 %76, i64 %103
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = fsub double %107, %105
  store double %108, ptr %106, align 8, !tbaa !5
  %109 = add nuw nsw i64 %103, 1
  %110 = getelementptr inbounds double, ptr %5, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = getelementptr inbounds [1200 x double], ptr %3, i64 %76, i64 %109
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = fsub double %113, %111
  store double %114, ptr %112, align 8, !tbaa !5
  %115 = add nuw nsw i64 %103, 2
  %116 = getelementptr inbounds double, ptr %5, i64 %115
  %117 = load double, ptr %116, align 8, !tbaa !5
  %118 = getelementptr inbounds [1200 x double], ptr %3, i64 %76, i64 %115
  %119 = load double, ptr %118, align 8, !tbaa !5
  %120 = fsub double %119, %117
  store double %120, ptr %118, align 8, !tbaa !5
  %121 = add nuw nsw i64 %103, 3
  %122 = icmp eq i64 %121, 1200
  br i1 %122, label %123, label %102, !llvm.loop !22

123:                                              ; preds = %77, %102
  %124 = add nuw nsw i64 %76, 1
  %125 = icmp eq i64 %124, 1400
  br i1 %125, label %126, label %75, !llvm.loop !23

126:                                              ; preds = %123, %152
  %127 = phi i64 [ %153, %152 ], [ 0, %123 ]
  br label %128

128:                                              ; preds = %146, %126
  %129 = phi i64 [ %127, %126 ], [ %150, %146 ]
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i64 [ 0, %128 ], [ %144, %130 ]
  %132 = phi double [ 0.000000e+00, %128 ], [ %143, %130 ]
  %133 = getelementptr inbounds [1200 x double], ptr %3, i64 %131, i64 %127
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = getelementptr inbounds [1200 x double], ptr %3, i64 %131, i64 %129
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = tail call double @llvm.fmuladd.f64(double %134, double %136, double %132)
  %138 = or disjoint i64 %131, 1
  %139 = getelementptr inbounds [1200 x double], ptr %3, i64 %138, i64 %127
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = getelementptr inbounds [1200 x double], ptr %3, i64 %138, i64 %129
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = tail call double @llvm.fmuladd.f64(double %140, double %142, double %137)
  %144 = add nuw nsw i64 %131, 2
  %145 = icmp eq i64 %144, 1400
  br i1 %145, label %146, label %130, !llvm.loop !24

146:                                              ; preds = %130
  %147 = fdiv double %143, 1.399000e+03
  %148 = getelementptr inbounds [1200 x double], ptr %4, i64 %127, i64 %129
  store double %147, ptr %148, align 8, !tbaa !5
  %149 = getelementptr inbounds [1200 x double], ptr %4, i64 %129, i64 %127
  store double %147, ptr %149, align 8, !tbaa !5
  %150 = add nuw nsw i64 %129, 1
  %151 = icmp eq i64 %150, 1200
  br i1 %151, label %152, label %128, !llvm.loop !25

152:                                              ; preds = %146
  %153 = add nuw nsw i64 %127, 1
  %154 = icmp eq i64 %153, 1200
  br i1 %154, label %155, label %126, !llvm.loop !26

155:                                              ; preds = %152
  %156 = load ptr, ptr @stdout, align 8, !tbaa !27
  %157 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %156)
  %158 = load ptr, ptr @stdout, align 8, !tbaa !27
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %160

160:                                              ; preds = %179, %155
  %161 = phi i64 [ 0, %155 ], [ %180, %179 ]
  %162 = mul nuw nsw i64 %161, 1200
  br label %163

163:                                              ; preds = %172, %160
  %164 = phi i64 [ 0, %160 ], [ %177, %172 ]
  %165 = add nuw nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  %167 = urem i32 %166, 20
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load ptr, ptr @stdout, align 8, !tbaa !27
  %171 = tail call i32 @fputc(i32 10, ptr %170)
  br label %172

172:                                              ; preds = %169, %163
  %173 = load ptr, ptr @stdout, align 8, !tbaa !27
  %174 = getelementptr inbounds [1200 x double], ptr %4, i64 %161, i64 %164
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.4, double noundef %175)
  %177 = add nuw nsw i64 %164, 1
  %178 = icmp eq i64 %177, 1200
  br i1 %178, label %179, label %163, !llvm.loop !29

179:                                              ; preds = %172
  %180 = add nuw nsw i64 %161, 1
  %181 = icmp eq i64 %180, 1200
  br i1 %181, label %182, label %160, !llvm.loop !30

182:                                              ; preds = %179
  %183 = load ptr, ptr @stdout, align 8, !tbaa !27
  %184 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %185 = load ptr, ptr @stdout, align 8, !tbaa !27
  %186 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %185)
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
