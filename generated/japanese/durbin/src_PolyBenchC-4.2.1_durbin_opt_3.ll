; ModuleID = 'outputs/src_PolyBenchC-4.2.1_durbin_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_durbin_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [2000 x double], align 16
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #9
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %22, %6 ]
  %8 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %23, %6 ]
  %9 = sub <2 x i32> <i32 2001, i32 2001>, %8
  %10 = sub <2 x i32> <i32 1999, i32 1999>, %8
  %11 = sitofp <2 x i32> %9 to <2 x double>
  %12 = sitofp <2 x i32> %10 to <2 x double>
  %13 = getelementptr inbounds double, ptr %4, i64 %7
  %14 = getelementptr inbounds double, ptr %13, i64 2
  store <2 x double> %11, ptr %13, align 8, !tbaa !5
  store <2 x double> %12, ptr %14, align 8, !tbaa !5
  %15 = or disjoint i64 %7, 4
  %16 = sub <2 x i32> <i32 1997, i32 1997>, %8
  %17 = sub <2 x i32> <i32 1995, i32 1995>, %8
  %18 = sitofp <2 x i32> %16 to <2 x double>
  %19 = sitofp <2 x i32> %17 to <2 x double>
  %20 = getelementptr inbounds double, ptr %4, i64 %15
  %21 = getelementptr inbounds double, ptr %20, i64 2
  store <2 x double> %18, ptr %20, align 8, !tbaa !5
  store <2 x double> %19, ptr %21, align 8, !tbaa !5
  %22 = add nuw nsw i64 %7, 8
  %23 = add <2 x i32> %8, <i32 8, i32 8>
  %24 = icmp eq i64 %22, 2000
  br i1 %24, label %25, label %6, !llvm.loop !9

25:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16000, ptr nonnull %3) #9
  %26 = load double, ptr %4, align 8, !tbaa !5
  %27 = fneg double %26
  store double %27, ptr %5, align 8, !tbaa !5
  %28 = load double, ptr %4, align 8, !tbaa !5
  %29 = fneg double %28
  br label %30

30:                                               ; preds = %139, %25
  %31 = phi i64 [ 1, %25 ], [ %145, %139 ]
  %32 = phi i64 [ 0, %25 ], [ %146, %139 ]
  %33 = phi double [ %29, %25 ], [ %144, %139 ]
  %34 = phi double [ 1.000000e+00, %25 ], [ %141, %139 ]
  %35 = shl nuw nsw i64 %32, 3
  %36 = fneg double %33
  %37 = getelementptr double, ptr %4, i64 %31
  %38 = and i64 %31, 3
  %39 = icmp ult i64 %32, 3
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = and i64 %31, 9223372036854775804
  br label %94

42:                                               ; preds = %94, %30
  %43 = phi double [ undef, %30 ], [ %124, %94 ]
  %44 = phi i64 [ 0, %30 ], [ %125, %94 ]
  %45 = phi double [ 0.000000e+00, %30 ], [ %124, %94 ]
  %46 = icmp eq i64 %38, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %42, %47
  %48 = phi i64 [ %57, %47 ], [ %44, %42 ]
  %49 = phi double [ %56, %47 ], [ %45, %42 ]
  %50 = phi i64 [ %58, %47 ], [ 0, %42 ]
  %51 = xor i64 %48, -1
  %52 = getelementptr double, ptr %37, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds double, ptr %5, i64 %48
  %55 = load double, ptr %54, align 8, !tbaa !5
  %56 = tail call double @llvm.fmuladd.f64(double %53, double %55, double %49)
  %57 = add nuw nsw i64 %48, 1
  %58 = add i64 %50, 1
  %59 = icmp eq i64 %58, %38
  br i1 %59, label %60, label %47, !llvm.loop !13

60:                                               ; preds = %47, %42
  %61 = phi double [ %43, %42 ], [ %56, %47 ]
  %62 = tail call double @llvm.fmuladd.f64(double %36, double %33, double 1.000000e+00)
  %63 = load double, ptr %37, align 8, !tbaa !5
  %64 = getelementptr double, ptr %5, i64 %31
  %65 = icmp ult i64 %31, 4
  br i1 %65, label %92, label %66

66:                                               ; preds = %60
  %67 = and i64 %31, 9223372036854775804
  %68 = insertelement <2 x double> poison, double %36, i64 0
  %69 = shufflevector <2 x double> %68, <2 x double> poison, <2 x i32> zeroinitializer
  br label %70

70:                                               ; preds = %70, %66
  %71 = phi i64 [ 0, %66 ], [ %88, %70 ]
  %72 = getelementptr inbounds double, ptr %5, i64 %71
  %73 = getelementptr inbounds double, ptr %72, i64 2
  %74 = load <2 x double>, ptr %72, align 8, !tbaa !5
  %75 = load <2 x double>, ptr %73, align 8, !tbaa !5
  %76 = xor i64 %71, -1
  %77 = getelementptr double, ptr %64, i64 %76
  %78 = getelementptr double, ptr %77, i64 -1
  %79 = getelementptr double, ptr %77, i64 -3
  %80 = load <2 x double>, ptr %78, align 8, !tbaa !5
  %81 = shufflevector <2 x double> %80, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %82 = load <2 x double>, ptr %79, align 8, !tbaa !5
  %83 = shufflevector <2 x double> %82, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %69, <2 x double> %81, <2 x double> %74)
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %69, <2 x double> %83, <2 x double> %75)
  %86 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %71
  %87 = getelementptr inbounds double, ptr %86, i64 2
  store <2 x double> %84, ptr %86, align 16, !tbaa !5
  store <2 x double> %85, ptr %87, align 16, !tbaa !5
  %88 = add nuw i64 %71, 4
  %89 = icmp eq i64 %88, %67
  br i1 %89, label %90, label %70, !llvm.loop !15

90:                                               ; preds = %70
  %91 = icmp eq i64 %31, %67
  br i1 %91, label %139, label %92

92:                                               ; preds = %60, %90
  %93 = phi i64 [ 0, %60 ], [ %67, %90 ]
  br label %128

94:                                               ; preds = %94, %40
  %95 = phi i64 [ 0, %40 ], [ %125, %94 ]
  %96 = phi double [ 0.000000e+00, %40 ], [ %124, %94 ]
  %97 = phi i64 [ 0, %40 ], [ %126, %94 ]
  %98 = xor i64 %95, -1
  %99 = getelementptr double, ptr %37, i64 %98
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = getelementptr inbounds double, ptr %5, i64 %95
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = tail call double @llvm.fmuladd.f64(double %100, double %102, double %96)
  %104 = or disjoint i64 %95, 1
  %105 = xor i64 %95, -2
  %106 = getelementptr double, ptr %37, i64 %105
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds double, ptr %5, i64 %104
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = tail call double @llvm.fmuladd.f64(double %107, double %109, double %103)
  %111 = or disjoint i64 %95, 2
  %112 = xor i64 %95, -3
  %113 = getelementptr double, ptr %37, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds double, ptr %5, i64 %111
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = tail call double @llvm.fmuladd.f64(double %114, double %116, double %110)
  %118 = or disjoint i64 %95, 3
  %119 = xor i64 %95, -4
  %120 = getelementptr double, ptr %37, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds double, ptr %5, i64 %118
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = tail call double @llvm.fmuladd.f64(double %121, double %123, double %117)
  %125 = add nuw nsw i64 %95, 4
  %126 = add i64 %97, 4
  %127 = icmp eq i64 %126, %41
  br i1 %127, label %42, label %94, !llvm.loop !16

128:                                              ; preds = %92, %128
  %129 = phi i64 [ %137, %128 ], [ %93, %92 ]
  %130 = getelementptr inbounds double, ptr %5, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !5
  %132 = xor i64 %129, -1
  %133 = getelementptr double, ptr %64, i64 %132
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = tail call double @llvm.fmuladd.f64(double %36, double %134, double %131)
  %136 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %129
  store double %135, ptr %136, align 8, !tbaa !5
  %137 = add nuw nsw i64 %129, 1
  %138 = icmp eq i64 %137, %31
  br i1 %138, label %139, label %128, !llvm.loop !17

139:                                              ; preds = %128, %90
  %140 = add nuw nsw i64 %35, 8
  %141 = fmul double %34, %62
  %142 = fneg double %141
  %143 = fadd double %61, %63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %140, i1 false), !tbaa !5
  %144 = fdiv double %143, %142
  store double %144, ptr %64, align 8, !tbaa !5
  %145 = add nuw nsw i64 %31, 1
  %146 = add nuw nsw i64 %32, 1
  %147 = icmp eq i64 %146, 1999
  br i1 %147, label %148, label %30, !llvm.loop !18

148:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull %3) #9
  %149 = load ptr, ptr @stdout, align 8, !tbaa !19
  %150 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %149)
  %151 = load ptr, ptr @stdout, align 8, !tbaa !19
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %153

153:                                              ; preds = %161, %148
  %154 = phi i64 [ 0, %148 ], [ %166, %161 ]
  %155 = trunc i64 %154 to i16
  %156 = urem i16 %155, 20
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load ptr, ptr @stdout, align 8, !tbaa !19
  %160 = tail call i32 @fputc(i32 10, ptr %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load ptr, ptr @stdout, align 8, !tbaa !19
  %163 = getelementptr inbounds double, ptr %5, i64 %154
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.4, double noundef %164)
  %166 = add nuw nsw i64 %154, 1
  %167 = icmp eq i64 %166, 2000
  br i1 %167, label %168, label %153, !llvm.loop !21

168:                                              ; preds = %161
  %169 = load ptr, ptr @stdout, align 8, !tbaa !19
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %171 = load ptr, ptr @stdout, align 8, !tbaa !19
  %172 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %171)
  tail call void @free(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %5) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10, !12, !11}
!18 = distinct !{!18, !10}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = distinct !{!21, !10}
