; ModuleID = 'outputs/src_PolyBenchC-4.2.1_lu_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_lu_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [2000 x [2000 x double]], align 16
  %4 = alloca [2000 x [2000 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 32000000, ptr nonnull %4) #8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  br label %6

6:                                                ; preds = %47, %2
  %7 = phi i64 [ 1, %2 ], [ %49, %47 ]
  %8 = phi i64 [ 0, %2 ], [ %42, %47 ]
  %9 = mul nuw nsw i64 %8, 16008
  %10 = shl i64 %8, 3
  %11 = sub nsw i64 15984, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp ult i64 %7, 2
  br i1 %13, label %29, label %14

14:                                               ; preds = %6
  %15 = and i64 %7, 9223372036854775806
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %24, %16 ]
  %18 = phi <2 x i32> [ <i32 0, i32 1>, %14 ], [ %25, %16 ]
  %19 = sub <2 x i32> zeroinitializer, %18
  %20 = sitofp <2 x i32> %19 to <2 x double>
  %21 = fdiv <2 x double> %20, <double 2.000000e+03, double 2.000000e+03>
  %22 = fadd <2 x double> %21, <double 1.000000e+00, double 1.000000e+00>
  %23 = getelementptr inbounds [2000 x double], ptr %4, i64 %8, i64 %17
  store <2 x double> %22, ptr %23, align 16, !tbaa !5
  %24 = add nuw i64 %17, 2
  %25 = add <2 x i32> %18, <i32 2, i32 2>
  %26 = icmp eq i64 %24, %15
  br i1 %26, label %27, label %16, !llvm.loop !9

27:                                               ; preds = %16
  %28 = icmp eq i64 %7, %15
  br i1 %28, label %41, label %29

29:                                               ; preds = %6, %27
  %30 = phi i64 [ 0, %6 ], [ %15, %27 ]
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ %39, %31 ], [ %30, %29 ]
  %33 = trunc i64 %32 to i32
  %34 = sub i32 0, %33
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 2.000000e+03
  %37 = fadd double %36, 1.000000e+00
  %38 = getelementptr inbounds [2000 x double], ptr %4, i64 %8, i64 %32
  store double %37, ptr %38, align 8, !tbaa !5
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, %7
  br i1 %40, label %41, label %31, !llvm.loop !13

41:                                               ; preds = %31, %27
  %42 = add nuw nsw i64 %8, 1
  %43 = icmp ult i64 %8, 1999
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = add nuw nsw i64 %12, 8
  %46 = getelementptr i8, ptr %5, i64 %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %46, i8 0, i64 %45, i1 false), !tbaa !5
  br label %47

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds [2000 x double], ptr %4, i64 %8, i64 %8
  store double 1.000000e+00, ptr %48, align 8, !tbaa !5
  %49 = add nuw nsw i64 %7, 1
  %50 = icmp eq i64 %42, 2000
  br i1 %50, label %51, label %6, !llvm.loop !14

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 32000000, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %3, i8 0, i64 32000000, i1 false)
  br label %52

52:                                               ; preds = %88, %51
  %53 = phi i64 [ 0, %51 ], [ %89, %88 ]
  br label %54

54:                                               ; preds = %52, %85
  %55 = phi i64 [ 0, %52 ], [ %86, %85 ]
  %56 = getelementptr inbounds [2000 x double], ptr %4, i64 %55, i64 %53
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = insertelement <2 x double> poison, double %57, i64 0
  %59 = shufflevector <2 x double> %58, <2 x double> poison, <2 x i32> zeroinitializer
  br label %60

60:                                               ; preds = %60, %54
  %61 = phi i64 [ 0, %54 ], [ %83, %60 ]
  %62 = or disjoint i64 %61, 1
  %63 = or disjoint i64 %61, 2
  %64 = or disjoint i64 %61, 3
  %65 = getelementptr inbounds [2000 x double], ptr %4, i64 %61, i64 %53
  %66 = getelementptr inbounds [2000 x double], ptr %4, i64 %62, i64 %53
  %67 = getelementptr inbounds [2000 x double], ptr %4, i64 %63, i64 %53
  %68 = getelementptr inbounds [2000 x double], ptr %4, i64 %64, i64 %53
  %69 = load double, ptr %65, align 8, !tbaa !5
  %70 = load double, ptr %66, align 8, !tbaa !5
  %71 = insertelement <2 x double> poison, double %69, i64 0
  %72 = insertelement <2 x double> %71, double %70, i64 1
  %73 = load double, ptr %67, align 8, !tbaa !5
  %74 = load double, ptr %68, align 8, !tbaa !5
  %75 = insertelement <2 x double> poison, double %73, i64 0
  %76 = insertelement <2 x double> %75, double %74, i64 1
  %77 = getelementptr inbounds [2000 x [2000 x double]], ptr %3, i64 0, i64 %55, i64 %61
  %78 = getelementptr inbounds double, ptr %77, i64 2
  %79 = load <2 x double>, ptr %77, align 16, !tbaa !5
  %80 = load <2 x double>, ptr %78, align 16, !tbaa !5
  %81 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %59, <2 x double> %72, <2 x double> %79)
  %82 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %59, <2 x double> %76, <2 x double> %80)
  store <2 x double> %81, ptr %77, align 16, !tbaa !5
  store <2 x double> %82, ptr %78, align 16, !tbaa !5
  %83 = add nuw i64 %61, 4
  %84 = icmp eq i64 %83, 2000
  br i1 %84, label %85, label %60, !llvm.loop !15

85:                                               ; preds = %60
  %86 = add nuw nsw i64 %55, 1
  %87 = icmp eq i64 %86, 2000
  br i1 %87, label %88, label %54, !llvm.loop !16

88:                                               ; preds = %85
  %89 = add nuw nsw i64 %53, 1
  %90 = icmp eq i64 %89, 2000
  br i1 %90, label %91, label %52, !llvm.loop !17

91:                                               ; preds = %88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %4, ptr noundef nonnull align 16 dereferenceable(32000000) %3, i64 32000000, i1 false)
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %3) #8
  br label %92

92:                                               ; preds = %188, %91
  %93 = phi i64 [ 0, %91 ], [ %189, %188 ]
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %188, label %134

95:                                               ; preds = %183, %130
  %96 = phi i64 [ %132, %130 ], [ %93, %183 ]
  %97 = getelementptr inbounds [2000 x double], ptr %4, i64 %93, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !5
  br i1 %185, label %119, label %99

99:                                               ; preds = %95, %99
  %100 = phi i64 [ %116, %99 ], [ 0, %95 ]
  %101 = phi double [ %115, %99 ], [ %98, %95 ]
  %102 = phi i64 [ %117, %99 ], [ 0, %95 ]
  %103 = getelementptr inbounds [2000 x double], ptr %4, i64 %93, i64 %100
  %104 = load double, ptr %103, align 16, !tbaa !5
  %105 = getelementptr inbounds [2000 x double], ptr %4, i64 %100, i64 %96
  %106 = load double, ptr %105, align 8, !tbaa !5
  %107 = fneg double %104
  %108 = tail call double @llvm.fmuladd.f64(double %107, double %106, double %101)
  %109 = or disjoint i64 %100, 1
  %110 = getelementptr inbounds [2000 x double], ptr %4, i64 %93, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = getelementptr inbounds [2000 x double], ptr %4, i64 %109, i64 %96
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = fneg double %111
  %115 = tail call double @llvm.fmuladd.f64(double %114, double %113, double %108)
  %116 = add nuw nsw i64 %100, 2
  %117 = add i64 %102, 2
  %118 = icmp eq i64 %117, %186
  br i1 %118, label %119, label %99, !llvm.loop !18

119:                                              ; preds = %99, %95
  %120 = phi double [ undef, %95 ], [ %115, %99 ]
  %121 = phi i64 [ 0, %95 ], [ %116, %99 ]
  %122 = phi double [ %98, %95 ], [ %115, %99 ]
  br i1 %187, label %130, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds [2000 x double], ptr %4, i64 %93, i64 %121
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds [2000 x double], ptr %4, i64 %121, i64 %96
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = fneg double %125
  %129 = tail call double @llvm.fmuladd.f64(double %128, double %127, double %122)
  br label %130

130:                                              ; preds = %119, %123
  %131 = phi double [ %120, %119 ], [ %129, %123 ]
  store double %131, ptr %97, align 8, !tbaa !5
  %132 = add nuw nsw i64 %96, 1
  %133 = icmp eq i64 %132, 2000
  br i1 %133, label %188, label %95, !llvm.loop !19

134:                                              ; preds = %92, %176
  %135 = phi i64 [ %181, %176 ], [ 0, %92 ]
  %136 = getelementptr inbounds [2000 x double], ptr %4, i64 %93, i64 %135
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = icmp eq i64 %135, 0
  br i1 %138, label %176, label %139

139:                                              ; preds = %134
  %140 = and i64 %135, 1
  %141 = icmp eq i64 %135, 1
  br i1 %141, label %164, label %142

142:                                              ; preds = %139
  %143 = and i64 %135, 9223372036854775806
  br label %144

144:                                              ; preds = %144, %142
  %145 = phi i64 [ 0, %142 ], [ %161, %144 ]
  %146 = phi double [ %137, %142 ], [ %160, %144 ]
  %147 = phi i64 [ 0, %142 ], [ %162, %144 ]
  %148 = getelementptr inbounds [2000 x double], ptr %4, i64 %93, i64 %145
  %149 = load double, ptr %148, align 16, !tbaa !5
  %150 = getelementptr inbounds [2000 x double], ptr %4, i64 %145, i64 %135
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = fneg double %149
  %153 = tail call double @llvm.fmuladd.f64(double %152, double %151, double %146)
  %154 = or disjoint i64 %145, 1
  %155 = getelementptr inbounds [2000 x double], ptr %4, i64 %93, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = getelementptr inbounds [2000 x double], ptr %4, i64 %154, i64 %135
  %158 = load double, ptr %157, align 8, !tbaa !5
  %159 = fneg double %156
  %160 = tail call double @llvm.fmuladd.f64(double %159, double %158, double %153)
  %161 = add nuw nsw i64 %145, 2
  %162 = add i64 %147, 2
  %163 = icmp eq i64 %162, %143
  br i1 %163, label %164, label %144, !llvm.loop !20

164:                                              ; preds = %144, %139
  %165 = phi double [ undef, %139 ], [ %160, %144 ]
  %166 = phi i64 [ 0, %139 ], [ %161, %144 ]
  %167 = phi double [ %137, %139 ], [ %160, %144 ]
  %168 = icmp eq i64 %140, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds [2000 x double], ptr %4, i64 %93, i64 %166
  %171 = load double, ptr %170, align 8, !tbaa !5
  %172 = getelementptr inbounds [2000 x double], ptr %4, i64 %166, i64 %135
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = fneg double %171
  %175 = tail call double @llvm.fmuladd.f64(double %174, double %173, double %167)
  br label %176

176:                                              ; preds = %169, %164, %134
  %177 = phi double [ %137, %134 ], [ %165, %164 ], [ %175, %169 ]
  %178 = getelementptr inbounds [2000 x double], ptr %4, i64 %135, i64 %135
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = fdiv double %177, %179
  store double %180, ptr %136, align 8, !tbaa !5
  %181 = add nuw nsw i64 %135, 1
  %182 = icmp eq i64 %181, %93
  br i1 %182, label %183, label %134, !llvm.loop !21

183:                                              ; preds = %176
  %184 = and i64 %93, 1
  %185 = icmp eq i64 %93, 1
  %186 = and i64 %93, 9223372036854775806
  %187 = icmp eq i64 %184, 0
  br label %95

188:                                              ; preds = %130, %92
  %189 = add nuw nsw i64 %93, 1
  %190 = icmp eq i64 %189, 2000
  br i1 %190, label %191, label %92, !llvm.loop !22

191:                                              ; preds = %188
  %192 = load ptr, ptr @stdout, align 8, !tbaa !23
  %193 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %192)
  %194 = load ptr, ptr @stdout, align 8, !tbaa !23
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %196

196:                                              ; preds = %215, %191
  %197 = phi i64 [ 0, %191 ], [ %216, %215 ]
  %198 = mul nuw nsw i64 %197, 2000
  br label %199

199:                                              ; preds = %208, %196
  %200 = phi i64 [ 0, %196 ], [ %213, %208 ]
  %201 = add nuw nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  %203 = urem i32 %202, 20
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load ptr, ptr @stdout, align 8, !tbaa !23
  %207 = tail call i32 @fputc(i32 10, ptr %206)
  br label %208

208:                                              ; preds = %205, %199
  %209 = load ptr, ptr @stdout, align 8, !tbaa !23
  %210 = getelementptr inbounds [2000 x double], ptr %4, i64 %197, i64 %200
  %211 = load double, ptr %210, align 8, !tbaa !5
  %212 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef nonnull @.str.4, double noundef %211)
  %213 = add nuw nsw i64 %200, 1
  %214 = icmp eq i64 %213, 2000
  br i1 %214, label %215, label %199, !llvm.loop !25

215:                                              ; preds = %208
  %216 = add nuw nsw i64 %197, 1
  %217 = icmp eq i64 %216, 2000
  br i1 %217, label %218, label %196, !llvm.loop !26

218:                                              ; preds = %215
  %219 = load ptr, ptr @stdout, align 8, !tbaa !23
  %220 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %221 = load ptr, ptr @stdout, align 8, !tbaa !23
  %222 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %221)
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
