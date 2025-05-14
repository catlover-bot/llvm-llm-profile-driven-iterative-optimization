; ModuleID = 'outputs/src_PolyBenchC-4.2.1_lu_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_lu_opt_2.c"
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

52:                                               ; preds = %77, %51
  %53 = phi i64 [ 0, %51 ], [ %78, %77 ]
  br label %54

54:                                               ; preds = %52, %74
  %55 = phi i64 [ 0, %52 ], [ %75, %74 ]
  %56 = getelementptr inbounds [2000 x double], ptr %4, i64 %53, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = insertelement <2 x double> poison, double %57, i64 0
  %59 = shufflevector <2 x double> %58, <2 x double> poison, <2 x i32> zeroinitializer
  br label %60

60:                                               ; preds = %60, %54
  %61 = phi i64 [ 0, %54 ], [ %72, %60 ]
  %62 = getelementptr inbounds [2000 x double], ptr %4, i64 %53, i64 %61
  %63 = getelementptr inbounds double, ptr %62, i64 2
  %64 = load <2 x double>, ptr %62, align 16, !tbaa !5
  %65 = load <2 x double>, ptr %63, align 16, !tbaa !5
  %66 = getelementptr inbounds [2000 x [2000 x double]], ptr %3, i64 0, i64 %55, i64 %61
  %67 = getelementptr inbounds double, ptr %66, i64 2
  %68 = load <2 x double>, ptr %66, align 16, !tbaa !5
  %69 = load <2 x double>, ptr %67, align 16, !tbaa !5
  %70 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %59, <2 x double> %64, <2 x double> %68)
  %71 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %59, <2 x double> %65, <2 x double> %69)
  store <2 x double> %70, ptr %66, align 16, !tbaa !5
  store <2 x double> %71, ptr %67, align 16, !tbaa !5
  %72 = add nuw i64 %61, 4
  %73 = icmp eq i64 %72, 2000
  br i1 %73, label %74, label %60, !llvm.loop !15

74:                                               ; preds = %60
  %75 = add nuw nsw i64 %55, 1
  %76 = icmp eq i64 %75, 2000
  br i1 %76, label %77, label %54, !llvm.loop !16

77:                                               ; preds = %74
  %78 = add nuw nsw i64 %53, 1
  %79 = icmp eq i64 %78, 2000
  br i1 %79, label %80, label %52, !llvm.loop !17

80:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %4, ptr noundef nonnull align 16 dereferenceable(32000000) %3, i64 32000000, i1 false)
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %3) #8
  br label %81

81:                                               ; preds = %177, %80
  %82 = phi i64 [ 0, %80 ], [ %178, %177 ]
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %177, label %123

84:                                               ; preds = %172, %119
  %85 = phi i64 [ %121, %119 ], [ %82, %172 ]
  %86 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !5
  br i1 %174, label %108, label %88

88:                                               ; preds = %84, %88
  %89 = phi i64 [ %105, %88 ], [ 0, %84 ]
  %90 = phi double [ %104, %88 ], [ %87, %84 ]
  %91 = phi i64 [ %106, %88 ], [ 0, %84 ]
  %92 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %89
  %93 = load double, ptr %92, align 16, !tbaa !5
  %94 = getelementptr inbounds [2000 x double], ptr %4, i64 %89, i64 %85
  %95 = load double, ptr %94, align 8, !tbaa !5
  %96 = fneg double %93
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %95, double %90)
  %98 = or disjoint i64 %89, 1
  %99 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %98
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = getelementptr inbounds [2000 x double], ptr %4, i64 %98, i64 %85
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = fneg double %100
  %104 = tail call double @llvm.fmuladd.f64(double %103, double %102, double %97)
  %105 = add nuw nsw i64 %89, 2
  %106 = add i64 %91, 2
  %107 = icmp eq i64 %106, %175
  br i1 %107, label %108, label %88, !llvm.loop !18

108:                                              ; preds = %88, %84
  %109 = phi double [ undef, %84 ], [ %104, %88 ]
  %110 = phi i64 [ 0, %84 ], [ %105, %88 ]
  %111 = phi double [ %87, %84 ], [ %104, %88 ]
  br i1 %176, label %119, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %110
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds [2000 x double], ptr %4, i64 %110, i64 %85
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = fneg double %114
  %118 = tail call double @llvm.fmuladd.f64(double %117, double %116, double %111)
  br label %119

119:                                              ; preds = %108, %112
  %120 = phi double [ %109, %108 ], [ %118, %112 ]
  store double %120, ptr %86, align 8, !tbaa !5
  %121 = add nuw nsw i64 %85, 1
  %122 = icmp eq i64 %121, 2000
  br i1 %122, label %177, label %84, !llvm.loop !19

123:                                              ; preds = %81, %165
  %124 = phi i64 [ %170, %165 ], [ 0, %81 ]
  %125 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %124
  %126 = load double, ptr %125, align 8, !tbaa !5
  %127 = icmp eq i64 %124, 0
  br i1 %127, label %165, label %128

128:                                              ; preds = %123
  %129 = and i64 %124, 1
  %130 = icmp eq i64 %124, 1
  br i1 %130, label %153, label %131

131:                                              ; preds = %128
  %132 = and i64 %124, 9223372036854775806
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi i64 [ 0, %131 ], [ %150, %133 ]
  %135 = phi double [ %126, %131 ], [ %149, %133 ]
  %136 = phi i64 [ 0, %131 ], [ %151, %133 ]
  %137 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %134
  %138 = load double, ptr %137, align 16, !tbaa !5
  %139 = getelementptr inbounds [2000 x double], ptr %4, i64 %134, i64 %124
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = fneg double %138
  %142 = tail call double @llvm.fmuladd.f64(double %141, double %140, double %135)
  %143 = or disjoint i64 %134, 1
  %144 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds [2000 x double], ptr %4, i64 %143, i64 %124
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = fneg double %145
  %149 = tail call double @llvm.fmuladd.f64(double %148, double %147, double %142)
  %150 = add nuw nsw i64 %134, 2
  %151 = add i64 %136, 2
  %152 = icmp eq i64 %151, %132
  br i1 %152, label %153, label %133, !llvm.loop !20

153:                                              ; preds = %133, %128
  %154 = phi double [ undef, %128 ], [ %149, %133 ]
  %155 = phi i64 [ 0, %128 ], [ %150, %133 ]
  %156 = phi double [ %126, %128 ], [ %149, %133 ]
  %157 = icmp eq i64 %129, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds [2000 x double], ptr %4, i64 %82, i64 %155
  %160 = load double, ptr %159, align 8, !tbaa !5
  %161 = getelementptr inbounds [2000 x double], ptr %4, i64 %155, i64 %124
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = fneg double %160
  %164 = tail call double @llvm.fmuladd.f64(double %163, double %162, double %156)
  br label %165

165:                                              ; preds = %158, %153, %123
  %166 = phi double [ %126, %123 ], [ %154, %153 ], [ %164, %158 ]
  %167 = getelementptr inbounds [2000 x double], ptr %4, i64 %124, i64 %124
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = fdiv double %166, %168
  store double %169, ptr %125, align 8, !tbaa !5
  %170 = add nuw nsw i64 %124, 1
  %171 = icmp eq i64 %170, %82
  br i1 %171, label %172, label %123, !llvm.loop !21

172:                                              ; preds = %165
  %173 = and i64 %82, 1
  %174 = icmp eq i64 %82, 1
  %175 = and i64 %82, 9223372036854775806
  %176 = icmp eq i64 %173, 0
  br label %84

177:                                              ; preds = %119, %81
  %178 = add nuw nsw i64 %82, 1
  %179 = icmp eq i64 %178, 2000
  br i1 %179, label %180, label %81, !llvm.loop !22

180:                                              ; preds = %177
  %181 = load ptr, ptr @stdout, align 8, !tbaa !23
  %182 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %181)
  %183 = load ptr, ptr @stdout, align 8, !tbaa !23
  %184 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %185

185:                                              ; preds = %204, %180
  %186 = phi i64 [ 0, %180 ], [ %205, %204 ]
  %187 = mul nuw nsw i64 %186, 2000
  br label %188

188:                                              ; preds = %197, %185
  %189 = phi i64 [ 0, %185 ], [ %202, %197 ]
  %190 = add nuw nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  %192 = urem i32 %191, 20
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load ptr, ptr @stdout, align 8, !tbaa !23
  %196 = tail call i32 @fputc(i32 10, ptr %195)
  br label %197

197:                                              ; preds = %194, %188
  %198 = load ptr, ptr @stdout, align 8, !tbaa !23
  %199 = getelementptr inbounds [2000 x double], ptr %4, i64 %186, i64 %189
  %200 = load double, ptr %199, align 8, !tbaa !5
  %201 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef nonnull @.str.4, double noundef %200)
  %202 = add nuw nsw i64 %189, 1
  %203 = icmp eq i64 %202, 2000
  br i1 %203, label %204, label %188, !llvm.loop !25

204:                                              ; preds = %197
  %205 = add nuw nsw i64 %186, 1
  %206 = icmp eq i64 %205, 2000
  br i1 %206, label %207, label %185, !llvm.loop !26

207:                                              ; preds = %204
  %208 = load ptr, ptr @stdout, align 8, !tbaa !23
  %209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %210 = load ptr, ptr @stdout, align 8, !tbaa !23
  %211 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %210)
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
