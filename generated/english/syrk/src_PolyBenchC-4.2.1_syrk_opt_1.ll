; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syrk_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syrk_opt_1.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #10
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #10
  br label %5

5:                                                ; preds = %2, %22
  %6 = phi i64 [ 0, %2 ], [ %23, %22 ]
  %7 = insertelement <2 x i64> poison, i64 %6, i64 0
  %8 = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %19, %9 ]
  %11 = phi <2 x i64> [ <i64 0, i64 1>, %5 ], [ %20, %9 ]
  %12 = mul nuw nsw <2 x i64> %11, %8
  %13 = trunc <2 x i64> %12 to <2 x i32>
  %14 = add <2 x i32> %13, <i32 1, i32 1>
  %15 = urem <2 x i32> %14, <i32 1200, i32 1200>
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fdiv <2 x double> %16, <double 1.200000e+03, double 1.200000e+03>
  %18 = getelementptr inbounds [1000 x double], ptr %4, i64 %6, i64 %10
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = add nuw i64 %10, 2
  %20 = add <2 x i64> %11, <i64 2, i64 2>
  %21 = icmp eq i64 %19, 1000
  br i1 %21, label %22, label %9, !llvm.loop !9

22:                                               ; preds = %9
  %23 = add nuw nsw i64 %6, 1
  %24 = icmp eq i64 %23, 1200
  br i1 %24, label %25, label %5, !llvm.loop !13

25:                                               ; preds = %22, %42
  %26 = phi i64 [ %43, %42 ], [ 0, %22 ]
  %27 = insertelement <2 x i64> poison, i64 %26, i64 0
  %28 = shufflevector <2 x i64> %27, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i64 [ 0, %25 ], [ %39, %29 ]
  %31 = phi <2 x i64> [ <i64 0, i64 1>, %25 ], [ %40, %29 ]
  %32 = mul nuw nsw <2 x i64> %31, %28
  %33 = trunc <2 x i64> %32 to <2 x i32>
  %34 = add <2 x i32> %33, <i32 2, i32 2>
  %35 = urem <2 x i32> %34, <i32 1000, i32 1000>
  %36 = sitofp <2 x i32> %35 to <2 x double>
  %37 = fdiv <2 x double> %36, <double 1.000000e+03, double 1.000000e+03>
  %38 = getelementptr inbounds [1200 x double], ptr %3, i64 %26, i64 %30
  store <2 x double> %37, ptr %38, align 8, !tbaa !5
  %39 = add nuw i64 %30, 2
  %40 = add <2 x i64> %31, <i64 2, i64 2>
  %41 = icmp eq i64 %39, 1200
  br i1 %41, label %42, label %29, !llvm.loop !14

42:                                               ; preds = %29
  %43 = add nuw nsw i64 %26, 1
  %44 = icmp eq i64 %43, 1200
  br i1 %44, label %45, label %25, !llvm.loop !15

45:                                               ; preds = %42
  tail call fastcc void @kernel_syrk(double noundef 1.500000e+00, double noundef 1.200000e+00, ptr noundef nonnull %3, ptr noundef %4)
  %46 = load ptr, ptr @stdout, align 8, !tbaa !16
  %47 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %46)
  %48 = load ptr, ptr @stdout, align 8, !tbaa !16
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %50

50:                                               ; preds = %69, %45
  %51 = phi i64 [ 0, %45 ], [ %70, %69 ]
  %52 = mul nuw nsw i64 %51, 1200
  br label %53

53:                                               ; preds = %62, %50
  %54 = phi i64 [ 0, %50 ], [ %67, %62 ]
  %55 = add nuw nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  %57 = urem i32 %56, 20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load ptr, ptr @stdout, align 8, !tbaa !16
  %61 = tail call i32 @fputc(i32 10, ptr %60)
  br label %62

62:                                               ; preds = %59, %53
  %63 = load ptr, ptr @stdout, align 8, !tbaa !16
  %64 = getelementptr inbounds [1200 x double], ptr %3, i64 %51, i64 %54
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.4, double noundef %65)
  %67 = add nuw nsw i64 %54, 1
  %68 = icmp eq i64 %67, 1200
  br i1 %68, label %69, label %53, !llvm.loop !18

69:                                               ; preds = %62
  %70 = add nuw nsw i64 %51, 1
  %71 = icmp eq i64 %70, 1200
  br i1 %71, label %72, label %50, !llvm.loop !19

72:                                               ; preds = %69
  %73 = load ptr, ptr @stdout, align 8, !tbaa !16
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %75 = load ptr, ptr @stdout, align 8, !tbaa !16
  %76 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %75)
  tail call void @free(ptr noundef nonnull %3) #10
  tail call void @free(ptr noundef %4) #10
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @kernel_syrk(double noundef %0, double noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = insertelement <2 x double> poison, double %1, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  br label %7

7:                                                ; preds = %4, %44
  %8 = phi i64 [ 1, %4 ], [ %46, %44 ]
  %9 = phi i64 [ 0, %4 ], [ %45, %44 ]
  %10 = mul nuw nsw i64 %9, 9600
  %11 = getelementptr i8, ptr %2, i64 %10
  %12 = shl nuw nsw i64 %9, 3
  %13 = add nuw nsw i64 %12, 8
  %14 = tail call ptr @llvm.stacksave.p0()
  %15 = alloca [1200 x double], align 16
  %16 = icmp ult i64 %8, 4
  br i1 %16, label %31, label %17

17:                                               ; preds = %7
  %18 = and i64 %8, 9223372036854775804
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %27, %19 ]
  %21 = getelementptr inbounds [1200 x double], ptr %2, i64 %9, i64 %20
  %22 = getelementptr inbounds double, ptr %21, i64 2
  %23 = load <2 x double>, ptr %21, align 8, !tbaa !5
  %24 = load <2 x double>, ptr %22, align 8, !tbaa !5
  %25 = fmul <2 x double> %23, %6
  %26 = fmul <2 x double> %24, %6
  store <2 x double> %25, ptr %21, align 8, !tbaa !5
  store <2 x double> %26, ptr %22, align 8, !tbaa !5
  %27 = add nuw i64 %20, 4
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %29, label %19, !llvm.loop !20

29:                                               ; preds = %19
  %30 = icmp eq i64 %8, %18
  br i1 %30, label %33, label %31

31:                                               ; preds = %7, %29
  %32 = phi i64 [ 0, %7 ], [ %18, %29 ]
  br label %37

33:                                               ; preds = %37, %29
  %34 = icmp ult i64 %8, 4
  %35 = and i64 %8, 9223372036854775804
  %36 = icmp eq i64 %8, %35
  br label %48

37:                                               ; preds = %31, %37
  %38 = phi i64 [ %42, %37 ], [ %32, %31 ]
  %39 = getelementptr inbounds [1200 x double], ptr %2, i64 %9, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !5
  %41 = fmul double %40, %1
  store double %41, ptr %39, align 8, !tbaa !5
  %42 = add nuw nsw i64 %38, 1
  %43 = icmp eq i64 %42, %8
  br i1 %43, label %33, label %37, !llvm.loop !21

44:                                               ; preds = %96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %11, ptr noundef nonnull align 16 dereferenceable(1) %15, i64 %13, i1 false), !tbaa !5
  tail call void @llvm.stackrestore.p0(ptr %14)
  %45 = add nuw nsw i64 %9, 1
  %46 = add nuw nsw i64 %8, 1
  %47 = icmp eq i64 %45, 1200
  br i1 %47, label %99, label %7, !llvm.loop !22

48:                                               ; preds = %33, %96
  %49 = phi i64 [ %97, %96 ], [ 0, %33 ]
  %50 = getelementptr inbounds [1000 x double], ptr %3, i64 %9, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = fmul double %51, %0
  br i1 %34, label %84, label %53

53:                                               ; preds = %48
  %54 = insertelement <2 x double> poison, double %52, i64 0
  %55 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi i64 [ 0, %53 ], [ %81, %56 ]
  %58 = or disjoint i64 %57, 1
  %59 = or disjoint i64 %57, 2
  %60 = or disjoint i64 %57, 3
  %61 = getelementptr inbounds [1200 x double], ptr %2, i64 %9, i64 %57
  %62 = getelementptr inbounds double, ptr %61, i64 2
  %63 = load <2 x double>, ptr %61, align 8, !tbaa !5
  %64 = load <2 x double>, ptr %62, align 8, !tbaa !5
  %65 = getelementptr inbounds [1000 x double], ptr %3, i64 %57, i64 %49
  %66 = getelementptr inbounds [1000 x double], ptr %3, i64 %58, i64 %49
  %67 = getelementptr inbounds [1000 x double], ptr %3, i64 %59, i64 %49
  %68 = getelementptr inbounds [1000 x double], ptr %3, i64 %60, i64 %49
  %69 = load double, ptr %65, align 8, !tbaa !5
  %70 = load double, ptr %66, align 8, !tbaa !5
  %71 = insertelement <2 x double> poison, double %69, i64 0
  %72 = insertelement <2 x double> %71, double %70, i64 1
  %73 = load double, ptr %67, align 8, !tbaa !5
  %74 = load double, ptr %68, align 8, !tbaa !5
  %75 = insertelement <2 x double> poison, double %73, i64 0
  %76 = insertelement <2 x double> %75, double %74, i64 1
  %77 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> %72, <2 x double> %63)
  %78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> %76, <2 x double> %64)
  %79 = getelementptr inbounds double, ptr %15, i64 %57
  %80 = getelementptr inbounds double, ptr %79, i64 2
  store <2 x double> %77, ptr %79, align 16, !tbaa !5
  store <2 x double> %78, ptr %80, align 16, !tbaa !5
  %81 = add nuw i64 %57, 4
  %82 = icmp eq i64 %81, %35
  br i1 %82, label %83, label %56, !llvm.loop !23

83:                                               ; preds = %56
  br i1 %36, label %96, label %84

84:                                               ; preds = %48, %83
  %85 = phi i64 [ 0, %48 ], [ %35, %83 ]
  br label %86

86:                                               ; preds = %84, %86
  %87 = phi i64 [ %94, %86 ], [ %85, %84 ]
  %88 = getelementptr inbounds [1200 x double], ptr %2, i64 %9, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = getelementptr inbounds [1000 x double], ptr %3, i64 %87, i64 %49
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = tail call double @llvm.fmuladd.f64(double %52, double %91, double %89)
  %93 = getelementptr inbounds double, ptr %15, i64 %87
  store double %92, ptr %93, align 8, !tbaa !5
  %94 = add nuw nsw i64 %87, 1
  %95 = icmp eq i64 %94, %8
  br i1 %95, label %96, label %86, !llvm.loop !24

96:                                               ; preds = %86, %83
  %97 = add nuw nsw i64 %49, 1
  %98 = icmp eq i64 %97, 1000
  br i1 %98, label %44, label %48, !llvm.loop !25

99:                                               ; preds = %44
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !12, !11}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10, !12, !11}
!25 = distinct !{!25, !10}
