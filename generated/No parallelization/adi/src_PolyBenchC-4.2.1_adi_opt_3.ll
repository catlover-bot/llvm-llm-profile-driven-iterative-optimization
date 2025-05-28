; ModuleID = 'outputs/src_PolyBenchC-4.2.1_adi_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_adi_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #6
  br label %7

7:                                                ; preds = %2, %30
  %8 = phi i64 [ 0, %2 ], [ %31, %30 ]
  %9 = add nuw nsw i64 %8, 1000
  %10 = insertelement <2 x i64> poison, i64 %9, i64 0
  %11 = shufflevector <2 x i64> %10, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i64 [ 0, %7 ], [ %27, %12 ]
  %14 = phi <2 x i64> [ <i64 0, i64 1>, %7 ], [ %28, %12 ]
  %15 = sub nuw nsw <2 x i64> %11, %14
  %16 = trunc <2 x i64> %15 to <2 x i32>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fdiv <2 x double> %17, <double 1.000000e+03, double 1.000000e+03>
  %19 = getelementptr inbounds [1000 x double], ptr %3, i64 %8, i64 %13
  store <2 x double> %18, ptr %19, align 8, !tbaa !5
  %20 = or disjoint i64 %13, 2
  %21 = add <2 x i64> %14, <i64 2, i64 2>
  %22 = sub nuw nsw <2 x i64> %11, %21
  %23 = trunc <2 x i64> %22 to <2 x i32>
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = fdiv <2 x double> %24, <double 1.000000e+03, double 1.000000e+03>
  %26 = getelementptr inbounds [1000 x double], ptr %3, i64 %8, i64 %20
  store <2 x double> %25, ptr %26, align 8, !tbaa !5
  %27 = add nuw nsw i64 %13, 4
  %28 = add <2 x i64> %14, <i64 4, i64 4>
  %29 = icmp eq i64 %27, 1000
  br i1 %29, label %30, label %12, !llvm.loop !9

30:                                               ; preds = %12
  %31 = add nuw nsw i64 %8, 1
  %32 = icmp eq i64 %31, 1000
  br i1 %32, label %33, label %7, !llvm.loop !13

33:                                               ; preds = %30, %155
  %34 = phi i32 [ %156, %155 ], [ 1, %30 ]
  br label %35

35:                                               ; preds = %95, %33
  %36 = phi i64 [ 1, %33 ], [ %39, %95 ]
  %37 = getelementptr inbounds [1000 x double], ptr %4, i64 0, i64 %36
  store double 1.000000e+00, ptr %37, align 8, !tbaa !5
  %38 = add nsw i64 %36, -1
  %39 = add nuw nsw i64 %36, 1
  %40 = getelementptr inbounds [1000 x double], ptr %3, i64 1, i64 %38
  %41 = load double, ptr %40, align 8, !tbaa !5
  %42 = getelementptr inbounds [1000 x double], ptr %3, i64 1, i64 %36
  %43 = load double, ptr %42, align 8, !tbaa !5
  %44 = fmul double %43, 0xC09F3C0000000001
  %45 = tail call double @llvm.fmuladd.f64(double %41, double 0x408F400000000001, double %44)
  %46 = getelementptr inbounds [1000 x double], ptr %3, i64 1, i64 %39
  %47 = load double, ptr %46, align 8, !tbaa !5
  %48 = tail call double @llvm.fmuladd.f64(double %47, double 0x408F400000000001, double %45)
  %49 = fadd double %48, 0x409F400000000001
  %50 = fdiv double %49, 0x40AF420000000001
  %51 = getelementptr inbounds [1000 x double], ptr %5, i64 %36, i64 1
  store double 0x3FDFFDF3D7D16B6E, ptr %51, align 8, !tbaa !5
  %52 = getelementptr inbounds [1000 x double], ptr %6, i64 %36, i64 1
  store double %50, ptr %52, align 8, !tbaa !5
  br label %53

53:                                               ; preds = %53, %35
  %54 = phi i64 [ 2, %35 ], [ %69, %53 ]
  %55 = phi double [ %50, %35 ], [ %66, %53 ]
  %56 = getelementptr inbounds [1000 x double], ptr %3, i64 %54, i64 %38
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = getelementptr inbounds [1000 x double], ptr %3, i64 %54, i64 %36
  %59 = load double, ptr %58, align 8, !tbaa !5
  %60 = fmul double %59, 0xC09F3C0000000001
  %61 = tail call double @llvm.fmuladd.f64(double %57, double 0x408F400000000001, double %60)
  %62 = getelementptr inbounds [1000 x double], ptr %3, i64 %54, i64 %39
  %63 = load double, ptr %62, align 8, !tbaa !5
  %64 = tail call double @llvm.fmuladd.f64(double %63, double 0x408F400000000001, double %61)
  %65 = tail call double @llvm.fmuladd.f64(double %55, double 0x409F400000000001, double %64)
  %66 = fdiv double %65, 0x40A7727FF7CF5F46
  %67 = getelementptr inbounds [1000 x double], ptr %5, i64 %36, i64 %54
  store double 0x3FDFFDF3D7D16B6E, ptr %67, align 8, !tbaa !5
  %68 = getelementptr inbounds [1000 x double], ptr %6, i64 %36, i64 %54
  store double %66, ptr %68, align 8, !tbaa !5
  %69 = add nuw nsw i64 %54, 1
  %70 = icmp eq i64 %69, 999
  br i1 %70, label %71, label %53, !llvm.loop !14

71:                                               ; preds = %53
  %72 = getelementptr inbounds [1000 x double], ptr %4, i64 999, i64 %36
  store double 1.000000e+00, ptr %72, align 8, !tbaa !5
  %73 = getelementptr [1000 x double], ptr %4, i64 1, i64 %36
  br label %74

74:                                               ; preds = %74, %71
  %75 = phi i64 [ 998, %71 ], [ %93, %74 ]
  %76 = getelementptr inbounds [1000 x double], ptr %5, i64 %36, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !5
  %78 = getelementptr [1000 x double], ptr %73, i64 %75
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds [1000 x double], ptr %6, i64 %36, i64 %75
  %81 = load double, ptr %80, align 8, !tbaa !5
  %82 = tail call double @llvm.fmuladd.f64(double %77, double %79, double %81)
  %83 = getelementptr inbounds [1000 x double], ptr %4, i64 %75, i64 %36
  store double %82, ptr %83, align 8, !tbaa !5
  %84 = add nsw i64 %75, -1
  %85 = getelementptr inbounds [1000 x double], ptr %5, i64 %36, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !5
  %87 = getelementptr [1000 x double], ptr %73, i64 %84
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds [1000 x double], ptr %6, i64 %36, i64 %84
  %90 = load double, ptr %89, align 8, !tbaa !5
  %91 = tail call double @llvm.fmuladd.f64(double %86, double %88, double %90)
  %92 = getelementptr inbounds [1000 x double], ptr %4, i64 %84, i64 %36
  store double %91, ptr %92, align 8, !tbaa !5
  %93 = add nsw i64 %75, -2
  %94 = icmp eq i64 %84, 1
  br i1 %94, label %95, label %74, !llvm.loop !16

95:                                               ; preds = %74
  %96 = icmp eq i64 %39, 999
  br i1 %96, label %97, label %35, !llvm.loop !17

97:                                               ; preds = %95, %152
  %98 = phi i64 [ %153, %152 ], [ 1, %95 ]
  %99 = getelementptr inbounds [1000 x double], ptr %3, i64 %98
  store double 1.000000e+00, ptr %99, align 8, !tbaa !5
  %100 = getelementptr [1000 x double], ptr %4, i64 %98
  %101 = getelementptr [1000 x double], ptr %100, i64 -1, i64 1
  %102 = load double, ptr %101, align 8, !tbaa !5
  %103 = getelementptr inbounds [1000 x double], ptr %4, i64 %98, i64 1
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = fmul double %104, 0xC0AF3E0000000001
  %106 = tail call double @llvm.fmuladd.f64(double %102, double 0x409F400000000001, double %105)
  %107 = getelementptr [1000 x double], ptr %100, i64 1, i64 1
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = tail call double @llvm.fmuladd.f64(double %108, double 0x409F400000000001, double %106)
  %110 = fadd double %109, 0x408F400000000001
  %111 = fdiv double %110, 0x409F440000000001
  %112 = getelementptr inbounds [1000 x double], ptr %5, i64 %98, i64 1
  store double 0x3FDFFBE7F2B1D4C3, ptr %112, align 8, !tbaa !5
  %113 = getelementptr inbounds [1000 x double], ptr %6, i64 %98, i64 1
  store double %111, ptr %113, align 8, !tbaa !5
  br label %114

114:                                              ; preds = %114, %97
  %115 = phi i64 [ 2, %97 ], [ %130, %114 ]
  %116 = phi double [ %111, %97 ], [ %127, %114 ]
  %117 = getelementptr [1000 x double], ptr %100, i64 -1, i64 %115
  %118 = load double, ptr %117, align 8, !tbaa !5
  %119 = getelementptr inbounds [1000 x double], ptr %4, i64 %98, i64 %115
  %120 = load double, ptr %119, align 8, !tbaa !5
  %121 = fmul double %120, 0xC0AF3E0000000001
  %122 = tail call double @llvm.fmuladd.f64(double %118, double 0x409F400000000001, double %121)
  %123 = getelementptr [1000 x double], ptr %100, i64 1, i64 %115
  %124 = load double, ptr %123, align 8, !tbaa !5
  %125 = tail call double @llvm.fmuladd.f64(double %124, double 0x409F400000000001, double %122)
  %126 = tail call double @llvm.fmuladd.f64(double %116, double 0x408F400000000001, double %125)
  %127 = fdiv double %126, 0x409774FFDF3F958F
  %128 = getelementptr inbounds [1000 x double], ptr %5, i64 %98, i64 %115
  store double 0x3FDFFBE7F2B1D4C3, ptr %128, align 8, !tbaa !5
  %129 = getelementptr inbounds [1000 x double], ptr %6, i64 %98, i64 %115
  store double %127, ptr %129, align 8, !tbaa !5
  %130 = add nuw nsw i64 %115, 1
  %131 = icmp eq i64 %130, 999
  br i1 %131, label %132, label %114, !llvm.loop !18

132:                                              ; preds = %114
  %133 = getelementptr inbounds [1000 x double], ptr %3, i64 %98, i64 999
  store double 1.000000e+00, ptr %133, align 8, !tbaa !5
  br label %134

134:                                              ; preds = %134, %132
  %135 = phi double [ 1.000000e+00, %132 ], [ %148, %134 ]
  %136 = phi i64 [ 998, %132 ], [ %150, %134 ]
  %137 = getelementptr inbounds [1000 x double], ptr %5, i64 %98, i64 %136
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds [1000 x double], ptr %6, i64 %98, i64 %136
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = tail call double @llvm.fmuladd.f64(double %138, double %135, double %140)
  %142 = getelementptr inbounds [1000 x double], ptr %3, i64 %98, i64 %136
  store double %141, ptr %142, align 8, !tbaa !5
  %143 = add nsw i64 %136, -1
  %144 = getelementptr inbounds [1000 x double], ptr %5, i64 %98, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds [1000 x double], ptr %6, i64 %98, i64 %143
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = tail call double @llvm.fmuladd.f64(double %145, double %141, double %147)
  %149 = getelementptr inbounds [1000 x double], ptr %3, i64 %98, i64 %143
  store double %148, ptr %149, align 8, !tbaa !5
  %150 = add nsw i64 %136, -2
  %151 = icmp eq i64 %143, 1
  br i1 %151, label %152, label %134, !llvm.loop !19

152:                                              ; preds = %134
  %153 = add nuw nsw i64 %98, 1
  %154 = icmp eq i64 %153, 999
  br i1 %154, label %155, label %97, !llvm.loop !20

155:                                              ; preds = %152
  %156 = add nuw nsw i32 %34, 1
  %157 = icmp eq i32 %156, 501
  br i1 %157, label %158, label %33, !llvm.loop !21

158:                                              ; preds = %155
  %159 = load ptr, ptr @stdout, align 8, !tbaa !22
  %160 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %159)
  %161 = load ptr, ptr @stdout, align 8, !tbaa !22
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %163

163:                                              ; preds = %182, %158
  %164 = phi i64 [ 0, %158 ], [ %183, %182 ]
  %165 = mul nuw nsw i64 %164, 1000
  br label %166

166:                                              ; preds = %175, %163
  %167 = phi i64 [ 0, %163 ], [ %180, %175 ]
  %168 = add nuw nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  %170 = urem i32 %169, 20
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load ptr, ptr @stdout, align 8, !tbaa !22
  %174 = tail call i32 @fputc(i32 10, ptr %173)
  br label %175

175:                                              ; preds = %172, %166
  %176 = load ptr, ptr @stdout, align 8, !tbaa !22
  %177 = getelementptr inbounds [1000 x double], ptr %3, i64 %164, i64 %167
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.4, double noundef %178)
  %180 = add nuw nsw i64 %167, 1
  %181 = icmp eq i64 %180, 1000
  br i1 %181, label %182, label %166, !llvm.loop !24

182:                                              ; preds = %175
  %183 = add nuw nsw i64 %164, 1
  %184 = icmp eq i64 %183, 1000
  br i1 %184, label %185, label %163, !llvm.loop !25

185:                                              ; preds = %182
  %186 = load ptr, ptr @stdout, align 8, !tbaa !22
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %188 = load ptr, ptr @stdout, align 8, !tbaa !22
  %189 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %188)
  tail call void @free(ptr noundef nonnull %3) #6
  tail call void @free(ptr noundef %4) #6
  tail call void @free(ptr noundef %5) #6
  tail call void @free(ptr noundef %6) #6
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
!14 = distinct !{!14, !10, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !15}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
