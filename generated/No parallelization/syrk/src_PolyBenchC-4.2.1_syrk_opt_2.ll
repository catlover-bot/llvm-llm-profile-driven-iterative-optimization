; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syrk_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syrk_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1200000, i32 noundef 8) #7
  br label %5

5:                                                ; preds = %2, %38
  %6 = phi i64 [ 0, %2 ], [ %39, %38 ]
  %7 = insertelement <2 x i64> poison, i64 %6, i64 0
  %8 = shufflevector <2 x i64> %7, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %19, %9 ]
  %11 = phi <2 x i64> [ <i64 0, i64 1>, %5 ], [ %20, %9 ]
  %12 = mul nuw nsw <2 x i64> %11, %8
  %13 = trunc <2 x i64> %12 to <2 x i32>
  %14 = add <2 x i32> %13, <i32 1, i32 1>
  %15 = urem <2 x i32> %14, <i32 1200, i32 1200>
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fmul <2 x double> %16, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %18 = getelementptr inbounds [1000 x double], ptr %4, i64 %6, i64 %10
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = add nuw i64 %10, 2
  %20 = add <2 x i64> %11, <i64 2, i64 2>
  %21 = icmp eq i64 %19, 1000
  br i1 %21, label %22, label %9, !llvm.loop !9

22:                                               ; preds = %9
  %23 = insertelement <2 x i64> poison, i64 %6, i64 0
  %24 = shufflevector <2 x i64> %23, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i64 [ 0, %22 ], [ %35, %25 ]
  %27 = phi <2 x i64> [ <i64 0, i64 1>, %22 ], [ %36, %25 ]
  %28 = mul nuw nsw <2 x i64> %27, %24
  %29 = trunc <2 x i64> %28 to <2 x i32>
  %30 = add <2 x i32> %29, <i32 2, i32 2>
  %31 = urem <2 x i32> %30, <i32 1000, i32 1000>
  %32 = sitofp <2 x i32> %31 to <2 x double>
  %33 = fmul <2 x double> %32, <double 1.000000e-03, double 1.000000e-03>
  %34 = getelementptr inbounds [1200 x double], ptr %3, i64 %6, i64 %26
  store <2 x double> %33, ptr %34, align 8, !tbaa !5
  %35 = add nuw i64 %26, 2
  %36 = add <2 x i64> %27, <i64 2, i64 2>
  %37 = icmp eq i64 %35, 1200
  br i1 %37, label %38, label %25, !llvm.loop !13

38:                                               ; preds = %25
  %39 = add nuw nsw i64 %6, 1
  %40 = icmp eq i64 %39, 1200
  br i1 %40, label %41, label %5, !llvm.loop !14

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %3, i64 8
  %43 = getelementptr i8, ptr %4, i64 8000
  br label %44

44:                                               ; preds = %41, %151
  %45 = phi i64 [ %152, %151 ], [ 0, %41 ]
  %46 = phi i64 [ %153, %151 ], [ 1, %41 ]
  %47 = mul nuw nsw i64 %45, 9600
  %48 = getelementptr i8, ptr %3, i64 %47
  %49 = mul nuw nsw i64 %45, 9608
  %50 = getelementptr i8, ptr %42, i64 %49
  %51 = mul nuw nsw i64 %45, 8000
  %52 = getelementptr i8, ptr %43, i64 %51
  %53 = icmp ult i64 %46, 4
  br i1 %53, label %68, label %54

54:                                               ; preds = %44
  %55 = and i64 %46, 9223372036854775804
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i64 [ 0, %54 ], [ %64, %56 ]
  %58 = getelementptr inbounds [1200 x double], ptr %3, i64 %45, i64 %57
  %59 = getelementptr inbounds double, ptr %58, i64 2
  %60 = load <2 x double>, ptr %58, align 8, !tbaa !5
  %61 = load <2 x double>, ptr %59, align 8, !tbaa !5
  %62 = fmul <2 x double> %60, <double 1.200000e+00, double 1.200000e+00>
  %63 = fmul <2 x double> %61, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %62, ptr %58, align 8, !tbaa !5
  store <2 x double> %63, ptr %59, align 8, !tbaa !5
  %64 = add nuw i64 %57, 4
  %65 = icmp eq i64 %64, %55
  br i1 %65, label %66, label %56, !llvm.loop !15

66:                                               ; preds = %56
  %67 = icmp eq i64 %46, %55
  br i1 %67, label %77, label %68

68:                                               ; preds = %44, %66
  %69 = phi i64 [ 0, %44 ], [ %55, %66 ]
  br label %70

70:                                               ; preds = %68, %70
  %71 = phi i64 [ %75, %70 ], [ %69, %68 ]
  %72 = getelementptr inbounds [1200 x double], ptr %3, i64 %45, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = fmul double %73, 1.200000e+00
  store double %74, ptr %72, align 8, !tbaa !5
  %75 = add nuw nsw i64 %71, 1
  %76 = icmp eq i64 %75, %46
  br i1 %76, label %77, label %70, !llvm.loop !16

77:                                               ; preds = %70, %66
  %78 = icmp ult i64 %46, 4
  %79 = icmp ult ptr %48, %52
  %80 = icmp ult ptr %4, %50
  %81 = and i1 %79, %80
  %82 = and i64 %46, 9223372036854775804
  %83 = icmp eq i64 %46, %82
  %84 = and i64 %46, 1
  %85 = icmp eq i64 %84, 0
  br label %86

86:                                               ; preds = %77, %148
  %87 = phi i64 [ %149, %148 ], [ 0, %77 ]
  %88 = getelementptr inbounds [1000 x double], ptr %4, i64 %45, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !5
  %90 = fmul double %89, 1.500000e+00
  %91 = select i1 %78, i1 true, i1 %81
  br i1 %91, label %121, label %92

92:                                               ; preds = %86
  %93 = insertelement <2 x double> poison, double %90, i64 0
  %94 = shufflevector <2 x double> %93, <2 x double> poison, <2 x i32> zeroinitializer
  br label %95

95:                                               ; preds = %95, %92
  %96 = phi i64 [ 0, %92 ], [ %118, %95 ]
  %97 = or disjoint i64 %96, 1
  %98 = or disjoint i64 %96, 2
  %99 = or disjoint i64 %96, 3
  %100 = getelementptr inbounds [1000 x double], ptr %4, i64 %96, i64 %87
  %101 = getelementptr inbounds [1000 x double], ptr %4, i64 %97, i64 %87
  %102 = getelementptr inbounds [1000 x double], ptr %4, i64 %98, i64 %87
  %103 = getelementptr inbounds [1000 x double], ptr %4, i64 %99, i64 %87
  %104 = load double, ptr %100, align 8, !tbaa !5, !alias.scope !17
  %105 = load double, ptr %101, align 8, !tbaa !5, !alias.scope !17
  %106 = insertelement <2 x double> poison, double %104, i64 0
  %107 = insertelement <2 x double> %106, double %105, i64 1
  %108 = load double, ptr %102, align 8, !tbaa !5, !alias.scope !17
  %109 = load double, ptr %103, align 8, !tbaa !5, !alias.scope !17
  %110 = insertelement <2 x double> poison, double %108, i64 0
  %111 = insertelement <2 x double> %110, double %109, i64 1
  %112 = getelementptr inbounds [1200 x double], ptr %3, i64 %45, i64 %96
  %113 = getelementptr inbounds double, ptr %112, i64 2
  %114 = load <2 x double>, ptr %112, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %115 = load <2 x double>, ptr %113, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %116 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %94, <2 x double> %107, <2 x double> %114)
  %117 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %94, <2 x double> %111, <2 x double> %115)
  store <2 x double> %116, ptr %112, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  store <2 x double> %117, ptr %113, align 8, !tbaa !5, !alias.scope !20, !noalias !17
  %118 = add nuw i64 %96, 4
  %119 = icmp eq i64 %118, %82
  br i1 %119, label %120, label %95, !llvm.loop !22

120:                                              ; preds = %95
  br i1 %83, label %148, label %121

121:                                              ; preds = %86, %120
  %122 = phi i64 [ 0, %86 ], [ %82, %120 ]
  br i1 %85, label %130, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds [1000 x double], ptr %4, i64 %122, i64 %87
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds [1200 x double], ptr %3, i64 %45, i64 %122
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = tail call double @llvm.fmuladd.f64(double %90, double %125, double %127)
  store double %128, ptr %126, align 8, !tbaa !5
  %129 = or disjoint i64 %122, 1
  br label %130

130:                                              ; preds = %123, %121
  %131 = phi i64 [ %122, %121 ], [ %129, %123 ]
  %132 = icmp eq i64 %45, %122
  br i1 %132, label %148, label %133

133:                                              ; preds = %130, %133
  %134 = phi i64 [ %146, %133 ], [ %131, %130 ]
  %135 = getelementptr inbounds [1000 x double], ptr %4, i64 %134, i64 %87
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = getelementptr inbounds [1200 x double], ptr %3, i64 %45, i64 %134
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = tail call double @llvm.fmuladd.f64(double %90, double %136, double %138)
  store double %139, ptr %137, align 8, !tbaa !5
  %140 = add nuw nsw i64 %134, 1
  %141 = getelementptr inbounds [1000 x double], ptr %4, i64 %140, i64 %87
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = getelementptr inbounds [1200 x double], ptr %3, i64 %45, i64 %140
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = tail call double @llvm.fmuladd.f64(double %90, double %142, double %144)
  store double %145, ptr %143, align 8, !tbaa !5
  %146 = add nuw nsw i64 %134, 2
  %147 = icmp eq i64 %146, %46
  br i1 %147, label %148, label %133, !llvm.loop !23

148:                                              ; preds = %130, %133, %120
  %149 = add nuw nsw i64 %87, 1
  %150 = icmp eq i64 %149, 1000
  br i1 %150, label %151, label %86, !llvm.loop !24

151:                                              ; preds = %148
  %152 = add nuw nsw i64 %45, 1
  %153 = add nuw nsw i64 %46, 1
  %154 = icmp eq i64 %152, 1200
  br i1 %154, label %155, label %44, !llvm.loop !25

155:                                              ; preds = %151
  %156 = load ptr, ptr @stdout, align 8, !tbaa !26
  %157 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %156)
  %158 = load ptr, ptr @stdout, align 8, !tbaa !26
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %160

160:                                              ; preds = %179, %155
  %161 = phi i64 [ 0, %155 ], [ %180, %179 ]
  %162 = mul nuw nsw i64 %161, 1200
  br label %163

163:                                              ; preds = %172, %160
  %164 = phi i64 [ 0, %160 ], [ %177, %172 ]
  %165 = add nuw nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  %167 = urem i32 %166, 20
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load ptr, ptr @stdout, align 8, !tbaa !26
  %171 = tail call i32 @fputc(i32 10, ptr %170)
  br label %172

172:                                              ; preds = %169, %163
  %173 = load ptr, ptr @stdout, align 8, !tbaa !26
  %174 = getelementptr inbounds [1200 x double], ptr %3, i64 %161, i64 %164
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.4, double noundef %175)
  %177 = add nuw nsw i64 %164, 1
  %178 = icmp eq i64 %177, 1200
  br i1 %178, label %179, label %163, !llvm.loop !28

179:                                              ; preds = %172
  %180 = add nuw nsw i64 %161, 1
  %181 = icmp eq i64 %180, 1200
  br i1 %181, label %182, label %160, !llvm.loop !29

182:                                              ; preds = %179
  %183 = load ptr, ptr @stdout, align 8, !tbaa !26
  %184 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %183, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %185 = load ptr, ptr @stdout, align 8, !tbaa !26
  %186 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %185)
  tail call void @free(ptr noundef nonnull %3) #7
  tail call void @free(ptr noundef %4) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!13 = distinct !{!13, !10, !11, !12}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !12, !11}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
