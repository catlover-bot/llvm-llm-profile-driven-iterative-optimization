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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 7840000, i32 noundef 4) #5
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
  %12 = mul nuw nsw <4 x i64> %10, %7
  %13 = trunc <4 x i64> %12 to <4 x i32>
  %14 = urem <4 x i32> %13, <i32 7, i32 7, i32 7, i32 7>
  %15 = add nuw nsw <4 x i32> %14, <i32 1, i32 1, i32 1, i32 1>
  %16 = getelementptr inbounds [2800 x i32], ptr %3, i64 %5, i64 %9
  %17 = trunc <4 x i64> %11 to <4 x i32>
  %18 = urem <4 x i32> %17, <i32 13, i32 13, i32 13, i32 13>
  %19 = icmp eq <4 x i32> %18, zeroinitializer
  %20 = urem <4 x i32> %17, <i32 7, i32 7, i32 7, i32 7>
  %21 = icmp eq <4 x i32> %20, zeroinitializer
  %22 = or <4 x i1> %19, %21
  %23 = urem <4 x i32> %17, <i32 11, i32 11, i32 11, i32 11>
  %24 = icmp eq <4 x i32> %23, zeroinitializer
  %25 = or <4 x i1> %24, %22
  %26 = select <4 x i1> %25, <4 x i32> <i32 999, i32 999, i32 999, i32 999>, <4 x i32> %15
  store <4 x i32> %26, ptr %16, align 4, !tbaa !5
  %27 = add nuw i64 %9, 4
  %28 = add <4 x i64> %10, <i64 4, i64 4, i64 4, i64 4>
  %29 = icmp eq i64 %27, 2800
  br i1 %29, label %30, label %8, !llvm.loop !9

30:                                               ; preds = %8
  %31 = add nuw nsw i64 %5, 1
  %32 = icmp eq i64 %31, 2800
  br i1 %32, label %33, label %4, !llvm.loop !13

33:                                               ; preds = %30, %63
  %34 = phi i64 [ %64, %63 ], [ 0, %30 ]
  br label %35

35:                                               ; preds = %60, %33
  %36 = phi i64 [ 0, %33 ], [ %61, %60 ]
  %37 = getelementptr inbounds [2800 x i32], ptr %3, i64 %36, i64 %34
  %38 = load i32, ptr %37, align 4, !tbaa !5
  br label %39

39:                                               ; preds = %57, %35
  %40 = phi i64 [ 0, %35 ], [ %58, %57 ]
  %41 = getelementptr inbounds [2800 x i32], ptr %3, i64 %34, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = add nsw i32 %42, %38
  %44 = getelementptr inbounds [2800 x i32], ptr %3, i64 %36, i64 %40
  %45 = load i32, ptr %44, align 4, !tbaa !5
  %46 = icmp sgt i32 %45, %43
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 %43, ptr %44, align 4, !tbaa !5
  br label %48

48:                                               ; preds = %47, %39
  %49 = or disjoint i64 %40, 1
  %50 = getelementptr inbounds [2800 x i32], ptr %3, i64 %34, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, %38
  %53 = getelementptr inbounds [2800 x i32], ptr %3, i64 %36, i64 %49
  %54 = load i32, ptr %53, align 4, !tbaa !5
  %55 = icmp sgt i32 %54, %52
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 %52, ptr %53, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %56, %48
  %58 = add nuw nsw i64 %40, 2
  %59 = icmp ult i64 %40, 2798
  br i1 %59, label %39, label %60, !llvm.loop !14

60:                                               ; preds = %57
  %61 = add nuw nsw i64 %36, 1
  %62 = icmp eq i64 %61, 2800
  br i1 %62, label %63, label %35, !llvm.loop !15

63:                                               ; preds = %60
  %64 = add nuw nsw i64 %34, 1
  %65 = icmp eq i64 %64, 2800
  br i1 %65, label %66, label %33, !llvm.loop !16

66:                                               ; preds = %63
  %67 = load ptr, ptr @stdout, align 8, !tbaa !17
  %68 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %67)
  %69 = load ptr, ptr @stdout, align 8, !tbaa !17
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %71

71:                                               ; preds = %90, %66
  %72 = phi i64 [ 0, %66 ], [ %91, %90 ]
  %73 = mul nuw nsw i64 %72, 2800
  br label %74

74:                                               ; preds = %83, %71
  %75 = phi i64 [ 0, %71 ], [ %88, %83 ]
  %76 = add nuw nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  %78 = urem i32 %77, 20
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load ptr, ptr @stdout, align 8, !tbaa !17
  %82 = tail call i32 @fputc(i32 10, ptr %81)
  br label %83

83:                                               ; preds = %80, %74
  %84 = load ptr, ptr @stdout, align 8, !tbaa !17
  %85 = getelementptr inbounds [2800 x i32], ptr %3, i64 %72, i64 %75
  %86 = load i32, ptr %85, align 4, !tbaa !5
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.4, i32 noundef %86)
  %88 = add nuw nsw i64 %75, 1
  %89 = icmp eq i64 %88, 2800
  br i1 %89, label %90, label %74, !llvm.loop !19

90:                                               ; preds = %83
  %91 = add nuw nsw i64 %72, 1
  %92 = icmp eq i64 %91, 2800
  br i1 %92, label %93, label %71, !llvm.loop !20

93:                                               ; preds = %90
  %94 = load ptr, ptr @stdout, align 8, !tbaa !17
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %96 = load ptr, ptr @stdout, align 8, !tbaa !17
  %97 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %96)
  tail call void @free(ptr noundef nonnull %3) #5
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
