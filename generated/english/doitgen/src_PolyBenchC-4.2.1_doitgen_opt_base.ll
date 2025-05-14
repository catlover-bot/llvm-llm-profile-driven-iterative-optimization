; ModuleID = 'src/PolyBenchC-4.2.1/doitgen.c'
source_filename = "src/PolyBenchC-4.2.1/doitgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %0, 0
  %8 = icmp sgt i32 %1, 0
  %9 = and i1 %7, %8
  %10 = icmp sgt i32 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %123

12:                                               ; preds = %6
  %13 = ptrtoint ptr %3 to i64
  %14 = ptrtoint ptr %5 to i64
  %15 = zext nneg i32 %0 to i64
  %16 = zext nneg i32 %1 to i64
  %17 = zext nneg i32 %2 to i64
  %18 = sub i64 %13, %14
  %19 = and i64 %17, 1
  %20 = icmp eq i32 %2, 1
  %21 = and i64 %17, 2147483646
  %22 = icmp eq i64 %19, 0
  %23 = icmp ult i32 %2, 4
  %24 = and i64 %17, 2147483644
  %25 = icmp eq i64 %24, %17
  %26 = and i64 %17, 3
  %27 = icmp eq i64 %26, 0
  br label %28

28:                                               ; preds = %12, %120
  %29 = phi i64 [ 0, %12 ], [ %121, %120 ]
  %30 = mul nuw nsw i64 %29, 179200
  %31 = add i64 %18, %30
  br label %32

32:                                               ; preds = %117, %28
  %33 = phi i64 [ %118, %117 ], [ 0, %28 ]
  %34 = mul nuw nsw i64 %33, 1280
  %35 = add i64 %31, %34
  br label %55

36:                                               ; preds = %113, %36
  %37 = phi i64 [ %53, %36 ], [ %114, %113 ]
  %38 = getelementptr inbounds double, ptr %5, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !5
  %40 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %33, i64 %37
  store double %39, ptr %40, align 8, !tbaa !5
  %41 = add nuw nsw i64 %37, 1
  %42 = getelementptr inbounds double, ptr %5, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !5
  %44 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %33, i64 %41
  store double %43, ptr %44, align 8, !tbaa !5
  %45 = add nuw nsw i64 %37, 2
  %46 = getelementptr inbounds double, ptr %5, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %33, i64 %45
  store double %47, ptr %48, align 8, !tbaa !5
  %49 = add nuw nsw i64 %37, 3
  %50 = getelementptr inbounds double, ptr %5, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %33, i64 %49
  store double %51, ptr %52, align 8, !tbaa !5
  %53 = add nuw nsw i64 %37, 4
  %54 = icmp eq i64 %53, %17
  br i1 %54, label %117, label %36, !llvm.loop !9

55:                                               ; preds = %85, %32
  %56 = phi i64 [ %86, %85 ], [ 0, %32 ]
  %57 = getelementptr inbounds double, ptr %5, i64 %56
  store double 0.000000e+00, ptr %57, align 8, !tbaa !5
  br i1 %20, label %76, label %58

58:                                               ; preds = %55, %58
  %59 = phi i64 [ %73, %58 ], [ 0, %55 ]
  %60 = phi double [ %72, %58 ], [ 0.000000e+00, %55 ]
  %61 = phi i64 [ %74, %58 ], [ 0, %55 ]
  %62 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %33, i64 %59
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds [160 x double], ptr %4, i64 %59, i64 %56
  %65 = load double, ptr %64, align 8, !tbaa !5
  %66 = tail call double @llvm.fmuladd.f64(double %63, double %65, double %60)
  store double %66, ptr %57, align 8, !tbaa !5
  %67 = or disjoint i64 %59, 1
  %68 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %33, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds [160 x double], ptr %4, i64 %67, i64 %56
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = tail call double @llvm.fmuladd.f64(double %69, double %71, double %66)
  store double %72, ptr %57, align 8, !tbaa !5
  %73 = add nuw nsw i64 %59, 2
  %74 = add i64 %61, 2
  %75 = icmp eq i64 %74, %21
  br i1 %75, label %76, label %58, !llvm.loop !12

76:                                               ; preds = %58, %55
  %77 = phi i64 [ 0, %55 ], [ %73, %58 ]
  %78 = phi double [ 0.000000e+00, %55 ], [ %72, %58 ]
  br i1 %22, label %85, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %33, i64 %77
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds [160 x double], ptr %4, i64 %77, i64 %56
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = tail call double @llvm.fmuladd.f64(double %81, double %83, double %78)
  store double %84, ptr %57, align 8, !tbaa !5
  br label %85

85:                                               ; preds = %76, %79
  %86 = add nuw nsw i64 %56, 1
  %87 = icmp eq i64 %86, %17
  br i1 %87, label %88, label %55, !llvm.loop !13

88:                                               ; preds = %85
  %89 = icmp ult i64 %35, 32
  %90 = select i1 %23, i1 true, i1 %89
  br i1 %90, label %102, label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %99, %91 ], [ 0, %88 ]
  %93 = getelementptr inbounds double, ptr %5, i64 %92
  %94 = getelementptr inbounds double, ptr %93, i64 2
  %95 = load <2 x double>, ptr %93, align 8, !tbaa !5
  %96 = load <2 x double>, ptr %94, align 8, !tbaa !5
  %97 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %33, i64 %92
  %98 = getelementptr inbounds double, ptr %97, i64 2
  store <2 x double> %95, ptr %97, align 8, !tbaa !5
  store <2 x double> %96, ptr %98, align 8, !tbaa !5
  %99 = add nuw i64 %92, 4
  %100 = icmp eq i64 %99, %24
  br i1 %100, label %101, label %91, !llvm.loop !14

101:                                              ; preds = %91
  br i1 %25, label %117, label %102

102:                                              ; preds = %88, %101
  %103 = phi i64 [ 0, %88 ], [ %24, %101 ]
  br i1 %27, label %113, label %104

104:                                              ; preds = %102, %104
  %105 = phi i64 [ %110, %104 ], [ %103, %102 ]
  %106 = phi i64 [ %111, %104 ], [ 0, %102 ]
  %107 = getelementptr inbounds double, ptr %5, i64 %105
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %33, i64 %105
  store double %108, ptr %109, align 8, !tbaa !5
  %110 = add nuw nsw i64 %105, 1
  %111 = add i64 %106, 1
  %112 = icmp eq i64 %111, %26
  br i1 %112, label %113, label %104, !llvm.loop !16

113:                                              ; preds = %104, %102
  %114 = phi i64 [ %103, %102 ], [ %110, %104 ]
  %115 = sub nsw i64 %103, %17
  %116 = icmp ugt i64 %115, -4
  br i1 %116, label %117, label %36

117:                                              ; preds = %113, %36, %101
  %118 = add nuw nsw i64 %33, 1
  %119 = icmp eq i64 %118, %16
  br i1 %119, label %120, label %32, !llvm.loop !18

120:                                              ; preds = %117
  %121 = add nuw nsw i64 %29, 1
  %122 = icmp eq i64 %121, %15
  br i1 %122, label %123, label %28, !llvm.loop !19

123:                                              ; preds = %120, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8) #7
  %4 = ptrtoint ptr %3 to i64
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8) #7
  %6 = ptrtoint ptr %5 to i64
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8) #7
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
  br i1 %34, label %35, label %15, !llvm.loop !20

35:                                               ; preds = %15
  %36 = add nuw nsw i64 %11, 1
  %37 = icmp eq i64 %36, 140
  br i1 %37, label %38, label %10, !llvm.loop !21

38:                                               ; preds = %35
  %39 = add nuw nsw i64 %9, 1
  %40 = icmp eq i64 %39, 150
  br i1 %40, label %41, label %8, !llvm.loop !22

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
  br i1 %56, label %57, label %45, !llvm.loop !23

57:                                               ; preds = %45
  %58 = add nuw nsw i64 %42, 1
  %59 = icmp eq i64 %58, 160
  br i1 %59, label %60, label %41, !llvm.loop !24

60:                                               ; preds = %57
  %61 = sub i64 %4, %6
  %62 = getelementptr inbounds double, ptr %5, i64 2
  %63 = getelementptr inbounds double, ptr %5, i64 4
  %64 = getelementptr inbounds double, ptr %5, i64 6
  %65 = getelementptr inbounds double, ptr %5, i64 8
  %66 = getelementptr inbounds double, ptr %5, i64 10
  %67 = getelementptr inbounds double, ptr %5, i64 12
  %68 = getelementptr inbounds double, ptr %5, i64 14
  %69 = getelementptr inbounds double, ptr %5, i64 16
  %70 = getelementptr inbounds double, ptr %5, i64 18
  %71 = getelementptr inbounds double, ptr %5, i64 20
  %72 = getelementptr inbounds double, ptr %5, i64 22
  %73 = getelementptr inbounds double, ptr %5, i64 24
  %74 = getelementptr inbounds double, ptr %5, i64 26
  %75 = getelementptr inbounds double, ptr %5, i64 28
  %76 = getelementptr inbounds double, ptr %5, i64 30
  %77 = getelementptr inbounds double, ptr %5, i64 32
  %78 = getelementptr inbounds double, ptr %5, i64 34
  %79 = getelementptr inbounds double, ptr %5, i64 36
  %80 = getelementptr inbounds double, ptr %5, i64 38
  %81 = getelementptr inbounds double, ptr %5, i64 40
  %82 = getelementptr inbounds double, ptr %5, i64 42
  %83 = getelementptr inbounds double, ptr %5, i64 44
  %84 = getelementptr inbounds double, ptr %5, i64 46
  %85 = getelementptr inbounds double, ptr %5, i64 48
  %86 = getelementptr inbounds double, ptr %5, i64 50
  %87 = getelementptr inbounds double, ptr %5, i64 52
  %88 = getelementptr inbounds double, ptr %5, i64 54
  %89 = getelementptr inbounds double, ptr %5, i64 56
  %90 = getelementptr inbounds double, ptr %5, i64 58
  %91 = getelementptr inbounds double, ptr %5, i64 60
  %92 = getelementptr inbounds double, ptr %5, i64 62
  %93 = getelementptr inbounds double, ptr %5, i64 64
  %94 = getelementptr inbounds double, ptr %5, i64 66
  %95 = getelementptr inbounds double, ptr %5, i64 68
  %96 = getelementptr inbounds double, ptr %5, i64 70
  %97 = getelementptr inbounds double, ptr %5, i64 72
  %98 = getelementptr inbounds double, ptr %5, i64 74
  %99 = getelementptr inbounds double, ptr %5, i64 76
  %100 = getelementptr inbounds double, ptr %5, i64 78
  %101 = getelementptr inbounds double, ptr %5, i64 80
  %102 = getelementptr inbounds double, ptr %5, i64 82
  %103 = getelementptr inbounds double, ptr %5, i64 84
  %104 = getelementptr inbounds double, ptr %5, i64 86
  %105 = getelementptr inbounds double, ptr %5, i64 88
  %106 = getelementptr inbounds double, ptr %5, i64 90
  %107 = getelementptr inbounds double, ptr %5, i64 92
  %108 = getelementptr inbounds double, ptr %5, i64 94
  %109 = getelementptr inbounds double, ptr %5, i64 96
  %110 = getelementptr inbounds double, ptr %5, i64 98
  %111 = getelementptr inbounds double, ptr %5, i64 100
  %112 = getelementptr inbounds double, ptr %5, i64 102
  %113 = getelementptr inbounds double, ptr %5, i64 104
  %114 = getelementptr inbounds double, ptr %5, i64 106
  %115 = getelementptr inbounds double, ptr %5, i64 108
  %116 = getelementptr inbounds double, ptr %5, i64 110
  %117 = getelementptr inbounds double, ptr %5, i64 112
  %118 = getelementptr inbounds double, ptr %5, i64 114
  %119 = getelementptr inbounds double, ptr %5, i64 116
  %120 = getelementptr inbounds double, ptr %5, i64 118
  %121 = getelementptr inbounds double, ptr %5, i64 120
  %122 = getelementptr inbounds double, ptr %5, i64 122
  %123 = getelementptr inbounds double, ptr %5, i64 124
  %124 = getelementptr inbounds double, ptr %5, i64 126
  %125 = getelementptr inbounds double, ptr %5, i64 128
  %126 = getelementptr inbounds double, ptr %5, i64 130
  %127 = getelementptr inbounds double, ptr %5, i64 132
  %128 = getelementptr inbounds double, ptr %5, i64 134
  %129 = getelementptr inbounds double, ptr %5, i64 136
  %130 = getelementptr inbounds double, ptr %5, i64 138
  %131 = getelementptr inbounds double, ptr %5, i64 140
  %132 = getelementptr inbounds double, ptr %5, i64 142
  %133 = getelementptr inbounds double, ptr %5, i64 144
  %134 = getelementptr inbounds double, ptr %5, i64 146
  %135 = getelementptr inbounds double, ptr %5, i64 148
  %136 = getelementptr inbounds double, ptr %5, i64 150
  %137 = getelementptr inbounds double, ptr %5, i64 152
  %138 = getelementptr inbounds double, ptr %5, i64 154
  %139 = getelementptr inbounds double, ptr %5, i64 156
  %140 = getelementptr inbounds double, ptr %5, i64 158
  br label %141

141:                                              ; preds = %60, %360
  %142 = phi i64 [ %361, %360 ], [ 0, %60 ]
  %143 = mul nuw nsw i64 %142, 179200
  %144 = add i64 %61, %143
  br label %145

145:                                              ; preds = %357, %141
  %146 = phi i64 [ %358, %357 ], [ 0, %141 ]
  %147 = mul nuw nsw i64 %146, 1280
  %148 = add i64 %144, %147
  br label %172

149:                                              ; preds = %194, %149
  %150 = phi i64 [ %170, %149 ], [ 0, %194 ]
  %151 = getelementptr inbounds double, ptr %5, i64 %150
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %150
  store double %152, ptr %153, align 8, !tbaa !5
  %154 = add nuw nsw i64 %150, 1
  %155 = getelementptr inbounds double, ptr %5, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %154
  store double %156, ptr %157, align 8, !tbaa !5
  %158 = add nuw nsw i64 %150, 2
  %159 = getelementptr inbounds double, ptr %5, i64 %158
  %160 = load double, ptr %159, align 8, !tbaa !5
  %161 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %158
  store double %160, ptr %161, align 8, !tbaa !5
  %162 = add nuw nsw i64 %150, 3
  %163 = getelementptr inbounds double, ptr %5, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %162
  store double %164, ptr %165, align 8, !tbaa !5
  %166 = add nuw nsw i64 %150, 4
  %167 = getelementptr inbounds double, ptr %5, i64 %166
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %166
  store double %168, ptr %169, align 8, !tbaa !5
  %170 = add nuw nsw i64 %150, 5
  %171 = icmp eq i64 %170, 160
  br i1 %171, label %357, label %149, !llvm.loop !25

172:                                              ; preds = %191, %145
  %173 = phi i64 [ %192, %191 ], [ 0, %145 ]
  %174 = getelementptr inbounds double, ptr %5, i64 %173
  store double 0.000000e+00, ptr %174, align 8, !tbaa !5
  br label %175

175:                                              ; preds = %175, %172
  %176 = phi i64 [ 0, %172 ], [ %189, %175 ]
  %177 = phi double [ 0.000000e+00, %172 ], [ %188, %175 ]
  %178 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %176
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = getelementptr inbounds [160 x double], ptr %7, i64 %176, i64 %173
  %181 = load double, ptr %180, align 8, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %179, double %181, double %177)
  store double %182, ptr %174, align 8, !tbaa !5
  %183 = or disjoint i64 %176, 1
  %184 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %183
  %185 = load double, ptr %184, align 8, !tbaa !5
  %186 = getelementptr inbounds [160 x double], ptr %7, i64 %183, i64 %173
  %187 = load double, ptr %186, align 8, !tbaa !5
  %188 = tail call double @llvm.fmuladd.f64(double %185, double %187, double %182)
  store double %188, ptr %174, align 8, !tbaa !5
  %189 = add nuw nsw i64 %176, 2
  %190 = icmp eq i64 %189, 160
  br i1 %190, label %191, label %175, !llvm.loop !12

191:                                              ; preds = %175
  %192 = add nuw nsw i64 %173, 1
  %193 = icmp eq i64 %192, 160
  br i1 %193, label %194, label %172, !llvm.loop !13

194:                                              ; preds = %191
  %195 = icmp ult i64 %148, 32
  br i1 %195, label %149, label %196

196:                                              ; preds = %194
  %197 = load <2 x double>, ptr %5, align 8, !tbaa !5
  %198 = load <2 x double>, ptr %62, align 8, !tbaa !5
  %199 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 0
  %200 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 2
  store <2 x double> %197, ptr %199, align 8, !tbaa !5
  store <2 x double> %198, ptr %200, align 8, !tbaa !5
  %201 = load <2 x double>, ptr %63, align 8, !tbaa !5
  %202 = load <2 x double>, ptr %64, align 8, !tbaa !5
  %203 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 4
  %204 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 6
  store <2 x double> %201, ptr %203, align 8, !tbaa !5
  store <2 x double> %202, ptr %204, align 8, !tbaa !5
  %205 = load <2 x double>, ptr %65, align 8, !tbaa !5
  %206 = load <2 x double>, ptr %66, align 8, !tbaa !5
  %207 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 8
  %208 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 10
  store <2 x double> %205, ptr %207, align 8, !tbaa !5
  store <2 x double> %206, ptr %208, align 8, !tbaa !5
  %209 = load <2 x double>, ptr %67, align 8, !tbaa !5
  %210 = load <2 x double>, ptr %68, align 8, !tbaa !5
  %211 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 12
  %212 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 14
  store <2 x double> %209, ptr %211, align 8, !tbaa !5
  store <2 x double> %210, ptr %212, align 8, !tbaa !5
  %213 = load <2 x double>, ptr %69, align 8, !tbaa !5
  %214 = load <2 x double>, ptr %70, align 8, !tbaa !5
  %215 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 16
  %216 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 18
  store <2 x double> %213, ptr %215, align 8, !tbaa !5
  store <2 x double> %214, ptr %216, align 8, !tbaa !5
  %217 = load <2 x double>, ptr %71, align 8, !tbaa !5
  %218 = load <2 x double>, ptr %72, align 8, !tbaa !5
  %219 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 20
  %220 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 22
  store <2 x double> %217, ptr %219, align 8, !tbaa !5
  store <2 x double> %218, ptr %220, align 8, !tbaa !5
  %221 = load <2 x double>, ptr %73, align 8, !tbaa !5
  %222 = load <2 x double>, ptr %74, align 8, !tbaa !5
  %223 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 24
  %224 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 26
  store <2 x double> %221, ptr %223, align 8, !tbaa !5
  store <2 x double> %222, ptr %224, align 8, !tbaa !5
  %225 = load <2 x double>, ptr %75, align 8, !tbaa !5
  %226 = load <2 x double>, ptr %76, align 8, !tbaa !5
  %227 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 28
  %228 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 30
  store <2 x double> %225, ptr %227, align 8, !tbaa !5
  store <2 x double> %226, ptr %228, align 8, !tbaa !5
  %229 = load <2 x double>, ptr %77, align 8, !tbaa !5
  %230 = load <2 x double>, ptr %78, align 8, !tbaa !5
  %231 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 32
  %232 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 34
  store <2 x double> %229, ptr %231, align 8, !tbaa !5
  store <2 x double> %230, ptr %232, align 8, !tbaa !5
  %233 = load <2 x double>, ptr %79, align 8, !tbaa !5
  %234 = load <2 x double>, ptr %80, align 8, !tbaa !5
  %235 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 36
  %236 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 38
  store <2 x double> %233, ptr %235, align 8, !tbaa !5
  store <2 x double> %234, ptr %236, align 8, !tbaa !5
  %237 = load <2 x double>, ptr %81, align 8, !tbaa !5
  %238 = load <2 x double>, ptr %82, align 8, !tbaa !5
  %239 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 40
  %240 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 42
  store <2 x double> %237, ptr %239, align 8, !tbaa !5
  store <2 x double> %238, ptr %240, align 8, !tbaa !5
  %241 = load <2 x double>, ptr %83, align 8, !tbaa !5
  %242 = load <2 x double>, ptr %84, align 8, !tbaa !5
  %243 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 44
  %244 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 46
  store <2 x double> %241, ptr %243, align 8, !tbaa !5
  store <2 x double> %242, ptr %244, align 8, !tbaa !5
  %245 = load <2 x double>, ptr %85, align 8, !tbaa !5
  %246 = load <2 x double>, ptr %86, align 8, !tbaa !5
  %247 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 48
  %248 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 50
  store <2 x double> %245, ptr %247, align 8, !tbaa !5
  store <2 x double> %246, ptr %248, align 8, !tbaa !5
  %249 = load <2 x double>, ptr %87, align 8, !tbaa !5
  %250 = load <2 x double>, ptr %88, align 8, !tbaa !5
  %251 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 52
  %252 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 54
  store <2 x double> %249, ptr %251, align 8, !tbaa !5
  store <2 x double> %250, ptr %252, align 8, !tbaa !5
  %253 = load <2 x double>, ptr %89, align 8, !tbaa !5
  %254 = load <2 x double>, ptr %90, align 8, !tbaa !5
  %255 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 56
  %256 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 58
  store <2 x double> %253, ptr %255, align 8, !tbaa !5
  store <2 x double> %254, ptr %256, align 8, !tbaa !5
  %257 = load <2 x double>, ptr %91, align 8, !tbaa !5
  %258 = load <2 x double>, ptr %92, align 8, !tbaa !5
  %259 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 60
  %260 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 62
  store <2 x double> %257, ptr %259, align 8, !tbaa !5
  store <2 x double> %258, ptr %260, align 8, !tbaa !5
  %261 = load <2 x double>, ptr %93, align 8, !tbaa !5
  %262 = load <2 x double>, ptr %94, align 8, !tbaa !5
  %263 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 64
  %264 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 66
  store <2 x double> %261, ptr %263, align 8, !tbaa !5
  store <2 x double> %262, ptr %264, align 8, !tbaa !5
  %265 = load <2 x double>, ptr %95, align 8, !tbaa !5
  %266 = load <2 x double>, ptr %96, align 8, !tbaa !5
  %267 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 68
  %268 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 70
  store <2 x double> %265, ptr %267, align 8, !tbaa !5
  store <2 x double> %266, ptr %268, align 8, !tbaa !5
  %269 = load <2 x double>, ptr %97, align 8, !tbaa !5
  %270 = load <2 x double>, ptr %98, align 8, !tbaa !5
  %271 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 72
  %272 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 74
  store <2 x double> %269, ptr %271, align 8, !tbaa !5
  store <2 x double> %270, ptr %272, align 8, !tbaa !5
  %273 = load <2 x double>, ptr %99, align 8, !tbaa !5
  %274 = load <2 x double>, ptr %100, align 8, !tbaa !5
  %275 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 76
  %276 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 78
  store <2 x double> %273, ptr %275, align 8, !tbaa !5
  store <2 x double> %274, ptr %276, align 8, !tbaa !5
  %277 = load <2 x double>, ptr %101, align 8, !tbaa !5
  %278 = load <2 x double>, ptr %102, align 8, !tbaa !5
  %279 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 80
  %280 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 82
  store <2 x double> %277, ptr %279, align 8, !tbaa !5
  store <2 x double> %278, ptr %280, align 8, !tbaa !5
  %281 = load <2 x double>, ptr %103, align 8, !tbaa !5
  %282 = load <2 x double>, ptr %104, align 8, !tbaa !5
  %283 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 84
  %284 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 86
  store <2 x double> %281, ptr %283, align 8, !tbaa !5
  store <2 x double> %282, ptr %284, align 8, !tbaa !5
  %285 = load <2 x double>, ptr %105, align 8, !tbaa !5
  %286 = load <2 x double>, ptr %106, align 8, !tbaa !5
  %287 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 88
  %288 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 90
  store <2 x double> %285, ptr %287, align 8, !tbaa !5
  store <2 x double> %286, ptr %288, align 8, !tbaa !5
  %289 = load <2 x double>, ptr %107, align 8, !tbaa !5
  %290 = load <2 x double>, ptr %108, align 8, !tbaa !5
  %291 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 92
  %292 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 94
  store <2 x double> %289, ptr %291, align 8, !tbaa !5
  store <2 x double> %290, ptr %292, align 8, !tbaa !5
  %293 = load <2 x double>, ptr %109, align 8, !tbaa !5
  %294 = load <2 x double>, ptr %110, align 8, !tbaa !5
  %295 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 96
  %296 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 98
  store <2 x double> %293, ptr %295, align 8, !tbaa !5
  store <2 x double> %294, ptr %296, align 8, !tbaa !5
  %297 = load <2 x double>, ptr %111, align 8, !tbaa !5
  %298 = load <2 x double>, ptr %112, align 8, !tbaa !5
  %299 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 100
  %300 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 102
  store <2 x double> %297, ptr %299, align 8, !tbaa !5
  store <2 x double> %298, ptr %300, align 8, !tbaa !5
  %301 = load <2 x double>, ptr %113, align 8, !tbaa !5
  %302 = load <2 x double>, ptr %114, align 8, !tbaa !5
  %303 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 104
  %304 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 106
  store <2 x double> %301, ptr %303, align 8, !tbaa !5
  store <2 x double> %302, ptr %304, align 8, !tbaa !5
  %305 = load <2 x double>, ptr %115, align 8, !tbaa !5
  %306 = load <2 x double>, ptr %116, align 8, !tbaa !5
  %307 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 108
  %308 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 110
  store <2 x double> %305, ptr %307, align 8, !tbaa !5
  store <2 x double> %306, ptr %308, align 8, !tbaa !5
  %309 = load <2 x double>, ptr %117, align 8, !tbaa !5
  %310 = load <2 x double>, ptr %118, align 8, !tbaa !5
  %311 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 112
  %312 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 114
  store <2 x double> %309, ptr %311, align 8, !tbaa !5
  store <2 x double> %310, ptr %312, align 8, !tbaa !5
  %313 = load <2 x double>, ptr %119, align 8, !tbaa !5
  %314 = load <2 x double>, ptr %120, align 8, !tbaa !5
  %315 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 116
  %316 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 118
  store <2 x double> %313, ptr %315, align 8, !tbaa !5
  store <2 x double> %314, ptr %316, align 8, !tbaa !5
  %317 = load <2 x double>, ptr %121, align 8, !tbaa !5
  %318 = load <2 x double>, ptr %122, align 8, !tbaa !5
  %319 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 120
  %320 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 122
  store <2 x double> %317, ptr %319, align 8, !tbaa !5
  store <2 x double> %318, ptr %320, align 8, !tbaa !5
  %321 = load <2 x double>, ptr %123, align 8, !tbaa !5
  %322 = load <2 x double>, ptr %124, align 8, !tbaa !5
  %323 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 124
  %324 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 126
  store <2 x double> %321, ptr %323, align 8, !tbaa !5
  store <2 x double> %322, ptr %324, align 8, !tbaa !5
  %325 = load <2 x double>, ptr %125, align 8, !tbaa !5
  %326 = load <2 x double>, ptr %126, align 8, !tbaa !5
  %327 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 128
  %328 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 130
  store <2 x double> %325, ptr %327, align 8, !tbaa !5
  store <2 x double> %326, ptr %328, align 8, !tbaa !5
  %329 = load <2 x double>, ptr %127, align 8, !tbaa !5
  %330 = load <2 x double>, ptr %128, align 8, !tbaa !5
  %331 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 132
  %332 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 134
  store <2 x double> %329, ptr %331, align 8, !tbaa !5
  store <2 x double> %330, ptr %332, align 8, !tbaa !5
  %333 = load <2 x double>, ptr %129, align 8, !tbaa !5
  %334 = load <2 x double>, ptr %130, align 8, !tbaa !5
  %335 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 136
  %336 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 138
  store <2 x double> %333, ptr %335, align 8, !tbaa !5
  store <2 x double> %334, ptr %336, align 8, !tbaa !5
  %337 = load <2 x double>, ptr %131, align 8, !tbaa !5
  %338 = load <2 x double>, ptr %132, align 8, !tbaa !5
  %339 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 140
  %340 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 142
  store <2 x double> %337, ptr %339, align 8, !tbaa !5
  store <2 x double> %338, ptr %340, align 8, !tbaa !5
  %341 = load <2 x double>, ptr %133, align 8, !tbaa !5
  %342 = load <2 x double>, ptr %134, align 8, !tbaa !5
  %343 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 144
  %344 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 146
  store <2 x double> %341, ptr %343, align 8, !tbaa !5
  store <2 x double> %342, ptr %344, align 8, !tbaa !5
  %345 = load <2 x double>, ptr %135, align 8, !tbaa !5
  %346 = load <2 x double>, ptr %136, align 8, !tbaa !5
  %347 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 148
  %348 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 150
  store <2 x double> %345, ptr %347, align 8, !tbaa !5
  store <2 x double> %346, ptr %348, align 8, !tbaa !5
  %349 = load <2 x double>, ptr %137, align 8, !tbaa !5
  %350 = load <2 x double>, ptr %138, align 8, !tbaa !5
  %351 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 152
  %352 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 154
  store <2 x double> %349, ptr %351, align 8, !tbaa !5
  store <2 x double> %350, ptr %352, align 8, !tbaa !5
  %353 = load <2 x double>, ptr %139, align 8, !tbaa !5
  %354 = load <2 x double>, ptr %140, align 8, !tbaa !5
  %355 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 156
  %356 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 158
  store <2 x double> %353, ptr %355, align 8, !tbaa !5
  store <2 x double> %354, ptr %356, align 8, !tbaa !5
  br label %357

357:                                              ; preds = %149, %196
  %358 = add nuw nsw i64 %146, 1
  %359 = icmp eq i64 %358, 140
  br i1 %359, label %360, label %145, !llvm.loop !18

360:                                              ; preds = %357
  %361 = add nuw nsw i64 %142, 1
  %362 = icmp eq i64 %361, 150
  br i1 %362, label %363, label %141, !llvm.loop !19

363:                                              ; preds = %360
  %364 = load ptr, ptr @stderr, align 8, !tbaa !26
  %365 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %364) #8
  %366 = load ptr, ptr @stderr, align 8, !tbaa !26
  %367 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %366, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %368

368:                                              ; preds = %394, %363
  %369 = phi i64 [ 0, %363 ], [ %395, %394 ]
  %370 = mul nuw nsw i64 %369, 22400
  br label %371

371:                                              ; preds = %391, %368
  %372 = phi i64 [ 0, %368 ], [ %392, %391 ]
  %373 = mul nuw nsw i64 %372, 160
  %374 = add nuw nsw i64 %373, %370
  br label %375

375:                                              ; preds = %384, %371
  %376 = phi i64 [ 0, %371 ], [ %389, %384 ]
  %377 = add nuw nsw i64 %374, %376
  %378 = trunc i64 %377 to i32
  %379 = urem i32 %378, 20
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %375
  %382 = load ptr, ptr @stderr, align 8, !tbaa !26
  %383 = tail call i32 @fputc(i32 10, ptr %382)
  br label %384

384:                                              ; preds = %381, %375
  %385 = load ptr, ptr @stderr, align 8, !tbaa !26
  %386 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %369, i64 %372, i64 %376
  %387 = load double, ptr %386, align 8, !tbaa !5
  %388 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %385, ptr noundef nonnull @.str.4, double noundef %387) #8
  %389 = add nuw nsw i64 %376, 1
  %390 = icmp eq i64 %389, 160
  br i1 %390, label %391, label %375, !llvm.loop !28

391:                                              ; preds = %384
  %392 = add nuw nsw i64 %372, 1
  %393 = icmp eq i64 %392, 140
  br i1 %393, label %394, label %371, !llvm.loop !29

394:                                              ; preds = %391
  %395 = add nuw nsw i64 %369, 1
  %396 = icmp eq i64 %395, 150
  br i1 %396, label %397, label %368, !llvm.loop !30

397:                                              ; preds = %394
  %398 = load ptr, ptr @stderr, align 8, !tbaa !26
  %399 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %398, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #8
  %400 = load ptr, ptr @stderr, align 8, !tbaa !26
  %401 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %400) #8
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %7) #7
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }

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
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !11, !15}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !11, !15}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10, !11, !15}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
