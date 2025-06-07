; ModuleID = 'outputs/src_PolyBenchC-4.2.1_jacobi-1d_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_jacobi-1d_opt_3.c"
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
  %8 = icmp ult i64 %7, 32
  br i1 %8, label %30, label %9

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %27, %9 ], [ 0, %2 ]
  %11 = phi <2 x i32> [ %28, %9 ], [ <i32 0, i32 1>, %2 ]
  %12 = add <2 x i32> %11, <i32 2, i32 2>
  %13 = sitofp <2 x i32> %11 to <2 x double>
  %14 = sitofp <2 x i32> %12 to <2 x double>
  %15 = fadd <2 x double> %13, <double 2.000000e+00, double 2.000000e+00>
  %16 = fadd <2 x double> %14, <double 2.000000e+00, double 2.000000e+00>
  %17 = fmul <2 x double> %15, <double 5.000000e-04, double 5.000000e-04>
  %18 = fmul <2 x double> %16, <double 5.000000e-04, double 5.000000e-04>
  %19 = getelementptr inbounds double, ptr %3, i64 %10
  %20 = getelementptr inbounds double, ptr %19, i64 2
  store <2 x double> %17, ptr %19, align 8, !tbaa !5
  store <2 x double> %18, ptr %20, align 8, !tbaa !5
  %21 = fadd <2 x double> %13, <double 3.000000e+00, double 3.000000e+00>
  %22 = fadd <2 x double> %14, <double 3.000000e+00, double 3.000000e+00>
  %23 = fmul <2 x double> %21, <double 5.000000e-04, double 5.000000e-04>
  %24 = fmul <2 x double> %22, <double 5.000000e-04, double 5.000000e-04>
  %25 = getelementptr inbounds double, ptr %4, i64 %10
  %26 = getelementptr inbounds double, ptr %25, i64 2
  store <2 x double> %23, ptr %25, align 8, !tbaa !5
  store <2 x double> %24, ptr %26, align 8, !tbaa !5
  %27 = add nuw i64 %10, 4
  %28 = add <2 x i32> %11, <i32 4, i32 4>
  %29 = icmp eq i64 %27, 2000
  br i1 %29, label %51, label %9, !llvm.loop !9

30:                                               ; preds = %2, %30
  %31 = phi i64 [ %49, %30 ], [ 0, %2 ]
  %32 = trunc i64 %31 to i32
  %33 = sitofp i32 %32 to double
  %34 = fadd double %33, 2.000000e+00
  %35 = fmul double %34, 5.000000e-04
  %36 = getelementptr inbounds double, ptr %3, i64 %31
  store double %35, ptr %36, align 8, !tbaa !5
  %37 = fadd double %33, 3.000000e+00
  %38 = fmul double %37, 5.000000e-04
  %39 = getelementptr inbounds double, ptr %4, i64 %31
  store double %38, ptr %39, align 8, !tbaa !5
  %40 = or disjoint i64 %31, 1
  %41 = trunc i64 %40 to i32
  %42 = sitofp i32 %41 to double
  %43 = fadd double %42, 2.000000e+00
  %44 = fmul double %43, 5.000000e-04
  %45 = getelementptr inbounds double, ptr %3, i64 %40
  store double %44, ptr %45, align 8, !tbaa !5
  %46 = fadd double %42, 3.000000e+00
  %47 = fmul double %46, 5.000000e-04
  %48 = getelementptr inbounds double, ptr %4, i64 %40
  store double %47, ptr %48, align 8, !tbaa !5
  %49 = add nuw nsw i64 %31, 2
  %50 = icmp eq i64 %49, 2000
  br i1 %50, label %51, label %30, !llvm.loop !13

51:                                               ; preds = %9, %30
  %52 = getelementptr i8, ptr %4, i64 8
  %53 = getelementptr i8, ptr %4, i64 15992
  %54 = getelementptr i8, ptr %3, i64 16000
  %55 = icmp ult ptr %52, %54
  %56 = icmp ult ptr %3, %53
  %57 = and i1 %55, %56
  %58 = getelementptr i8, ptr %3, i64 15968
  br label %59

59:                                               ; preds = %51, %140
  %60 = phi i32 [ %141, %140 ], [ 0, %51 ]
  %61 = load double, ptr %4, align 8, !tbaa !5
  br i1 %57, label %89, label %62

62:                                               ; preds = %59, %62
  %63 = phi i64 [ %87, %62 ], [ 0, %59 ]
  %64 = shl i64 %63, 3
  %65 = getelementptr i8, ptr %3, i64 %64
  %66 = or disjoint i64 %63, 1
  %67 = getelementptr double, ptr %65, i64 2
  %68 = load <2 x double>, ptr %65, align 8, !tbaa !5, !alias.scope !14
  %69 = load <2 x double>, ptr %67, align 8, !tbaa !5, !alias.scope !14
  %70 = or disjoint i64 %63, 2
  %71 = getelementptr inbounds double, ptr %3, i64 %70
  %72 = getelementptr inbounds double, ptr %71, i64 2
  %73 = load <2 x double>, ptr %71, align 8, !tbaa !5, !alias.scope !14
  %74 = load <2 x double>, ptr %72, align 8, !tbaa !5, !alias.scope !14
  %75 = getelementptr inbounds double, ptr %3, i64 %66
  %76 = getelementptr inbounds double, ptr %75, i64 2
  %77 = load <2 x double>, ptr %75, align 8, !tbaa !5, !alias.scope !14
  %78 = load <2 x double>, ptr %76, align 8, !tbaa !5, !alias.scope !14
  %79 = fadd <2 x double> %68, %77
  %80 = fadd <2 x double> %69, %78
  %81 = fadd <2 x double> %73, %79
  %82 = fadd <2 x double> %74, %80
  %83 = fmul <2 x double> %81, <double 3.333300e-01, double 3.333300e-01>
  %84 = fmul <2 x double> %82, <double 3.333300e-01, double 3.333300e-01>
  %85 = getelementptr inbounds double, ptr %4, i64 %66
  %86 = getelementptr inbounds double, ptr %85, i64 2
  store <2 x double> %83, ptr %85, align 8, !tbaa !5, !alias.scope !17, !noalias !14
  store <2 x double> %84, ptr %86, align 8, !tbaa !5, !alias.scope !17, !noalias !14
  %87 = add nuw i64 %63, 4
  %88 = icmp eq i64 %87, 1996
  br i1 %88, label %89, label %62, !llvm.loop !19

89:                                               ; preds = %62, %59
  %90 = phi i64 [ 1, %59 ], [ 1997, %62 ]
  %91 = phi ptr [ %3, %59 ], [ %58, %62 ]
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi i64 [ %90, %89 ], [ %106, %92 ]
  %94 = phi ptr [ %91, %89 ], [ %109, %92 ]
  %95 = load double, ptr %94, align 8, !tbaa !5
  %96 = add nuw nsw i64 %93, 1
  %97 = getelementptr inbounds double, ptr %3, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds double, ptr %3, i64 %93
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = fadd double %95, %100
  %102 = fadd double %98, %101
  %103 = fmul double %102, 3.333300e-01
  %104 = getelementptr inbounds double, ptr %4, i64 %93
  store double %103, ptr %104, align 8, !tbaa !5
  %105 = load double, ptr %99, align 8, !tbaa !5
  %106 = add nuw nsw i64 %93, 2
  %107 = getelementptr inbounds double, ptr %3, i64 %106
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = getelementptr inbounds double, ptr %3, i64 %96
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = fadd double %105, %110
  %112 = fadd double %108, %111
  %113 = fmul double %112, 3.333300e-01
  %114 = getelementptr inbounds double, ptr %4, i64 %96
  store double %113, ptr %114, align 8, !tbaa !5
  %115 = icmp eq i64 %106, 1999
  br i1 %115, label %116, label %92, !llvm.loop !20

116:                                              ; preds = %92, %116
  %117 = phi i64 [ %129, %116 ], [ 1, %92 ]
  %118 = phi double [ %138, %116 ], [ %61, %92 ]
  %119 = add nuw nsw i64 %117, 1
  %120 = getelementptr inbounds double, ptr %4, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds double, ptr %4, i64 %117
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = fadd double %118, %123
  %125 = fadd double %121, %124
  %126 = fmul double %125, 3.333300e-01
  %127 = getelementptr inbounds double, ptr %3, i64 %117
  store double %126, ptr %127, align 8, !tbaa !5
  %128 = load double, ptr %122, align 8, !tbaa !5
  %129 = add nuw nsw i64 %117, 2
  %130 = getelementptr inbounds double, ptr %4, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !5
  %132 = getelementptr inbounds double, ptr %4, i64 %119
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = fadd double %128, %133
  %135 = fadd double %131, %134
  %136 = fmul double %135, 3.333300e-01
  %137 = getelementptr inbounds double, ptr %3, i64 %119
  store double %136, ptr %137, align 8, !tbaa !5
  %138 = load double, ptr %132, align 8, !tbaa !5
  %139 = icmp eq i64 %129, 1999
  br i1 %139, label %140, label %116, !llvm.loop !21

140:                                              ; preds = %116
  %141 = add nuw nsw i32 %60, 1
  %142 = icmp eq i32 %141, 500
  br i1 %142, label %143, label %59, !llvm.loop !22

143:                                              ; preds = %140
  %144 = load ptr, ptr @stdout, align 8, !tbaa !23
  %145 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %144)
  %146 = load ptr, ptr @stdout, align 8, !tbaa !23
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %148

148:                                              ; preds = %156, %143
  %149 = phi i64 [ 0, %143 ], [ %161, %156 ]
  %150 = trunc i64 %149 to i16
  %151 = urem i16 %150, 20
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load ptr, ptr @stdout, align 8, !tbaa !23
  %155 = tail call i32 @fputc(i32 10, ptr %154)
  br label %156

156:                                              ; preds = %153, %148
  %157 = load ptr, ptr @stdout, align 8, !tbaa !23
  %158 = getelementptr inbounds double, ptr %3, i64 %149
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.4, double noundef %159)
  %161 = add nuw nsw i64 %149, 1
  %162 = icmp eq i64 %161, 2000
  br i1 %162, label %163, label %148, !llvm.loop !25

163:                                              ; preds = %156
  %164 = load ptr, ptr @stdout, align 8, !tbaa !23
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %166 = load ptr, ptr @stdout, align 8, !tbaa !23
  %167 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %166)
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
