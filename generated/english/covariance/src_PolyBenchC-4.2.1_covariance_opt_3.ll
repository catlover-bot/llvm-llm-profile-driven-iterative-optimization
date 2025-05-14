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

38:                                               ; preds = %35, %40
  %39 = phi i64 [ %43, %40 ], [ 0, %35 ]
  br label %51

40:                                               ; preds = %51
  %41 = fdiv double %72, 1.400000e+03
  %42 = getelementptr inbounds double, ptr %5, i64 %39
  store double %41, ptr %42, align 8, !tbaa !5
  %43 = add nuw nsw i64 %39, 1
  %44 = icmp eq i64 %43, 1200
  br i1 %44, label %45, label %38, !llvm.loop !14

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %3, i64 13440000
  %47 = getelementptr i8, ptr %5, i64 9600
  %48 = icmp ult ptr %3, %47
  %49 = icmp ult ptr %5, %46
  %50 = and i1 %48, %49
  br label %75

51:                                               ; preds = %51, %38
  %52 = phi i64 [ 0, %38 ], [ %73, %51 ]
  %53 = phi double [ 0.000000e+00, %38 ], [ %72, %51 ]
  %54 = getelementptr inbounds [1200 x double], ptr %3, i64 %52, i64 %39
  %55 = load double, ptr %54, align 8, !tbaa !5
  %56 = fadd double %53, %55
  %57 = add nuw nsw i64 %52, 1
  %58 = getelementptr inbounds [1200 x double], ptr %3, i64 %57, i64 %39
  %59 = load double, ptr %58, align 8, !tbaa !5
  %60 = fadd double %56, %59
  %61 = add nuw nsw i64 %52, 2
  %62 = getelementptr inbounds [1200 x double], ptr %3, i64 %61, i64 %39
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = fadd double %60, %63
  %65 = add nuw nsw i64 %52, 3
  %66 = getelementptr inbounds [1200 x double], ptr %3, i64 %65, i64 %39
  %67 = load double, ptr %66, align 8, !tbaa !5
  %68 = fadd double %64, %67
  %69 = add nuw nsw i64 %52, 4
  %70 = getelementptr inbounds [1200 x double], ptr %3, i64 %69, i64 %39
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = fadd double %68, %71
  %73 = add nuw nsw i64 %52, 5
  %74 = icmp eq i64 %73, 1400
  br i1 %74, label %40, label %51, !llvm.loop !15

75:                                               ; preds = %102, %45
  %76 = phi i64 [ %103, %102 ], [ 0, %45 ]
  br i1 %50, label %105, label %77

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
  br i1 %101, label %102, label %77, !llvm.loop !21

102:                                              ; preds = %77, %105
  %103 = add nuw nsw i64 %76, 1
  %104 = icmp eq i64 %103, 1400
  br i1 %104, label %126, label %75, !llvm.loop !22

105:                                              ; preds = %75, %105
  %106 = phi i64 [ %124, %105 ], [ 0, %75 ]
  %107 = getelementptr inbounds double, ptr %5, i64 %106
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = getelementptr inbounds [1200 x double], ptr %3, i64 %76, i64 %106
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = fsub double %110, %108
  store double %111, ptr %109, align 8, !tbaa !5
  %112 = add nuw nsw i64 %106, 1
  %113 = getelementptr inbounds double, ptr %5, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds [1200 x double], ptr %3, i64 %76, i64 %112
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = fsub double %116, %114
  store double %117, ptr %115, align 8, !tbaa !5
  %118 = add nuw nsw i64 %106, 2
  %119 = getelementptr inbounds double, ptr %5, i64 %118
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = getelementptr inbounds [1200 x double], ptr %3, i64 %76, i64 %118
  %122 = load double, ptr %121, align 8, !tbaa !5
  %123 = fsub double %122, %120
  store double %123, ptr %121, align 8, !tbaa !5
  %124 = add nuw nsw i64 %106, 3
  %125 = icmp eq i64 %124, 1200
  br i1 %125, label %102, label %105, !llvm.loop !23

126:                                              ; preds = %102, %130
  %127 = phi i64 [ %131, %130 ], [ 0, %102 ]
  br label %128

128:                                              ; preds = %133, %126
  %129 = phi i64 [ %127, %126 ], [ %137, %133 ]
  br label %139

130:                                              ; preds = %133
  %131 = add nuw nsw i64 %127, 1
  %132 = icmp eq i64 %131, 1200
  br i1 %132, label %155, label %126, !llvm.loop !24

133:                                              ; preds = %139
  %134 = fdiv double %152, 1.399000e+03
  %135 = getelementptr inbounds [1200 x double], ptr %4, i64 %127, i64 %129
  store double %134, ptr %135, align 8, !tbaa !5
  %136 = getelementptr inbounds [1200 x double], ptr %4, i64 %129, i64 %127
  store double %134, ptr %136, align 8, !tbaa !5
  %137 = add nuw nsw i64 %129, 1
  %138 = icmp eq i64 %137, 1200
  br i1 %138, label %130, label %128, !llvm.loop !25

139:                                              ; preds = %139, %128
  %140 = phi i64 [ 0, %128 ], [ %153, %139 ]
  %141 = phi double [ 0.000000e+00, %128 ], [ %152, %139 ]
  %142 = getelementptr inbounds [1200 x double], ptr %3, i64 %140, i64 %127
  %143 = load double, ptr %142, align 8, !tbaa !5
  %144 = getelementptr inbounds [1200 x double], ptr %3, i64 %140, i64 %129
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = tail call double @llvm.fmuladd.f64(double %143, double %145, double %141)
  %147 = or disjoint i64 %140, 1
  %148 = getelementptr inbounds [1200 x double], ptr %3, i64 %147, i64 %127
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds [1200 x double], ptr %3, i64 %147, i64 %129
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = tail call double @llvm.fmuladd.f64(double %149, double %151, double %146)
  %153 = add nuw nsw i64 %140, 2
  %154 = icmp eq i64 %153, 1400
  br i1 %154, label %133, label %139, !llvm.loop !26

155:                                              ; preds = %130
  %156 = load ptr, ptr @stdout, align 8, !tbaa !27
  %157 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %156)
  %158 = load ptr, ptr @stdout, align 8, !tbaa !27
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %160

160:                                              ; preds = %163, %155
  %161 = phi i64 [ 0, %155 ], [ %164, %163 ]
  %162 = mul nuw nsw i64 %161, 1200
  br label %166

163:                                              ; preds = %175
  %164 = add nuw nsw i64 %161, 1
  %165 = icmp eq i64 %164, 1200
  br i1 %165, label %182, label %160, !llvm.loop !29

166:                                              ; preds = %175, %160
  %167 = phi i64 [ 0, %160 ], [ %180, %175 ]
  %168 = add nuw nsw i64 %167, %162
  %169 = trunc i64 %168 to i32
  %170 = urem i32 %169, 20
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load ptr, ptr @stdout, align 8, !tbaa !27
  %174 = tail call i32 @fputc(i32 10, ptr %173)
  br label %175

175:                                              ; preds = %172, %166
  %176 = load ptr, ptr @stdout, align 8, !tbaa !27
  %177 = getelementptr inbounds [1200 x double], ptr %4, i64 %161, i64 %167
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.4, double noundef %178)
  %180 = add nuw nsw i64 %167, 1
  %181 = icmp eq i64 %180, 1200
  br i1 %181, label %163, label %166, !llvm.loop !30

182:                                              ; preds = %163
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
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
