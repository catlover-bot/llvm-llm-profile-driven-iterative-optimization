; ModuleID = 'outputs/src_PolyBenchC-4.2.1_durbin_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_durbin_opt_1.c"
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

30:                                               ; preds = %143, %25
  %31 = phi i64 [ 1, %25 ], [ %145, %143 ]
  %32 = phi i64 [ 0, %25 ], [ %146, %143 ]
  %33 = phi double [ 1.000000e+00, %25 ], [ %63, %143 ]
  %34 = phi double [ %29, %25 ], [ %67, %143 ]
  %35 = shl nuw nsw i64 %32, 3
  %36 = fneg double %34
  %37 = getelementptr double, ptr %4, i64 %31
  %38 = and i64 %31, 3
  %39 = icmp ult i64 %32, 3
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = and i64 %31, 9223372036854775804
  br label %98

42:                                               ; preds = %98, %30
  %43 = phi double [ undef, %30 ], [ %128, %98 ]
  %44 = phi i64 [ 0, %30 ], [ %129, %98 ]
  %45 = phi double [ 0.000000e+00, %30 ], [ %128, %98 ]
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
  %62 = tail call double @llvm.fmuladd.f64(double %36, double %34, double 1.000000e+00)
  %63 = fmul double %33, %62
  %64 = load double, ptr %37, align 8, !tbaa !5
  %65 = fadd double %61, %64
  %66 = fneg double %65
  %67 = fdiv double %66, %63
  %68 = getelementptr double, ptr %5, i64 %31
  %69 = icmp ult i64 %31, 4
  br i1 %69, label %96, label %70

70:                                               ; preds = %60
  %71 = and i64 %31, 9223372036854775804
  %72 = insertelement <2 x double> poison, double %67, i64 0
  %73 = shufflevector <2 x double> %72, <2 x double> poison, <2 x i32> zeroinitializer
  br label %74

74:                                               ; preds = %74, %70
  %75 = phi i64 [ 0, %70 ], [ %92, %74 ]
  %76 = getelementptr inbounds double, ptr %5, i64 %75
  %77 = getelementptr inbounds double, ptr %76, i64 2
  %78 = load <2 x double>, ptr %76, align 8, !tbaa !5
  %79 = load <2 x double>, ptr %77, align 8, !tbaa !5
  %80 = xor i64 %75, -1
  %81 = getelementptr double, ptr %68, i64 %80
  %82 = getelementptr double, ptr %81, i64 -1
  %83 = getelementptr double, ptr %81, i64 -3
  %84 = load <2 x double>, ptr %82, align 8, !tbaa !5
  %85 = shufflevector <2 x double> %84, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %86 = load <2 x double>, ptr %83, align 8, !tbaa !5
  %87 = shufflevector <2 x double> %86, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %88 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %85, <2 x double> %78)
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %73, <2 x double> %87, <2 x double> %79)
  %90 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %75
  %91 = getelementptr inbounds double, ptr %90, i64 2
  store <2 x double> %88, ptr %90, align 16, !tbaa !5
  store <2 x double> %89, ptr %91, align 16, !tbaa !5
  %92 = add nuw i64 %75, 4
  %93 = icmp eq i64 %92, %71
  br i1 %93, label %94, label %74, !llvm.loop !15

94:                                               ; preds = %74
  %95 = icmp eq i64 %31, %71
  br i1 %95, label %143, label %96

96:                                               ; preds = %60, %94
  %97 = phi i64 [ 0, %60 ], [ %71, %94 ]
  br label %132

98:                                               ; preds = %98, %40
  %99 = phi i64 [ 0, %40 ], [ %129, %98 ]
  %100 = phi double [ 0.000000e+00, %40 ], [ %128, %98 ]
  %101 = phi i64 [ 0, %40 ], [ %130, %98 ]
  %102 = xor i64 %99, -1
  %103 = getelementptr double, ptr %37, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds double, ptr %5, i64 %99
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = tail call double @llvm.fmuladd.f64(double %104, double %106, double %100)
  %108 = or disjoint i64 %99, 1
  %109 = xor i64 %99, -2
  %110 = getelementptr double, ptr %37, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = getelementptr inbounds double, ptr %5, i64 %108
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = tail call double @llvm.fmuladd.f64(double %111, double %113, double %107)
  %115 = or disjoint i64 %99, 2
  %116 = xor i64 %99, -3
  %117 = getelementptr double, ptr %37, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = getelementptr inbounds double, ptr %5, i64 %115
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = tail call double @llvm.fmuladd.f64(double %118, double %120, double %114)
  %122 = or disjoint i64 %99, 3
  %123 = xor i64 %99, -4
  %124 = getelementptr double, ptr %37, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds double, ptr %5, i64 %122
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = tail call double @llvm.fmuladd.f64(double %125, double %127, double %121)
  %129 = add nuw nsw i64 %99, 4
  %130 = add i64 %101, 4
  %131 = icmp eq i64 %130, %41
  br i1 %131, label %42, label %98, !llvm.loop !16

132:                                              ; preds = %96, %132
  %133 = phi i64 [ %141, %132 ], [ %97, %96 ]
  %134 = getelementptr inbounds double, ptr %5, i64 %133
  %135 = load double, ptr %134, align 8, !tbaa !5
  %136 = xor i64 %133, -1
  %137 = getelementptr double, ptr %68, i64 %136
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = tail call double @llvm.fmuladd.f64(double %67, double %138, double %135)
  %140 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %133
  store double %139, ptr %140, align 8, !tbaa !5
  %141 = add nuw nsw i64 %133, 1
  %142 = icmp eq i64 %141, %31
  br i1 %142, label %143, label %132, !llvm.loop !17

143:                                              ; preds = %132, %94
  %144 = add nuw nsw i64 %35, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %144, i1 false), !tbaa !5
  store double %67, ptr %68, align 8, !tbaa !5
  %145 = add nuw nsw i64 %31, 1
  %146 = add nuw nsw i64 %32, 1
  %147 = icmp eq i64 %146, 1999
  br i1 %147, label %148, label %30, !llvm.loop !18

148:                                              ; preds = %143
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
