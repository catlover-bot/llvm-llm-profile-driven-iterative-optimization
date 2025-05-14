; ModuleID = 'outputs/src_PolyBenchC-4.2.1_doitgen_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_doitgen_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %128

8:                                                ; preds = %6
  %9 = icmp sgt i32 %1, 0
  %10 = sext i32 %2 to i64
  %11 = shl nsw i64 %10, 3
  br i1 %9, label %12, label %128

12:                                               ; preds = %8
  %13 = icmp sgt i32 %2, 0
  %14 = zext nneg i32 %0 to i64
  %15 = zext nneg i32 %1 to i64
  br i1 %13, label %21, label %16

16:                                               ; preds = %12
  %17 = and i64 %15, 3
  %18 = icmp ult i32 %1, 4
  %19 = and i64 %15, 2147483644
  %20 = icmp eq i64 %17, 0
  br label %101

21:                                               ; preds = %12
  %22 = zext nneg i32 %2 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = getelementptr i8, ptr %5, i64 %23
  %25 = mul nuw nsw i64 %22, 1288
  %26 = getelementptr i8, ptr %4, i64 %25
  %27 = getelementptr i8, ptr %26, i64 -1280
  %28 = icmp ult i32 %2, 4
  %29 = icmp ugt ptr %27, %5
  %30 = icmp ugt ptr %24, %4
  %31 = and i1 %29, %30
  %32 = and i64 %22, 2147483644
  %33 = icmp eq i64 %32, %22
  %34 = and i64 %22, 1
  %35 = icmp eq i64 %34, 0
  %36 = add nsw i64 %22, -1
  br label %37

37:                                               ; preds = %21, %98
  %38 = phi i64 [ 0, %21 ], [ %99, %98 ]
  br label %39

39:                                               ; preds = %94, %37
  %40 = phi i64 [ %96, %94 ], [ 0, %37 ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %11, i1 false)
  br label %41

41:                                               ; preds = %91, %39
  %42 = phi i64 [ %92, %91 ], [ 0, %39 ]
  %43 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %38, i64 %40, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = select i1 %28, i1 true, i1 %31
  br i1 %45, label %64, label %46

46:                                               ; preds = %41
  %47 = insertelement <2 x double> poison, double %44, i64 0
  %48 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi i64 [ 0, %46 ], [ %61, %49 ]
  %51 = getelementptr inbounds [160 x double], ptr %4, i64 %42, i64 %50
  %52 = getelementptr inbounds double, ptr %51, i64 2
  %53 = load <2 x double>, ptr %51, align 8, !tbaa !5, !alias.scope !9
  %54 = load <2 x double>, ptr %52, align 8, !tbaa !5, !alias.scope !9
  %55 = getelementptr inbounds double, ptr %5, i64 %50
  %56 = getelementptr inbounds double, ptr %55, i64 2
  %57 = load <2 x double>, ptr %55, align 8, !tbaa !5, !alias.scope !12, !noalias !9
  %58 = load <2 x double>, ptr %56, align 8, !tbaa !5, !alias.scope !12, !noalias !9
  %59 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %53, <2 x double> %57)
  %60 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %48, <2 x double> %54, <2 x double> %58)
  store <2 x double> %59, ptr %55, align 8, !tbaa !5, !alias.scope !12, !noalias !9
  store <2 x double> %60, ptr %56, align 8, !tbaa !5, !alias.scope !12, !noalias !9
  %61 = add nuw i64 %50, 4
  %62 = icmp eq i64 %61, %32
  br i1 %62, label %63, label %49, !llvm.loop !14

63:                                               ; preds = %49
  br i1 %33, label %91, label %64

64:                                               ; preds = %41, %63
  %65 = phi i64 [ 0, %41 ], [ %32, %63 ]
  br i1 %35, label %73, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds [160 x double], ptr %4, i64 %42, i64 %65
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds double, ptr %5, i64 %65
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = tail call double @llvm.fmuladd.f64(double %44, double %68, double %70)
  store double %71, ptr %69, align 8, !tbaa !5
  %72 = or disjoint i64 %65, 1
  br label %73

73:                                               ; preds = %66, %64
  %74 = phi i64 [ %65, %64 ], [ %72, %66 ]
  %75 = icmp eq i64 %65, %36
  br i1 %75, label %91, label %76

76:                                               ; preds = %73, %76
  %77 = phi i64 [ %89, %76 ], [ %74, %73 ]
  %78 = getelementptr inbounds [160 x double], ptr %4, i64 %42, i64 %77
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds double, ptr %5, i64 %77
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = tail call double @llvm.fmuladd.f64(double %44, double %79, double %81)
  store double %82, ptr %80, align 8, !tbaa !5
  %83 = add nuw nsw i64 %77, 1
  %84 = getelementptr inbounds [160 x double], ptr %4, i64 %42, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = getelementptr inbounds double, ptr %5, i64 %83
  %87 = load double, ptr %86, align 8, !tbaa !5
  %88 = tail call double @llvm.fmuladd.f64(double %44, double %85, double %87)
  store double %88, ptr %86, align 8, !tbaa !5
  %89 = add nuw nsw i64 %77, 2
  %90 = icmp eq i64 %89, %22
  br i1 %90, label %91, label %76, !llvm.loop !18

91:                                               ; preds = %73, %76, %63
  %92 = add nuw nsw i64 %42, 1
  %93 = icmp eq i64 %92, %22
  br i1 %93, label %94, label %41, !llvm.loop !19

94:                                               ; preds = %91
  %95 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %38, i64 %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %95, ptr nonnull align 8 %5, i64 %11, i1 false)
  %96 = add nuw nsw i64 %40, 1
  %97 = icmp eq i64 %96, %15
  br i1 %97, label %98, label %39, !llvm.loop !20

98:                                               ; preds = %94
  %99 = add nuw nsw i64 %38, 1
  %100 = icmp eq i64 %99, %14
  br i1 %100, label %128, label %37, !llvm.loop !21

101:                                              ; preds = %16, %125
  %102 = phi i64 [ %126, %125 ], [ 0, %16 ]
  br i1 %18, label %116, label %103

103:                                              ; preds = %101, %103
  %104 = phi i64 [ %113, %103 ], [ 0, %101 ]
  %105 = phi i64 [ %114, %103 ], [ 0, %101 ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %11, i1 false)
  %106 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %102, i64 %104
  tail call void @llvm.memset.p0.i64(ptr align 8 %106, i8 0, i64 %11, i1 false)
  %107 = or disjoint i64 %104, 1
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %11, i1 false)
  %108 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %102, i64 %107
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %108, i8 0, i64 %11, i1 false)
  %109 = or disjoint i64 %104, 2
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %11, i1 false)
  %110 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %102, i64 %109
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %110, i8 0, i64 %11, i1 false)
  %111 = or disjoint i64 %104, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %11, i1 false)
  %112 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %102, i64 %111
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %112, i8 0, i64 %11, i1 false)
  %113 = add nuw nsw i64 %104, 4
  %114 = add i64 %105, 4
  %115 = icmp eq i64 %114, %19
  br i1 %115, label %116, label %103, !llvm.loop !20

116:                                              ; preds = %103, %101
  %117 = phi i64 [ 0, %101 ], [ %113, %103 ]
  br i1 %20, label %125, label %118

118:                                              ; preds = %116, %118
  %119 = phi i64 [ %122, %118 ], [ %117, %116 ]
  %120 = phi i64 [ %123, %118 ], [ 0, %116 ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %11, i1 false)
  %121 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %102, i64 %119
  tail call void @llvm.memset.p0.i64(ptr align 8 %121, i8 0, i64 %11, i1 false)
  %122 = add nuw nsw i64 %119, 1
  %123 = add i64 %120, 1
  %124 = icmp eq i64 %123, %17
  br i1 %124, label %125, label %118, !llvm.loop !22

125:                                              ; preds = %118, %116
  %126 = add nuw nsw i64 %102, 1
  %127 = icmp eq i64 %126, %14
  br i1 %127, label %128, label %101, !llvm.loop !21

128:                                              ; preds = %125, %98, %8, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8) #10
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8) #10
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8) #10
  br label %6

6:                                                ; preds = %33, %2
  %7 = phi i64 [ 0, %2 ], [ %34, %33 ]
  br label %8

8:                                                ; preds = %6, %36
  %9 = phi i64 [ 0, %6 ], [ %37, %36 ]
  %10 = mul nuw nsw i64 %9, %7
  %11 = insertelement <2 x i64> poison, i64 %10, i64 0
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi i64 [ 0, %8 ], [ %30, %13 ]
  %15 = phi <2 x i64> [ <i64 0, i64 1>, %8 ], [ %31, %13 ]
  %16 = add nuw nsw <2 x i64> %15, %12
  %17 = trunc <2 x i64> %16 to <2 x i32>
  %18 = urem <2 x i32> %17, <i32 160, i32 160>
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, <double 1.600000e+02, double 1.600000e+02>
  %21 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %7, i64 %9, i64 %14
  store <2 x double> %20, ptr %21, align 8, !tbaa !5
  %22 = or disjoint i64 %14, 2
  %23 = add <2 x i64> %15, <i64 2, i64 2>
  %24 = add nuw nsw <2 x i64> %23, %12
  %25 = trunc <2 x i64> %24 to <2 x i32>
  %26 = urem <2 x i32> %25, <i32 160, i32 160>
  %27 = sitofp <2 x i32> %26 to <2 x double>
  %28 = fdiv <2 x double> %27, <double 1.600000e+02, double 1.600000e+02>
  %29 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %7, i64 %9, i64 %22
  store <2 x double> %28, ptr %29, align 8, !tbaa !5
  %30 = add nuw nsw i64 %14, 4
  %31 = add <2 x i64> %15, <i64 4, i64 4>
  %32 = icmp eq i64 %30, 160
  br i1 %32, label %36, label %13, !llvm.loop !24

33:                                               ; preds = %36
  %34 = add nuw nsw i64 %7, 1
  %35 = icmp eq i64 %34, 150
  br i1 %35, label %39, label %6, !llvm.loop !25

36:                                               ; preds = %13
  %37 = add nuw nsw i64 %9, 1
  %38 = icmp eq i64 %37, 140
  br i1 %38, label %33, label %8, !llvm.loop !26

39:                                               ; preds = %33, %55
  %40 = phi i64 [ %56, %55 ], [ 0, %33 ]
  %41 = insertelement <2 x i64> poison, i64 %40, i64 0
  %42 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %43

43:                                               ; preds = %43, %39
  %44 = phi i64 [ 0, %39 ], [ %52, %43 ]
  %45 = phi <2 x i64> [ <i64 0, i64 1>, %39 ], [ %53, %43 ]
  %46 = mul nuw nsw <2 x i64> %45, %42
  %47 = trunc <2 x i64> %46 to <2 x i32>
  %48 = urem <2 x i32> %47, <i32 160, i32 160>
  %49 = sitofp <2 x i32> %48 to <2 x double>
  %50 = fdiv <2 x double> %49, <double 1.600000e+02, double 1.600000e+02>
  %51 = getelementptr inbounds [160 x double], ptr %5, i64 %40, i64 %44
  store <2 x double> %50, ptr %51, align 8, !tbaa !5
  %52 = add nuw i64 %44, 2
  %53 = add <2 x i64> %45, <i64 2, i64 2>
  %54 = icmp eq i64 %52, 160
  br i1 %54, label %55, label %43, !llvm.loop !27

55:                                               ; preds = %43
  %56 = add nuw nsw i64 %40, 1
  %57 = icmp eq i64 %56, 160
  br i1 %57, label %58, label %39, !llvm.loop !28

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %4, i64 1280
  %60 = getelementptr i8, ptr %5, i64 204800
  %61 = icmp ult ptr %4, %60
  %62 = icmp ult ptr %5, %59
  %63 = and i1 %61, %62
  br label %64

64:                                               ; preds = %58, %122
  %65 = phi i64 [ %123, %122 ], [ 0, %58 ]
  br label %66

66:                                               ; preds = %118, %64
  %67 = phi i64 [ %120, %118 ], [ 0, %64 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %4, i8 0, i64 1280, i1 false)
  br label %68

68:                                               ; preds = %115, %66
  %69 = phi i64 [ %116, %115 ], [ 0, %66 ]
  %70 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %65, i64 %67, i64 %69
  %71 = load double, ptr %70, align 8, !tbaa !5
  br i1 %63, label %100, label %72

72:                                               ; preds = %68
  %73 = insertelement <2 x double> poison, double %71, i64 0
  %74 = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> zeroinitializer
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i64 [ 0, %72 ], [ %98, %75 ]
  %77 = getelementptr inbounds [160 x double], ptr %5, i64 %69, i64 %76
  %78 = getelementptr inbounds double, ptr %77, i64 2
  %79 = load <2 x double>, ptr %77, align 8, !tbaa !5, !alias.scope !29
  %80 = load <2 x double>, ptr %78, align 8, !tbaa !5, !alias.scope !29
  %81 = getelementptr inbounds double, ptr %4, i64 %76
  %82 = getelementptr inbounds double, ptr %81, i64 2
  %83 = load <2 x double>, ptr %81, align 8, !tbaa !5, !alias.scope !32, !noalias !29
  %84 = load <2 x double>, ptr %82, align 8, !tbaa !5, !alias.scope !32, !noalias !29
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %74, <2 x double> %79, <2 x double> %83)
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %74, <2 x double> %80, <2 x double> %84)
  store <2 x double> %85, ptr %81, align 8, !tbaa !5, !alias.scope !32, !noalias !29
  store <2 x double> %86, ptr %82, align 8, !tbaa !5, !alias.scope !32, !noalias !29
  %87 = or disjoint i64 %76, 4
  %88 = getelementptr inbounds [160 x double], ptr %5, i64 %69, i64 %87
  %89 = getelementptr inbounds double, ptr %88, i64 2
  %90 = load <2 x double>, ptr %88, align 8, !tbaa !5, !alias.scope !29
  %91 = load <2 x double>, ptr %89, align 8, !tbaa !5, !alias.scope !29
  %92 = getelementptr inbounds double, ptr %4, i64 %87
  %93 = getelementptr inbounds double, ptr %92, i64 2
  %94 = load <2 x double>, ptr %92, align 8, !tbaa !5, !alias.scope !32, !noalias !29
  %95 = load <2 x double>, ptr %93, align 8, !tbaa !5, !alias.scope !32, !noalias !29
  %96 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %74, <2 x double> %90, <2 x double> %94)
  %97 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %74, <2 x double> %91, <2 x double> %95)
  store <2 x double> %96, ptr %92, align 8, !tbaa !5, !alias.scope !32, !noalias !29
  store <2 x double> %97, ptr %93, align 8, !tbaa !5, !alias.scope !32, !noalias !29
  %98 = add nuw nsw i64 %76, 8
  %99 = icmp eq i64 %98, 160
  br i1 %99, label %115, label %75, !llvm.loop !34

100:                                              ; preds = %68, %100
  %101 = phi i64 [ %113, %100 ], [ 0, %68 ]
  %102 = getelementptr inbounds [160 x double], ptr %5, i64 %69, i64 %101
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = getelementptr inbounds double, ptr %4, i64 %101
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %71, double %103, double %105)
  store double %106, ptr %104, align 8, !tbaa !5
  %107 = or disjoint i64 %101, 1
  %108 = getelementptr inbounds [160 x double], ptr %5, i64 %69, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = getelementptr inbounds double, ptr %4, i64 %107
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %71, double %109, double %111)
  store double %112, ptr %110, align 8, !tbaa !5
  %113 = add nuw nsw i64 %101, 2
  %114 = icmp eq i64 %113, 160
  br i1 %114, label %115, label %100, !llvm.loop !35

115:                                              ; preds = %75, %100
  %116 = add nuw nsw i64 %69, 1
  %117 = icmp eq i64 %116, 160
  br i1 %117, label %118, label %68, !llvm.loop !19

118:                                              ; preds = %115
  %119 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %65, i64 %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %119, ptr noundef nonnull align 8 dereferenceable(1280) %4, i64 1280, i1 false)
  %120 = add nuw nsw i64 %67, 1
  %121 = icmp eq i64 %120, 140
  br i1 %121, label %122, label %66, !llvm.loop !20

122:                                              ; preds = %118
  %123 = add nuw nsw i64 %65, 1
  %124 = icmp eq i64 %123, 150
  br i1 %124, label %125, label %64, !llvm.loop !21

125:                                              ; preds = %122
  %126 = load ptr, ptr @stdout, align 8, !tbaa !36
  %127 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %126)
  %128 = load ptr, ptr @stdout, align 8, !tbaa !36
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %130

130:                                              ; preds = %137, %125
  %131 = phi i64 [ 0, %125 ], [ %138, %137 ]
  %132 = mul nuw nsw i64 %131, 22400
  br label %133

133:                                              ; preds = %140, %130
  %134 = phi i64 [ 0, %130 ], [ %141, %140 ]
  %135 = mul nuw nsw i64 %134, 160
  %136 = add nuw nsw i64 %135, %132
  br label %143

137:                                              ; preds = %140
  %138 = add nuw nsw i64 %131, 1
  %139 = icmp eq i64 %138, 150
  br i1 %139, label %159, label %130, !llvm.loop !38

140:                                              ; preds = %152
  %141 = add nuw nsw i64 %134, 1
  %142 = icmp eq i64 %141, 140
  br i1 %142, label %137, label %133, !llvm.loop !39

143:                                              ; preds = %152, %133
  %144 = phi i64 [ 0, %133 ], [ %157, %152 ]
  %145 = add nuw nsw i64 %136, %144
  %146 = trunc i64 %145 to i32
  %147 = urem i32 %146, 20
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load ptr, ptr @stdout, align 8, !tbaa !36
  %151 = tail call i32 @fputc(i32 10, ptr %150)
  br label %152

152:                                              ; preds = %149, %143
  %153 = load ptr, ptr @stdout, align 8, !tbaa !36
  %154 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %131, i64 %134, i64 %144
  %155 = load double, ptr %154, align 8, !tbaa !5
  %156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef nonnull @.str.4, double noundef %155)
  %157 = add nuw nsw i64 %144, 1
  %158 = icmp eq i64 %157, 160
  br i1 %158, label %140, label %143, !llvm.loop !40

159:                                              ; preds = %137
  %160 = load ptr, ptr @stdout, align 8, !tbaa !36
  %161 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %162 = load ptr, ptr @stdout, align 8, !tbaa !36
  %163 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %162)
  tail call void @free(ptr noundef nonnull %3) #10
  tail call void @free(ptr noundef %4) #10
  tail call void @free(ptr noundef %5) #10
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15, !16}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !15, !16, !17}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15, !16, !17}
!28 = distinct !{!28, !15}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !15, !16, !17}
!35 = distinct !{!35, !15, !16}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !7, i64 0}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
