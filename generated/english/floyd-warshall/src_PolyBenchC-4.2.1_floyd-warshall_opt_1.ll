; ModuleID = 'outputs/src_PolyBenchC-4.2.1_floyd-warshall_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_floyd-warshall_opt_1.c"
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
  %11 = mul nuw nsw <4 x i64> %10, %7
  %12 = trunc <4 x i64> %11 to <4 x i32>
  %13 = urem <4 x i32> %12, <i32 7, i32 7, i32 7, i32 7>
  %14 = add nuw nsw <4 x i32> %13, <i32 1, i32 1, i32 1, i32 1>
  %15 = getelementptr inbounds [2800 x i32], ptr %3, i64 %5, i64 %9
  %16 = add nuw nsw <4 x i64> %10, %7
  %17 = trunc <4 x i64> %16 to <4 x i32>
  %18 = urem <4 x i32> %17, <i32 13, i32 13, i32 13, i32 13>
  %19 = icmp eq <4 x i32> %18, zeroinitializer
  %20 = urem <4 x i32> %17, <i32 7, i32 7, i32 7, i32 7>
  %21 = icmp eq <4 x i32> %20, zeroinitializer
  %22 = or <4 x i1> %19, %21
  %23 = urem <4 x i32> %17, <i32 11, i32 11, i32 11, i32 11>
  %24 = icmp eq <4 x i32> %23, zeroinitializer
  %25 = or <4 x i1> %24, %22
  %26 = select <4 x i1> %25, <4 x i32> <i32 999, i32 999, i32 999, i32 999>, <4 x i32> %14
  store <4 x i32> %26, ptr %15, align 4, !tbaa !5
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
  %35 = getelementptr i8, ptr %3, i64 31348804
  %36 = getelementptr i8, ptr %3, i64 11200
  br label %37

37:                                               ; preds = %33, %99
  %38 = phi i64 [ %100, %99 ], [ 0, %33 ]
  %39 = shl nuw nsw i64 %38, 2
  %40 = getelementptr i8, ptr %3, i64 %39
  %41 = getelementptr i8, ptr %35, i64 %39
  %42 = mul nuw nsw i64 %38, 11200
  %43 = getelementptr i8, ptr %3, i64 %42
  %44 = getelementptr i8, ptr %36, i64 %42
  %45 = getelementptr inbounds [2800 x i32], ptr %3, i64 %38
  %46 = icmp ult ptr %3, %41
  %47 = icmp ult ptr %40, %34
  %48 = and i1 %46, %47
  %49 = icmp ult ptr %3, %44
  %50 = icmp ult ptr %43, %34
  %51 = and i1 %49, %50
  %52 = or i1 %48, %51
  br label %53

53:                                               ; preds = %96, %37
  %54 = phi i64 [ 0, %37 ], [ %97, %96 ]
  %55 = getelementptr inbounds [2800 x i32], ptr %3, i64 %54
  %56 = getelementptr inbounds i32, ptr %55, i64 %38
  br i1 %52, label %77, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %56, align 4, !tbaa !5, !alias.scope !14
  %59 = insertelement <4 x i32> poison, i32 %58, i64 0
  %60 = shufflevector <4 x i32> %59, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %61

61:                                               ; preds = %57, %61
  %62 = phi i64 [ %75, %61 ], [ 0, %57 ]
  %63 = getelementptr inbounds i32, ptr %55, i64 %62
  %64 = getelementptr inbounds i32, ptr %63, i64 4
  %65 = load <4 x i32>, ptr %63, align 4, !tbaa !5, !alias.scope !17, !noalias !19
  %66 = load <4 x i32>, ptr %64, align 4, !tbaa !5, !alias.scope !17, !noalias !19
  %67 = getelementptr inbounds i32, ptr %45, i64 %62
  %68 = getelementptr inbounds i32, ptr %67, i64 4
  %69 = load <4 x i32>, ptr %67, align 4, !tbaa !5, !alias.scope !21
  %70 = load <4 x i32>, ptr %68, align 4, !tbaa !5, !alias.scope !21
  %71 = add nsw <4 x i32> %69, %60
  %72 = add nsw <4 x i32> %70, %60
  %73 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %65, <4 x i32> %71)
  %74 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %66, <4 x i32> %72)
  store <4 x i32> %73, ptr %63, align 4, !tbaa !5, !alias.scope !17, !noalias !19
  store <4 x i32> %74, ptr %64, align 4, !tbaa !5, !alias.scope !17, !noalias !19
  %75 = add nuw i64 %62, 8
  %76 = icmp eq i64 %75, 2800
  br i1 %76, label %96, label %61, !llvm.loop !22

77:                                               ; preds = %53, %77
  %78 = phi i64 [ %94, %77 ], [ 0, %53 ]
  %79 = getelementptr inbounds i32, ptr %55, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !5
  %81 = load i32, ptr %56, align 4, !tbaa !5
  %82 = getelementptr inbounds i32, ptr %45, i64 %78
  %83 = load i32, ptr %82, align 4, !tbaa !5
  %84 = add nsw i32 %83, %81
  %85 = tail call i32 @llvm.smin.i32(i32 %80, i32 %84)
  store i32 %85, ptr %79, align 4, !tbaa !5
  %86 = or disjoint i64 %78, 1
  %87 = getelementptr inbounds i32, ptr %55, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !5
  %89 = load i32, ptr %56, align 4, !tbaa !5
  %90 = getelementptr inbounds i32, ptr %45, i64 %86
  %91 = load i32, ptr %90, align 4, !tbaa !5
  %92 = add nsw i32 %91, %89
  %93 = tail call i32 @llvm.smin.i32(i32 %88, i32 %92)
  store i32 %93, ptr %87, align 4, !tbaa !5
  %94 = add nuw nsw i64 %78, 2
  %95 = icmp eq i64 %94, 2800
  br i1 %95, label %96, label %77, !llvm.loop !23

96:                                               ; preds = %61, %77
  %97 = add nuw nsw i64 %54, 1
  %98 = icmp eq i64 %97, 2800
  br i1 %98, label %99, label %53, !llvm.loop !24

99:                                               ; preds = %96
  %100 = add nuw nsw i64 %38, 1
  %101 = icmp eq i64 %100, 2800
  br i1 %101, label %102, label %37, !llvm.loop !25

102:                                              ; preds = %99
  %103 = load ptr, ptr @stdout, align 8, !tbaa !26
  %104 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %103)
  %105 = load ptr, ptr @stdout, align 8, !tbaa !26
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %107

107:                                              ; preds = %126, %102
  %108 = phi i64 [ 0, %102 ], [ %127, %126 ]
  %109 = mul nuw nsw i64 %108, 2800
  br label %110

110:                                              ; preds = %119, %107
  %111 = phi i64 [ 0, %107 ], [ %124, %119 ]
  %112 = add nuw nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  %114 = urem i32 %113, 20
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load ptr, ptr @stdout, align 8, !tbaa !26
  %118 = tail call i32 @fputc(i32 10, ptr %117)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load ptr, ptr @stdout, align 8, !tbaa !26
  %121 = getelementptr inbounds [2800 x i32], ptr %3, i64 %108, i64 %111
  %122 = load i32, ptr %121, align 4, !tbaa !5
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.4, i32 noundef %122)
  %124 = add nuw nsw i64 %111, 1
  %125 = icmp eq i64 %124, 2800
  br i1 %125, label %126, label %110, !llvm.loop !28

126:                                              ; preds = %119
  %127 = add nuw nsw i64 %108, 1
  %128 = icmp eq i64 %127, 2800
  br i1 %128, label %129, label %107, !llvm.loop !29

129:                                              ; preds = %126
  %130 = load ptr, ptr @stdout, align 8, !tbaa !26
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %132 = load ptr, ptr @stdout, align 8, !tbaa !26
  %133 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %132)
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
!19 = !{!15, !20}
!20 = distinct !{!20, !16}
!21 = !{!20}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
