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
define dso_local void @kernel_doitgen(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %0, 0
  %8 = icmp sgt i32 %1, 0
  %9 = and i1 %7, %8
  %10 = icmp sgt i32 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %208

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

28:                                               ; preds = %12, %205
  %29 = phi i64 [ 0, %12 ], [ %206, %205 ]
  br label %30

30:                                               ; preds = %202, %28
  %31 = phi i64 [ %203, %202 ], [ 0, %28 ]
  br label %32

32:                                               ; preds = %48, %30
  %33 = phi i64 [ %49, %48 ], [ 0, %30 ]
  %34 = or disjoint i64 %33, 1
  %35 = icmp ult i64 %34, %13
  %36 = or disjoint i64 %33, 2
  %37 = icmp ult i64 %36, %13
  %38 = or disjoint i64 %33, 3
  %39 = icmp ult i64 %38, %13
  br i1 %35, label %115, label %69

40:                                               ; preds = %109
  %41 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %34
  store double %111, ptr %41, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %109, %40
  br i1 %37, label %43, label %45

43:                                               ; preds = %42
  %44 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %36
  store double %112, ptr %44, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %43, %42
  br i1 %39, label %46, label %48

46:                                               ; preds = %45
  %47 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %38
  store double %113, ptr %47, align 8, !tbaa !5
  br label %48

48:                                               ; preds = %46, %45
  %49 = add nuw nsw i64 %33, 4
  %50 = icmp ult i64 %49, %13
  br i1 %50, label %32, label %202, !llvm.loop !9

51:                                               ; preds = %168, %51
  %52 = phi i64 [ %66, %51 ], [ 0, %168 ]
  %53 = phi double [ %65, %51 ], [ 0.000000e+00, %168 ]
  %54 = phi i64 [ %67, %51 ], [ 0, %168 ]
  %55 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %52
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds [160 x double], ptr %169, i64 %52
  %58 = load double, ptr %57, align 8, !tbaa !5
  %59 = tail call double @llvm.fmuladd.f64(double %56, double %58, double %53)
  %60 = or disjoint i64 %52, 1
  %61 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds [160 x double], ptr %169, i64 %60
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = tail call double @llvm.fmuladd.f64(double %62, double %64, double %59)
  %66 = add nuw nsw i64 %52, 2
  %67 = add i64 %54, 2
  %68 = icmp eq i64 %67, %22
  br i1 %68, label %99, label %51, !llvm.loop !11

69:                                               ; preds = %32
  br i1 %37, label %144, label %142

70:                                               ; preds = %138
  %71 = extractelement <2 x double> %127, i64 1
  %72 = extractelement <2 x double> %127, i64 0
  br label %109

73:                                               ; preds = %164
  %74 = extractelement <2 x double> %159, i64 1
  %75 = extractelement <2 x double> %159, i64 0
  br label %109

76:                                               ; preds = %170
  %77 = extractelement <2 x double> %198, i64 1
  %78 = extractelement <2 x double> %198, i64 0
  br label %79

79:                                               ; preds = %76, %143
  %80 = phi double [ undef, %143 ], [ %78, %76 ]
  %81 = phi double [ undef, %143 ], [ %77, %76 ]
  %82 = phi i64 [ 0, %143 ], [ %199, %76 ]
  %83 = phi <2 x double> [ zeroinitializer, %143 ], [ %198, %76 ]
  br i1 %27, label %109, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %82
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds [160 x double], ptr %4, i64 %82
  %88 = getelementptr inbounds double, ptr %87, i64 %33
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = getelementptr inbounds double, ptr %87, i64 %38
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = insertelement <2 x double> poison, double %86, i64 0
  %93 = shufflevector <2 x double> %92, <2 x double> poison, <2 x i32> zeroinitializer
  %94 = insertelement <2 x double> poison, double %91, i64 0
  %95 = insertelement <2 x double> %94, double %89, i64 1
  %96 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %93, <2 x double> %95, <2 x double> %83)
  %97 = extractelement <2 x double> %96, i64 0
  %98 = extractelement <2 x double> %96, i64 1
  br label %109

99:                                               ; preds = %51, %168
  %100 = phi double [ undef, %168 ], [ %65, %51 ]
  %101 = phi i64 [ 0, %168 ], [ %66, %51 ]
  %102 = phi double [ 0.000000e+00, %168 ], [ %65, %51 ]
  br i1 %23, label %109, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %101
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds [160 x double], ptr %169, i64 %101
  %107 = load double, ptr %106, align 8, !tbaa !5
  %108 = tail call double @llvm.fmuladd.f64(double %105, double %107, double %102)
  br label %109

109:                                              ; preds = %103, %99, %84, %79, %73, %70
  %110 = phi double [ %72, %70 ], [ %74, %73 ], [ %81, %79 ], [ %98, %84 ], [ %100, %99 ], [ %108, %103 ]
  %111 = phi double [ %71, %70 ], [ 0.000000e+00, %73 ], [ 0.000000e+00, %79 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %99 ], [ 0.000000e+00, %103 ]
  %112 = phi double [ %133, %70 ], [ %75, %73 ], [ 0.000000e+00, %79 ], [ 0.000000e+00, %84 ], [ 0.000000e+00, %99 ], [ 0.000000e+00, %103 ]
  %113 = phi double [ %139, %70 ], [ %165, %73 ], [ %80, %79 ], [ %97, %84 ], [ 0.000000e+00, %99 ], [ 0.000000e+00, %103 ]
  %114 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %33
  store double %110, ptr %114, align 8, !tbaa !5
  br i1 %35, label %40, label %42

115:                                              ; preds = %32, %138
  %116 = phi i64 [ %140, %138 ], [ 0, %32 ]
  %117 = phi double [ %139, %138 ], [ 0.000000e+00, %32 ]
  %118 = phi double [ %133, %138 ], [ 0.000000e+00, %32 ]
  %119 = phi <2 x double> [ %127, %138 ], [ zeroinitializer, %32 ]
  %120 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %116
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds [160 x double], ptr %4, i64 %116
  %123 = getelementptr inbounds double, ptr %122, i64 %33
  %124 = load <2 x double>, ptr %123, align 8, !tbaa !5
  %125 = insertelement <2 x double> poison, double %121, i64 0
  %126 = shufflevector <2 x double> %125, <2 x double> poison, <2 x i32> zeroinitializer
  %127 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %126, <2 x double> %124, <2 x double> %119)
  br i1 %37, label %128, label %132

128:                                              ; preds = %115
  %129 = getelementptr inbounds double, ptr %122, i64 %36
  %130 = load double, ptr %129, align 8, !tbaa !5
  %131 = tail call double @llvm.fmuladd.f64(double %121, double %130, double %118)
  br label %132

132:                                              ; preds = %128, %115
  %133 = phi double [ %131, %128 ], [ %118, %115 ]
  br i1 %39, label %134, label %138

134:                                              ; preds = %132
  %135 = getelementptr inbounds double, ptr %122, i64 %38
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = tail call double @llvm.fmuladd.f64(double %121, double %136, double %117)
  br label %138

138:                                              ; preds = %134, %132
  %139 = phi double [ %137, %134 ], [ %117, %132 ]
  %140 = add nuw nsw i64 %116, 1
  %141 = icmp eq i64 %140, %18
  br i1 %141, label %70, label %115, !llvm.loop !11

142:                                              ; preds = %69
  br i1 %39, label %143, label %168

143:                                              ; preds = %142
  br i1 %25, label %79, label %170

144:                                              ; preds = %69, %164
  %145 = phi i64 [ %166, %164 ], [ 0, %69 ]
  %146 = phi double [ %165, %164 ], [ 0.000000e+00, %69 ]
  %147 = phi <2 x double> [ %159, %164 ], [ zeroinitializer, %69 ]
  %148 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %145
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds [160 x double], ptr %4, i64 %145
  %151 = getelementptr inbounds double, ptr %150, i64 %33
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = getelementptr inbounds double, ptr %150, i64 %36
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = insertelement <2 x double> poison, double %149, i64 0
  %156 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> zeroinitializer
  %157 = insertelement <2 x double> poison, double %154, i64 0
  %158 = insertelement <2 x double> %157, double %152, i64 1
  %159 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %156, <2 x double> %158, <2 x double> %147)
  br i1 %39, label %160, label %164

160:                                              ; preds = %144
  %161 = getelementptr inbounds double, ptr %150, i64 %38
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = tail call double @llvm.fmuladd.f64(double %149, double %162, double %146)
  br label %164

164:                                              ; preds = %160, %144
  %165 = phi double [ %163, %160 ], [ %146, %144 ]
  %166 = add nuw nsw i64 %145, 1
  %167 = icmp eq i64 %166, %17
  br i1 %167, label %73, label %144, !llvm.loop !11

168:                                              ; preds = %142
  %169 = getelementptr inbounds double, ptr %4, i64 %33
  br i1 %21, label %99, label %51

170:                                              ; preds = %143, %170
  %171 = phi i64 [ %199, %170 ], [ 0, %143 ]
  %172 = phi <2 x double> [ %198, %170 ], [ zeroinitializer, %143 ]
  %173 = phi i64 [ %200, %170 ], [ 0, %143 ]
  %174 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %171
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = getelementptr inbounds [160 x double], ptr %4, i64 %171
  %177 = getelementptr inbounds double, ptr %176, i64 %33
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = getelementptr inbounds double, ptr %176, i64 %38
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = insertelement <2 x double> poison, double %175, i64 0
  %182 = shufflevector <2 x double> %181, <2 x double> poison, <2 x i32> zeroinitializer
  %183 = insertelement <2 x double> poison, double %180, i64 0
  %184 = insertelement <2 x double> %183, double %178, i64 1
  %185 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> %184, <2 x double> %172)
  %186 = or disjoint i64 %171, 1
  %187 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %29, i64 %31, i64 %186
  %188 = load double, ptr %187, align 8, !tbaa !5
  %189 = getelementptr inbounds [160 x double], ptr %4, i64 %186
  %190 = getelementptr inbounds double, ptr %189, i64 %33
  %191 = load double, ptr %190, align 8, !tbaa !5
  %192 = getelementptr inbounds double, ptr %189, i64 %38
  %193 = load double, ptr %192, align 8, !tbaa !5
  %194 = insertelement <2 x double> poison, double %188, i64 0
  %195 = shufflevector <2 x double> %194, <2 x double> poison, <2 x i32> zeroinitializer
  %196 = insertelement <2 x double> poison, double %193, i64 0
  %197 = insertelement <2 x double> %196, double %191, i64 1
  %198 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %195, <2 x double> %197, <2 x double> %185)
  %199 = add nuw nsw i64 %171, 2
  %200 = add i64 %173, 2
  %201 = icmp eq i64 %200, %26
  br i1 %201, label %76, label %170, !llvm.loop !11

202:                                              ; preds = %48
  %203 = add nuw nsw i64 %31, 1
  %204 = icmp eq i64 %203, %15
  br i1 %204, label %205, label %30, !llvm.loop !12

205:                                              ; preds = %202
  %206 = add nuw nsw i64 %29, 1
  %207 = icmp eq i64 %206, %14
  br i1 %207, label %208, label %28, !llvm.loop !13

208:                                              ; preds = %205, %6
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

6:                                                ; preds = %37, %2
  %7 = phi i64 [ 0, %2 ], [ %38, %37 ]
  br label %8

8:                                                ; preds = %34, %6
  %9 = phi i64 [ 0, %6 ], [ %35, %34 ]
  %10 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %7, i64 %9
  %11 = mul nuw nsw i64 %9, %7
  %12 = insertelement <2 x i64> poison, i64 %11, i64 0
  %13 = shufflevector <2 x i64> %12, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %14, %8
  %15 = phi i64 [ 0, %8 ], [ %31, %14 ]
  %16 = phi <2 x i64> [ <i64 0, i64 1>, %8 ], [ %32, %14 ]
  %17 = add nuw nsw <2 x i64> %16, %13
  %18 = trunc <2 x i64> %17 to <2 x i32>
  %19 = urem <2 x i32> %18, <i32 160, i32 160>
  %20 = sitofp <2 x i32> %19 to <2 x double>
  %21 = fdiv <2 x double> %20, <double 1.600000e+02, double 1.600000e+02>
  %22 = getelementptr inbounds double, ptr %10, i64 %15
  store <2 x double> %21, ptr %22, align 8, !tbaa !5
  %23 = or disjoint i64 %15, 2
  %24 = add <2 x i64> %16, <i64 2, i64 2>
  %25 = add nuw nsw <2 x i64> %24, %13
  %26 = trunc <2 x i64> %25 to <2 x i32>
  %27 = urem <2 x i32> %26, <i32 160, i32 160>
  %28 = sitofp <2 x i32> %27 to <2 x double>
  %29 = fdiv <2 x double> %28, <double 1.600000e+02, double 1.600000e+02>
  %30 = getelementptr inbounds double, ptr %10, i64 %23
  store <2 x double> %29, ptr %30, align 8, !tbaa !5
  %31 = add nuw nsw i64 %15, 4
  %32 = add <2 x i64> %16, <i64 4, i64 4>
  %33 = icmp eq i64 %31, 160
  br i1 %33, label %34, label %14, !llvm.loop !14

34:                                               ; preds = %14
  %35 = add nuw nsw i64 %9, 1
  %36 = icmp eq i64 %35, 140
  br i1 %36, label %37, label %8, !llvm.loop !17

37:                                               ; preds = %34
  %38 = add nuw nsw i64 %7, 1
  %39 = icmp eq i64 %38, 150
  br i1 %39, label %40, label %6, !llvm.loop !18

40:                                               ; preds = %37, %57
  %41 = phi i64 [ %58, %57 ], [ 0, %37 ]
  %42 = getelementptr inbounds [160 x double], ptr %5, i64 %41
  %43 = insertelement <2 x i64> poison, i64 %41, i64 0
  %44 = shufflevector <2 x i64> %43, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %45

45:                                               ; preds = %45, %40
  %46 = phi i64 [ 0, %40 ], [ %54, %45 ]
  %47 = phi <2 x i64> [ <i64 0, i64 1>, %40 ], [ %55, %45 ]
  %48 = mul nuw nsw <2 x i64> %47, %44
  %49 = trunc <2 x i64> %48 to <2 x i32>
  %50 = urem <2 x i32> %49, <i32 160, i32 160>
  %51 = sitofp <2 x i32> %50 to <2 x double>
  %52 = fdiv <2 x double> %51, <double 1.600000e+02, double 1.600000e+02>
  %53 = getelementptr inbounds double, ptr %42, i64 %46
  store <2 x double> %52, ptr %53, align 8, !tbaa !5
  %54 = add nuw i64 %46, 2
  %55 = add <2 x i64> %47, <i64 2, i64 2>
  %56 = icmp eq i64 %54, 160
  br i1 %56, label %57, label %45, !llvm.loop !19

57:                                               ; preds = %45
  %58 = add nuw nsw i64 %41, 1
  %59 = icmp eq i64 %58, 160
  br i1 %59, label %60, label %40, !llvm.loop !20

60:                                               ; preds = %57
  tail call void @kernel_doitgen(i32 noundef 150, i32 noundef 140, i32 noundef 160, ptr noundef %3, ptr noundef nonnull %5, ptr poison)
  %61 = load ptr, ptr @stdout, align 8, !tbaa !21
  %62 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %61)
  %63 = load ptr, ptr @stdout, align 8, !tbaa !21
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %65

65:                                               ; preds = %92, %60
  %66 = phi i64 [ 0, %60 ], [ %93, %92 ]
  %67 = mul nuw nsw i64 %66, 22400
  br label %68

68:                                               ; preds = %89, %65
  %69 = phi i64 [ 0, %65 ], [ %90, %89 ]
  %70 = getelementptr inbounds [140 x [160 x double]], ptr %3, i64 %66, i64 %69
  %71 = mul nuw nsw i64 %69, 160
  %72 = add nuw nsw i64 %71, %67
  br label %73

73:                                               ; preds = %82, %68
  %74 = phi i64 [ 0, %68 ], [ %87, %82 ]
  %75 = add nuw nsw i64 %72, %74
  %76 = trunc i64 %75 to i32
  %77 = urem i32 %76, 20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load ptr, ptr @stdout, align 8, !tbaa !21
  %81 = tail call i32 @fputc(i32 10, ptr %80)
  br label %82

82:                                               ; preds = %79, %73
  %83 = load ptr, ptr @stdout, align 8, !tbaa !21
  %84 = getelementptr inbounds double, ptr %70, i64 %74
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.4, double noundef %85)
  %87 = add nuw nsw i64 %74, 1
  %88 = icmp eq i64 %87, 160
  br i1 %88, label %89, label %73, !llvm.loop !23

89:                                               ; preds = %82
  %90 = add nuw nsw i64 %69, 1
  %91 = icmp eq i64 %90, 140
  br i1 %91, label %92, label %68, !llvm.loop !24

92:                                               ; preds = %89
  %93 = add nuw nsw i64 %66, 1
  %94 = icmp eq i64 %93, 150
  br i1 %94, label %95, label %65, !llvm.loop !25

95:                                               ; preds = %92
  %96 = load ptr, ptr @stdout, align 8, !tbaa !21
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %98 = load ptr, ptr @stdout, align 8, !tbaa !21
  %99 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %98)
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
