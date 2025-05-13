; ModuleID = 'outputs/lu_1.c'
source_filename = "outputs/lu_1.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #10
  tail call fastcc void @init_array(ptr noundef %3)
  br label %4

4:                                                ; preds = %100, %2
  %5 = phi i64 [ 0, %2 ], [ %101, %100 ]
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %100, label %46

7:                                                ; preds = %95, %42
  %8 = phi i64 [ %44, %42 ], [ %5, %95 ]
  %9 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %8
  %10 = load double, ptr %9, align 8, !tbaa !5
  br i1 %97, label %31, label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ %28, %11 ], [ 0, %7 ]
  %13 = phi double [ %27, %11 ], [ %10, %7 ]
  %14 = phi i64 [ %29, %11 ], [ 0, %7 ]
  %15 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %12
  %16 = load double, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds [2000 x double], ptr %3, i64 %12, i64 %8
  %18 = load double, ptr %17, align 8, !tbaa !5
  %19 = fneg double %16
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %18, double %13)
  %21 = or disjoint i64 %12, 1
  %22 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds [2000 x double], ptr %3, i64 %21, i64 %8
  %25 = load double, ptr %24, align 8, !tbaa !5
  %26 = fneg double %23
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %25, double %20)
  %28 = add nuw nsw i64 %12, 2
  %29 = add i64 %14, 2
  %30 = icmp eq i64 %29, %98
  br i1 %30, label %31, label %11, !llvm.loop !9

31:                                               ; preds = %11, %7
  %32 = phi double [ undef, %7 ], [ %27, %11 ]
  %33 = phi i64 [ 0, %7 ], [ %28, %11 ]
  %34 = phi double [ %10, %7 ], [ %27, %11 ]
  br i1 %99, label %42, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %33
  %37 = load double, ptr %36, align 8, !tbaa !5
  %38 = getelementptr inbounds [2000 x double], ptr %3, i64 %33, i64 %8
  %39 = load double, ptr %38, align 8, !tbaa !5
  %40 = fneg double %37
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %39, double %34)
  br label %42

42:                                               ; preds = %31, %35
  %43 = phi double [ %32, %31 ], [ %41, %35 ]
  store double %43, ptr %9, align 8, !tbaa !5
  %44 = add nuw nsw i64 %8, 1
  %45 = icmp eq i64 %44, 2000
  br i1 %45, label %100, label %7, !llvm.loop !11

46:                                               ; preds = %4, %88
  %47 = phi i64 [ %93, %88 ], [ 0, %4 ]
  %48 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !5
  %50 = icmp eq i64 %47, 0
  br i1 %50, label %88, label %51

51:                                               ; preds = %46
  %52 = and i64 %47, 1
  %53 = icmp eq i64 %47, 1
  br i1 %53, label %76, label %54

54:                                               ; preds = %51
  %55 = and i64 %47, 9223372036854775806
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i64 [ 0, %54 ], [ %73, %56 ]
  %58 = phi double [ %49, %54 ], [ %72, %56 ]
  %59 = phi i64 [ 0, %54 ], [ %74, %56 ]
  %60 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %57
  %61 = load double, ptr %60, align 8, !tbaa !5
  %62 = getelementptr inbounds [2000 x double], ptr %3, i64 %57, i64 %47
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = fneg double %61
  %65 = tail call double @llvm.fmuladd.f64(double %64, double %63, double %58)
  %66 = or disjoint i64 %57, 1
  %67 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds [2000 x double], ptr %3, i64 %66, i64 %47
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = fneg double %68
  %72 = tail call double @llvm.fmuladd.f64(double %71, double %70, double %65)
  %73 = add nuw nsw i64 %57, 2
  %74 = add i64 %59, 2
  %75 = icmp eq i64 %74, %55
  br i1 %75, label %76, label %56, !llvm.loop !12

76:                                               ; preds = %56, %51
  %77 = phi double [ undef, %51 ], [ %72, %56 ]
  %78 = phi i64 [ 0, %51 ], [ %73, %56 ]
  %79 = phi double [ %49, %51 ], [ %72, %56 ]
  %80 = icmp eq i64 %52, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds [2000 x double], ptr %3, i64 %5, i64 %78
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = getelementptr inbounds [2000 x double], ptr %3, i64 %78, i64 %47
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = fneg double %83
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %85, double %79)
  br label %88

88:                                               ; preds = %81, %76, %46
  %89 = phi double [ %49, %46 ], [ %77, %76 ], [ %87, %81 ]
  %90 = getelementptr inbounds [2000 x double], ptr %3, i64 %47, i64 %47
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = fdiv double %89, %91
  store double %92, ptr %48, align 8, !tbaa !5
  %93 = add nuw nsw i64 %47, 1
  %94 = icmp eq i64 %93, %5
  br i1 %94, label %95, label %46, !llvm.loop !13

95:                                               ; preds = %88
  %96 = and i64 %5, 1
  %97 = icmp eq i64 %5, 1
  %98 = and i64 %5, 9223372036854775806
  %99 = icmp eq i64 %96, 0
  br label %7

100:                                              ; preds = %42, %4
  %101 = add nuw nsw i64 %5, 1
  %102 = icmp eq i64 %101, 2000
  br i1 %102, label %103, label %4, !llvm.loop !14

103:                                              ; preds = %100
  %104 = load ptr, ptr @stdout, align 8, !tbaa !15
  %105 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %104)
  %106 = load ptr, ptr @stdout, align 8, !tbaa !15
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %108

108:                                              ; preds = %127, %103
  %109 = phi i64 [ 0, %103 ], [ %128, %127 ]
  %110 = mul nuw nsw i64 %109, 2000
  br label %111

111:                                              ; preds = %120, %108
  %112 = phi i64 [ 0, %108 ], [ %125, %120 ]
  %113 = add nuw nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  %115 = urem i32 %114, 20
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load ptr, ptr @stdout, align 8, !tbaa !15
  %119 = tail call i32 @fputc(i32 10, ptr %118)
  br label %120

120:                                              ; preds = %117, %111
  %121 = load ptr, ptr @stdout, align 8, !tbaa !15
  %122 = getelementptr inbounds [2000 x double], ptr %3, i64 %109, i64 %112
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.4, double noundef %123)
  %125 = add nuw nsw i64 %112, 1
  %126 = icmp eq i64 %125, 2000
  br i1 %126, label %127, label %111, !llvm.loop !17

127:                                              ; preds = %120
  %128 = add nuw nsw i64 %109, 1
  %129 = icmp eq i64 %128, 2000
  br i1 %129, label %130, label %108, !llvm.loop !18

130:                                              ; preds = %127
  %131 = load ptr, ptr @stdout, align 8, !tbaa !15
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %133 = load ptr, ptr @stdout, align 8, !tbaa !15
  %134 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %133)
  tail call void @free(ptr noundef nonnull %3) #10
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @init_array(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i64 8
  br label %3

3:                                                ; preds = %1, %44
  %4 = phi i64 [ 1, %1 ], [ %46, %44 ]
  %5 = phi i64 [ 0, %1 ], [ %41, %44 ]
  %6 = mul nuw nsw i64 %5, 16008
  %7 = getelementptr i8, ptr %2, i64 %6
  %8 = shl i64 %5, 3
  %9 = sub i64 15984, %8
  %10 = and i64 %9, 34359738360
  %11 = add nuw nsw i64 %10, 8
  %12 = icmp ult i64 %4, 2
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = and i64 %4, 9223372036854775806
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %23, %15 ]
  %17 = phi <2 x i32> [ <i32 0, i32 1>, %13 ], [ %24, %15 ]
  %18 = sub <2 x i32> zeroinitializer, %17
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, <double 2.000000e+03, double 2.000000e+03>
  %21 = fadd <2 x double> %20, <double 1.000000e+00, double 1.000000e+00>
  %22 = getelementptr inbounds [2000 x double], ptr %0, i64 %5, i64 %16
  store <2 x double> %21, ptr %22, align 8, !tbaa !5
  %23 = add nuw i64 %16, 2
  %24 = add <2 x i32> %17, <i32 2, i32 2>
  %25 = icmp eq i64 %23, %14
  br i1 %25, label %26, label %15, !llvm.loop !19

26:                                               ; preds = %15
  %27 = icmp eq i64 %4, %14
  br i1 %27, label %40, label %28

28:                                               ; preds = %3, %26
  %29 = phi i64 [ 0, %3 ], [ %14, %26 ]
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %38, %30 ], [ %29, %28 ]
  %32 = trunc i64 %31 to i32
  %33 = sub i32 0, %32
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 2.000000e+03
  %36 = fadd double %35, 1.000000e+00
  %37 = getelementptr inbounds [2000 x double], ptr %0, i64 %5, i64 %31
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = add nuw nsw i64 %31, 1
  %39 = icmp eq i64 %38, %4
  br i1 %39, label %40, label %30, !llvm.loop !22

40:                                               ; preds = %30, %26
  %41 = add nuw nsw i64 %5, 1
  %42 = icmp ult i64 %5, 1999
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, i8 0, i64 %11, i1 false), !tbaa !5
  br label %44

44:                                               ; preds = %43, %40
  %45 = getelementptr inbounds [2000 x double], ptr %0, i64 %5, i64 %5
  store double 1.000000e+00, ptr %45, align 8, !tbaa !5
  %46 = add nuw nsw i64 %4, 1
  %47 = icmp eq i64 %41, 2000
  br i1 %47, label %48, label %3, !llvm.loop !23

48:                                               ; preds = %44
  %49 = alloca [4000000 x double], align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %49, i8 0, i64 32000000, i1 false)
  br label %50

50:                                               ; preds = %48, %86
  %51 = phi i64 [ 0, %48 ], [ %87, %86 ]
  br label %53

52:                                               ; preds = %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %0, ptr noundef nonnull align 16 dereferenceable(32000000) %49, i64 32000000, i1 false)
  ret void

53:                                               ; preds = %50, %89
  %54 = phi i64 [ 0, %50 ], [ %90, %89 ]
  %55 = mul nuw nsw i64 %54, 2000
  %56 = getelementptr inbounds double, ptr %49, i64 %55
  %57 = getelementptr inbounds [2000 x double], ptr %0, i64 %54, i64 %51
  %58 = load double, ptr %57, align 8, !tbaa !5
  %59 = insertelement <2 x double> poison, double %58, i64 0
  %60 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> zeroinitializer
  br label %61

61:                                               ; preds = %61, %53
  %62 = phi i64 [ 0, %53 ], [ %84, %61 ]
  %63 = or disjoint i64 %62, 1
  %64 = or disjoint i64 %62, 2
  %65 = or disjoint i64 %62, 3
  %66 = getelementptr inbounds [2000 x double], ptr %0, i64 %62, i64 %51
  %67 = getelementptr inbounds [2000 x double], ptr %0, i64 %63, i64 %51
  %68 = getelementptr inbounds [2000 x double], ptr %0, i64 %64, i64 %51
  %69 = getelementptr inbounds [2000 x double], ptr %0, i64 %65, i64 %51
  %70 = load double, ptr %66, align 8, !tbaa !5
  %71 = load double, ptr %67, align 8, !tbaa !5
  %72 = insertelement <2 x double> poison, double %70, i64 0
  %73 = insertelement <2 x double> %72, double %71, i64 1
  %74 = load double, ptr %68, align 8, !tbaa !5
  %75 = load double, ptr %69, align 8, !tbaa !5
  %76 = insertelement <2 x double> poison, double %74, i64 0
  %77 = insertelement <2 x double> %76, double %75, i64 1
  %78 = getelementptr inbounds double, ptr %56, i64 %62
  %79 = getelementptr inbounds double, ptr %78, i64 2
  %80 = load <2 x double>, ptr %78, align 16, !tbaa !5
  %81 = load <2 x double>, ptr %79, align 16, !tbaa !5
  %82 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %73, <2 x double> %80)
  %83 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %77, <2 x double> %81)
  store <2 x double> %82, ptr %78, align 16, !tbaa !5
  store <2 x double> %83, ptr %79, align 16, !tbaa !5
  %84 = add nuw i64 %62, 4
  %85 = icmp eq i64 %84, 2000
  br i1 %85, label %89, label %61, !llvm.loop !24

86:                                               ; preds = %89
  %87 = add nuw nsw i64 %51, 1
  %88 = icmp eq i64 %87, 2000
  br i1 %88, label %52, label %50, !llvm.loop !25

89:                                               ; preds = %61
  %90 = add nuw nsw i64 %54, 1
  %91 = icmp eq i64 %90, 2000
  br i1 %91, label %86, label %53, !llvm.loop !26
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !10, !21, !20}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10, !20, !21}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
