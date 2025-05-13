; ModuleID = 'outputs/src_PolyBenchC-4.2.1_nussinov_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_nussinov_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 2500, i32 noundef 1) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 6250000, i32 noundef 4) #7
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %12, %5 ]
  %7 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %2 ], [ %13, %5 ]
  %8 = trunc <16 x i64> %7 to <16 x i8>
  %9 = add <16 x i8> %8, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %10 = and <16 x i8> %9, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  %11 = getelementptr inbounds i8, ptr %3, i64 %6
  store <16 x i8> %10, ptr %11, align 1, !tbaa !5
  %12 = add nuw i64 %6, 16
  %13 = add <16 x i64> %7, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %14 = icmp eq i64 %12, 2496
  br i1 %14, label %15, label %5, !llvm.loop !8

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %3, i64 2496
  store <4 x i8> <i8 1, i8 2, i8 3, i8 0>, ptr %16, align 1, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %4, i8 0, i64 25000000, i1 false)
  br label %17

17:                                               ; preds = %90, %15
  %18 = phi i64 [ 2499, %15 ], [ %91, %90 ]
  %19 = phi i64 [ 2500, %15 ], [ %93, %90 ]
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp ult i64 %18, 2499
  br i1 %21, label %22, label %90

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, ptr %3, i64 %18
  %24 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %19
  %25 = add nuw nsw i64 %19, 1
  br label %26

26:                                               ; preds = %86, %22
  %27 = phi i64 [ %89, %86 ], [ 0, %22 ]
  %28 = phi i64 [ %87, %86 ], [ %19, %22 ]
  %29 = add nsw i64 %28, -1
  %30 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !12
  %32 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !12
  %34 = tail call i32 @llvm.smax.i32(i32 %31, i32 %33)
  %35 = getelementptr inbounds [2500 x i32], ptr %4, i64 %20, i64 %28
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %37 = tail call i32 @llvm.smax.i32(i32 %34, i32 %36)
  store i32 %37, ptr %30, align 4, !tbaa !12
  %38 = icmp ult i64 %18, %29
  %39 = getelementptr inbounds [2500 x i32], ptr %4, i64 %20, i64 %29
  %40 = load i32, ptr %39, align 4, !tbaa !12
  br i1 %38, label %41, label %51

41:                                               ; preds = %26
  %42 = load i8, ptr %23, align 1, !tbaa !5
  %43 = sext i8 %42 to i32
  %44 = getelementptr inbounds i8, ptr %3, i64 %28
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, %43
  %48 = icmp eq i32 %47, 3
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %40, %49
  br label %51

51:                                               ; preds = %41, %26
  %52 = phi i32 [ %50, %41 ], [ %40, %26 ]
  %53 = tail call i32 @llvm.smax.i32(i32 %37, i32 %52)
  store i32 %53, ptr %30, align 4, !tbaa !12
  %54 = icmp ult i64 %20, %28
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = and i64 %27, 1
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %24, align 4, !tbaa !12
  %60 = getelementptr inbounds [2500 x i32], ptr %4, i64 %25, i64 %28
  %61 = load i32, ptr %60, align 4, !tbaa !12
  %62 = add nsw i32 %61, %59
  %63 = tail call i32 @llvm.smax.i32(i32 %53, i32 %62)
  store i32 %63, ptr %30, align 4, !tbaa !12
  br label %64

64:                                               ; preds = %58, %55
  %65 = phi i64 [ %19, %55 ], [ %25, %58 ]
  %66 = phi i32 [ %53, %55 ], [ %63, %58 ]
  %67 = icmp eq i64 %27, 1
  br i1 %67, label %86, label %68

68:                                               ; preds = %64, %68
  %69 = phi i64 [ %80, %68 ], [ %65, %64 ]
  %70 = phi i32 [ %84, %68 ], [ %66, %64 ]
  %71 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %69
  %72 = load i32, ptr %71, align 4, !tbaa !12
  %73 = add nuw nsw i64 %69, 1
  %74 = getelementptr inbounds [2500 x i32], ptr %4, i64 %73, i64 %28
  %75 = load i32, ptr %74, align 4, !tbaa !12
  %76 = add nsw i32 %75, %72
  %77 = tail call i32 @llvm.smax.i32(i32 %70, i32 %76)
  store i32 %77, ptr %30, align 4, !tbaa !12
  %78 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %73
  %79 = load i32, ptr %78, align 4, !tbaa !12
  %80 = add nuw nsw i64 %69, 2
  %81 = getelementptr inbounds [2500 x i32], ptr %4, i64 %80, i64 %28
  %82 = load i32, ptr %81, align 4, !tbaa !12
  %83 = add nsw i32 %82, %79
  %84 = tail call i32 @llvm.smax.i32(i32 %77, i32 %83)
  store i32 %84, ptr %30, align 4, !tbaa !12
  %85 = icmp eq i64 %80, %28
  br i1 %85, label %86, label %68, !llvm.loop !14

86:                                               ; preds = %64, %68, %51
  %87 = add nuw nsw i64 %28, 1
  %88 = icmp eq i64 %87, 2500
  %89 = add i64 %27, 1
  br i1 %88, label %90, label %26, !llvm.loop !15

90:                                               ; preds = %86, %17
  %91 = add nsw i64 %18, -1
  %92 = icmp eq i64 %18, 0
  %93 = add nsw i64 %19, -1
  br i1 %92, label %94, label %17, !llvm.loop !16

94:                                               ; preds = %90
  %95 = load ptr, ptr @stdout, align 8, !tbaa !17
  %96 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %95)
  %97 = load ptr, ptr @stdout, align 8, !tbaa !17
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %99

99:                                               ; preds = %119, %94
  %100 = phi i32 [ 2500, %94 ], [ %122, %119 ]
  %101 = phi i64 [ 0, %94 ], [ %121, %119 ]
  %102 = phi i32 [ 0, %94 ], [ %120, %119 ]
  br label %103

103:                                              ; preds = %111, %99
  %104 = phi i64 [ %101, %99 ], [ %117, %111 ]
  %105 = phi i32 [ %102, %99 ], [ %116, %111 ]
  %106 = srem i32 %105, 20
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load ptr, ptr @stdout, align 8, !tbaa !17
  %110 = tail call i32 @fputc(i32 10, ptr %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load ptr, ptr @stdout, align 8, !tbaa !17
  %113 = getelementptr inbounds [2500 x i32], ptr %4, i64 %101, i64 %104
  %114 = load i32, ptr %113, align 4, !tbaa !12
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.4, i32 noundef %114)
  %116 = add nsw i32 %105, 1
  %117 = add nuw nsw i64 %104, 1
  %118 = icmp eq i64 %117, 2500
  br i1 %118, label %119, label %103, !llvm.loop !19

119:                                              ; preds = %111
  %120 = add i32 %102, %100
  %121 = add nuw nsw i64 %101, 1
  %122 = add nsw i32 %100, -1
  %123 = icmp eq i64 %121, 2500
  br i1 %123, label %124, label %99, !llvm.loop !20

124:                                              ; preds = %119
  %125 = load ptr, ptr @stdout, align 8, !tbaa !17
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %127 = load ptr, ptr @stdout, align 8, !tbaa !17
  %128 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %127)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef nonnull %4) #7
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
