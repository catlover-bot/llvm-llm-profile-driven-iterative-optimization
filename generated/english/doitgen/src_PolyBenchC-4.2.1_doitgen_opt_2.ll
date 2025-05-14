; ModuleID = 'outputs/src_PolyBenchC-4.2.1_doitgen_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_doitgen_opt_2.c"
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
  br i1 %9, label %10, label %175

10:                                               ; preds = %6
  %11 = icmp sgt i32 %1, 0
  %12 = sext i32 %2 to i64
  %13 = shl nsw i64 %12, 3
  br i1 %11, label %14, label %175

14:                                               ; preds = %10
  %15 = icmp sgt i32 %2, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = and i32 %1, 7
  %18 = icmp ult i32 %1, 8
  %19 = and i32 %1, 2147483640
  %20 = icmp eq i32 %17, 0
  br label %161

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

45:                                               ; preds = %21, %158
  %46 = phi i64 [ 0, %21 ], [ %159, %158 ]
  %47 = mul nuw nsw i64 %46, 179200
  %48 = add i64 %25, %47
  br label %49

49:                                               ; preds = %155, %45
  %50 = phi i64 [ %156, %155 ], [ 0, %45 ]
  %51 = mul nuw nsw i64 %50, 1280
  %52 = add i64 %48, %51
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  br label %72

53:                                               ; preds = %151, %53
  %54 = phi i64 [ %70, %53 ], [ %152, %151 ]
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
  br i1 %71, label %155, label %53, !llvm.loop !9

72:                                               ; preds = %123, %49
  %73 = phi i64 [ %124, %123 ], [ 0, %49 ]
  %74 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds [160 x double], ptr %4, i64 %73
  %77 = select i1 %31, i1 true, i1 %34
  br i1 %77, label %96, label %78

78:                                               ; preds = %72
  %79 = insertelement <2 x double> poison, double %75, i64 0
  %80 = shufflevector <2 x double> %79, <2 x double> poison, <2 x i32> zeroinitializer
  br label %81

81:                                               ; preds = %81, %78
  %82 = phi i64 [ 0, %78 ], [ %93, %81 ]
  %83 = getelementptr inbounds double, ptr %76, i64 %82
  %84 = getelementptr inbounds double, ptr %83, i64 2
  %85 = load <2 x double>, ptr %83, align 8, !tbaa !5, !alias.scope !12
  %86 = load <2 x double>, ptr %84, align 8, !tbaa !5, !alias.scope !12
  %87 = getelementptr inbounds double, ptr %5, i64 %82
  %88 = getelementptr inbounds double, ptr %87, i64 2
  %89 = load <2 x double>, ptr %87, align 8, !tbaa !5, !alias.scope !15, !noalias !12
  %90 = load <2 x double>, ptr %88, align 8, !tbaa !5, !alias.scope !15, !noalias !12
  %91 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %80, <2 x double> %85, <2 x double> %89)
  %92 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %80, <2 x double> %86, <2 x double> %90)
  store <2 x double> %91, ptr %87, align 8, !tbaa !5, !alias.scope !15, !noalias !12
  store <2 x double> %92, ptr %88, align 8, !tbaa !5, !alias.scope !15, !noalias !12
  %93 = add nuw i64 %82, 4
  %94 = icmp eq i64 %93, %35
  br i1 %94, label %95, label %81, !llvm.loop !17

95:                                               ; preds = %81
  br i1 %36, label %123, label %96

96:                                               ; preds = %72, %95
  %97 = phi i64 [ 0, %72 ], [ %35, %95 ]
  br i1 %38, label %105, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds double, ptr %76, i64 %97
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = getelementptr inbounds double, ptr %5, i64 %97
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = tail call double @llvm.fmuladd.f64(double %75, double %100, double %102)
  store double %103, ptr %101, align 8, !tbaa !5
  %104 = or disjoint i64 %97, 1
  br label %105

105:                                              ; preds = %98, %96
  %106 = phi i64 [ %97, %96 ], [ %104, %98 ]
  %107 = icmp eq i64 %97, %39
  br i1 %107, label %123, label %108

108:                                              ; preds = %105, %108
  %109 = phi i64 [ %121, %108 ], [ %106, %105 ]
  %110 = getelementptr inbounds double, ptr %76, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = getelementptr inbounds double, ptr %5, i64 %109
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = tail call double @llvm.fmuladd.f64(double %75, double %111, double %113)
  store double %114, ptr %112, align 8, !tbaa !5
  %115 = add nuw nsw i64 %109, 1
  %116 = getelementptr inbounds double, ptr %76, i64 %115
  %117 = load double, ptr %116, align 8, !tbaa !5
  %118 = getelementptr inbounds double, ptr %5, i64 %115
  %119 = load double, ptr %118, align 8, !tbaa !5
  %120 = tail call double @llvm.fmuladd.f64(double %75, double %117, double %119)
  store double %120, ptr %118, align 8, !tbaa !5
  %121 = add nuw nsw i64 %109, 2
  %122 = icmp eq i64 %121, %24
  br i1 %122, label %123, label %108, !llvm.loop !19

123:                                              ; preds = %105, %108, %95
  %124 = add nuw nsw i64 %73, 1
  %125 = icmp eq i64 %124, %24
  br i1 %125, label %126, label %72, !llvm.loop !20

126:                                              ; preds = %123
  %127 = icmp ult i64 %52, 32
  %128 = select i1 %40, i1 true, i1 %127
  br i1 %128, label %140, label %129

129:                                              ; preds = %126, %129
  %130 = phi i64 [ %137, %129 ], [ 0, %126 ]
  %131 = getelementptr inbounds double, ptr %5, i64 %130
  %132 = getelementptr inbounds double, ptr %131, i64 2
  %133 = load <2 x double>, ptr %131, align 8, !tbaa !5
  %134 = load <2 x double>, ptr %132, align 8, !tbaa !5
  %135 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %130
  %136 = getelementptr inbounds double, ptr %135, i64 2
  store <2 x double> %133, ptr %135, align 8, !tbaa !5
  store <2 x double> %134, ptr %136, align 8, !tbaa !5
  %137 = add nuw i64 %130, 4
  %138 = icmp eq i64 %137, %41
  br i1 %138, label %139, label %129, !llvm.loop !21

139:                                              ; preds = %129
  br i1 %42, label %155, label %140

140:                                              ; preds = %126, %139
  %141 = phi i64 [ 0, %126 ], [ %41, %139 ]
  br i1 %44, label %151, label %142

142:                                              ; preds = %140, %142
  %143 = phi i64 [ %148, %142 ], [ %141, %140 ]
  %144 = phi i64 [ %149, %142 ], [ 0, %140 ]
  %145 = getelementptr inbounds double, ptr %5, i64 %143
  %146 = load double, ptr %145, align 8, !tbaa !5
  %147 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %46, i64 %50, i64 %143
  store double %146, ptr %147, align 8, !tbaa !5
  %148 = add nuw nsw i64 %143, 1
  %149 = add i64 %144, 1
  %150 = icmp eq i64 %149, %43
  br i1 %150, label %151, label %142, !llvm.loop !22

151:                                              ; preds = %142, %140
  %152 = phi i64 [ %141, %140 ], [ %148, %142 ]
  %153 = sub nsw i64 %141, %24
  %154 = icmp ugt i64 %153, -4
  br i1 %154, label %155, label %53

155:                                              ; preds = %151, %53, %139
  %156 = add nuw nsw i64 %50, 1
  %157 = icmp eq i64 %156, %23
  br i1 %157, label %158, label %49, !llvm.loop !24

158:                                              ; preds = %155
  %159 = add nuw nsw i64 %46, 1
  %160 = icmp eq i64 %159, %22
  br i1 %160, label %175, label %45, !llvm.loop !25

161:                                              ; preds = %16, %172
  %162 = phi i32 [ %173, %172 ], [ 0, %16 ]
  br i1 %18, label %167, label %163

163:                                              ; preds = %161, %163
  %164 = phi i32 [ %165, %163 ], [ 0, %161 ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  %165 = add i32 %164, 8
  %166 = icmp eq i32 %165, %19
  br i1 %166, label %167, label %163, !llvm.loop !24

167:                                              ; preds = %163, %161
  br i1 %20, label %172, label %168

168:                                              ; preds = %167, %168
  %169 = phi i32 [ %170, %168 ], [ 0, %167 ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %13, i1 false)
  %170 = add i32 %169, 1
  %171 = icmp eq i32 %170, %17
  br i1 %171, label %172, label %168, !llvm.loop !26

172:                                              ; preds = %168, %167
  %173 = add nuw nsw i32 %162, 1
  %174 = icmp eq i32 %173, %0
  br i1 %174, label %175, label %161, !llvm.loop !25

175:                                              ; preds = %172, %158, %10, %6
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

146:                                              ; preds = %60, %394
  %147 = phi i64 [ %395, %394 ], [ 0, %60 ]
  %148 = mul nuw nsw i64 %147, 179200
  %149 = add i64 %61, %148
  br label %150

150:                                              ; preds = %391, %146
  %151 = phi i64 [ %392, %391 ], [ 0, %146 ]
  %152 = mul nuw nsw i64 %151, 1280
  %153 = add i64 %149, %152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %5, i8 0, i64 1280, i1 false)
  br label %177

154:                                              ; preds = %228, %154
  %155 = phi i64 [ %175, %154 ], [ 0, %228 ]
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
  br i1 %176, label %391, label %154, !llvm.loop !32

177:                                              ; preds = %225, %150
  %178 = phi i64 [ %226, %225 ], [ 0, %150 ]
  %179 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 %178
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = getelementptr inbounds [160 x double], ptr %7, i64 %178
  br i1 %66, label %210, label %182

182:                                              ; preds = %177
  %183 = insertelement <2 x double> poison, double %180, i64 0
  %184 = shufflevector <2 x double> %183, <2 x double> poison, <2 x i32> zeroinitializer
  br label %185

185:                                              ; preds = %185, %182
  %186 = phi i64 [ 0, %182 ], [ %208, %185 ]
  %187 = getelementptr inbounds double, ptr %181, i64 %186
  %188 = getelementptr inbounds double, ptr %187, i64 2
  %189 = load <2 x double>, ptr %187, align 8, !tbaa !5, !alias.scope !33
  %190 = load <2 x double>, ptr %188, align 8, !tbaa !5, !alias.scope !33
  %191 = getelementptr inbounds double, ptr %5, i64 %186
  %192 = getelementptr inbounds double, ptr %191, i64 2
  %193 = load <2 x double>, ptr %191, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %194 = load <2 x double>, ptr %192, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %195 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %184, <2 x double> %189, <2 x double> %193)
  %196 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %184, <2 x double> %190, <2 x double> %194)
  store <2 x double> %195, ptr %191, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  store <2 x double> %196, ptr %192, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %197 = or disjoint i64 %186, 4
  %198 = getelementptr inbounds double, ptr %181, i64 %197
  %199 = getelementptr inbounds double, ptr %198, i64 2
  %200 = load <2 x double>, ptr %198, align 8, !tbaa !5, !alias.scope !33
  %201 = load <2 x double>, ptr %199, align 8, !tbaa !5, !alias.scope !33
  %202 = getelementptr inbounds double, ptr %5, i64 %197
  %203 = getelementptr inbounds double, ptr %202, i64 2
  %204 = load <2 x double>, ptr %202, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %205 = load <2 x double>, ptr %203, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %206 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %184, <2 x double> %200, <2 x double> %204)
  %207 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %184, <2 x double> %201, <2 x double> %205)
  store <2 x double> %206, ptr %202, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  store <2 x double> %207, ptr %203, align 8, !tbaa !5, !alias.scope !36, !noalias !33
  %208 = add nuw nsw i64 %186, 8
  %209 = icmp eq i64 %208, 160
  br i1 %209, label %225, label %185, !llvm.loop !38

210:                                              ; preds = %177, %210
  %211 = phi i64 [ %223, %210 ], [ 0, %177 ]
  %212 = getelementptr inbounds double, ptr %181, i64 %211
  %213 = load double, ptr %212, align 8, !tbaa !5
  %214 = getelementptr inbounds double, ptr %5, i64 %211
  %215 = load double, ptr %214, align 8, !tbaa !5
  %216 = tail call double @llvm.fmuladd.f64(double %180, double %213, double %215)
  store double %216, ptr %214, align 8, !tbaa !5
  %217 = or disjoint i64 %211, 1
  %218 = getelementptr inbounds double, ptr %181, i64 %217
  %219 = load double, ptr %218, align 8, !tbaa !5
  %220 = getelementptr inbounds double, ptr %5, i64 %217
  %221 = load double, ptr %220, align 8, !tbaa !5
  %222 = tail call double @llvm.fmuladd.f64(double %180, double %219, double %221)
  store double %222, ptr %220, align 8, !tbaa !5
  %223 = add nuw nsw i64 %211, 2
  %224 = icmp eq i64 %223, 160
  br i1 %224, label %225, label %210, !llvm.loop !39

225:                                              ; preds = %185, %210
  %226 = add nuw nsw i64 %178, 1
  %227 = icmp eq i64 %226, 160
  br i1 %227, label %228, label %177, !llvm.loop !20

228:                                              ; preds = %225
  %229 = icmp ult i64 %153, 32
  br i1 %229, label %154, label %230

230:                                              ; preds = %228
  %231 = load <2 x double>, ptr %5, align 8, !tbaa !5
  %232 = load <2 x double>, ptr %67, align 8, !tbaa !5
  %233 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 0
  %234 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 2
  store <2 x double> %231, ptr %233, align 8, !tbaa !5
  store <2 x double> %232, ptr %234, align 8, !tbaa !5
  %235 = load <2 x double>, ptr %68, align 8, !tbaa !5
  %236 = load <2 x double>, ptr %69, align 8, !tbaa !5
  %237 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 4
  %238 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 6
  store <2 x double> %235, ptr %237, align 8, !tbaa !5
  store <2 x double> %236, ptr %238, align 8, !tbaa !5
  %239 = load <2 x double>, ptr %70, align 8, !tbaa !5
  %240 = load <2 x double>, ptr %71, align 8, !tbaa !5
  %241 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 8
  %242 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 10
  store <2 x double> %239, ptr %241, align 8, !tbaa !5
  store <2 x double> %240, ptr %242, align 8, !tbaa !5
  %243 = load <2 x double>, ptr %72, align 8, !tbaa !5
  %244 = load <2 x double>, ptr %73, align 8, !tbaa !5
  %245 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 12
  %246 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 14
  store <2 x double> %243, ptr %245, align 8, !tbaa !5
  store <2 x double> %244, ptr %246, align 8, !tbaa !5
  %247 = load <2 x double>, ptr %74, align 8, !tbaa !5
  %248 = load <2 x double>, ptr %75, align 8, !tbaa !5
  %249 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 16
  %250 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 18
  store <2 x double> %247, ptr %249, align 8, !tbaa !5
  store <2 x double> %248, ptr %250, align 8, !tbaa !5
  %251 = load <2 x double>, ptr %76, align 8, !tbaa !5
  %252 = load <2 x double>, ptr %77, align 8, !tbaa !5
  %253 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 20
  %254 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 22
  store <2 x double> %251, ptr %253, align 8, !tbaa !5
  store <2 x double> %252, ptr %254, align 8, !tbaa !5
  %255 = load <2 x double>, ptr %78, align 8, !tbaa !5
  %256 = load <2 x double>, ptr %79, align 8, !tbaa !5
  %257 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 24
  %258 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 26
  store <2 x double> %255, ptr %257, align 8, !tbaa !5
  store <2 x double> %256, ptr %258, align 8, !tbaa !5
  %259 = load <2 x double>, ptr %80, align 8, !tbaa !5
  %260 = load <2 x double>, ptr %81, align 8, !tbaa !5
  %261 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 28
  %262 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 30
  store <2 x double> %259, ptr %261, align 8, !tbaa !5
  store <2 x double> %260, ptr %262, align 8, !tbaa !5
  %263 = load <2 x double>, ptr %82, align 8, !tbaa !5
  %264 = load <2 x double>, ptr %83, align 8, !tbaa !5
  %265 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 32
  %266 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 34
  store <2 x double> %263, ptr %265, align 8, !tbaa !5
  store <2 x double> %264, ptr %266, align 8, !tbaa !5
  %267 = load <2 x double>, ptr %84, align 8, !tbaa !5
  %268 = load <2 x double>, ptr %85, align 8, !tbaa !5
  %269 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 36
  %270 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 38
  store <2 x double> %267, ptr %269, align 8, !tbaa !5
  store <2 x double> %268, ptr %270, align 8, !tbaa !5
  %271 = load <2 x double>, ptr %86, align 8, !tbaa !5
  %272 = load <2 x double>, ptr %87, align 8, !tbaa !5
  %273 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 40
  %274 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 42
  store <2 x double> %271, ptr %273, align 8, !tbaa !5
  store <2 x double> %272, ptr %274, align 8, !tbaa !5
  %275 = load <2 x double>, ptr %88, align 8, !tbaa !5
  %276 = load <2 x double>, ptr %89, align 8, !tbaa !5
  %277 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 44
  %278 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 46
  store <2 x double> %275, ptr %277, align 8, !tbaa !5
  store <2 x double> %276, ptr %278, align 8, !tbaa !5
  %279 = load <2 x double>, ptr %90, align 8, !tbaa !5
  %280 = load <2 x double>, ptr %91, align 8, !tbaa !5
  %281 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 48
  %282 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 50
  store <2 x double> %279, ptr %281, align 8, !tbaa !5
  store <2 x double> %280, ptr %282, align 8, !tbaa !5
  %283 = load <2 x double>, ptr %92, align 8, !tbaa !5
  %284 = load <2 x double>, ptr %93, align 8, !tbaa !5
  %285 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 52
  %286 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 54
  store <2 x double> %283, ptr %285, align 8, !tbaa !5
  store <2 x double> %284, ptr %286, align 8, !tbaa !5
  %287 = load <2 x double>, ptr %94, align 8, !tbaa !5
  %288 = load <2 x double>, ptr %95, align 8, !tbaa !5
  %289 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 56
  %290 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 58
  store <2 x double> %287, ptr %289, align 8, !tbaa !5
  store <2 x double> %288, ptr %290, align 8, !tbaa !5
  %291 = load <2 x double>, ptr %96, align 8, !tbaa !5
  %292 = load <2 x double>, ptr %97, align 8, !tbaa !5
  %293 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 60
  %294 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 62
  store <2 x double> %291, ptr %293, align 8, !tbaa !5
  store <2 x double> %292, ptr %294, align 8, !tbaa !5
  %295 = load <2 x double>, ptr %98, align 8, !tbaa !5
  %296 = load <2 x double>, ptr %99, align 8, !tbaa !5
  %297 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 64
  %298 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 66
  store <2 x double> %295, ptr %297, align 8, !tbaa !5
  store <2 x double> %296, ptr %298, align 8, !tbaa !5
  %299 = load <2 x double>, ptr %100, align 8, !tbaa !5
  %300 = load <2 x double>, ptr %101, align 8, !tbaa !5
  %301 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 68
  %302 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 70
  store <2 x double> %299, ptr %301, align 8, !tbaa !5
  store <2 x double> %300, ptr %302, align 8, !tbaa !5
  %303 = load <2 x double>, ptr %102, align 8, !tbaa !5
  %304 = load <2 x double>, ptr %103, align 8, !tbaa !5
  %305 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 72
  %306 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 74
  store <2 x double> %303, ptr %305, align 8, !tbaa !5
  store <2 x double> %304, ptr %306, align 8, !tbaa !5
  %307 = load <2 x double>, ptr %104, align 8, !tbaa !5
  %308 = load <2 x double>, ptr %105, align 8, !tbaa !5
  %309 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 76
  %310 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 78
  store <2 x double> %307, ptr %309, align 8, !tbaa !5
  store <2 x double> %308, ptr %310, align 8, !tbaa !5
  %311 = load <2 x double>, ptr %106, align 8, !tbaa !5
  %312 = load <2 x double>, ptr %107, align 8, !tbaa !5
  %313 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 80
  %314 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 82
  store <2 x double> %311, ptr %313, align 8, !tbaa !5
  store <2 x double> %312, ptr %314, align 8, !tbaa !5
  %315 = load <2 x double>, ptr %108, align 8, !tbaa !5
  %316 = load <2 x double>, ptr %109, align 8, !tbaa !5
  %317 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 84
  %318 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 86
  store <2 x double> %315, ptr %317, align 8, !tbaa !5
  store <2 x double> %316, ptr %318, align 8, !tbaa !5
  %319 = load <2 x double>, ptr %110, align 8, !tbaa !5
  %320 = load <2 x double>, ptr %111, align 8, !tbaa !5
  %321 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 88
  %322 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 90
  store <2 x double> %319, ptr %321, align 8, !tbaa !5
  store <2 x double> %320, ptr %322, align 8, !tbaa !5
  %323 = load <2 x double>, ptr %112, align 8, !tbaa !5
  %324 = load <2 x double>, ptr %113, align 8, !tbaa !5
  %325 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 92
  %326 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 94
  store <2 x double> %323, ptr %325, align 8, !tbaa !5
  store <2 x double> %324, ptr %326, align 8, !tbaa !5
  %327 = load <2 x double>, ptr %114, align 8, !tbaa !5
  %328 = load <2 x double>, ptr %115, align 8, !tbaa !5
  %329 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 96
  %330 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 98
  store <2 x double> %327, ptr %329, align 8, !tbaa !5
  store <2 x double> %328, ptr %330, align 8, !tbaa !5
  %331 = load <2 x double>, ptr %116, align 8, !tbaa !5
  %332 = load <2 x double>, ptr %117, align 8, !tbaa !5
  %333 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 100
  %334 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 102
  store <2 x double> %331, ptr %333, align 8, !tbaa !5
  store <2 x double> %332, ptr %334, align 8, !tbaa !5
  %335 = load <2 x double>, ptr %118, align 8, !tbaa !5
  %336 = load <2 x double>, ptr %119, align 8, !tbaa !5
  %337 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 104
  %338 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 106
  store <2 x double> %335, ptr %337, align 8, !tbaa !5
  store <2 x double> %336, ptr %338, align 8, !tbaa !5
  %339 = load <2 x double>, ptr %120, align 8, !tbaa !5
  %340 = load <2 x double>, ptr %121, align 8, !tbaa !5
  %341 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 108
  %342 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 110
  store <2 x double> %339, ptr %341, align 8, !tbaa !5
  store <2 x double> %340, ptr %342, align 8, !tbaa !5
  %343 = load <2 x double>, ptr %122, align 8, !tbaa !5
  %344 = load <2 x double>, ptr %123, align 8, !tbaa !5
  %345 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 112
  %346 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 114
  store <2 x double> %343, ptr %345, align 8, !tbaa !5
  store <2 x double> %344, ptr %346, align 8, !tbaa !5
  %347 = load <2 x double>, ptr %124, align 8, !tbaa !5
  %348 = load <2 x double>, ptr %125, align 8, !tbaa !5
  %349 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 116
  %350 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 118
  store <2 x double> %347, ptr %349, align 8, !tbaa !5
  store <2 x double> %348, ptr %350, align 8, !tbaa !5
  %351 = load <2 x double>, ptr %126, align 8, !tbaa !5
  %352 = load <2 x double>, ptr %127, align 8, !tbaa !5
  %353 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 120
  %354 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 122
  store <2 x double> %351, ptr %353, align 8, !tbaa !5
  store <2 x double> %352, ptr %354, align 8, !tbaa !5
  %355 = load <2 x double>, ptr %128, align 8, !tbaa !5
  %356 = load <2 x double>, ptr %129, align 8, !tbaa !5
  %357 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 124
  %358 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 126
  store <2 x double> %355, ptr %357, align 8, !tbaa !5
  store <2 x double> %356, ptr %358, align 8, !tbaa !5
  %359 = load <2 x double>, ptr %130, align 8, !tbaa !5
  %360 = load <2 x double>, ptr %131, align 8, !tbaa !5
  %361 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 128
  %362 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 130
  store <2 x double> %359, ptr %361, align 8, !tbaa !5
  store <2 x double> %360, ptr %362, align 8, !tbaa !5
  %363 = load <2 x double>, ptr %132, align 8, !tbaa !5
  %364 = load <2 x double>, ptr %133, align 8, !tbaa !5
  %365 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 132
  %366 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 134
  store <2 x double> %363, ptr %365, align 8, !tbaa !5
  store <2 x double> %364, ptr %366, align 8, !tbaa !5
  %367 = load <2 x double>, ptr %134, align 8, !tbaa !5
  %368 = load <2 x double>, ptr %135, align 8, !tbaa !5
  %369 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 136
  %370 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 138
  store <2 x double> %367, ptr %369, align 8, !tbaa !5
  store <2 x double> %368, ptr %370, align 8, !tbaa !5
  %371 = load <2 x double>, ptr %136, align 8, !tbaa !5
  %372 = load <2 x double>, ptr %137, align 8, !tbaa !5
  %373 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 140
  %374 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 142
  store <2 x double> %371, ptr %373, align 8, !tbaa !5
  store <2 x double> %372, ptr %374, align 8, !tbaa !5
  %375 = load <2 x double>, ptr %138, align 8, !tbaa !5
  %376 = load <2 x double>, ptr %139, align 8, !tbaa !5
  %377 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 144
  %378 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 146
  store <2 x double> %375, ptr %377, align 8, !tbaa !5
  store <2 x double> %376, ptr %378, align 8, !tbaa !5
  %379 = load <2 x double>, ptr %140, align 8, !tbaa !5
  %380 = load <2 x double>, ptr %141, align 8, !tbaa !5
  %381 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 148
  %382 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 150
  store <2 x double> %379, ptr %381, align 8, !tbaa !5
  store <2 x double> %380, ptr %382, align 8, !tbaa !5
  %383 = load <2 x double>, ptr %142, align 8, !tbaa !5
  %384 = load <2 x double>, ptr %143, align 8, !tbaa !5
  %385 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 152
  %386 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 154
  store <2 x double> %383, ptr %385, align 8, !tbaa !5
  store <2 x double> %384, ptr %386, align 8, !tbaa !5
  %387 = load <2 x double>, ptr %144, align 8, !tbaa !5
  %388 = load <2 x double>, ptr %145, align 8, !tbaa !5
  %389 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 156
  %390 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %147, i64 %151, i64 158
  store <2 x double> %387, ptr %389, align 8, !tbaa !5
  store <2 x double> %388, ptr %390, align 8, !tbaa !5
  br label %391

391:                                              ; preds = %154, %230
  %392 = add nuw nsw i64 %151, 1
  %393 = icmp eq i64 %392, 140
  br i1 %393, label %394, label %150, !llvm.loop !24

394:                                              ; preds = %391
  %395 = add nuw nsw i64 %147, 1
  %396 = icmp eq i64 %395, 150
  br i1 %396, label %397, label %146, !llvm.loop !25

397:                                              ; preds = %394
  %398 = load ptr, ptr @stdout, align 8, !tbaa !40
  %399 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %398)
  %400 = load ptr, ptr @stdout, align 8, !tbaa !40
  %401 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %400, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %402

402:                                              ; preds = %428, %397
  %403 = phi i64 [ 0, %397 ], [ %429, %428 ]
  %404 = mul nuw nsw i64 %403, 22400
  br label %405

405:                                              ; preds = %425, %402
  %406 = phi i64 [ 0, %402 ], [ %426, %425 ]
  %407 = mul nuw nsw i64 %406, 160
  %408 = add nuw nsw i64 %407, %404
  br label %409

409:                                              ; preds = %418, %405
  %410 = phi i64 [ 0, %405 ], [ %423, %418 ]
  %411 = add nuw nsw i64 %408, %410
  %412 = trunc i64 %411 to i32
  %413 = urem i32 %412, 20
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %418

415:                                              ; preds = %409
  %416 = load ptr, ptr @stdout, align 8, !tbaa !40
  %417 = tail call i32 @fputc(i32 10, ptr %416)
  br label %418

418:                                              ; preds = %415, %409
  %419 = load ptr, ptr @stdout, align 8, !tbaa !40
  %420 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %403, i64 %406, i64 %410
  %421 = load double, ptr %420, align 8, !tbaa !5
  %422 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef nonnull @.str.4, double noundef %421)
  %423 = add nuw nsw i64 %410, 1
  %424 = icmp eq i64 %423, 160
  br i1 %424, label %425, label %409, !llvm.loop !42

425:                                              ; preds = %418
  %426 = add nuw nsw i64 %406, 1
  %427 = icmp eq i64 %426, 140
  br i1 %427, label %428, label %405, !llvm.loop !43

428:                                              ; preds = %425
  %429 = add nuw nsw i64 %403, 1
  %430 = icmp eq i64 %429, 150
  br i1 %430, label %431, label %402, !llvm.loop !44

431:                                              ; preds = %428
  %432 = load ptr, ptr @stdout, align 8, !tbaa !40
  %433 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %432, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %434 = load ptr, ptr @stdout, align 8, !tbaa !40
  %435 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %434)
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
