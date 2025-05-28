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
  %7 = icmp sgt i32 %0, 0
  %8 = icmp sgt i32 %1, 0
  %9 = and i1 %7, %8
  %10 = icmp sgt i32 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %147

12:                                               ; preds = %6
  %13 = ptrtoint ptr %3 to i64
  %14 = ptrtoint ptr %5 to i64
  %15 = zext nneg i32 %2 to i64
  %16 = zext nneg i32 %0 to i64
  %17 = zext nneg i32 %1 to i64
  %18 = zext nneg i32 %2 to i64
  %19 = zext nneg i32 %2 to i64
  %20 = zext nneg i32 %2 to i64
  %21 = sub i64 %13, %14
  %22 = and i64 %15, 1
  %23 = icmp eq i32 %2, 1
  %24 = and i64 %15, 2147483646
  %25 = icmp eq i64 %22, 0
  %26 = icmp ult i32 %2, 4
  %27 = and i64 %18, 2147483644
  %28 = icmp eq i64 %27, %18
  %29 = and i64 %15, 3
  %30 = icmp eq i64 %29, 0
  br label %31

31:                                               ; preds = %12, %144
  %32 = phi i64 [ 0, %12 ], [ %145, %144 ]
  %33 = mul nuw nsw i64 %32, 179200
  %34 = add i64 %21, %33
  br label %35

35:                                               ; preds = %39, %31
  %36 = phi i64 [ %40, %39 ], [ 0, %31 ]
  %37 = mul nuw nsw i64 %36, 1280
  %38 = add i64 %34, %37
  br label %61

39:                                               ; preds = %122, %42, %110
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, %17
  br i1 %41, label %144, label %35, !llvm.loop !5

42:                                               ; preds = %122, %42
  %43 = phi i64 [ %59, %42 ], [ %123, %122 ]
  %44 = getelementptr inbounds double, ptr %5, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !7
  %46 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %43
  store double %45, ptr %46, align 8, !tbaa !7
  %47 = add nuw nsw i64 %43, 1
  %48 = getelementptr inbounds double, ptr %5, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !7
  %50 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %47
  store double %49, ptr %50, align 8, !tbaa !7
  %51 = add nuw nsw i64 %43, 2
  %52 = getelementptr inbounds double, ptr %5, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !7
  %54 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %51
  store double %53, ptr %54, align 8, !tbaa !7
  %55 = add nuw nsw i64 %43, 3
  %56 = getelementptr inbounds double, ptr %5, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !7
  %58 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %55
  store double %57, ptr %58, align 8, !tbaa !7
  %59 = add nuw nsw i64 %43, 4
  %60 = icmp eq i64 %59, %20
  br i1 %60, label %39, label %42, !llvm.loop !11

61:                                               ; preds = %94, %35
  %62 = phi i64 [ %95, %94 ], [ 0, %35 ]
  %63 = getelementptr inbounds double, ptr %5, i64 %62
  store double 0.000000e+00, ptr %63, align 8, !tbaa !7
  %64 = or disjoint i64 %62, 1
  %65 = icmp ult i64 %64, %15
  br i1 %65, label %126, label %66

66:                                               ; preds = %61
  br i1 %23, label %85, label %67

67:                                               ; preds = %66, %67
  %68 = phi i64 [ %82, %67 ], [ 0, %66 ]
  %69 = phi double [ %81, %67 ], [ 0.000000e+00, %66 ]
  %70 = phi i64 [ %83, %67 ], [ 0, %66 ]
  %71 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %68
  %72 = load double, ptr %71, align 8, !tbaa !7
  %73 = getelementptr inbounds [160 x double], ptr %4, i64 %68, i64 %62
  %74 = load double, ptr %73, align 8, !tbaa !7
  %75 = tail call double @llvm.fmuladd.f64(double %72, double %74, double %69)
  store double %75, ptr %63, align 8, !tbaa !7
  %76 = or disjoint i64 %68, 1
  %77 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %76
  %78 = load double, ptr %77, align 8, !tbaa !7
  %79 = getelementptr inbounds [160 x double], ptr %4, i64 %76, i64 %62
  %80 = load double, ptr %79, align 8, !tbaa !7
  %81 = tail call double @llvm.fmuladd.f64(double %78, double %80, double %75)
  store double %81, ptr %63, align 8, !tbaa !7
  %82 = add nuw nsw i64 %68, 2
  %83 = add i64 %70, 2
  %84 = icmp eq i64 %83, %24
  br i1 %84, label %85, label %67, !llvm.loop !13

85:                                               ; preds = %67, %66
  %86 = phi i64 [ 0, %66 ], [ %82, %67 ]
  %87 = phi double [ 0.000000e+00, %66 ], [ %81, %67 ]
  br i1 %25, label %94, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %86
  %90 = load double, ptr %89, align 8, !tbaa !7
  %91 = getelementptr inbounds [160 x double], ptr %4, i64 %86, i64 %62
  %92 = load double, ptr %91, align 8, !tbaa !7
  %93 = tail call double @llvm.fmuladd.f64(double %90, double %92, double %87)
  store double %93, ptr %63, align 8, !tbaa !7
  br label %94

94:                                               ; preds = %88, %85, %129
  %95 = add nuw nsw i64 %62, 2
  %96 = icmp ult i64 %95, %15
  br i1 %96, label %61, label %97, !llvm.loop !14

97:                                               ; preds = %94
  %98 = icmp ult i64 %38, 32
  %99 = select i1 %26, i1 true, i1 %98
  br i1 %99, label %111, label %100

100:                                              ; preds = %97, %100
  %101 = phi i64 [ %108, %100 ], [ 0, %97 ]
  %102 = getelementptr inbounds double, ptr %5, i64 %101
  %103 = getelementptr inbounds double, ptr %102, i64 2
  %104 = load <2 x double>, ptr %102, align 8, !tbaa !7
  %105 = load <2 x double>, ptr %103, align 8, !tbaa !7
  %106 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %101
  %107 = getelementptr inbounds double, ptr %106, i64 2
  store <2 x double> %104, ptr %106, align 8, !tbaa !7
  store <2 x double> %105, ptr %107, align 8, !tbaa !7
  %108 = add nuw i64 %101, 4
  %109 = icmp eq i64 %108, %27
  br i1 %109, label %110, label %100, !llvm.loop !15

110:                                              ; preds = %100
  br i1 %28, label %39, label %111

111:                                              ; preds = %97, %110
  %112 = phi i64 [ 0, %97 ], [ %27, %110 ]
  br i1 %30, label %122, label %113

113:                                              ; preds = %111, %113
  %114 = phi i64 [ %119, %113 ], [ %112, %111 ]
  %115 = phi i64 [ %120, %113 ], [ 0, %111 ]
  %116 = getelementptr inbounds double, ptr %5, i64 %114
  %117 = load double, ptr %116, align 8, !tbaa !7
  %118 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %114
  store double %117, ptr %118, align 8, !tbaa !7
  %119 = add nuw nsw i64 %114, 1
  %120 = add i64 %115, 1
  %121 = icmp eq i64 %120, %29
  br i1 %121, label %122, label %113, !llvm.loop !17

122:                                              ; preds = %113, %111
  %123 = phi i64 [ %112, %111 ], [ %119, %113 ]
  %124 = sub nsw i64 %112, %15
  %125 = icmp ugt i64 %124, -4
  br i1 %125, label %39, label %42

126:                                              ; preds = %61
  %127 = getelementptr inbounds double, ptr %5, i64 %64
  store double 0.000000e+00, ptr %127, align 8, !tbaa !7
  %128 = getelementptr inbounds double, ptr %5, i64 %64
  br label %129

129:                                              ; preds = %129, %126
  %130 = phi i64 [ %142, %129 ], [ 0, %126 ]
  %131 = phi double [ %141, %129 ], [ 0.000000e+00, %126 ]
  %132 = phi double [ %137, %129 ], [ 0.000000e+00, %126 ]
  %133 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %32, i64 %36, i64 %130
  %134 = load double, ptr %133, align 8, !tbaa !7
  %135 = getelementptr inbounds [160 x double], ptr %4, i64 %130, i64 %62
  %136 = load double, ptr %135, align 8, !tbaa !7
  %137 = tail call double @llvm.fmuladd.f64(double %134, double %136, double %132)
  store double %137, ptr %63, align 8, !tbaa !7
  %138 = load double, ptr %133, align 8, !tbaa !7
  %139 = getelementptr inbounds [160 x double], ptr %4, i64 %130, i64 %64
  %140 = load double, ptr %139, align 8, !tbaa !7
  %141 = tail call double @llvm.fmuladd.f64(double %138, double %140, double %131)
  store double %141, ptr %128, align 8, !tbaa !7
  %142 = add nuw nsw i64 %130, 1
  %143 = icmp eq i64 %142, %19
  br i1 %143, label %94, label %129, !llvm.loop !13

144:                                              ; preds = %39
  %145 = add nuw nsw i64 %32, 1
  %146 = icmp eq i64 %145, %16
  br i1 %146, label %147, label %31, !llvm.loop !19

147:                                              ; preds = %144, %6
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
  store <2 x double> %22, ptr %23, align 8, !tbaa !7
  %24 = or disjoint i64 %16, 2
  %25 = add <2 x i64> %17, <i64 2, i64 2>
  %26 = add nuw nsw <2 x i64> %25, %14
  %27 = trunc <2 x i64> %26 to <2 x i32>
  %28 = urem <2 x i32> %27, <i32 160, i32 160>
  %29 = sitofp <2 x i32> %28 to <2 x double>
  %30 = fdiv <2 x double> %29, <double 1.600000e+02, double 1.600000e+02>
  %31 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %9, i64 %11, i64 %24
  store <2 x double> %30, ptr %31, align 8, !tbaa !7
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
  store <2 x double> %52, ptr %53, align 8, !tbaa !7
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

141:                                              ; preds = %60, %361
  %142 = phi i64 [ %362, %361 ], [ 0, %60 ]
  %143 = mul nuw nsw i64 %142, 179200
  %144 = add i64 %61, %143
  br label %145

145:                                              ; preds = %149, %141
  %146 = phi i64 [ %150, %149 ], [ 0, %141 ]
  %147 = mul nuw nsw i64 %146, 1280
  %148 = add i64 %144, %147
  br label %341

149:                                              ; preds = %152, %180
  %150 = add nuw nsw i64 %146, 1
  %151 = icmp eq i64 %150, 140
  br i1 %151, label %361, label %145, !llvm.loop !5

152:                                              ; preds = %178, %152
  %153 = phi i64 [ %173, %152 ], [ 0, %178 ]
  %154 = getelementptr inbounds double, ptr %5, i64 %153
  %155 = load double, ptr %154, align 8, !tbaa !7
  %156 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %153
  store double %155, ptr %156, align 8, !tbaa !7
  %157 = add nuw nsw i64 %153, 1
  %158 = getelementptr inbounds double, ptr %5, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !7
  %160 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %157
  store double %159, ptr %160, align 8, !tbaa !7
  %161 = add nuw nsw i64 %153, 2
  %162 = getelementptr inbounds double, ptr %5, i64 %161
  %163 = load double, ptr %162, align 8, !tbaa !7
  %164 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %161
  store double %163, ptr %164, align 8, !tbaa !7
  %165 = add nuw nsw i64 %153, 3
  %166 = getelementptr inbounds double, ptr %5, i64 %165
  %167 = load double, ptr %166, align 8, !tbaa !7
  %168 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %165
  store double %167, ptr %168, align 8, !tbaa !7
  %169 = add nuw nsw i64 %153, 4
  %170 = getelementptr inbounds double, ptr %5, i64 %169
  %171 = load double, ptr %170, align 8, !tbaa !7
  %172 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %169
  store double %171, ptr %172, align 8, !tbaa !7
  %173 = add nuw nsw i64 %153, 5
  %174 = icmp eq i64 %173, 160
  br i1 %174, label %149, label %152, !llvm.loop !25

175:                                              ; preds = %346
  %176 = add nuw nsw i64 %342, 2
  %177 = icmp ult i64 %342, 158
  br i1 %177, label %341, label %178, !llvm.loop !14

178:                                              ; preds = %175
  %179 = icmp ult i64 %148, 32
  br i1 %179, label %152, label %180

180:                                              ; preds = %178
  %181 = load <2 x double>, ptr %5, align 8, !tbaa !7
  %182 = load <2 x double>, ptr %62, align 8, !tbaa !7
  %183 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 0
  %184 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 2
  store <2 x double> %181, ptr %183, align 8, !tbaa !7
  store <2 x double> %182, ptr %184, align 8, !tbaa !7
  %185 = load <2 x double>, ptr %63, align 8, !tbaa !7
  %186 = load <2 x double>, ptr %64, align 8, !tbaa !7
  %187 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 4
  %188 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 6
  store <2 x double> %185, ptr %187, align 8, !tbaa !7
  store <2 x double> %186, ptr %188, align 8, !tbaa !7
  %189 = load <2 x double>, ptr %65, align 8, !tbaa !7
  %190 = load <2 x double>, ptr %66, align 8, !tbaa !7
  %191 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 8
  %192 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 10
  store <2 x double> %189, ptr %191, align 8, !tbaa !7
  store <2 x double> %190, ptr %192, align 8, !tbaa !7
  %193 = load <2 x double>, ptr %67, align 8, !tbaa !7
  %194 = load <2 x double>, ptr %68, align 8, !tbaa !7
  %195 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 12
  %196 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 14
  store <2 x double> %193, ptr %195, align 8, !tbaa !7
  store <2 x double> %194, ptr %196, align 8, !tbaa !7
  %197 = load <2 x double>, ptr %69, align 8, !tbaa !7
  %198 = load <2 x double>, ptr %70, align 8, !tbaa !7
  %199 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 16
  %200 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 18
  store <2 x double> %197, ptr %199, align 8, !tbaa !7
  store <2 x double> %198, ptr %200, align 8, !tbaa !7
  %201 = load <2 x double>, ptr %71, align 8, !tbaa !7
  %202 = load <2 x double>, ptr %72, align 8, !tbaa !7
  %203 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 20
  %204 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 22
  store <2 x double> %201, ptr %203, align 8, !tbaa !7
  store <2 x double> %202, ptr %204, align 8, !tbaa !7
  %205 = load <2 x double>, ptr %73, align 8, !tbaa !7
  %206 = load <2 x double>, ptr %74, align 8, !tbaa !7
  %207 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 24
  %208 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 26
  store <2 x double> %205, ptr %207, align 8, !tbaa !7
  store <2 x double> %206, ptr %208, align 8, !tbaa !7
  %209 = load <2 x double>, ptr %75, align 8, !tbaa !7
  %210 = load <2 x double>, ptr %76, align 8, !tbaa !7
  %211 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 28
  %212 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 30
  store <2 x double> %209, ptr %211, align 8, !tbaa !7
  store <2 x double> %210, ptr %212, align 8, !tbaa !7
  %213 = load <2 x double>, ptr %77, align 8, !tbaa !7
  %214 = load <2 x double>, ptr %78, align 8, !tbaa !7
  %215 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 32
  %216 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 34
  store <2 x double> %213, ptr %215, align 8, !tbaa !7
  store <2 x double> %214, ptr %216, align 8, !tbaa !7
  %217 = load <2 x double>, ptr %79, align 8, !tbaa !7
  %218 = load <2 x double>, ptr %80, align 8, !tbaa !7
  %219 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 36
  %220 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 38
  store <2 x double> %217, ptr %219, align 8, !tbaa !7
  store <2 x double> %218, ptr %220, align 8, !tbaa !7
  %221 = load <2 x double>, ptr %81, align 8, !tbaa !7
  %222 = load <2 x double>, ptr %82, align 8, !tbaa !7
  %223 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 40
  %224 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 42
  store <2 x double> %221, ptr %223, align 8, !tbaa !7
  store <2 x double> %222, ptr %224, align 8, !tbaa !7
  %225 = load <2 x double>, ptr %83, align 8, !tbaa !7
  %226 = load <2 x double>, ptr %84, align 8, !tbaa !7
  %227 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 44
  %228 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 46
  store <2 x double> %225, ptr %227, align 8, !tbaa !7
  store <2 x double> %226, ptr %228, align 8, !tbaa !7
  %229 = load <2 x double>, ptr %85, align 8, !tbaa !7
  %230 = load <2 x double>, ptr %86, align 8, !tbaa !7
  %231 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 48
  %232 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 50
  store <2 x double> %229, ptr %231, align 8, !tbaa !7
  store <2 x double> %230, ptr %232, align 8, !tbaa !7
  %233 = load <2 x double>, ptr %87, align 8, !tbaa !7
  %234 = load <2 x double>, ptr %88, align 8, !tbaa !7
  %235 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 52
  %236 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 54
  store <2 x double> %233, ptr %235, align 8, !tbaa !7
  store <2 x double> %234, ptr %236, align 8, !tbaa !7
  %237 = load <2 x double>, ptr %89, align 8, !tbaa !7
  %238 = load <2 x double>, ptr %90, align 8, !tbaa !7
  %239 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 56
  %240 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 58
  store <2 x double> %237, ptr %239, align 8, !tbaa !7
  store <2 x double> %238, ptr %240, align 8, !tbaa !7
  %241 = load <2 x double>, ptr %91, align 8, !tbaa !7
  %242 = load <2 x double>, ptr %92, align 8, !tbaa !7
  %243 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 60
  %244 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 62
  store <2 x double> %241, ptr %243, align 8, !tbaa !7
  store <2 x double> %242, ptr %244, align 8, !tbaa !7
  %245 = load <2 x double>, ptr %93, align 8, !tbaa !7
  %246 = load <2 x double>, ptr %94, align 8, !tbaa !7
  %247 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 64
  %248 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 66
  store <2 x double> %245, ptr %247, align 8, !tbaa !7
  store <2 x double> %246, ptr %248, align 8, !tbaa !7
  %249 = load <2 x double>, ptr %95, align 8, !tbaa !7
  %250 = load <2 x double>, ptr %96, align 8, !tbaa !7
  %251 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 68
  %252 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 70
  store <2 x double> %249, ptr %251, align 8, !tbaa !7
  store <2 x double> %250, ptr %252, align 8, !tbaa !7
  %253 = load <2 x double>, ptr %97, align 8, !tbaa !7
  %254 = load <2 x double>, ptr %98, align 8, !tbaa !7
  %255 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 72
  %256 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 74
  store <2 x double> %253, ptr %255, align 8, !tbaa !7
  store <2 x double> %254, ptr %256, align 8, !tbaa !7
  %257 = load <2 x double>, ptr %99, align 8, !tbaa !7
  %258 = load <2 x double>, ptr %100, align 8, !tbaa !7
  %259 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 76
  %260 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 78
  store <2 x double> %257, ptr %259, align 8, !tbaa !7
  store <2 x double> %258, ptr %260, align 8, !tbaa !7
  %261 = load <2 x double>, ptr %101, align 8, !tbaa !7
  %262 = load <2 x double>, ptr %102, align 8, !tbaa !7
  %263 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 80
  %264 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 82
  store <2 x double> %261, ptr %263, align 8, !tbaa !7
  store <2 x double> %262, ptr %264, align 8, !tbaa !7
  %265 = load <2 x double>, ptr %103, align 8, !tbaa !7
  %266 = load <2 x double>, ptr %104, align 8, !tbaa !7
  %267 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 84
  %268 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 86
  store <2 x double> %265, ptr %267, align 8, !tbaa !7
  store <2 x double> %266, ptr %268, align 8, !tbaa !7
  %269 = load <2 x double>, ptr %105, align 8, !tbaa !7
  %270 = load <2 x double>, ptr %106, align 8, !tbaa !7
  %271 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 88
  %272 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 90
  store <2 x double> %269, ptr %271, align 8, !tbaa !7
  store <2 x double> %270, ptr %272, align 8, !tbaa !7
  %273 = load <2 x double>, ptr %107, align 8, !tbaa !7
  %274 = load <2 x double>, ptr %108, align 8, !tbaa !7
  %275 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 92
  %276 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 94
  store <2 x double> %273, ptr %275, align 8, !tbaa !7
  store <2 x double> %274, ptr %276, align 8, !tbaa !7
  %277 = load <2 x double>, ptr %109, align 8, !tbaa !7
  %278 = load <2 x double>, ptr %110, align 8, !tbaa !7
  %279 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 96
  %280 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 98
  store <2 x double> %277, ptr %279, align 8, !tbaa !7
  store <2 x double> %278, ptr %280, align 8, !tbaa !7
  %281 = load <2 x double>, ptr %111, align 8, !tbaa !7
  %282 = load <2 x double>, ptr %112, align 8, !tbaa !7
  %283 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 100
  %284 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 102
  store <2 x double> %281, ptr %283, align 8, !tbaa !7
  store <2 x double> %282, ptr %284, align 8, !tbaa !7
  %285 = load <2 x double>, ptr %113, align 8, !tbaa !7
  %286 = load <2 x double>, ptr %114, align 8, !tbaa !7
  %287 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 104
  %288 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 106
  store <2 x double> %285, ptr %287, align 8, !tbaa !7
  store <2 x double> %286, ptr %288, align 8, !tbaa !7
  %289 = load <2 x double>, ptr %115, align 8, !tbaa !7
  %290 = load <2 x double>, ptr %116, align 8, !tbaa !7
  %291 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 108
  %292 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 110
  store <2 x double> %289, ptr %291, align 8, !tbaa !7
  store <2 x double> %290, ptr %292, align 8, !tbaa !7
  %293 = load <2 x double>, ptr %117, align 8, !tbaa !7
  %294 = load <2 x double>, ptr %118, align 8, !tbaa !7
  %295 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 112
  %296 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 114
  store <2 x double> %293, ptr %295, align 8, !tbaa !7
  store <2 x double> %294, ptr %296, align 8, !tbaa !7
  %297 = load <2 x double>, ptr %119, align 8, !tbaa !7
  %298 = load <2 x double>, ptr %120, align 8, !tbaa !7
  %299 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 116
  %300 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 118
  store <2 x double> %297, ptr %299, align 8, !tbaa !7
  store <2 x double> %298, ptr %300, align 8, !tbaa !7
  %301 = load <2 x double>, ptr %121, align 8, !tbaa !7
  %302 = load <2 x double>, ptr %122, align 8, !tbaa !7
  %303 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 120
  %304 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 122
  store <2 x double> %301, ptr %303, align 8, !tbaa !7
  store <2 x double> %302, ptr %304, align 8, !tbaa !7
  %305 = load <2 x double>, ptr %123, align 8, !tbaa !7
  %306 = load <2 x double>, ptr %124, align 8, !tbaa !7
  %307 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 124
  %308 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 126
  store <2 x double> %305, ptr %307, align 8, !tbaa !7
  store <2 x double> %306, ptr %308, align 8, !tbaa !7
  %309 = load <2 x double>, ptr %125, align 8, !tbaa !7
  %310 = load <2 x double>, ptr %126, align 8, !tbaa !7
  %311 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 128
  %312 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 130
  store <2 x double> %309, ptr %311, align 8, !tbaa !7
  store <2 x double> %310, ptr %312, align 8, !tbaa !7
  %313 = load <2 x double>, ptr %127, align 8, !tbaa !7
  %314 = load <2 x double>, ptr %128, align 8, !tbaa !7
  %315 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 132
  %316 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 134
  store <2 x double> %313, ptr %315, align 8, !tbaa !7
  store <2 x double> %314, ptr %316, align 8, !tbaa !7
  %317 = load <2 x double>, ptr %129, align 8, !tbaa !7
  %318 = load <2 x double>, ptr %130, align 8, !tbaa !7
  %319 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 136
  %320 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 138
  store <2 x double> %317, ptr %319, align 8, !tbaa !7
  store <2 x double> %318, ptr %320, align 8, !tbaa !7
  %321 = load <2 x double>, ptr %131, align 8, !tbaa !7
  %322 = load <2 x double>, ptr %132, align 8, !tbaa !7
  %323 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 140
  %324 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 142
  store <2 x double> %321, ptr %323, align 8, !tbaa !7
  store <2 x double> %322, ptr %324, align 8, !tbaa !7
  %325 = load <2 x double>, ptr %133, align 8, !tbaa !7
  %326 = load <2 x double>, ptr %134, align 8, !tbaa !7
  %327 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 144
  %328 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 146
  store <2 x double> %325, ptr %327, align 8, !tbaa !7
  store <2 x double> %326, ptr %328, align 8, !tbaa !7
  %329 = load <2 x double>, ptr %135, align 8, !tbaa !7
  %330 = load <2 x double>, ptr %136, align 8, !tbaa !7
  %331 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 148
  %332 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 150
  store <2 x double> %329, ptr %331, align 8, !tbaa !7
  store <2 x double> %330, ptr %332, align 8, !tbaa !7
  %333 = load <2 x double>, ptr %137, align 8, !tbaa !7
  %334 = load <2 x double>, ptr %138, align 8, !tbaa !7
  %335 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 152
  %336 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 154
  store <2 x double> %333, ptr %335, align 8, !tbaa !7
  store <2 x double> %334, ptr %336, align 8, !tbaa !7
  %337 = load <2 x double>, ptr %139, align 8, !tbaa !7
  %338 = load <2 x double>, ptr %140, align 8, !tbaa !7
  %339 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 156
  %340 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 158
  store <2 x double> %337, ptr %339, align 8, !tbaa !7
  store <2 x double> %338, ptr %340, align 8, !tbaa !7
  br label %149

341:                                              ; preds = %145, %175
  %342 = phi i64 [ %176, %175 ], [ 0, %145 ]
  %343 = getelementptr inbounds double, ptr %5, i64 %342
  %344 = or disjoint i64 %342, 1
  %345 = getelementptr inbounds double, ptr %5, i64 %344
  store <2 x double> zeroinitializer, ptr %343, align 8, !tbaa !7
  br label %346

346:                                              ; preds = %346, %341
  %347 = phi i64 [ %359, %346 ], [ 0, %341 ]
  %348 = phi double [ %358, %346 ], [ 0.000000e+00, %341 ]
  %349 = phi double [ %354, %346 ], [ 0.000000e+00, %341 ]
  %350 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %142, i64 %146, i64 %347
  %351 = load double, ptr %350, align 8, !tbaa !7
  %352 = getelementptr inbounds [160 x double], ptr %7, i64 %347, i64 %342
  %353 = load double, ptr %352, align 8, !tbaa !7
  %354 = tail call double @llvm.fmuladd.f64(double %351, double %353, double %349)
  store double %354, ptr %343, align 8, !tbaa !7
  %355 = load double, ptr %350, align 8, !tbaa !7
  %356 = getelementptr inbounds [160 x double], ptr %7, i64 %347, i64 %344
  %357 = load double, ptr %356, align 8, !tbaa !7
  %358 = tail call double @llvm.fmuladd.f64(double %355, double %357, double %348)
  store double %358, ptr %345, align 8, !tbaa !7
  %359 = add nuw nsw i64 %347, 1
  %360 = icmp eq i64 %359, 160
  br i1 %360, label %175, label %346, !llvm.loop !13

361:                                              ; preds = %149
  %362 = add nuw nsw i64 %142, 1
  %363 = icmp eq i64 %362, 150
  br i1 %363, label %364, label %141, !llvm.loop !19

364:                                              ; preds = %361
  %365 = load ptr, ptr @stdout, align 8, !tbaa !26
  %366 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %365)
  %367 = load ptr, ptr @stdout, align 8, !tbaa !26
  %368 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %367, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %369

369:                                              ; preds = %395, %364
  %370 = phi i64 [ 0, %364 ], [ %396, %395 ]
  %371 = mul nuw nsw i64 %370, 22400
  br label %372

372:                                              ; preds = %392, %369
  %373 = phi i64 [ 0, %369 ], [ %393, %392 ]
  %374 = mul nuw nsw i64 %373, 160
  %375 = add nuw nsw i64 %374, %371
  br label %376

376:                                              ; preds = %385, %372
  %377 = phi i64 [ 0, %372 ], [ %390, %385 ]
  %378 = add nuw nsw i64 %375, %377
  %379 = trunc i64 %378 to i32
  %380 = urem i32 %379, 20
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = load ptr, ptr @stdout, align 8, !tbaa !26
  %384 = tail call i32 @fputc(i32 10, ptr %383)
  br label %385

385:                                              ; preds = %382, %376
  %386 = load ptr, ptr @stdout, align 8, !tbaa !26
  %387 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %370, i64 %373, i64 %377
  %388 = load double, ptr %387, align 8, !tbaa !7
  %389 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %386, ptr noundef nonnull @.str.4, double noundef %388)
  %390 = add nuw nsw i64 %377, 1
  %391 = icmp eq i64 %390, 160
  br i1 %391, label %392, label %376, !llvm.loop !28

392:                                              ; preds = %385
  %393 = add nuw nsw i64 %373, 1
  %394 = icmp eq i64 %393, 140
  br i1 %394, label %395, label %372, !llvm.loop !29

395:                                              ; preds = %392
  %396 = add nuw nsw i64 %370, 1
  %397 = icmp eq i64 %396, 150
  br i1 %397, label %398, label %369, !llvm.loop !30

398:                                              ; preds = %395
  %399 = load ptr, ptr @stdout, align 8, !tbaa !26
  %400 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %399, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %401 = load ptr, ptr @stdout, align 8, !tbaa !26
  %402 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %401)
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6, !12, !16}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6, !12, !16}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6, !12, !16}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6, !12}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !9, i64 0}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
