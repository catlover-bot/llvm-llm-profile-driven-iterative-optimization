; ModuleID = 'outputs/src_PolyBenchC-4.2.1_floyd-warshall_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_floyd-warshall_opt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 7840000, i32 noundef 4) #6
  br label %4

4:                                                ; preds = %2, %30
  %5 = phi i64 [ 0, %2 ], [ %31, %30 ]
  %6 = insertelement <4 x i64> poison, i64 %5, i64 0
  %7 = shufflevector <4 x i64> %6, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi i64 [ 0, %4 ], [ %27, %8 ]
  %10 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %4 ], [ %28, %8 ]
  %11 = add nuw nsw <4 x i64> %10, %7
  %12 = trunc <4 x i64> %11 to <4 x i32>
  %13 = urem <4 x i32> %12, <i32 13, i32 13, i32 13, i32 13>
  %14 = icmp ne <4 x i32> %13, zeroinitializer
  %15 = urem <4 x i32> %12, <i32 7, i32 7, i32 7, i32 7>
  %16 = icmp ne <4 x i32> %15, zeroinitializer
  %17 = and <4 x i1> %14, %16
  %18 = mul nuw nsw <4 x i64> %10, %7
  %19 = trunc <4 x i64> %18 to <4 x i32>
  %20 = urem <4 x i32> %19, <i32 7, i32 7, i32 7, i32 7>
  %21 = add nuw nsw <4 x i32> %20, <i32 1, i32 1, i32 1, i32 1>
  %22 = urem <4 x i32> %12, <i32 11, i32 11, i32 11, i32 11>
  %23 = icmp eq <4 x i32> %22, zeroinitializer
  %24 = select <4 x i1> %23, <4 x i32> <i32 999, i32 999, i32 999, i32 999>, <4 x i32> %21
  %25 = select <4 x i1> %17, <4 x i32> %24, <4 x i32> <i32 999, i32 999, i32 999, i32 999>
  %26 = getelementptr inbounds [2800 x i32], ptr %3, i64 %5, i64 %9
  store <4 x i32> %25, ptr %26, align 4, !tbaa !5
  %27 = add nuw i64 %9, 4
  %28 = add <4 x i64> %10, <i64 4, i64 4, i64 4, i64 4>
  %29 = icmp eq i64 %27, 2800
  br i1 %29, label %30, label %8, !llvm.loop !9

30:                                               ; preds = %8
  %31 = add nuw nsw i64 %5, 1
  %32 = icmp eq i64 %31, 2800
  br i1 %32, label %33, label %4, !llvm.loop !13

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %3, i64 31360000
  %35 = getelementptr i8, ptr %3, i64 11200
  br label %36

36:                                               ; preds = %33, %89
  %37 = phi i64 [ %90, %89 ], [ 0, %33 ]
  %38 = mul nuw nsw i64 %37, 11200
  %39 = getelementptr i8, ptr %3, i64 %38
  %40 = getelementptr i8, ptr %35, i64 %38
  %41 = getelementptr inbounds [2800 x i32], ptr %3, i64 %37
  %42 = icmp ult ptr %3, %40
  %43 = icmp ult ptr %39, %34
  %44 = and i1 %42, %43
  br label %45

45:                                               ; preds = %86, %36
  %46 = phi i64 [ 0, %36 ], [ %87, %86 ]
  %47 = getelementptr inbounds [2800 x i32], ptr %3, i64 %46
  %48 = getelementptr inbounds i32, ptr %47, i64 %37
  %49 = load i32, ptr %48, align 4, !tbaa !5
  br i1 %44, label %69, label %50

50:                                               ; preds = %45
  %51 = insertelement <4 x i32> poison, i32 %49, i64 0
  %52 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i64 [ 0, %50 ], [ %67, %53 ]
  %55 = getelementptr inbounds i32, ptr %41, i64 %54
  %56 = getelementptr inbounds i32, ptr %55, i64 4
  %57 = load <4 x i32>, ptr %55, align 4, !tbaa !5, !alias.scope !14
  %58 = load <4 x i32>, ptr %56, align 4, !tbaa !5, !alias.scope !14
  %59 = add nsw <4 x i32> %57, %52
  %60 = add nsw <4 x i32> %58, %52
  %61 = getelementptr inbounds i32, ptr %47, i64 %54
  %62 = getelementptr inbounds i32, ptr %61, i64 4
  %63 = load <4 x i32>, ptr %61, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  %64 = load <4 x i32>, ptr %62, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  %65 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %63, <4 x i32> %59)
  %66 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %64, <4 x i32> %60)
  store <4 x i32> %65, ptr %61, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  store <4 x i32> %66, ptr %62, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  %67 = add nuw i64 %54, 8
  %68 = icmp eq i64 %67, 2800
  br i1 %68, label %86, label %53, !llvm.loop !19

69:                                               ; preds = %45, %69
  %70 = phi i64 [ %84, %69 ], [ 0, %45 ]
  %71 = getelementptr inbounds i32, ptr %41, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !5
  %73 = add nsw i32 %72, %49
  %74 = getelementptr inbounds i32, ptr %47, i64 %70
  %75 = load i32, ptr %74, align 4, !tbaa !5
  %76 = tail call i32 @llvm.smin.i32(i32 %75, i32 %73)
  store i32 %76, ptr %74, align 4, !tbaa !5
  %77 = or disjoint i64 %70, 1
  %78 = getelementptr inbounds i32, ptr %41, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !5
  %80 = add nsw i32 %79, %49
  %81 = getelementptr inbounds i32, ptr %47, i64 %77
  %82 = load i32, ptr %81, align 4, !tbaa !5
  %83 = tail call i32 @llvm.smin.i32(i32 %82, i32 %80)
  store i32 %83, ptr %81, align 4, !tbaa !5
  %84 = add nuw nsw i64 %70, 2
  %85 = icmp eq i64 %84, 2800
  br i1 %85, label %86, label %69, !llvm.loop !20

86:                                               ; preds = %53, %69
  %87 = add nuw nsw i64 %46, 1
  %88 = icmp eq i64 %87, 2800
  br i1 %88, label %89, label %45, !llvm.loop !21

89:                                               ; preds = %86
  %90 = add nuw nsw i64 %37, 1
  %91 = icmp eq i64 %90, 2800
  br i1 %91, label %92, label %36, !llvm.loop !22

92:                                               ; preds = %89
  %93 = load ptr, ptr @stdout, align 8, !tbaa !23
  %94 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %93)
  %95 = load ptr, ptr @stdout, align 8, !tbaa !23
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %97

97:                                               ; preds = %116, %92
  %98 = phi i64 [ 0, %92 ], [ %117, %116 ]
  %99 = mul nuw nsw i64 %98, 2800
  br label %100

100:                                              ; preds = %109, %97
  %101 = phi i64 [ 0, %97 ], [ %114, %109 ]
  %102 = add nuw nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  %104 = urem i32 %103, 20
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load ptr, ptr @stdout, align 8, !tbaa !23
  %108 = tail call i32 @fputc(i32 10, ptr %107)
  br label %109

109:                                              ; preds = %106, %100
  %110 = load ptr, ptr @stdout, align 8, !tbaa !23
  %111 = getelementptr inbounds [2800 x i32], ptr %3, i64 %98, i64 %101
  %112 = load i32, ptr %111, align 4, !tbaa !5
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.4, i32 noundef %112)
  %114 = add nuw nsw i64 %101, 1
  %115 = icmp eq i64 %114, 2800
  br i1 %115, label %116, label %100, !llvm.loop !25

116:                                              ; preds = %109
  %117 = add nuw nsw i64 %98, 1
  %118 = icmp eq i64 %117, 2800
  br i1 %118, label %119, label %97, !llvm.loop !26

119:                                              ; preds = %116
  %120 = load ptr, ptr @stdout, align 8, !tbaa !23
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %122 = load ptr, ptr @stdout, align 8, !tbaa !23
  %123 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %122)
  tail call void @free(ptr noundef nonnull %3) #6
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
