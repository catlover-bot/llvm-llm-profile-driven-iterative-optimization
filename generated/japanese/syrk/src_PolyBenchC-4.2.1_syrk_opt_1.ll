; ModuleID = 'outputs/src_PolyBenchC-4.2.1_syrk_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_syrk_opt_1.c"
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

5:                                                ; preds = %2, %22
  %6 = phi i64 [ 0, %2 ], [ %23, %22 ]
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
  %17 = fdiv <2 x double> %16, <double 1.200000e+03, double 1.200000e+03>
  %18 = getelementptr inbounds [1000 x double], ptr %4, i64 %6, i64 %10
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = add nuw i64 %10, 2
  %20 = add <2 x i64> %11, <i64 2, i64 2>
  %21 = icmp eq i64 %19, 1000
  br i1 %21, label %22, label %9, !llvm.loop !9

22:                                               ; preds = %9
  %23 = add nuw nsw i64 %6, 1
  %24 = icmp eq i64 %23, 1200
  br i1 %24, label %25, label %5, !llvm.loop !13

25:                                               ; preds = %22, %42
  %26 = phi i64 [ %43, %42 ], [ 0, %22 ]
  %27 = insertelement <2 x i64> poison, i64 %26, i64 0
  %28 = shufflevector <2 x i64> %27, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i64 [ 0, %25 ], [ %39, %29 ]
  %31 = phi <2 x i64> [ <i64 0, i64 1>, %25 ], [ %40, %29 ]
  %32 = mul nuw nsw <2 x i64> %31, %28
  %33 = trunc <2 x i64> %32 to <2 x i32>
  %34 = add <2 x i32> %33, <i32 2, i32 2>
  %35 = urem <2 x i32> %34, <i32 1000, i32 1000>
  %36 = sitofp <2 x i32> %35 to <2 x double>
  %37 = fdiv <2 x double> %36, <double 1.000000e+03, double 1.000000e+03>
  %38 = getelementptr inbounds [1200 x double], ptr %3, i64 %26, i64 %30
  store <2 x double> %37, ptr %38, align 8, !tbaa !5
  %39 = add nuw i64 %30, 2
  %40 = add <2 x i64> %31, <i64 2, i64 2>
  %41 = icmp eq i64 %39, 1200
  br i1 %41, label %42, label %29, !llvm.loop !14

42:                                               ; preds = %29
  %43 = add nuw nsw i64 %26, 1
  %44 = icmp eq i64 %43, 1200
  br i1 %44, label %45, label %25, !llvm.loop !15

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %3, i64 8
  %47 = getelementptr i8, ptr %4, i64 8000
  br label %48

48:                                               ; preds = %45, %145
  %49 = phi i64 [ %146, %145 ], [ 0, %45 ]
  %50 = phi i64 [ %147, %145 ], [ 1, %45 ]
  %51 = mul nuw nsw i64 %49, 9600
  %52 = getelementptr i8, ptr %3, i64 %51
  %53 = mul nuw nsw i64 %49, 9608
  %54 = getelementptr i8, ptr %46, i64 %53
  %55 = mul nuw nsw i64 %49, 8000
  %56 = getelementptr i8, ptr %47, i64 %55
  %57 = getelementptr i8, ptr %4, i64 %55
  %58 = icmp ult i64 %50, 4
  br i1 %58, label %73, label %59

59:                                               ; preds = %48
  %60 = and i64 %50, 9223372036854775804
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i64 [ 0, %59 ], [ %69, %61 ]
  %63 = getelementptr inbounds [1200 x double], ptr %3, i64 %49, i64 %62
  %64 = getelementptr inbounds double, ptr %63, i64 2
  %65 = load <2 x double>, ptr %63, align 8, !tbaa !5
  %66 = load <2 x double>, ptr %64, align 8, !tbaa !5
  %67 = fmul <2 x double> %65, <double 1.200000e+00, double 1.200000e+00>
  %68 = fmul <2 x double> %66, <double 1.200000e+00, double 1.200000e+00>
  store <2 x double> %67, ptr %63, align 8, !tbaa !5
  store <2 x double> %68, ptr %64, align 8, !tbaa !5
  %69 = add nuw i64 %62, 4
  %70 = icmp eq i64 %69, %60
  br i1 %70, label %71, label %61, !llvm.loop !16

71:                                               ; preds = %61
  %72 = icmp eq i64 %50, %60
  br i1 %72, label %82, label %73

73:                                               ; preds = %48, %71
  %74 = phi i64 [ 0, %48 ], [ %60, %71 ]
  br label %75

75:                                               ; preds = %73, %75
  %76 = phi i64 [ %80, %75 ], [ %74, %73 ]
  %77 = getelementptr inbounds [1200 x double], ptr %3, i64 %49, i64 %76
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = fmul double %78, 1.200000e+00
  store double %79, ptr %77, align 8, !tbaa !5
  %80 = add nuw nsw i64 %76, 1
  %81 = icmp eq i64 %80, %50
  br i1 %81, label %82, label %75, !llvm.loop !17

82:                                               ; preds = %75, %71
  %83 = icmp ult i64 %50, 4
  %84 = icmp ult ptr %52, %56
  %85 = icmp ult ptr %4, %54
  %86 = and i1 %84, %85
  %87 = icmp ult ptr %52, %56
  %88 = icmp ult ptr %57, %54
  %89 = and i1 %87, %88
  %90 = or i1 %86, %89
  %91 = and i64 %50, 9223372036854775804
  %92 = icmp eq i64 %50, %91
  %93 = and i64 %50, 1
  %94 = icmp eq i64 %93, 0
  br label %95

95:                                               ; preds = %82, %149
  %96 = phi i64 [ %150, %149 ], [ 0, %82 ]
  %97 = getelementptr inbounds [1000 x double], ptr %4, i64 %49, i64 %96
  %98 = select i1 %83, i1 true, i1 %90
  br i1 %98, label %131, label %99

99:                                               ; preds = %95
  %100 = load double, ptr %97, align 8, !tbaa !5, !alias.scope !18
  %101 = insertelement <2 x double> poison, double %100, i64 0
  %102 = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> zeroinitializer
  %103 = fmul <2 x double> %102, <double 1.500000e+00, double 1.500000e+00>
  %104 = fmul <2 x double> %102, <double 1.500000e+00, double 1.500000e+00>
  br label %105

105:                                              ; preds = %105, %99
  %106 = phi i64 [ 0, %99 ], [ %128, %105 ]
  %107 = or disjoint i64 %106, 1
  %108 = or disjoint i64 %106, 2
  %109 = or disjoint i64 %106, 3
  %110 = getelementptr inbounds [1000 x double], ptr %4, i64 %106, i64 %96
  %111 = getelementptr inbounds [1000 x double], ptr %4, i64 %107, i64 %96
  %112 = getelementptr inbounds [1000 x double], ptr %4, i64 %108, i64 %96
  %113 = getelementptr inbounds [1000 x double], ptr %4, i64 %109, i64 %96
  %114 = load double, ptr %110, align 8, !tbaa !5, !alias.scope !21
  %115 = load double, ptr %111, align 8, !tbaa !5, !alias.scope !21
  %116 = insertelement <2 x double> poison, double %114, i64 0
  %117 = insertelement <2 x double> %116, double %115, i64 1
  %118 = load double, ptr %112, align 8, !tbaa !5, !alias.scope !21
  %119 = load double, ptr %113, align 8, !tbaa !5, !alias.scope !21
  %120 = insertelement <2 x double> poison, double %118, i64 0
  %121 = insertelement <2 x double> %120, double %119, i64 1
  %122 = getelementptr inbounds [1200 x double], ptr %3, i64 %49, i64 %106
  %123 = getelementptr inbounds double, ptr %122, i64 2
  %124 = load <2 x double>, ptr %122, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %125 = load <2 x double>, ptr %123, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %126 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %103, <2 x double> %117, <2 x double> %124)
  %127 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %104, <2 x double> %121, <2 x double> %125)
  store <2 x double> %126, ptr %122, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  store <2 x double> %127, ptr %123, align 8, !tbaa !5, !alias.scope !23, !noalias !25
  %128 = add nuw i64 %106, 4
  %129 = icmp eq i64 %128, %91
  br i1 %129, label %130, label %105, !llvm.loop !26

130:                                              ; preds = %105
  br i1 %92, label %149, label %131

131:                                              ; preds = %95, %130
  %132 = phi i64 [ 0, %95 ], [ %91, %130 ]
  br i1 %94, label %142, label %133

133:                                              ; preds = %131
  %134 = load double, ptr %97, align 8, !tbaa !5
  %135 = fmul double %134, 1.500000e+00
  %136 = getelementptr inbounds [1000 x double], ptr %4, i64 %132, i64 %96
  %137 = load double, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds [1200 x double], ptr %3, i64 %49, i64 %132
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = tail call double @llvm.fmuladd.f64(double %135, double %137, double %139)
  store double %140, ptr %138, align 8, !tbaa !5
  %141 = or disjoint i64 %132, 1
  br label %142

142:                                              ; preds = %133, %131
  %143 = phi i64 [ %132, %131 ], [ %141, %133 ]
  %144 = icmp eq i64 %49, %132
  br i1 %144, label %149, label %152

145:                                              ; preds = %149
  %146 = add nuw nsw i64 %49, 1
  %147 = add nuw nsw i64 %50, 1
  %148 = icmp eq i64 %146, 1200
  br i1 %148, label %171, label %48, !llvm.loop !27

149:                                              ; preds = %142, %152, %130
  %150 = add nuw nsw i64 %96, 1
  %151 = icmp eq i64 %150, 1000
  br i1 %151, label %145, label %95, !llvm.loop !28

152:                                              ; preds = %142, %152
  %153 = phi i64 [ %169, %152 ], [ %143, %142 ]
  %154 = load double, ptr %97, align 8, !tbaa !5
  %155 = fmul double %154, 1.500000e+00
  %156 = getelementptr inbounds [1000 x double], ptr %4, i64 %153, i64 %96
  %157 = load double, ptr %156, align 8, !tbaa !5
  %158 = getelementptr inbounds [1200 x double], ptr %3, i64 %49, i64 %153
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = tail call double @llvm.fmuladd.f64(double %155, double %157, double %159)
  store double %160, ptr %158, align 8, !tbaa !5
  %161 = add nuw nsw i64 %153, 1
  %162 = load double, ptr %97, align 8, !tbaa !5
  %163 = fmul double %162, 1.500000e+00
  %164 = getelementptr inbounds [1000 x double], ptr %4, i64 %161, i64 %96
  %165 = load double, ptr %164, align 8, !tbaa !5
  %166 = getelementptr inbounds [1200 x double], ptr %3, i64 %49, i64 %161
  %167 = load double, ptr %166, align 8, !tbaa !5
  %168 = tail call double @llvm.fmuladd.f64(double %163, double %165, double %167)
  store double %168, ptr %166, align 8, !tbaa !5
  %169 = add nuw nsw i64 %153, 2
  %170 = icmp eq i64 %169, %50
  br i1 %170, label %149, label %152, !llvm.loop !29

171:                                              ; preds = %145
  %172 = load ptr, ptr @stdout, align 8, !tbaa !30
  %173 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %172)
  %174 = load ptr, ptr @stdout, align 8, !tbaa !30
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %176

176:                                              ; preds = %179, %171
  %177 = phi i64 [ 0, %171 ], [ %180, %179 ]
  %178 = mul nuw nsw i64 %177, 1200
  br label %182

179:                                              ; preds = %191
  %180 = add nuw nsw i64 %177, 1
  %181 = icmp eq i64 %180, 1200
  br i1 %181, label %198, label %176, !llvm.loop !32

182:                                              ; preds = %191, %176
  %183 = phi i64 [ 0, %176 ], [ %196, %191 ]
  %184 = add nuw nsw i64 %183, %178
  %185 = trunc i64 %184 to i32
  %186 = urem i32 %185, 20
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load ptr, ptr @stdout, align 8, !tbaa !30
  %190 = tail call i32 @fputc(i32 10, ptr %189)
  br label %191

191:                                              ; preds = %188, %182
  %192 = load ptr, ptr @stdout, align 8, !tbaa !30
  %193 = getelementptr inbounds [1200 x double], ptr %3, i64 %177, i64 %183
  %194 = load double, ptr %193, align 8, !tbaa !5
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %192, ptr noundef nonnull @.str.4, double noundef %194)
  %196 = add nuw nsw i64 %183, 1
  %197 = icmp eq i64 %196, 1200
  br i1 %197, label %179, label %182, !llvm.loop !33

198:                                              ; preds = %179
  %199 = load ptr, ptr @stdout, align 8, !tbaa !30
  %200 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %199, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %201 = load ptr, ptr @stdout, align 8, !tbaa !30
  %202 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %201)
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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !12, !11}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = !{!24}
!24 = distinct !{!24, !20}
!25 = !{!22, !19}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10, !11}
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
