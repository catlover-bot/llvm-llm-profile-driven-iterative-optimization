; ModuleID = 'outputs/src_PolyBenchC-4.2.1_doitgen_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_doitgen_opt_1.c"
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
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %3 to i64
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %174

10:                                               ; preds = %6
  %11 = icmp sgt i32 %1, 0
  %12 = sext i32 %2 to i64
  %13 = shl nsw i64 %12, 3
  br i1 %11, label %14, label %174

14:                                               ; preds = %10
  %15 = icmp sgt i32 %2, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = and i32 %1, 7
  %18 = icmp ult i32 %1, 8
  %19 = and i32 %1, 2147483640
  %20 = icmp eq i32 %17, 0
  br label %160

21:                                               ; preds = %14
  %22 = zext nneg i32 %0 to i64
  %23 = zext nneg i32 %1 to i64
  %24 = zext nneg i32 %2 to i64
  %25 = sub i64 %8, %7
  %26 = shl nuw nsw i64 %24, 3
  %27 = getelementptr i8, ptr %5, i64 %26
  %28 = mul nuw nsw i64 %24, 1288
  %29 = getelementptr i8, ptr %4, i64 %28
  %30 = getelementptr i8, ptr %29, i64 -1280
  %31 = icmp ult i32 %2, 4
  %32 = icmp ugt ptr %30, %5
  %33 = icmp ugt ptr %27, %4
  %34 = and i1 %32, %33
  %35 = and i64 %24, 2147483644
  %36 = icmp eq i64 %35, %24
  %37 = and i64 %24, 1
  %38 = icmp eq i64 %37, 0
  %39 = add nsw i64 %24, -1
  %40 = icmp ult i32 %2, 4
  %41 = and i64 %24, 2147483644
  %42 = icmp eq i64 %41, %24
  %43 = and i64 %24, 3
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %21, %157
  %46 = phi i64 [ 0, %21 ], [ %158, %157 ]
  %47 = mul nuw nsw i64 %46, 179200
  %48 = add i64 %25, %47
  br label %49

49:                                               ; preds = %154, %45
  %50 = phi i64 [ %155, %154 ], [ 0, %45 ]
  %51 = mul nuw nsw i64 %50, 1280
  %52 = add i64 %48, %51
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  br label %72

53:                                               ; preds = %150, %53
  %54 = phi i64 [ %70, %53 ], [ %151, %150 ]
  %55 = getelementptr inbounds double, ptr %5, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %54
  store double %56, ptr %57, align 8, !tbaa !5
  %58 = add nuw nsw i64 %54, 1
  %59 = getelementptr inbounds double, ptr %5, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %58
  store double %60, ptr %61, align 8, !tbaa !5
  %62 = add nuw nsw i64 %54, 2
  %63 = getelementptr inbounds double, ptr %5, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %62
  store double %64, ptr %65, align 8, !tbaa !5
  %66 = add nuw nsw i64 %54, 3
  %67 = getelementptr inbounds double, ptr %5, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %66
  store double %68, ptr %69, align 8, !tbaa !5
  %70 = add nuw nsw i64 %54, 4
  %71 = icmp eq i64 %70, %24
  br i1 %71, label %154, label %53, !llvm.loop !9

72:                                               ; preds = %122, %49
  %73 = phi i64 [ %123, %122 ], [ 0, %49 ]
  %74 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = select i1 %31, i1 true, i1 %34
  br i1 %76, label %95, label %77

77:                                               ; preds = %72
  %78 = insertelement <2 x double> poison, double %75, i64 0
  %79 = shufflevector <2 x double> %78, <2 x double> poison, <2 x i32> zeroinitializer
  br label %80

80:                                               ; preds = %80, %77
  %81 = phi i64 [ 0, %77 ], [ %92, %80 ]
  %82 = getelementptr inbounds [160 x double], ptr %4, i64 %73, i64 %81
  %83 = getelementptr inbounds double, ptr %82, i64 2
  %84 = load <2 x double>, ptr %82, align 8, !tbaa !5, !alias.scope !12
  %85 = load <2 x double>, ptr %83, align 8, !tbaa !5, !alias.scope !12
  %86 = getelementptr inbounds double, ptr %5, i64 %81
  %87 = getelementptr inbounds double, ptr %86, i64 2
  %88 = load <2 x double>, ptr %86, align 8, !tbaa !5, !alias.scope !15, !noalias !12
  %89 = load <2 x double>, ptr %87, align 8, !tbaa !5, !alias.scope !15, !noalias !12
  %90 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %79, <2 x double> %84, <2 x double> %88)
  %91 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %79, <2 x double> %85, <2 x double> %89)
  store <2 x double> %90, ptr %86, align 8, !tbaa !5, !alias.scope !15, !noalias !12
  store <2 x double> %91, ptr %87, align 8, !tbaa !5, !alias.scope !15, !noalias !12
  %92 = add nuw i64 %81, 4
  %93 = icmp eq i64 %92, %35
  br i1 %93, label %94, label %80, !llvm.loop !17

94:                                               ; preds = %80
  br i1 %36, label %122, label %95

95:                                               ; preds = %72, %94
  %96 = phi i64 [ 0, %72 ], [ %35, %94 ]
  br i1 %38, label %104, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds [160 x double], ptr %4, i64 %73, i64 %96
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = getelementptr inbounds double, ptr %5, i64 %96
  %101 = load double, ptr %100, align 8, !tbaa !5
  %102 = tail call double @llvm.fmuladd.f64(double %75, double %99, double %101)
  store double %102, ptr %100, align 8, !tbaa !5
  %103 = or disjoint i64 %96, 1
  br label %104

104:                                              ; preds = %97, %95
  %105 = phi i64 [ %96, %95 ], [ %103, %97 ]
  %106 = icmp eq i64 %96, %39
  br i1 %106, label %122, label %107

107:                                              ; preds = %104, %107
  %108 = phi i64 [ %120, %107 ], [ %105, %104 ]
  %109 = getelementptr inbounds [160 x double], ptr %4, i64 %73, i64 %108
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = getelementptr inbounds double, ptr %5, i64 %108
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = tail call double @llvm.fmuladd.f64(double %75, double %110, double %112)
  store double %113, ptr %111, align 8, !tbaa !5
  %114 = add nuw nsw i64 %108, 1
  %115 = getelementptr inbounds [160 x double], ptr %4, i64 %73, i64 %114
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = getelementptr inbounds double, ptr %5, i64 %114
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = tail call double @llvm.fmuladd.f64(double %75, double %116, double %118)
  store double %119, ptr %117, align 8, !tbaa !5
  %120 = add nuw nsw i64 %108, 2
  %121 = icmp eq i64 %120, %24
  br i1 %121, label %122, label %107, !llvm.loop !19

122:                                              ; preds = %104, %107, %94
  %123 = add nuw nsw i64 %73, 1
  %124 = icmp eq i64 %123, %24
  br i1 %124, label %125, label %72, !llvm.loop !20

125:                                              ; preds = %122
  %126 = icmp ult i64 %52, 32
  %127 = select i1 %40, i1 true, i1 %126
  br i1 %127, label %139, label %128

128:                                              ; preds = %125, %128
  %129 = phi i64 [ %136, %128 ], [ 0, %125 ]
  %130 = getelementptr inbounds double, ptr %5, i64 %129
  %131 = getelementptr inbounds double, ptr %130, i64 2
  %132 = load <2 x double>, ptr %130, align 8, !tbaa !5
  %133 = load <2 x double>, ptr %131, align 8, !tbaa !5
  %134 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %129
  %135 = getelementptr inbounds double, ptr %134, i64 2
  store <2 x double> %132, ptr %134, align 8, !tbaa !5
  store <2 x double> %133, ptr %135, align 8, !tbaa !5
  %136 = add nuw i64 %129, 4
  %137 = icmp eq i64 %136, %41
  br i1 %137, label %138, label %128, !llvm.loop !21

138:                                              ; preds = %128
  br i1 %42, label %154, label %139

139:                                              ; preds = %125, %138
  %140 = phi i64 [ 0, %125 ], [ %41, %138 ]
  br i1 %44, label %150, label %141

141:                                              ; preds = %139, %141
  %142 = phi i64 [ %147, %141 ], [ %140, %139 ]
  %143 = phi i64 [ %148, %141 ], [ 0, %139 ]
  %144 = getelementptr inbounds double, ptr %5, i64 %142
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %142
  store double %145, ptr %146, align 8, !tbaa !5
  %147 = add nuw nsw i64 %142, 1
  %148 = add i64 %143, 1
  %149 = icmp eq i64 %148, %43
  br i1 %149, label %150, label %141, !llvm.loop !22

150:                                              ; preds = %141, %139
  %151 = phi i64 [ %140, %139 ], [ %147, %141 ]
  %152 = sub nsw i64 %140, %24
  %153 = icmp ugt i64 %152, -4
  br i1 %153, label %154, label %53

154:                                              ; preds = %150, %53, %138
  %155 = add nuw nsw i64 %50, 1
  %156 = icmp eq i64 %155, %23
  br i1 %156, label %157, label %49, !llvm.loop !24

157:                                              ; preds = %154
  %158 = add nuw nsw i64 %46, 1
  %159 = icmp eq i64 %158, %22
  br i1 %159, label %174, label %45, !llvm.loop !25

160:                                              ; preds = %16, %171
  %161 = phi i32 [ %172, %171 ], [ 0, %16 ]
  br i1 %18, label %166, label %162

162:                                              ; preds = %160, %162
  %163 = phi i32 [ %164, %162 ], [ 0, %160 ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  %164 = add i32 %163, 8
  %165 = icmp eq i32 %164, %19
  br i1 %165, label %166, label %162, !llvm.loop !24

166:                                              ; preds = %162, %160
  br i1 %20, label %171, label %167

167:                                              ; preds = %166, %167
  %168 = phi i32 [ %169, %167 ], [ 0, %166 ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  %169 = add i32 %168, 1
  %170 = icmp eq i32 %169, %17
  br i1 %170, label %171, label %167, !llvm.loop !26

171:                                              ; preds = %167, %166
  %172 = add nuw nsw i32 %161, 1
  %173 = icmp eq i32 %172, %0
  br i1 %173, label %174, label %160, !llvm.loop !25

174:                                              ; preds = %171, %157, %10, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8) #9
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8) #9
  %6 = ptrtoint ptr %5 to i64
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8) #9
  br label %8

8:                                                ; preds = %38, %2
  %9 = phi i64 [ 0, %2 ], [ %39, %38 ]
  br label %10

10:                                               ; preds = %8, %35
  %11 = phi i64 [ 0, %8 ], [ %36, %35 ]
  %12 = mul nuw nsw i64 %11, %9
  %13 = insertelement <2 x i64> poison, i64 %12, i64 0
  %14 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi i64 [ 0, %10 ], [ %32, %15 ]
  %17 = phi <2 x i64> [ <i64 0, i64 1>, %10 ], [ %33, %15 ]
  %18 = add nuw nsw <2 x i64> %17, %14
  %19 = trunc <2 x i64> %18 to <2 x i32>
  %20 = urem <2 x i32> %19, <i32 160, i32 160>
  %21 = sitofp <2 x i32> %20 to <2 x double>
  %22 = fdiv <2 x double> %21, <double 1.600000e+02, double 1.600000e+02>
  %23 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %9, i64 %11, i64 %16
  store <2 x double> %22, ptr %23, align 8, !tbaa !5
  %24 = or disjoint i64 %16, 2
  %25 = add <2 x i64> %17, <i64 2, i64 2>
  %26 = add nuw nsw <2 x i64> %25, %14
  %27 = trunc <2 x i64> %26 to <2 x i32>
  %28 = urem <2 x i32> %27, <i32 160, i32 160>
  %29 = sitofp <2 x i32> %28 to <2 x double>
  %30 = fdiv <2 x double> %29, <double 1.600000e+02, double 1.600000e+02>
  %31 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %9, i64 %11, i64 %24
  store <2 x double> %30, ptr %31, align 8, !tbaa !5
  %32 = add nuw nsw i64 %16, 4
  %33 = add <2 x i64> %17, <i64 4, i64 4>
  %34 = icmp eq i64 %32, 160
  br i1 %34, label %35, label %15, !llvm.loop !27

35:                                               ; preds = %15
  %36 = add nuw nsw i64 %11, 1
  %37 = icmp eq i64 %36, 140
  br i1 %37, label %38, label %10, !llvm.loop !28

38:                                               ; preds = %35
  %39 = add nuw nsw i64 %9, 1
  %40 = icmp eq i64 %39, 150
  br i1 %40, label %41, label %8, !llvm.loop !29

41:                                               ; preds = %38, %57
  %42 = phi i64 [ %58, %57 ], [ 0, %38 ]
  %43 = insertelement <2 x i64> poison, i64 %42, i64 0
  %44 = shufflevector <2 x i64> %43, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %45

45:                                               ; preds = %45, %41
  %46 = phi i64 [ 0, %41 ], [ %54, %45 ]
  %47 = phi <2 x i64> [ <i64 0, i64 1>, %41 ], [ %55, %45 ]
  %48 = mul nuw nsw <2 x i64> %47, %44
  %49 = trunc <2 x i64> %48 to <2 x i32>
  %50 = urem <2 x i32> %49, <i32 160, i32 160>
  %51 = sitofp <2 x i32> %50 to <2 x double>
  %52 = fdiv <2 x double> %51, <double 1.600000e+02, double 1.600000e+02>
  %53 = getelementptr inbounds [160 x double], ptr %7, i64 %42, i64 %46
  store <2 x double> %52, ptr %53, align 8, !tbaa !5
  %54 = add nuw i64 %46, 2
  %55 = add <2 x i64> %47, <i64 2, i64 2>
  %56 = icmp eq i64 %54, 160
  br i1 %56, label %57, label %45, !llvm.loop !30

57:                                               ; preds = %45
  %58 = add nuw nsw i64 %42, 1
  %59 = icmp eq i64 %58, 160
  br i1 %59, label %60, label %41, !llvm.loop !31

60:                                               ; preds = %57
  %61 = sub i64 %4, %6
  %62 = getelementptr i8, ptr %5, i64 1280
  %63 = getelementptr i8, ptr %7, i64 204800
  %64 = icmp ult ptr %5, %63
  %65 = icmp ult ptr %7, %62
  %66 = and i1 %64, %65
  %67 = getelementptr inbounds double, ptr %5, i64 2
  %68 = getelementptr inbounds double, ptr %5, i64 4
  %69 = getelementptr inbounds double, ptr %5, i64 6
  %70 = getelementptr inbounds double, ptr %5, i64 8
  %71 = getelementptr inbounds double, ptr %5, i64 10
  %72 = getelementptr inbounds double, ptr %5, i64 12
  %73 = getelementptr inbounds double, ptr %5, i64 14
  %74 = getelementptr inbounds double, ptr %5, i64 16
  %75 = getelementptr inbounds double, ptr %5, i64 18
  %76 = getelementptr inbounds double, ptr %5, i64 20
  %77 = getelementptr inbounds double, ptr %5, i64 22
  %78 = getelementptr inbounds double, ptr %5, i64 24
  %79 = getelementptr inbounds double, ptr %5, i64 26
  %80 = getelementptr inbounds double, ptr %5, i64 28
  %81 = getelementptr inbounds double, ptr %5, i64 30
  %82 = getelementptr inbounds double, ptr %5, i64 32
  %83 = getelementptr inbounds double, ptr %5, i64 34
  %84 = getelementptr inbounds double, ptr %5, i64 36
  %85 = getelementptr inbounds double, ptr %5, i64 38
  %86 = getelementptr inbounds double, ptr %5, i64 40
  %87 = getelementptr inbounds double, ptr %5, i64 42
  %88 = getelementptr inbounds double, ptr %5, i64 44
  %89 = getelementptr inbounds double, ptr %5, i64 46
  %90 = getelementptr inbounds double, ptr %5, i64 48
  %91 = getelementptr inbounds double, ptr %5, i64 50
  %92 = getelementptr inbounds double, ptr %5, i64 52
  %93 = getelementptr inbounds double, ptr %5, i64 54
  %94 = getelementptr inbounds double, ptr %5, i64 56
  %95 = getelementptr inbounds double, ptr %5, i64 58
  %96 = getelementptr inbounds double, ptr %5, i64 60
  %97 = getelementptr inbounds double, ptr %5, i64 62
  %98 = getelementptr inbounds double, ptr %5, i64 64
  %99 = getelementptr inbounds double, ptr %5, i64 66
  %100 = getelementptr inbounds double, ptr %5, i64 68
  %101 = getelementptr inbounds double, ptr %5, i64 70
  %102 = getelementptr inbounds double, ptr %5, i64 72
  %103 = getelementptr inbounds double, ptr %5, i64 74
  %104 = getelementptr inbounds double, ptr %5, i64 76
  %105 = getelementptr inbounds double, ptr %5, i64 78
  %106 = getelementptr inbounds double, ptr %5, i64 80
  %107 = getelementptr inbounds double, ptr %5, i64 82
  %108 = getelementptr inbounds double, ptr %5, i64 84
  %109 = getelementptr inbounds double, ptr %5, i64 86
  %110 = getelementptr inbounds double, ptr %5, i64 88
  %111 = getelementptr inbounds double, ptr %5, i64 90
  %112 = getelementptr inbounds double, ptr %5, i64 92
  %113 = getelementptr inbounds double, ptr %5, i64 94
  %114 = getelementptr inbounds double, ptr %5, i64 96
  %115 = getelementptr inbounds double, ptr %5, i64 98
  %116 = getelementptr inbounds double, ptr %5, i64 100
  %117 = getelementptr inbounds double, ptr %5, i64 102
  %118 = getelementptr inbounds double, ptr %5, i64 104
  %119 = getelementptr inbounds double, ptr %5, i64 106
  %120 = getelementptr inbounds double, ptr %5, i64 108
  %121 = getelementptr inbounds double, ptr %5, i64 110
  %122 = getelementptr inbounds double, ptr %5, i64 112
  %123 = getelementptr inbounds double, ptr %5, i64 114
  %124 = getelementptr inbounds double, ptr %5, i64 116
  %125 = getelementptr inbounds double, ptr %5, i64 118
  %126 = getelementptr inbounds double, ptr %5, i64 120
  %127 = getelementptr inbounds double, ptr %5, i64 122
  %128 = getelementptr inbounds double, ptr %5, i64 124
  %129 = getelementptr inbounds double, ptr %5, i64 126
  %130 = getelementptr inbounds double, ptr %5, i64 128
  %131 = getelementptr inbounds double, ptr %5, i64 130
  %132 = getelementptr inbounds double, ptr %5, i64 132
  %133 = getelementptr inbounds double, ptr %5, i64 134
  %134 = getelementptr inbounds double, ptr %5, i64 136
  %135 = getelementptr inbounds double, ptr %5, i64 138
  %136 = getelementptr inbounds double, ptr %5, i64 140
  %137 = getelementptr inbounds double, ptr %5, i64 142
  %138 = getelementptr inbounds double, ptr %5, i64 144
  %139 = getelementptr inbounds double, ptr %5, i64 146
  %140 = getelementptr inbounds double, ptr %5, i64 148
  %141 = getelementptr inbounds double, ptr %5, i64 150
  %142 = getelementptr inbounds double, ptr %5, i64 152
  %143 = getelementptr inbounds double, ptr %5, i64 154
  %144 = getelementptr inbounds double, ptr %5, i64 156
  %145 = getelementptr inbounds double, ptr %5, i64 158
  br label %146

146:                                              ; preds = %60, %393
  %147 = phi i64 [ %394, %393 ], [ 0, %60 ]
  %148 = mul nuw nsw i64 %147, 179200
  %149 = add i64 %61, %148
  br label %150

150:                                              ; preds = %390, %146
  %151 = phi i64 [ %391, %390 ], [ 0, %146 ]
  %152 = mul nuw nsw i64 %151, 1280
  %153 = add i64 %149, %152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %5, i8 0, i64 1280, i1 false)
  br label %177

154:                                              ; preds = %227, %154
  %155 = phi i64 [ %175, %154 ], [ 0, %227 ]
  %156 = getelementptr inbounds double, ptr %5, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 %155
  store double %157, ptr %158, align 8, !tbaa !5
  %159 = add nuw nsw i64 %155, 1
  %160 = getelementptr inbounds double, ptr %5, i64 %159
  %161 = load double, ptr %160, align 8, !tbaa !5
  %162 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 %159
  store double %161, ptr %162, align 8, !tbaa !5
  %163 = add nuw nsw i64 %155, 2
  %164 = getelementptr inbounds double, ptr %5, i64 %163
  %165 = load double, ptr %164, align 8, !tbaa !5
  %166 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 %163
  store double %165, ptr %166, align 8, !tbaa !5
  %167 = add nuw nsw i64 %155, 3
  %168 = getelementptr inbounds double, ptr %5, i64 %167
  %169 = load double, ptr %168, align 8, !tbaa !5
  %170 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 %167
  store double %169, ptr %170, align 8, !tbaa !5
  %171 = add nuw nsw i64 %155, 4
  %172 = getelementptr inbounds double, ptr %5, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 %171
  store double %173, ptr %174, align 8, !tbaa !5
  %175 = add nuw nsw i64 %155, 5
  %176 = icmp eq i64 %175, 160
  br i1 %176, label %390, label %154, !llvm.loop !32

177:                                              ; preds = %224, %150
  %178 = phi i64 [ %225, %224 ], [ 0, %150 ]
  %179 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 %178
  %180 = load double, ptr %179, align 8, !tbaa !5
  br i1 %66, label %209, label %181

181:                                              ; preds = %177
  %182 = insertelement <2 x double> poison, double %180, i64 0
  %183 = shufflevector <2 x double> %182, <2 x double> poison, <2 x i32> zeroinitializer
  br label %184

184:                                              ; preds = %184, %181
  %185 = phi i64 [ 0, %181 ], [ %207, %184 ]
  %186 = getelementptr inbounds [160 x double], ptr %7, i64 %178, i64 %185
  %187 = getelementptr inbounds double, ptr %186, i64 2
  %188 = load <2 x double>, ptr %186, align 8, !tbaa !5, !alias.scope !33
  %189 = load <2 x double>, ptr %187, align 8, !tbaa !5, !alias.scope !33
  %190 = getelementptr inbounds double, ptr %5, i64 %185
  %191 = getelementptr inbounds double, ptr %190, i64 2
  %192 = load <2 x double>, ptr %190, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %193 = load <2 x double>, ptr %191, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %194 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %183, <2 x double> %188, <2 x double> %192)
  %195 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %183, <2 x double> %189, <2 x double> %193)
  store <2 x double> %194, ptr %190, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  store <2 x double> %195, ptr %191, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %196 = or disjoint i64 %185, 4
  %197 = getelementptr inbounds [160 x double], ptr %7, i64 %178, i64 %196
  %198 = getelementptr inbounds double, ptr %197, i64 2
  %199 = load <2 x double>, ptr %197, align 8, !tbaa !5, !alias.scope !33
  %200 = load <2 x double>, ptr %198, align 8, !tbaa !5, !alias.scope !33
  %201 = getelementptr inbounds double, ptr %5, i64 %196
  %202 = getelementptr inbounds double, ptr %201, i64 2
  %203 = load <2 x double>, ptr %201, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %204 = load <2 x double>, ptr %202, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %205 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %183, <2 x double> %199, <2 x double> %203)
  %206 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %183, <2 x double> %200, <2 x double> %204)
  store <2 x double> %205, ptr %201, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  store <2 x double> %206, ptr %202, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %207 = add nuw nsw i64 %185, 8
  %208 = icmp eq i64 %207, 160
  br i1 %208, label %224, label %184, !llvm.loop !38

209:                                              ; preds = %177, %209
  %210 = phi i64 [ %222, %209 ], [ 0, %177 ]
  %211 = getelementptr inbounds [160 x double], ptr %7, i64 %178, i64 %210
  %212 = load double, ptr %211, align 8, !tbaa !5
  %213 = getelementptr inbounds double, ptr %5, i64 %210
  %214 = load double, ptr %213, align 8, !tbaa !5
  %215 = tail call double @llvm.fmuladd.f64(double %180, double %212, double %214)
  store double %215, ptr %213, align 8, !tbaa !5
  %216 = or disjoint i64 %210, 1
  %217 = getelementptr inbounds [160 x double], ptr %7, i64 %178, i64 %216
  %218 = load double, ptr %217, align 8, !tbaa !5
  %219 = getelementptr inbounds double, ptr %5, i64 %216
  %220 = load double, ptr %219, align 8, !tbaa !5
  %221 = tail call double @llvm.fmuladd.f64(double %180, double %218, double %220)
  store double %221, ptr %219, align 8, !tbaa !5
  %222 = add nuw nsw i64 %210, 2
  %223 = icmp eq i64 %222, 160
  br i1 %223, label %224, label %209, !llvm.loop !39

224:                                              ; preds = %184, %209
  %225 = add nuw nsw i64 %178, 1
  %226 = icmp eq i64 %225, 160
  br i1 %226, label %227, label %177, !llvm.loop !20

227:                                              ; preds = %224
  %228 = icmp ult i64 %153, 32
  br i1 %228, label %154, label %229

229:                                              ; preds = %227
  %230 = load <2 x double>, ptr %5, align 8, !tbaa !5
  %231 = load <2 x double>, ptr %67, align 8, !tbaa !5
  %232 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 0
  %233 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 2
  store <2 x double> %230, ptr %232, align 8, !tbaa !5
  store <2 x double> %231, ptr %233, align 8, !tbaa !5
  %234 = load <2 x double>, ptr %68, align 8, !tbaa !5
  %235 = load <2 x double>, ptr %69, align 8, !tbaa !5
  %236 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 4
  %237 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 6
  store <2 x double> %234, ptr %236, align 8, !tbaa !5
  store <2 x double> %235, ptr %237, align 8, !tbaa !5
  %238 = load <2 x double>, ptr %70, align 8, !tbaa !5
  %239 = load <2 x double>, ptr %71, align 8, !tbaa !5
  %240 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 8
  %241 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 10
  store <2 x double> %238, ptr %240, align 8, !tbaa !5
  store <2 x double> %239, ptr %241, align 8, !tbaa !5
  %242 = load <2 x double>, ptr %72, align 8, !tbaa !5
  %243 = load <2 x double>, ptr %73, align 8, !tbaa !5
  %244 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 12
  %245 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 14
  store <2 x double> %242, ptr %244, align 8, !tbaa !5
  store <2 x double> %243, ptr %245, align 8, !tbaa !5
  %246 = load <2 x double>, ptr %74, align 8, !tbaa !5
  %247 = load <2 x double>, ptr %75, align 8, !tbaa !5
  %248 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 16
  %249 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 18
  store <2 x double> %246, ptr %248, align 8, !tbaa !5
  store <2 x double> %247, ptr %249, align 8, !tbaa !5
  %250 = load <2 x double>, ptr %76, align 8, !tbaa !5
  %251 = load <2 x double>, ptr %77, align 8, !tbaa !5
  %252 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 20
  %253 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 22
  store <2 x double> %250, ptr %252, align 8, !tbaa !5
  store <2 x double> %251, ptr %253, align 8, !tbaa !5
  %254 = load <2 x double>, ptr %78, align 8, !tbaa !5
  %255 = load <2 x double>, ptr %79, align 8, !tbaa !5
  %256 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 24
  %257 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 26
  store <2 x double> %254, ptr %256, align 8, !tbaa !5
  store <2 x double> %255, ptr %257, align 8, !tbaa !5
  %258 = load <2 x double>, ptr %80, align 8, !tbaa !5
  %259 = load <2 x double>, ptr %81, align 8, !tbaa !5
  %260 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 28
  %261 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 30
  store <2 x double> %258, ptr %260, align 8, !tbaa !5
  store <2 x double> %259, ptr %261, align 8, !tbaa !5
  %262 = load <2 x double>, ptr %82, align 8, !tbaa !5
  %263 = load <2 x double>, ptr %83, align 8, !tbaa !5
  %264 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 32
  %265 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 34
  store <2 x double> %262, ptr %264, align 8, !tbaa !5
  store <2 x double> %263, ptr %265, align 8, !tbaa !5
  %266 = load <2 x double>, ptr %84, align 8, !tbaa !5
  %267 = load <2 x double>, ptr %85, align 8, !tbaa !5
  %268 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 36
  %269 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 38
  store <2 x double> %266, ptr %268, align 8, !tbaa !5
  store <2 x double> %267, ptr %269, align 8, !tbaa !5
  %270 = load <2 x double>, ptr %86, align 8, !tbaa !5
  %271 = load <2 x double>, ptr %87, align 8, !tbaa !5
  %272 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 40
  %273 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 42
  store <2 x double> %270, ptr %272, align 8, !tbaa !5
  store <2 x double> %271, ptr %273, align 8, !tbaa !5
  %274 = load <2 x double>, ptr %88, align 8, !tbaa !5
  %275 = load <2 x double>, ptr %89, align 8, !tbaa !5
  %276 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 44
  %277 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 46
  store <2 x double> %274, ptr %276, align 8, !tbaa !5
  store <2 x double> %275, ptr %277, align 8, !tbaa !5
  %278 = load <2 x double>, ptr %90, align 8, !tbaa !5
  %279 = load <2 x double>, ptr %91, align 8, !tbaa !5
  %280 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 48
  %281 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 50
  store <2 x double> %278, ptr %280, align 8, !tbaa !5
  store <2 x double> %279, ptr %281, align 8, !tbaa !5
  %282 = load <2 x double>, ptr %92, align 8, !tbaa !5
  %283 = load <2 x double>, ptr %93, align 8, !tbaa !5
  %284 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 52
  %285 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 54
  store <2 x double> %282, ptr %284, align 8, !tbaa !5
  store <2 x double> %283, ptr %285, align 8, !tbaa !5
  %286 = load <2 x double>, ptr %94, align 8, !tbaa !5
  %287 = load <2 x double>, ptr %95, align 8, !tbaa !5
  %288 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 56
  %289 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 58
  store <2 x double> %286, ptr %288, align 8, !tbaa !5
  store <2 x double> %287, ptr %289, align 8, !tbaa !5
  %290 = load <2 x double>, ptr %96, align 8, !tbaa !5
  %291 = load <2 x double>, ptr %97, align 8, !tbaa !5
  %292 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 60
  %293 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 62
  store <2 x double> %290, ptr %292, align 8, !tbaa !5
  store <2 x double> %291, ptr %293, align 8, !tbaa !5
  %294 = load <2 x double>, ptr %98, align 8, !tbaa !5
  %295 = load <2 x double>, ptr %99, align 8, !tbaa !5
  %296 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 64
  %297 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 66
  store <2 x double> %294, ptr %296, align 8, !tbaa !5
  store <2 x double> %295, ptr %297, align 8, !tbaa !5
  %298 = load <2 x double>, ptr %100, align 8, !tbaa !5
  %299 = load <2 x double>, ptr %101, align 8, !tbaa !5
  %300 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 68
  %301 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 70
  store <2 x double> %298, ptr %300, align 8, !tbaa !5
  store <2 x double> %299, ptr %301, align 8, !tbaa !5
  %302 = load <2 x double>, ptr %102, align 8, !tbaa !5
  %303 = load <2 x double>, ptr %103, align 8, !tbaa !5
  %304 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 72
  %305 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 74
  store <2 x double> %302, ptr %304, align 8, !tbaa !5
  store <2 x double> %303, ptr %305, align 8, !tbaa !5
  %306 = load <2 x double>, ptr %104, align 8, !tbaa !5
  %307 = load <2 x double>, ptr %105, align 8, !tbaa !5
  %308 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 76
  %309 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 78
  store <2 x double> %306, ptr %308, align 8, !tbaa !5
  store <2 x double> %307, ptr %309, align 8, !tbaa !5
  %310 = load <2 x double>, ptr %106, align 8, !tbaa !5
  %311 = load <2 x double>, ptr %107, align 8, !tbaa !5
  %312 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 80
  %313 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 82
  store <2 x double> %310, ptr %312, align 8, !tbaa !5
  store <2 x double> %311, ptr %313, align 8, !tbaa !5
  %314 = load <2 x double>, ptr %108, align 8, !tbaa !5
  %315 = load <2 x double>, ptr %109, align 8, !tbaa !5
  %316 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 84
  %317 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 86
  store <2 x double> %314, ptr %316, align 8, !tbaa !5
  store <2 x double> %315, ptr %317, align 8, !tbaa !5
  %318 = load <2 x double>, ptr %110, align 8, !tbaa !5
  %319 = load <2 x double>, ptr %111, align 8, !tbaa !5
  %320 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 88
  %321 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 90
  store <2 x double> %318, ptr %320, align 8, !tbaa !5
  store <2 x double> %319, ptr %321, align 8, !tbaa !5
  %322 = load <2 x double>, ptr %112, align 8, !tbaa !5
  %323 = load <2 x double>, ptr %113, align 8, !tbaa !5
  %324 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 92
  %325 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 94
  store <2 x double> %322, ptr %324, align 8, !tbaa !5
  store <2 x double> %323, ptr %325, align 8, !tbaa !5
  %326 = load <2 x double>, ptr %114, align 8, !tbaa !5
  %327 = load <2 x double>, ptr %115, align 8, !tbaa !5
  %328 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 96
  %329 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 98
  store <2 x double> %326, ptr %328, align 8, !tbaa !5
  store <2 x double> %327, ptr %329, align 8, !tbaa !5
  %330 = load <2 x double>, ptr %116, align 8, !tbaa !5
  %331 = load <2 x double>, ptr %117, align 8, !tbaa !5
  %332 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 100
  %333 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 102
  store <2 x double> %330, ptr %332, align 8, !tbaa !5
  store <2 x double> %331, ptr %333, align 8, !tbaa !5
  %334 = load <2 x double>, ptr %118, align 8, !tbaa !5
  %335 = load <2 x double>, ptr %119, align 8, !tbaa !5
  %336 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 104
  %337 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 106
  store <2 x double> %334, ptr %336, align 8, !tbaa !5
  store <2 x double> %335, ptr %337, align 8, !tbaa !5
  %338 = load <2 x double>, ptr %120, align 8, !tbaa !5
  %339 = load <2 x double>, ptr %121, align 8, !tbaa !5
  %340 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 108
  %341 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 110
  store <2 x double> %338, ptr %340, align 8, !tbaa !5
  store <2 x double> %339, ptr %341, align 8, !tbaa !5
  %342 = load <2 x double>, ptr %122, align 8, !tbaa !5
  %343 = load <2 x double>, ptr %123, align 8, !tbaa !5
  %344 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 112
  %345 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 114
  store <2 x double> %342, ptr %344, align 8, !tbaa !5
  store <2 x double> %343, ptr %345, align 8, !tbaa !5
  %346 = load <2 x double>, ptr %124, align 8, !tbaa !5
  %347 = load <2 x double>, ptr %125, align 8, !tbaa !5
  %348 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 116
  %349 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 118
  store <2 x double> %346, ptr %348, align 8, !tbaa !5
  store <2 x double> %347, ptr %349, align 8, !tbaa !5
  %350 = load <2 x double>, ptr %126, align 8, !tbaa !5
  %351 = load <2 x double>, ptr %127, align 8, !tbaa !5
  %352 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 120
  %353 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 122
  store <2 x double> %350, ptr %352, align 8, !tbaa !5
  store <2 x double> %351, ptr %353, align 8, !tbaa !5
  %354 = load <2 x double>, ptr %128, align 8, !tbaa !5
  %355 = load <2 x double>, ptr %129, align 8, !tbaa !5
  %356 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 124
  %357 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 126
  store <2 x double> %354, ptr %356, align 8, !tbaa !5
  store <2 x double> %355, ptr %357, align 8, !tbaa !5
  %358 = load <2 x double>, ptr %130, align 8, !tbaa !5
  %359 = load <2 x double>, ptr %131, align 8, !tbaa !5
  %360 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 128
  %361 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 130
  store <2 x double> %358, ptr %360, align 8, !tbaa !5
  store <2 x double> %359, ptr %361, align 8, !tbaa !5
  %362 = load <2 x double>, ptr %132, align 8, !tbaa !5
  %363 = load <2 x double>, ptr %133, align 8, !tbaa !5
  %364 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 132
  %365 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 134
  store <2 x double> %362, ptr %364, align 8, !tbaa !5
  store <2 x double> %363, ptr %365, align 8, !tbaa !5
  %366 = load <2 x double>, ptr %134, align 8, !tbaa !5
  %367 = load <2 x double>, ptr %135, align 8, !tbaa !5
  %368 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 136
  %369 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 138
  store <2 x double> %366, ptr %368, align 8, !tbaa !5
  store <2 x double> %367, ptr %369, align 8, !tbaa !5
  %370 = load <2 x double>, ptr %136, align 8, !tbaa !5
  %371 = load <2 x double>, ptr %137, align 8, !tbaa !5
  %372 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 140
  %373 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 142
  store <2 x double> %370, ptr %372, align 8, !tbaa !5
  store <2 x double> %371, ptr %373, align 8, !tbaa !5
  %374 = load <2 x double>, ptr %138, align 8, !tbaa !5
  %375 = load <2 x double>, ptr %139, align 8, !tbaa !5
  %376 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 144
  %377 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 146
  store <2 x double> %374, ptr %376, align 8, !tbaa !5
  store <2 x double> %375, ptr %377, align 8, !tbaa !5
  %378 = load <2 x double>, ptr %140, align 8, !tbaa !5
  %379 = load <2 x double>, ptr %141, align 8, !tbaa !5
  %380 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 148
  %381 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 150
  store <2 x double> %378, ptr %380, align 8, !tbaa !5
  store <2 x double> %379, ptr %381, align 8, !tbaa !5
  %382 = load <2 x double>, ptr %142, align 8, !tbaa !5
  %383 = load <2 x double>, ptr %143, align 8, !tbaa !5
  %384 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 152
  %385 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 154
  store <2 x double> %382, ptr %384, align 8, !tbaa !5
  store <2 x double> %383, ptr %385, align 8, !tbaa !5
  %386 = load <2 x double>, ptr %144, align 8, !tbaa !5
  %387 = load <2 x double>, ptr %145, align 8, !tbaa !5
  %388 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 156
  %389 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 158
  store <2 x double> %386, ptr %388, align 8, !tbaa !5
  store <2 x double> %387, ptr %389, align 8, !tbaa !5
  br label %390

390:                                              ; preds = %154, %229
  %391 = add nuw nsw i64 %151, 1
  %392 = icmp eq i64 %391, 140
  br i1 %392, label %393, label %150, !llvm.loop !24

393:                                              ; preds = %390
  %394 = add nuw nsw i64 %147, 1
  %395 = icmp eq i64 %394, 150
  br i1 %395, label %396, label %146, !llvm.loop !25

396:                                              ; preds = %393
  %397 = load ptr, ptr @stdout, align 8, !tbaa !40
  %398 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %397)
  %399 = load ptr, ptr @stdout, align 8, !tbaa !40
  %400 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %399, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %401

401:                                              ; preds = %427, %396
  %402 = phi i64 [ 0, %396 ], [ %428, %427 ]
  %403 = mul nuw nsw i64 %402, 22400
  br label %404

404:                                              ; preds = %424, %401
  %405 = phi i64 [ 0, %401 ], [ %425, %424 ]
  %406 = mul nuw nsw i64 %405, 160
  %407 = add nuw nsw i64 %406, %403
  br label %408

408:                                              ; preds = %417, %404
  %409 = phi i64 [ 0, %404 ], [ %422, %417 ]
  %410 = add nuw nsw i64 %407, %409
  %411 = trunc i64 %410 to i32
  %412 = urem i32 %411, 20
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %408
  %415 = load ptr, ptr @stdout, align 8, !tbaa !40
  %416 = tail call i32 @fputc(i32 10, ptr %415)
  br label %417

417:                                              ; preds = %414, %408
  %418 = load ptr, ptr @stdout, align 8, !tbaa !40
  %419 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %402, i64 %405, i64 %409
  %420 = load double, ptr %419, align 8, !tbaa !5
  %421 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %418, ptr noundef nonnull @.str.4, double noundef %420)
  %422 = add nuw nsw i64 %409, 1
  %423 = icmp eq i64 %422, 160
  br i1 %423, label %424, label %408, !llvm.loop !42

424:                                              ; preds = %417
  %425 = add nuw nsw i64 %405, 1
  %426 = icmp eq i64 %425, 140
  br i1 %426, label %427, label %404, !llvm.loop !43

427:                                              ; preds = %424
  %428 = add nuw nsw i64 %402, 1
  %429 = icmp eq i64 %428, 150
  br i1 %429, label %430, label %401, !llvm.loop !44

430:                                              ; preds = %427
  %431 = load ptr, ptr @stdout, align 8, !tbaa !40
  %432 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %431, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %433 = load ptr, ptr @stdout, align 8, !tbaa !40
  %434 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %433)
  tail call void @free(ptr noundef nonnull %3) #9
  tail call void @free(ptr noundef %5) #9
  tail call void @free(ptr noundef %7) #9
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!13}
!13 = distinct !{!13, !14}
!14 = distinct !{!14, !"LVerDomain"}
!15 = !{!16}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !10, !11, !18}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10, !11, !18}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !10, !11, !18}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10, !11, !18}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10, !11}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !10, !11, !18}
!39 = distinct !{!39, !10, !11}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !7, i64 0}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
