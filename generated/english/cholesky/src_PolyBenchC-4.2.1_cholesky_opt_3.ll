; ModuleID = 'outputs/src_PolyBenchC-4.2.1_cholesky_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_cholesky_opt_3.c"
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
  %3 = alloca [2000 x [2000 x double]], align 16
  %4 = alloca [2000 x double], align 16
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #11
  call void @llvm.lifetime.start.p0(i64 32000000, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %3, i8 0, i64 32000000, i1 false)
  br label %6

6:                                                ; preds = %37, %2
  %7 = phi i64 [ 0, %2 ], [ %39, %37 ]
  %8 = phi i64 [ 1, %2 ], [ %40, %37 ]
  %9 = icmp ult i64 %8, 2
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = and i64 %8, 9223372036854775806
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %20, %12 ]
  %14 = phi <2 x i32> [ <i32 0, i32 1>, %10 ], [ %21, %12 ]
  %15 = sub <2 x i32> zeroinitializer, %14
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fdiv <2 x double> %16, <double 2.000000e+03, double 2.000000e+03>
  %18 = fadd <2 x double> %17, <double 1.000000e+00, double 1.000000e+00>
  %19 = getelementptr inbounds [2000 x double], ptr %5, i64 %7, i64 %13
  store <2 x double> %18, ptr %19, align 8, !tbaa !5
  %20 = add nuw i64 %13, 2
  %21 = add <2 x i32> %14, <i32 2, i32 2>
  %22 = icmp eq i64 %20, %11
  br i1 %22, label %23, label %12, !llvm.loop !9

23:                                               ; preds = %12
  %24 = icmp eq i64 %8, %11
  br i1 %24, label %37, label %25

25:                                               ; preds = %6, %23
  %26 = phi i64 [ 0, %6 ], [ %11, %23 ]
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ %35, %27 ], [ %26, %25 ]
  %29 = trunc i64 %28 to i32
  %30 = sub i32 0, %29
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 2.000000e+03
  %33 = fadd double %32, 1.000000e+00
  %34 = getelementptr inbounds [2000 x double], ptr %5, i64 %7, i64 %28
  store double %33, ptr %34, align 8, !tbaa !5
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp eq i64 %35, %8
  br i1 %36, label %37, label %27, !llvm.loop !13

37:                                               ; preds = %27, %23
  %38 = getelementptr inbounds [2000 x double], ptr %5, i64 %7, i64 %7
  store double 1.000000e+00, ptr %38, align 8, !tbaa !5
  %39 = add nuw nsw i64 %7, 1
  %40 = add nuw nsw i64 %8, 1
  %41 = icmp eq i64 %39, 2000
  br i1 %41, label %42, label %6, !llvm.loop !14

42:                                               ; preds = %37, %45
  %43 = phi i64 [ %46, %45 ], [ 0, %37 ]
  call void @llvm.lifetime.start.p0(i64 16000, ptr nonnull %4) #11
  %44 = getelementptr inbounds [2000 x double], ptr %5, i64 %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16000) %4, ptr noundef nonnull align 8 dereferenceable(16000) %44, i64 16000, i1 false)
  br label %48

45:                                               ; preds = %79
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull %4) #11
  %46 = add nuw nsw i64 %43, 1
  %47 = icmp eq i64 %46, 2000
  br i1 %47, label %82, label %42, !llvm.loop !15

48:                                               ; preds = %42, %79
  %49 = phi i64 [ 0, %42 ], [ %80, %79 ]
  %50 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = insertelement <2 x double> poison, double %51, i64 0
  %53 = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> zeroinitializer
  br label %54

54:                                               ; preds = %54, %48
  %55 = phi i64 [ 0, %48 ], [ %77, %54 ]
  %56 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 %55
  %57 = getelementptr inbounds double, ptr %56, i64 2
  %58 = load <2 x double>, ptr %56, align 16, !tbaa !5
  %59 = load <2 x double>, ptr %57, align 16, !tbaa !5
  %60 = getelementptr inbounds [2000 x [2000 x double]], ptr %3, i64 0, i64 %49, i64 %55
  %61 = getelementptr inbounds double, ptr %60, i64 2
  %62 = load <2 x double>, ptr %60, align 16, !tbaa !5
  %63 = load <2 x double>, ptr %61, align 16, !tbaa !5
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %58, <2 x double> %62)
  %65 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %59, <2 x double> %63)
  store <2 x double> %64, ptr %60, align 16, !tbaa !5
  store <2 x double> %65, ptr %61, align 16, !tbaa !5
  %66 = or disjoint i64 %55, 4
  %67 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 %66
  %68 = getelementptr inbounds double, ptr %67, i64 2
  %69 = load <2 x double>, ptr %67, align 16, !tbaa !5
  %70 = load <2 x double>, ptr %68, align 16, !tbaa !5
  %71 = getelementptr inbounds [2000 x [2000 x double]], ptr %3, i64 0, i64 %49, i64 %66
  %72 = getelementptr inbounds double, ptr %71, i64 2
  %73 = load <2 x double>, ptr %71, align 16, !tbaa !5
  %74 = load <2 x double>, ptr %72, align 16, !tbaa !5
  %75 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %69, <2 x double> %73)
  %76 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %70, <2 x double> %74)
  store <2 x double> %75, ptr %71, align 16, !tbaa !5
  store <2 x double> %76, ptr %72, align 16, !tbaa !5
  %77 = add nuw nsw i64 %55, 8
  %78 = icmp eq i64 %77, 2000
  br i1 %78, label %79, label %54, !llvm.loop !16

79:                                               ; preds = %54
  %80 = add nuw nsw i64 %49, 1
  %81 = icmp eq i64 %80, 2000
  br i1 %81, label %45, label %48, !llvm.loop !17

82:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %5, ptr noundef nonnull align 16 dereferenceable(32000000) %3, i64 32000000, i1 false)
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %3) #11
  br label %83

83:                                               ; preds = %186, %82
  %84 = phi i64 [ 0, %82 ], [ %190, %186 ]
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load double, ptr %5, align 8, !tbaa !5
  br label %186

88:                                               ; preds = %83, %130
  %89 = phi i64 [ %135, %130 ], [ 0, %83 ]
  %90 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = icmp eq i64 %89, 0
  br i1 %92, label %130, label %93

93:                                               ; preds = %88
  %94 = and i64 %89, 1
  %95 = icmp eq i64 %89, 1
  br i1 %95, label %118, label %96

96:                                               ; preds = %93
  %97 = and i64 %89, 9223372036854775806
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi i64 [ 0, %96 ], [ %115, %98 ]
  %100 = phi double [ %91, %96 ], [ %114, %98 ]
  %101 = phi i64 [ 0, %96 ], [ %116, %98 ]
  %102 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %99
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = getelementptr inbounds [2000 x double], ptr %5, i64 %89, i64 %99
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = fneg double %103
  %107 = tail call double @llvm.fmuladd.f64(double %106, double %105, double %100)
  %108 = or disjoint i64 %99, 1
  %109 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %108
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = getelementptr inbounds [2000 x double], ptr %5, i64 %89, i64 %108
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = fneg double %110
  %114 = tail call double @llvm.fmuladd.f64(double %113, double %112, double %107)
  %115 = add nuw nsw i64 %99, 2
  %116 = add i64 %101, 2
  %117 = icmp eq i64 %116, %97
  br i1 %117, label %118, label %98, !llvm.loop !18

118:                                              ; preds = %98, %93
  %119 = phi double [ undef, %93 ], [ %114, %98 ]
  %120 = phi i64 [ 0, %93 ], [ %115, %98 ]
  %121 = phi double [ %91, %93 ], [ %114, %98 ]
  %122 = icmp eq i64 %94, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %120
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds [2000 x double], ptr %5, i64 %89, i64 %120
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = fneg double %125
  %129 = tail call double @llvm.fmuladd.f64(double %128, double %127, double %121)
  br label %130

130:                                              ; preds = %123, %118, %88
  %131 = phi double [ %91, %88 ], [ %119, %118 ], [ %129, %123 ]
  %132 = getelementptr inbounds [2000 x double], ptr %5, i64 %89, i64 %89
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = fdiv double %131, %133
  store double %134, ptr %90, align 8, !tbaa !5
  %135 = add nuw nsw i64 %89, 1
  %136 = icmp eq i64 %135, %84
  br i1 %136, label %137, label %88, !llvm.loop !19

137:                                              ; preds = %130
  %138 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %84
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = and i64 %84, 3
  %141 = icmp ult i64 %84, 4
  br i1 %141, label %170, label %142

142:                                              ; preds = %137
  %143 = and i64 %84, 9223372036854775804
  br label %144

144:                                              ; preds = %144, %142
  %145 = phi i64 [ 0, %142 ], [ %167, %144 ]
  %146 = phi double [ %139, %142 ], [ %166, %144 ]
  %147 = phi i64 [ 0, %142 ], [ %168, %144 ]
  %148 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %145
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = fneg double %149
  %151 = tail call double @llvm.fmuladd.f64(double %150, double %149, double %146)
  %152 = or disjoint i64 %145, 1
  %153 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %152
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = fneg double %154
  %156 = tail call double @llvm.fmuladd.f64(double %155, double %154, double %151)
  %157 = or disjoint i64 %145, 2
  %158 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = fneg double %159
  %161 = tail call double @llvm.fmuladd.f64(double %160, double %159, double %156)
  %162 = or disjoint i64 %145, 3
  %163 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = fneg double %164
  %166 = tail call double @llvm.fmuladd.f64(double %165, double %164, double %161)
  %167 = add nuw nsw i64 %145, 4
  %168 = add i64 %147, 4
  %169 = icmp eq i64 %168, %143
  br i1 %169, label %170, label %144, !llvm.loop !20

170:                                              ; preds = %144, %137
  %171 = phi double [ undef, %137 ], [ %166, %144 ]
  %172 = phi i64 [ 0, %137 ], [ %167, %144 ]
  %173 = phi double [ %139, %137 ], [ %166, %144 ]
  %174 = icmp eq i64 %140, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %170, %175
  %176 = phi i64 [ %183, %175 ], [ %172, %170 ]
  %177 = phi double [ %182, %175 ], [ %173, %170 ]
  %178 = phi i64 [ %184, %175 ], [ 0, %170 ]
  %179 = getelementptr inbounds [2000 x double], ptr %5, i64 %84, i64 %176
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = fneg double %180
  %182 = tail call double @llvm.fmuladd.f64(double %181, double %180, double %177)
  %183 = add nuw nsw i64 %176, 1
  %184 = add i64 %178, 1
  %185 = icmp eq i64 %184, %140
  br i1 %185, label %186, label %175, !llvm.loop !21

186:                                              ; preds = %170, %175, %86
  %187 = phi ptr [ %5, %86 ], [ %138, %175 ], [ %138, %170 ]
  %188 = phi double [ %87, %86 ], [ %171, %170 ], [ %182, %175 ]
  %189 = tail call double @sqrt(double noundef %188) #11
  store double %189, ptr %187, align 8, !tbaa !5
  %190 = add nuw nsw i64 %84, 1
  %191 = icmp eq i64 %190, 2000
  br i1 %191, label %192, label %83, !llvm.loop !23

192:                                              ; preds = %186
  %193 = load ptr, ptr @stdout, align 8, !tbaa !24
  %194 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %193)
  %195 = load ptr, ptr @stdout, align 8, !tbaa !24
  %196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %197

197:                                              ; preds = %217, %192
  %198 = phi i64 [ 0, %192 ], [ %218, %217 ]
  %199 = phi i64 [ 1, %192 ], [ %219, %217 ]
  %200 = mul nuw nsw i64 %198, 2000
  br label %201

201:                                              ; preds = %210, %197
  %202 = phi i64 [ 0, %197 ], [ %215, %210 ]
  %203 = add nuw nsw i64 %202, %200
  %204 = trunc i64 %203 to i32
  %205 = urem i32 %204, 20
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load ptr, ptr @stdout, align 8, !tbaa !24
  %209 = tail call i32 @fputc(i32 10, ptr %208)
  br label %210

210:                                              ; preds = %207, %201
  %211 = load ptr, ptr @stdout, align 8, !tbaa !24
  %212 = getelementptr inbounds [2000 x double], ptr %5, i64 %198, i64 %202
  %213 = load double, ptr %212, align 8, !tbaa !5
  %214 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef nonnull @.str.4, double noundef %213)
  %215 = add nuw nsw i64 %202, 1
  %216 = icmp eq i64 %215, %199
  br i1 %216, label %217, label %201, !llvm.loop !26

217:                                              ; preds = %210
  %218 = add nuw nsw i64 %198, 1
  %219 = add nuw nsw i64 %199, 1
  %220 = icmp eq i64 %218, 2000
  br i1 %220, label %221, label %197, !llvm.loop !27

221:                                              ; preds = %217
  %222 = load ptr, ptr @stdout, align 8, !tbaa !24
  %223 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %224 = load ptr, ptr @stdout, align 8, !tbaa !24
  %225 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %224)
  tail call void @free(ptr noundef nonnull %5) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !10}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
