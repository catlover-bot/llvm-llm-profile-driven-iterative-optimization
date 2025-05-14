; ModuleID = 'outputs/src_PolyBenchC-4.2.1_durbin_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_durbin_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [2000 x double], align 16
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #9
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %22, %6 ]
  %8 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %23, %6 ]
  %9 = sub <2 x i32> <i32 2001, i32 2001>, %8
  %10 = sub <2 x i32> <i32 1999, i32 1999>, %8
  %11 = sitofp <2 x i32> %9 to <2 x double>
  %12 = sitofp <2 x i32> %10 to <2 x double>
  %13 = getelementptr inbounds double, ptr %4, i64 %7
  %14 = getelementptr inbounds double, ptr %13, i64 2
  store <2 x double> %11, ptr %13, align 8, !tbaa !5
  store <2 x double> %12, ptr %14, align 8, !tbaa !5
  %15 = or disjoint i64 %7, 4
  %16 = sub <2 x i32> <i32 1997, i32 1997>, %8
  %17 = sub <2 x i32> <i32 1995, i32 1995>, %8
  %18 = sitofp <2 x i32> %16 to <2 x double>
  %19 = sitofp <2 x i32> %17 to <2 x double>
  %20 = getelementptr inbounds double, ptr %4, i64 %15
  %21 = getelementptr inbounds double, ptr %20, i64 2
  store <2 x double> %18, ptr %20, align 8, !tbaa !5
  store <2 x double> %19, ptr %21, align 8, !tbaa !5
  %22 = add nuw nsw i64 %7, 8
  %23 = add <2 x i32> %8, <i32 8, i32 8>
  %24 = icmp eq i64 %22, 2000
  br i1 %24, label %25, label %6, !llvm.loop !9

25:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16000, ptr nonnull %3) #9
  %26 = load double, ptr %4, align 8, !tbaa !5
  %27 = fneg double %26
  store double %27, ptr %5, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %141, %25
  %29 = phi i64 [ 1, %25 ], [ %143, %141 ]
  %30 = phi i64 [ 0, %25 ], [ %144, %141 ]
  %31 = phi double [ 1.000000e+00, %25 ], [ %61, %141 ]
  %32 = phi double [ %27, %25 ], [ %65, %141 ]
  %33 = shl nuw nsw i64 %30, 3
  %34 = fneg double %32
  %35 = getelementptr double, ptr %4, i64 %29
  %36 = and i64 %29, 3
  %37 = icmp ult i64 %30, 3
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  %39 = and i64 %29, 9223372036854775804
  br label %96

40:                                               ; preds = %96, %28
  %41 = phi double [ undef, %28 ], [ %126, %96 ]
  %42 = phi i64 [ 0, %28 ], [ %127, %96 ]
  %43 = phi double [ 0.000000e+00, %28 ], [ %126, %96 ]
  %44 = icmp eq i64 %36, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %40, %45
  %46 = phi i64 [ %55, %45 ], [ %42, %40 ]
  %47 = phi double [ %54, %45 ], [ %43, %40 ]
  %48 = phi i64 [ %56, %45 ], [ 0, %40 ]
  %49 = xor i64 %46, -1
  %50 = getelementptr double, ptr %35, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !5
  %52 = getelementptr inbounds double, ptr %5, i64 %46
  %53 = load double, ptr %52, align 8, !tbaa !5
  %54 = tail call double @llvm.fmuladd.f64(double %51, double %53, double %47)
  %55 = add nuw nsw i64 %46, 1
  %56 = add i64 %48, 1
  %57 = icmp eq i64 %56, %36
  br i1 %57, label %58, label %45, !llvm.loop !13

58:                                               ; preds = %45, %40
  %59 = phi double [ %41, %40 ], [ %54, %45 ]
  %60 = tail call double @llvm.fmuladd.f64(double %34, double %32, double 1.000000e+00)
  %61 = fmul double %31, %60
  %62 = load double, ptr %35, align 8, !tbaa !5
  %63 = fadd double %59, %62
  %64 = fneg double %63
  %65 = fdiv double %64, %61
  %66 = getelementptr double, ptr %5, i64 %29
  %67 = icmp ult i64 %29, 4
  br i1 %67, label %94, label %68

68:                                               ; preds = %58
  %69 = and i64 %29, 9223372036854775804
  %70 = insertelement <2 x double> poison, double %65, i64 0
  %71 = shufflevector <2 x double> %70, <2 x double> poison, <2 x i32> zeroinitializer
  br label %72

72:                                               ; preds = %72, %68
  %73 = phi i64 [ 0, %68 ], [ %90, %72 ]
  %74 = getelementptr inbounds double, ptr %5, i64 %73
  %75 = getelementptr inbounds double, ptr %74, i64 2
  %76 = load <2 x double>, ptr %74, align 8, !tbaa !5
  %77 = load <2 x double>, ptr %75, align 8, !tbaa !5
  %78 = xor i64 %73, -1
  %79 = getelementptr double, ptr %66, i64 %78
  %80 = getelementptr double, ptr %79, i64 -1
  %81 = getelementptr double, ptr %79, i64 -3
  %82 = load <2 x double>, ptr %80, align 8, !tbaa !5
  %83 = shufflevector <2 x double> %82, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %84 = load <2 x double>, ptr %81, align 8, !tbaa !5
  %85 = shufflevector <2 x double> %84, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %71, <2 x double> %83, <2 x double> %76)
  %87 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %71, <2 x double> %85, <2 x double> %77)
  %88 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %73
  %89 = getelementptr inbounds double, ptr %88, i64 2
  store <2 x double> %86, ptr %88, align 16, !tbaa !5
  store <2 x double> %87, ptr %89, align 16, !tbaa !5
  %90 = add nuw i64 %73, 4
  %91 = icmp eq i64 %90, %69
  br i1 %91, label %92, label %72, !llvm.loop !15

92:                                               ; preds = %72
  %93 = icmp eq i64 %29, %69
  br i1 %93, label %141, label %94

94:                                               ; preds = %58, %92
  %95 = phi i64 [ 0, %58 ], [ %69, %92 ]
  br label %130

96:                                               ; preds = %96, %38
  %97 = phi i64 [ 0, %38 ], [ %127, %96 ]
  %98 = phi double [ 0.000000e+00, %38 ], [ %126, %96 ]
  %99 = phi i64 [ 0, %38 ], [ %128, %96 ]
  %100 = xor i64 %97, -1
  %101 = getelementptr double, ptr %35, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = getelementptr inbounds double, ptr %5, i64 %97
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = tail call double @llvm.fmuladd.f64(double %102, double %104, double %98)
  %106 = or disjoint i64 %97, 1
  %107 = xor i64 %97, -2
  %108 = getelementptr double, ptr %35, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = getelementptr inbounds double, ptr %5, i64 %106
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = tail call double @llvm.fmuladd.f64(double %109, double %111, double %105)
  %113 = or disjoint i64 %97, 2
  %114 = xor i64 %97, -3
  %115 = getelementptr double, ptr %35, i64 %114
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = getelementptr inbounds double, ptr %5, i64 %113
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = tail call double @llvm.fmuladd.f64(double %116, double %118, double %112)
  %120 = or disjoint i64 %97, 3
  %121 = xor i64 %97, -4
  %122 = getelementptr double, ptr %35, i64 %121
  %123 = load double, ptr %122, align 8, !tbaa !5
  %124 = getelementptr inbounds double, ptr %5, i64 %120
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = tail call double @llvm.fmuladd.f64(double %123, double %125, double %119)
  %127 = add nuw nsw i64 %97, 4
  %128 = add i64 %99, 4
  %129 = icmp eq i64 %128, %39
  br i1 %129, label %40, label %96, !llvm.loop !16

130:                                              ; preds = %94, %130
  %131 = phi i64 [ %139, %130 ], [ %95, %94 ]
  %132 = getelementptr inbounds double, ptr %5, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = xor i64 %131, -1
  %135 = getelementptr double, ptr %66, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = tail call double @llvm.fmuladd.f64(double %65, double %136, double %133)
  %138 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %131
  store double %137, ptr %138, align 8, !tbaa !5
  %139 = add nuw nsw i64 %131, 1
  %140 = icmp eq i64 %139, %29
  br i1 %140, label %141, label %130, !llvm.loop !17

141:                                              ; preds = %130, %92
  %142 = add nuw nsw i64 %33, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %142, i1 false), !tbaa !5
  store double %65, ptr %66, align 8, !tbaa !5
  %143 = add nuw nsw i64 %29, 1
  %144 = add nuw nsw i64 %30, 1
  %145 = icmp eq i64 %144, 1999
  br i1 %145, label %146, label %28, !llvm.loop !18

146:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull %3) #9
  %147 = load ptr, ptr @stdout, align 8, !tbaa !19
  %148 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %147)
  %149 = load ptr, ptr @stdout, align 8, !tbaa !19
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %151

151:                                              ; preds = %159, %146
  %152 = phi i64 [ 0, %146 ], [ %164, %159 ]
  %153 = trunc i64 %152 to i16
  %154 = urem i16 %153, 20
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load ptr, ptr @stdout, align 8, !tbaa !19
  %158 = tail call i32 @fputc(i32 10, ptr %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load ptr, ptr @stdout, align 8, !tbaa !19
  %161 = getelementptr inbounds double, ptr %5, i64 %152
  %162 = load double, ptr %161, align 8, !tbaa !5
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.4, double noundef %162)
  %164 = add nuw nsw i64 %152, 1
  %165 = icmp eq i64 %164, 2000
  br i1 %165, label %166, label %151, !llvm.loop !21

166:                                              ; preds = %159
  %167 = load ptr, ptr @stdout, align 8, !tbaa !19
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %169 = load ptr, ptr @stdout, align 8, !tbaa !19
  %170 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %169)
  tail call void @free(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %5) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10, !12, !11}
!18 = distinct !{!18, !10}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = distinct !{!21, !10}
