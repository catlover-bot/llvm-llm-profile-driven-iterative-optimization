; ModuleID = 'outputs/src_PolyBenchC-4.2.1_jacobi-1d_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_jacobi-1d_opt_2.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #5
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #5
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %3 to i64
  %7 = sub i64 %5, %6
  %8 = icmp ult i64 %7, 16
  br i1 %8, label %31, label %9

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %28, %9 ], [ 0, %2 ]
  %11 = phi <2 x i32> [ %29, %9 ], [ <i32 0, i32 1>, %2 ]
  %12 = sitofp <2 x i32> %11 to <2 x double>
  %13 = fadd <2 x double> %12, <double 2.000000e+00, double 2.000000e+00>
  %14 = fdiv <2 x double> %13, <double 2.000000e+03, double 2.000000e+03>
  %15 = getelementptr inbounds double, ptr %3, i64 %10
  store <2 x double> %14, ptr %15, align 8, !tbaa !5
  %16 = fadd <2 x double> %12, <double 3.000000e+00, double 3.000000e+00>
  %17 = fdiv <2 x double> %16, <double 2.000000e+03, double 2.000000e+03>
  %18 = getelementptr inbounds double, ptr %4, i64 %10
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = or disjoint i64 %10, 2
  %20 = add <2 x i32> %11, <i32 2, i32 2>
  %21 = sitofp <2 x i32> %20 to <2 x double>
  %22 = fadd <2 x double> %21, <double 2.000000e+00, double 2.000000e+00>
  %23 = fdiv <2 x double> %22, <double 2.000000e+03, double 2.000000e+03>
  %24 = getelementptr inbounds double, ptr %3, i64 %19
  store <2 x double> %23, ptr %24, align 8, !tbaa !5
  %25 = fadd <2 x double> %21, <double 3.000000e+00, double 3.000000e+00>
  %26 = fdiv <2 x double> %25, <double 2.000000e+03, double 2.000000e+03>
  %27 = getelementptr inbounds double, ptr %4, i64 %19
  store <2 x double> %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw nsw i64 %10, 4
  %29 = add <2 x i32> %11, <i32 4, i32 4>
  %30 = icmp eq i64 %28, 2000
  br i1 %30, label %52, label %9, !llvm.loop !9

31:                                               ; preds = %2, %31
  %32 = phi i64 [ %50, %31 ], [ 0, %2 ]
  %33 = trunc i64 %32 to i32
  %34 = sitofp i32 %33 to double
  %35 = fadd double %34, 2.000000e+00
  %36 = fdiv double %35, 2.000000e+03
  %37 = getelementptr inbounds double, ptr %3, i64 %32
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = fadd double %34, 3.000000e+00
  %39 = fdiv double %38, 2.000000e+03
  %40 = getelementptr inbounds double, ptr %4, i64 %32
  store double %39, ptr %40, align 8, !tbaa !5
  %41 = or disjoint i64 %32, 1
  %42 = trunc i64 %41 to i32
  %43 = sitofp i32 %42 to double
  %44 = fadd double %43, 2.000000e+00
  %45 = fdiv double %44, 2.000000e+03
  %46 = getelementptr inbounds double, ptr %3, i64 %41
  store double %45, ptr %46, align 8, !tbaa !5
  %47 = fadd double %43, 3.000000e+00
  %48 = fdiv double %47, 2.000000e+03
  %49 = getelementptr inbounds double, ptr %4, i64 %41
  store double %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %32, 2
  %51 = icmp eq i64 %50, 2000
  br i1 %51, label %52, label %31, !llvm.loop !13

52:                                               ; preds = %9, %31
  %53 = getelementptr i8, ptr %4, i64 8
  %54 = getelementptr i8, ptr %4, i64 15992
  %55 = getelementptr i8, ptr %3, i64 16000
  %56 = icmp ult ptr %53, %55
  %57 = icmp ult ptr %3, %54
  %58 = and i1 %56, %57
  %59 = getelementptr i8, ptr %3, i64 15968
  br label %60

60:                                               ; preds = %52, %141
  %61 = phi i32 [ %142, %141 ], [ 0, %52 ]
  %62 = load double, ptr %4, align 8, !tbaa !5
  br i1 %58, label %90, label %63

63:                                               ; preds = %60, %63
  %64 = phi i64 [ %88, %63 ], [ 0, %60 ]
  %65 = shl i64 %64, 3
  %66 = getelementptr i8, ptr %3, i64 %65
  %67 = or disjoint i64 %64, 1
  %68 = getelementptr double, ptr %66, i64 2
  %69 = load <2 x double>, ptr %66, align 8, !tbaa !5, !alias.scope !14
  %70 = load <2 x double>, ptr %68, align 8, !tbaa !5, !alias.scope !14
  %71 = or disjoint i64 %64, 2
  %72 = getelementptr inbounds double, ptr %3, i64 %71
  %73 = getelementptr inbounds double, ptr %72, i64 2
  %74 = load <2 x double>, ptr %72, align 8, !tbaa !5, !alias.scope !14
  %75 = load <2 x double>, ptr %73, align 8, !tbaa !5, !alias.scope !14
  %76 = getelementptr inbounds double, ptr %3, i64 %67
  %77 = getelementptr inbounds double, ptr %76, i64 2
  %78 = load <2 x double>, ptr %76, align 8, !tbaa !5, !alias.scope !14
  %79 = load <2 x double>, ptr %77, align 8, !tbaa !5, !alias.scope !14
  %80 = fadd <2 x double> %69, %78
  %81 = fadd <2 x double> %70, %79
  %82 = fadd <2 x double> %74, %80
  %83 = fadd <2 x double> %75, %81
  %84 = fmul <2 x double> %82, <double 3.333300e-01, double 3.333300e-01>
  %85 = fmul <2 x double> %83, <double 3.333300e-01, double 3.333300e-01>
  %86 = getelementptr inbounds double, ptr %4, i64 %67
  %87 = getelementptr inbounds double, ptr %86, i64 2
  store <2 x double> %84, ptr %86, align 8, !tbaa !5, !alias.scope !17, !noalias !14
  store <2 x double> %85, ptr %87, align 8, !tbaa !5, !alias.scope !17, !noalias !14
  %88 = add nuw i64 %64, 4
  %89 = icmp eq i64 %88, 1996
  br i1 %89, label %90, label %63, !llvm.loop !19

90:                                               ; preds = %63, %60
  %91 = phi i64 [ 1, %60 ], [ 1997, %63 ]
  %92 = phi ptr [ %3, %60 ], [ %59, %63 ]
  br label %93

93:                                               ; preds = %93, %90
  %94 = phi i64 [ %91, %90 ], [ %107, %93 ]
  %95 = phi ptr [ %92, %90 ], [ %110, %93 ]
  %96 = load double, ptr %95, align 8, !tbaa !5
  %97 = add nuw nsw i64 %94, 1
  %98 = getelementptr inbounds double, ptr %3, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = getelementptr inbounds double, ptr %3, i64 %94
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = fadd double %96, %101
  %103 = fadd double %99, %102
  %104 = fmul double %103, 3.333300e-01
  %105 = getelementptr inbounds double, ptr %4, i64 %94
  store double %104, ptr %105, align 8, !tbaa !5
  %106 = load double, ptr %100, align 8, !tbaa !5
  %107 = add nuw nsw i64 %94, 2
  %108 = getelementptr inbounds double, ptr %3, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = getelementptr inbounds double, ptr %3, i64 %97
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = fadd double %106, %111
  %113 = fadd double %109, %112
  %114 = fmul double %113, 3.333300e-01
  %115 = getelementptr inbounds double, ptr %4, i64 %97
  store double %114, ptr %115, align 8, !tbaa !5
  %116 = icmp eq i64 %107, 1999
  br i1 %116, label %117, label %93, !llvm.loop !20

117:                                              ; preds = %93, %117
  %118 = phi i64 [ %130, %117 ], [ 1, %93 ]
  %119 = phi double [ %139, %117 ], [ %62, %93 ]
  %120 = add nuw nsw i64 %118, 1
  %121 = getelementptr inbounds double, ptr %4, i64 %120
  %122 = load double, ptr %121, align 8, !tbaa !5
  %123 = getelementptr inbounds double, ptr %4, i64 %118
  %124 = load double, ptr %123, align 8, !tbaa !5
  %125 = fadd double %119, %124
  %126 = fadd double %122, %125
  %127 = fmul double %126, 3.333300e-01
  %128 = getelementptr inbounds double, ptr %3, i64 %118
  store double %127, ptr %128, align 8, !tbaa !5
  %129 = load double, ptr %123, align 8, !tbaa !5
  %130 = add nuw nsw i64 %118, 2
  %131 = getelementptr inbounds double, ptr %4, i64 %130
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = getelementptr inbounds double, ptr %4, i64 %120
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = fadd double %129, %134
  %136 = fadd double %132, %135
  %137 = fmul double %136, 3.333300e-01
  %138 = getelementptr inbounds double, ptr %3, i64 %120
  store double %137, ptr %138, align 8, !tbaa !5
  %139 = load double, ptr %133, align 8, !tbaa !5
  %140 = icmp eq i64 %130, 1999
  br i1 %140, label %141, label %117, !llvm.loop !21

141:                                              ; preds = %117
  %142 = add nuw nsw i32 %61, 1
  %143 = icmp eq i32 %142, 500
  br i1 %143, label %144, label %60, !llvm.loop !22

144:                                              ; preds = %141
  %145 = load ptr, ptr @stdout, align 8, !tbaa !23
  %146 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %145)
  %147 = load ptr, ptr @stdout, align 8, !tbaa !23
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %149

149:                                              ; preds = %157, %144
  %150 = phi i64 [ 0, %144 ], [ %162, %157 ]
  %151 = trunc i64 %150 to i16
  %152 = urem i16 %151, 20
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load ptr, ptr @stdout, align 8, !tbaa !23
  %156 = tail call i32 @fputc(i32 10, ptr %155)
  br label %157

157:                                              ; preds = %154, %149
  %158 = load ptr, ptr @stdout, align 8, !tbaa !23
  %159 = getelementptr inbounds double, ptr %3, i64 %150
  %160 = load double, ptr %159, align 8, !tbaa !5
  %161 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.4, double noundef %160)
  %162 = add nuw nsw i64 %150, 1
  %163 = icmp eq i64 %162, 2000
  br i1 %163, label %164, label %149, !llvm.loop !25

164:                                              ; preds = %157
  %165 = load ptr, ptr @stdout, align 8, !tbaa !23
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %167 = load ptr, ptr @stdout, align 8, !tbaa !23
  %168 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %167)
  tail call void @free(ptr noundef nonnull %3) #5
  tail call void @free(ptr noundef %4) #5
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = distinct !{!25, !10}
