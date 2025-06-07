; ModuleID = 'outputs/src_PolyBenchC-4.2.1_durbin_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_durbin_opt_2.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #6
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %21, %5 ]
  %7 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %22, %5 ]
  %8 = sub <2 x i32> <i32 2001, i32 2001>, %7
  %9 = sub <2 x i32> <i32 1999, i32 1999>, %7
  %10 = sitofp <2 x i32> %8 to <2 x double>
  %11 = sitofp <2 x i32> %9 to <2 x double>
  %12 = getelementptr inbounds double, ptr %3, i64 %6
  %13 = getelementptr inbounds double, ptr %12, i64 2
  store <2 x double> %10, ptr %12, align 8, !tbaa !5
  store <2 x double> %11, ptr %13, align 8, !tbaa !5
  %14 = or disjoint i64 %6, 4
  %15 = sub <2 x i32> <i32 1997, i32 1997>, %7
  %16 = sub <2 x i32> <i32 1995, i32 1995>, %7
  %17 = sitofp <2 x i32> %15 to <2 x double>
  %18 = sitofp <2 x i32> %16 to <2 x double>
  %19 = getelementptr inbounds double, ptr %3, i64 %14
  %20 = getelementptr inbounds double, ptr %19, i64 2
  store <2 x double> %17, ptr %19, align 8, !tbaa !5
  store <2 x double> %18, ptr %20, align 8, !tbaa !5
  %21 = add nuw nsw i64 %6, 8
  %22 = add <2 x i32> %7, <i32 8, i32 8>
  %23 = icmp eq i64 %21, 2000
  br i1 %23, label %24, label %5, !llvm.loop !9

24:                                               ; preds = %5
  %25 = load double, ptr %3, align 8, !tbaa !5
  %26 = fneg double %25
  store double %26, ptr %4, align 8, !tbaa !5
  %27 = load double, ptr %3, align 8, !tbaa !5
  %28 = fneg double %27
  %29 = getelementptr double, ptr %4, i64 1
  br label %30

30:                                               ; preds = %158, %24
  %31 = phi i64 [ %161, %158 ], [ 0, %24 ]
  %32 = phi i64 [ %159, %158 ], [ 1, %24 ]
  %33 = phi double [ %37, %158 ], [ 1.000000e+00, %24 ]
  %34 = phi double [ %123, %158 ], [ %28, %24 ]
  %35 = fneg double %34
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %34, double 1.000000e+00)
  %37 = fmul double %33, %36
  %38 = add nsw i64 %32, -3
  %39 = icmp ugt i64 %32, 3
  br i1 %39, label %65, label %40

40:                                               ; preds = %65, %30
  %41 = phi double [ 0.000000e+00, %30 ], [ %93, %65 ]
  %42 = phi i64 [ 0, %30 ], [ %94, %65 ]
  %43 = and i64 %42, 4294967295
  %44 = icmp ult i64 %43, %32
  br i1 %44, label %45, label %117

45:                                               ; preds = %40
  %46 = getelementptr double, ptr %3, i64 %32
  %47 = sub i64 %32, %42
  %48 = and i64 %47, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = xor i64 %42, -1
  %52 = shl i64 %51, 32
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr double, ptr %46, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds double, ptr %4, i64 %43
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = tail call double @llvm.fmuladd.f64(double %55, double %57, double %41)
  %59 = add nuw nsw i64 %43, 1
  br label %60

60:                                               ; preds = %50, %45
  %61 = phi double [ undef, %45 ], [ %58, %50 ]
  %62 = phi i64 [ %43, %45 ], [ %59, %50 ]
  %63 = phi double [ %41, %45 ], [ %58, %50 ]
  %64 = icmp eq i64 %31, %42
  br i1 %64, label %117, label %96

65:                                               ; preds = %30, %65
  %66 = phi i64 [ %94, %65 ], [ 0, %30 ]
  %67 = phi double [ %93, %65 ], [ 0.000000e+00, %30 ]
  %68 = sub nsw i64 %32, %66
  %69 = getelementptr double, ptr %3, i64 %68
  %70 = getelementptr double, ptr %69, i64 -1
  %71 = load double, ptr %70, align 8, !tbaa !5
  %72 = getelementptr inbounds double, ptr %4, i64 %66
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = getelementptr double, ptr %69, i64 -2
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = or disjoint i64 %66, 1
  %77 = getelementptr inbounds double, ptr %4, i64 %76
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = fmul double %75, %78
  %80 = tail call double @llvm.fmuladd.f64(double %71, double %73, double %79)
  %81 = getelementptr double, ptr %69, i64 -3
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = or disjoint i64 %66, 2
  %84 = getelementptr inbounds double, ptr %4, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !5
  %86 = tail call double @llvm.fmuladd.f64(double %82, double %85, double %80)
  %87 = getelementptr double, ptr %69, i64 -4
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = or disjoint i64 %66, 3
  %90 = getelementptr inbounds double, ptr %4, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = tail call double @llvm.fmuladd.f64(double %88, double %91, double %86)
  %93 = fadd double %67, %92
  %94 = add nuw nsw i64 %66, 4
  %95 = icmp slt i64 %94, %38
  br i1 %95, label %65, label %40, !llvm.loop !13

96:                                               ; preds = %60, %96
  %97 = phi i64 [ %115, %96 ], [ %62, %60 ]
  %98 = phi double [ %114, %96 ], [ %63, %60 ]
  %99 = xor i64 %97, -1
  %100 = shl i64 %99, 32
  %101 = ashr exact i64 %100, 32
  %102 = getelementptr double, ptr %46, i64 %101
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = getelementptr inbounds double, ptr %4, i64 %97
  %105 = load double, ptr %104, align 8, !tbaa !5
  %106 = tail call double @llvm.fmuladd.f64(double %103, double %105, double %98)
  %107 = shl i64 %97, 32
  %108 = sub i64 -8589934592, %107
  %109 = ashr exact i64 %108, 32
  %110 = getelementptr double, ptr %46, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !5
  %112 = getelementptr double, ptr %29, i64 %97
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = tail call double @llvm.fmuladd.f64(double %111, double %113, double %106)
  %115 = add nuw nsw i64 %97, 2
  %116 = icmp eq i64 %115, %32
  br i1 %116, label %117, label %96, !llvm.loop !14

117:                                              ; preds = %60, %96, %40
  %118 = phi double [ %41, %40 ], [ %61, %60 ], [ %114, %96 ]
  %119 = getelementptr inbounds double, ptr %3, i64 %32
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = fadd double %118, %120
  %122 = fneg double %121
  %123 = fdiv double %122, %37
  %124 = getelementptr double, ptr %4, i64 %32
  %125 = and i64 %32, 1
  %126 = icmp eq i64 %31, 0
  br i1 %126, label %148, label %127

127:                                              ; preds = %117
  %128 = and i64 %32, 9223372036854775806
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ 0, %127 ], [ %145, %129 ]
  %131 = phi i64 [ 0, %127 ], [ %146, %129 ]
  %132 = getelementptr inbounds double, ptr %4, i64 %130
  %133 = load double, ptr %132, align 8, !tbaa !5
  %134 = xor i64 %130, -1
  %135 = getelementptr double, ptr %124, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = tail call double @llvm.fmuladd.f64(double %123, double %136, double %133)
  store double %137, ptr %132, align 8, !tbaa !5
  %138 = or disjoint i64 %130, 1
  %139 = getelementptr inbounds double, ptr %4, i64 %138
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = xor i64 %130, -2
  %142 = getelementptr double, ptr %124, i64 %141
  %143 = load double, ptr %142, align 8, !tbaa !5
  %144 = tail call double @llvm.fmuladd.f64(double %123, double %143, double %140)
  store double %144, ptr %139, align 8, !tbaa !5
  %145 = add nuw nsw i64 %130, 2
  %146 = add i64 %131, 2
  %147 = icmp eq i64 %146, %128
  br i1 %147, label %148, label %129, !llvm.loop !15

148:                                              ; preds = %129, %117
  %149 = phi i64 [ 0, %117 ], [ %145, %129 ]
  %150 = icmp eq i64 %125, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds double, ptr %4, i64 %149
  %153 = load double, ptr %152, align 8, !tbaa !5
  %154 = xor i64 %149, -1
  %155 = getelementptr double, ptr %124, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = tail call double @llvm.fmuladd.f64(double %123, double %156, double %153)
  store double %157, ptr %152, align 8, !tbaa !5
  br label %158

158:                                              ; preds = %148, %151
  store double %123, ptr %124, align 8, !tbaa !5
  %159 = add nuw nsw i64 %32, 1
  %160 = icmp eq i64 %159, 2000
  %161 = add i64 %31, 1
  br i1 %160, label %162, label %30, !llvm.loop !16

162:                                              ; preds = %158
  %163 = load ptr, ptr @stdout, align 8, !tbaa !17
  %164 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %163)
  %165 = load ptr, ptr @stdout, align 8, !tbaa !17
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %167

167:                                              ; preds = %175, %162
  %168 = phi i64 [ 0, %162 ], [ %180, %175 ]
  %169 = trunc i64 %168 to i16
  %170 = urem i16 %169, 20
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load ptr, ptr @stdout, align 8, !tbaa !17
  %174 = tail call i32 @fputc(i32 10, ptr %173)
  br label %175

175:                                              ; preds = %172, %167
  %176 = load ptr, ptr @stdout, align 8, !tbaa !17
  %177 = getelementptr inbounds double, ptr %4, i64 %168
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.4, double noundef %178)
  %180 = add nuw nsw i64 %168, 1
  %181 = icmp eq i64 %180, 2000
  br i1 %181, label %182, label %167, !llvm.loop !19

182:                                              ; preds = %175
  %183 = load ptr, ptr @stdout, align 8, !tbaa !17
  %184 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %185 = load ptr, ptr @stdout, align 8, !tbaa !17
  %186 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %185)
  tail call void @free(ptr noundef %3) #6
  tail call void @free(ptr noundef nonnull %4) #6
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !10}
