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
define dso_local void @kernel_doitgen(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %0, 0
  %8 = icmp sgt i32 %1, 0
  %9 = and i1 %7, %8
  %10 = icmp sgt i32 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %202

12:                                               ; preds = %6
  %13 = zext nneg i32 %2 to i64
  %14 = zext nneg i32 %0 to i64
  %15 = zext nneg i32 %1 to i64
  %16 = zext nneg i32 %2 to i64
  %17 = zext nneg i32 %2 to i64
  %18 = zext nneg i32 %2 to i64
  %19 = add nsw i64 %16, -1
  %20 = and i64 %16, 1
  %21 = icmp eq i64 %19, 0
  %22 = and i64 %16, 2147483646
  %23 = icmp eq i64 %20, 0
  %24 = and i64 %16, 1
  %25 = icmp eq i64 %19, 0
  %26 = and i64 %16, 2147483646
  %27 = icmp eq i64 %24, 0
  br label %28

28:                                               ; preds = %12, %199
  %29 = phi i64 [ 0, %12 ], [ %200, %199 ]
  br label %30

30:                                               ; preds = %196, %28
  %31 = phi i64 [ %197, %196 ], [ 0, %28 ]
  br label %32

32:                                               ; preds = %48, %30
  %33 = phi i64 [ %49, %48 ], [ 0, %30 ]
  %34 = or disjoint i64 %33, 1
  %35 = icmp ult i64 %34, %13
  %36 = or disjoint i64 %33, 2
  %37 = icmp ult i64 %36, %13
  %38 = or disjoint i64 %33, 3
  %39 = icmp ult i64 %38, %13
  br i1 %35, label %114, label %69

40:                                               ; preds = %108
  %41 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %34
  store double %110, ptr %41, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %108, %40
  br i1 %37, label %43, label %45

43:                                               ; preds = %42
  %44 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %36
  store double %111, ptr %44, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %43, %42
  br i1 %39, label %46, label %48

46:                                               ; preds = %45
  %47 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %38
  store double %112, ptr %47, align 8, !tbaa !5
  br label %48

48:                                               ; preds = %46, %45
  %49 = add nuw nsw i64 %33, 4
  %50 = icmp ult i64 %49, %13
  br i1 %50, label %32, label %196, !llvm.loop !9

51:                                               ; preds = %141, %51
  %52 = phi i64 [ %66, %51 ], [ 0, %141 ]
  %53 = phi double [ %65, %51 ], [ 0.000000e+00, %141 ]
  %54 = phi i64 [ %67, %51 ], [ 0, %141 ]
  %55 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %52
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds [160 x double], ptr %4, i64 %52, i64 %33
  %58 = load double, ptr %57, align 8, !tbaa !5
  %59 = tail call double @llvm.fmuladd.f64(double %56, double %58, double %53)
  %60 = or disjoint i64 %52, 1
  %61 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds [160 x double], ptr %4, i64 %60, i64 %33
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = tail call double @llvm.fmuladd.f64(double %62, double %64, double %59)
  %66 = add nuw nsw i64 %52, 2
  %67 = add i64 %54, 2
  %68 = icmp eq i64 %67, %22
  br i1 %68, label %98, label %51, !llvm.loop !11

69:                                               ; preds = %32
  br i1 %37, label %143, label %140

70:                                               ; preds = %136
  %71 = extractelement <2 x double> %125, i64 1
  %72 = extractelement <2 x double> %125, i64 0
  br label %108

73:                                               ; preds = %162
  %74 = extractelement <2 x double> %157, i64 1
  %75 = extractelement <2 x double> %157, i64 0
  br label %108

76:                                               ; preds = %166
  %77 = extractelement <2 x double> %192, i64 1
  %78 = extractelement <2 x double> %192, i64 0
  br label %79

79:                                               ; preds = %76, %142
  %80 = phi double [ undef, %142 ], [ %78, %76 ]
  %81 = phi double [ undef, %142 ], [ %77, %76 ]
  %82 = phi i64 [ 0, %142 ], [ %193, %76 ]
  %83 = phi <2 x double> [ zeroinitializer, %142 ], [ %192, %76 ]
  br i1 %27, label %108, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %82
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds [160 x double], ptr %4, i64 %82, i64 %33
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds [160 x double], ptr %4, i64 %82, i64 %38
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = insertelement <2 x double> poison, double %86, i64 0
  %92 = shufflevector <2 x double> %91, <2 x double> poison, <2 x i32> zeroinitializer
  %93 = insertelement <2 x double> poison, double %90, i64 0
  %94 = insertelement <2 x double> %93, double %88, i64 1
  %95 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %92, <2 x double> %94, <2 x double> %83)
  %96 = extractelement <2 x double> %95, i64 0
  %97 = extractelement <2 x double> %95, i64 1
  br label %108

98:                                               ; preds = %51, %141
  %99 = phi double [ undef, %141 ], [ %65, %51 ]
  %100 = phi i64 [ 0, %141 ], [ %66, %51 ]
  %101 = phi double [ 0.000000e+00, %141 ], [ %65, %51 ]
  br i1 %23, label %108, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %100
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = getelementptr inbounds [160 x double], ptr %4, i64 %100, i64 %33
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = tail call double @llvm.fmuladd.f64(double %104, double %106, double %101)
  br label %108

108:                                              ; preds = %102, %98, %84, %79, %73, %70
  %109 = phi double [ %72, %70 ], [ %74, %73 ], [ %81, %79 ], [ %97, %84 ], [ %99, %98 ], [ %107, %102 ]
  %110 = phi double [ %71, %70 ], [ 0.000000e+00, %73 ], [ 0.000000e+00, %79 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %98 ], [ 0.000000e+00, %102 ]
  %111 = phi double [ %131, %70 ], [ %75, %73 ], [ 0.000000e+00, %79 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %98 ], [ 0.000000e+00, %102 ]
  %112 = phi double [ %137, %70 ], [ %163, %73 ], [ %80, %79 ], [ %96, %84 ], [ 0.000000e+00, %98 ], [ 0.000000e+00, %102 ]
  %113 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %33
  store double %109, ptr %113, align 8, !tbaa !5
  br i1 %35, label %40, label %42

114:                                              ; preds = %32, %136
  %115 = phi i64 [ %138, %136 ], [ 0, %32 ]
  %116 = phi double [ %137, %136 ], [ 0.000000e+00, %32 ]
  %117 = phi double [ %131, %136 ], [ 0.000000e+00, %32 ]
  %118 = phi <2 x double> [ %125, %136 ], [ zeroinitializer, %32 ]
  %119 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %115
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = getelementptr inbounds [160 x double], ptr %4, i64 %115, i64 %33
  %122 = load <2 x double>, ptr %121, align 8, !tbaa !5
  %123 = insertelement <2 x double> poison, double %120, i64 0
  %124 = shufflevector <2 x double> %123, <2 x double> poison, <2 x i32> zeroinitializer
  %125 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %124, <2 x double> %122, <2 x double> %118)
  br i1 %37, label %126, label %130

126:                                              ; preds = %114
  %127 = getelementptr inbounds [160 x double], ptr %4, i64 %115, i64 %36
  %128 = load double, ptr %127, align 8, !tbaa !5
  %129 = tail call double @llvm.fmuladd.f64(double %120, double %128, double %117)
  br label %130

130:                                              ; preds = %126, %114
  %131 = phi double [ %129, %126 ], [ %117, %114 ]
  br i1 %39, label %132, label %136

132:                                              ; preds = %130
  %133 = getelementptr inbounds [160 x double], ptr %4, i64 %115, i64 %38
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = tail call double @llvm.fmuladd.f64(double %120, double %134, double %116)
  br label %136

136:                                              ; preds = %132, %130
  %137 = phi double [ %135, %132 ], [ %116, %130 ]
  %138 = add nuw nsw i64 %115, 1
  %139 = icmp eq i64 %138, %18
  br i1 %139, label %70, label %114, !llvm.loop !11

140:                                              ; preds = %69
  br i1 %39, label %142, label %141

141:                                              ; preds = %140
  br i1 %21, label %98, label %51

142:                                              ; preds = %140
  br i1 %25, label %79, label %166

143:                                              ; preds = %69, %162
  %144 = phi i64 [ %164, %162 ], [ 0, %69 ]
  %145 = phi double [ %163, %162 ], [ 0.000000e+00, %69 ]
  %146 = phi <2 x double> [ %157, %162 ], [ zeroinitializer, %69 ]
  %147 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %144
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = getelementptr inbounds [160 x double], ptr %4, i64 %144, i64 %33
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = getelementptr inbounds [160 x double], ptr %4, i64 %144, i64 %36
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = insertelement <2 x double> poison, double %148, i64 0
  %154 = shufflevector <2 x double> %153, <2 x double> poison, <2 x i32> zeroinitializer
  %155 = insertelement <2 x double> poison, double %152, i64 0
  %156 = insertelement <2 x double> %155, double %150, i64 1
  %157 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %154, <2 x double> %156, <2 x double> %146)
  br i1 %39, label %158, label %162

158:                                              ; preds = %143
  %159 = getelementptr inbounds [160 x double], ptr %4, i64 %144, i64 %38
  %160 = load double, ptr %159, align 8, !tbaa !5
  %161 = tail call double @llvm.fmuladd.f64(double %148, double %160, double %145)
  br label %162

162:                                              ; preds = %158, %143
  %163 = phi double [ %161, %158 ], [ %145, %143 ]
  %164 = add nuw nsw i64 %144, 1
  %165 = icmp eq i64 %164, %17
  br i1 %165, label %73, label %143, !llvm.loop !11

166:                                              ; preds = %142, %166
  %167 = phi i64 [ %193, %166 ], [ 0, %142 ]
  %168 = phi <2 x double> [ %192, %166 ], [ zeroinitializer, %142 ]
  %169 = phi i64 [ %194, %166 ], [ 0, %142 ]
  %170 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %167
  %171 = load double, ptr %170, align 8, !tbaa !5
  %172 = getelementptr inbounds [160 x double], ptr %4, i64 %167, i64 %33
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = getelementptr inbounds [160 x double], ptr %4, i64 %167, i64 %38
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = insertelement <2 x double> poison, double %171, i64 0
  %177 = shufflevector <2 x double> %176, <2 x double> poison, <2 x i32> zeroinitializer
  %178 = insertelement <2 x double> poison, double %175, i64 0
  %179 = insertelement <2 x double> %178, double %173, i64 1
  %180 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %177, <2 x double> %179, <2 x double> %168)
  %181 = or disjoint i64 %167, 1
  %182 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %181
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = getelementptr inbounds [160 x double], ptr %4, i64 %181, i64 %33
  %185 = load double, ptr %184, align 8, !tbaa !5
  %186 = getelementptr inbounds [160 x double], ptr %4, i64 %181, i64 %38
  %187 = load double, ptr %186, align 8, !tbaa !5
  %188 = insertelement <2 x double> poison, double %183, i64 0
  %189 = shufflevector <2 x double> %188, <2 x double> poison, <2 x i32> zeroinitializer
  %190 = insertelement <2 x double> poison, double %187, i64 0
  %191 = insertelement <2 x double> %190, double %185, i64 1
  %192 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %189, <2 x double> %191, <2 x double> %180)
  %193 = add nuw nsw i64 %167, 2
  %194 = add i64 %169, 2
  %195 = icmp eq i64 %194, %26
  br i1 %195, label %76, label %166, !llvm.loop !11

196:                                              ; preds = %48
  %197 = add nuw nsw i64 %31, 1
  %198 = icmp eq i64 %197, %15
  br i1 %198, label %199, label %30, !llvm.loop !12

199:                                              ; preds = %196
  %200 = add nuw nsw i64 %29, 1
  %201 = icmp eq i64 %200, %14
  br i1 %201, label %202, label %28, !llvm.loop !13

202:                                              ; preds = %199, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 3360000, i32 noundef 8) #8
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 160, i32 noundef 8) #8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 25600, i32 noundef 8) #8
  br label %6

6:                                                ; preds = %36, %2
  %7 = phi i64 [ 0, %2 ], [ %37, %36 ]
  br label %8

8:                                                ; preds = %6, %33
  %9 = phi i64 [ 0, %6 ], [ %34, %33 ]
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
  br i1 %32, label %33, label %13, !llvm.loop !14

33:                                               ; preds = %13
  %34 = add nuw nsw i64 %9, 1
  %35 = icmp eq i64 %34, 140
  br i1 %35, label %36, label %8, !llvm.loop !17

36:                                               ; preds = %33
  %37 = add nuw nsw i64 %7, 1
  %38 = icmp eq i64 %37, 150
  br i1 %38, label %39, label %6, !llvm.loop !18

39:                                               ; preds = %36, %55
  %40 = phi i64 [ %56, %55 ], [ 0, %36 ]
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
  br i1 %54, label %55, label %43, !llvm.loop !19

55:                                               ; preds = %43
  %56 = add nuw nsw i64 %40, 1
  %57 = icmp eq i64 %56, 160
  br i1 %57, label %58, label %39, !llvm.loop !20

58:                                               ; preds = %55
  tail call void @kernel_doitgen(i32 noundef 150, i32 noundef 140, i32 noundef 160, ptr noundef %3, ptr noundef nonnull %5, ptr poison)
  %59 = load ptr, ptr @stdout, align 8, !tbaa !21
  %60 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %59)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !21
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %63

63:                                               ; preds = %89, %58
  %64 = phi i64 [ 0, %58 ], [ %90, %89 ]
  %65 = mul nuw nsw i64 %64, 22400
  br label %66

66:                                               ; preds = %86, %63
  %67 = phi i64 [ 0, %63 ], [ %87, %86 ]
  %68 = mul nuw nsw i64 %67, 160
  %69 = add nuw nsw i64 %68, %65
  br label %70

70:                                               ; preds = %79, %66
  %71 = phi i64 [ 0, %66 ], [ %84, %79 ]
  %72 = add nuw nsw i64 %69, %71
  %73 = trunc i64 %72 to i32
  %74 = urem i32 %73, 20
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load ptr, ptr @stdout, align 8, !tbaa !21
  %78 = tail call i32 @fputc(i32 10, ptr %77)
  br label %79

79:                                               ; preds = %76, %70
  %80 = load ptr, ptr @stdout, align 8, !tbaa !21
  %81 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %64, i64 %67, i64 %71
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.4, double noundef %82)
  %84 = add nuw nsw i64 %71, 1
  %85 = icmp eq i64 %84, 160
  br i1 %85, label %86, label %70, !llvm.loop !23

86:                                               ; preds = %79
  %87 = add nuw nsw i64 %67, 1
  %88 = icmp eq i64 %87, 140
  br i1 %88, label %89, label %66, !llvm.loop !24

89:                                               ; preds = %86
  %90 = add nuw nsw i64 %64, 1
  %91 = icmp eq i64 %90, 150
  br i1 %91, label %92, label %63, !llvm.loop !25

92:                                               ; preds = %89
  %93 = load ptr, ptr @stdout, align 8, !tbaa !21
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %95 = load ptr, ptr @stdout, align 8, !tbaa !21
  %96 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %95)
  tail call void @free(ptr noundef nonnull %3) #8
  tail call void @free(ptr noundef %4) #8
  tail call void @free(ptr noundef %5) #8
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!14 = distinct !{!14, !10, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !15, !16}
!20 = distinct !{!20, !10}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
