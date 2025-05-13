; ModuleID = 'outputs/src_PolyBenchC-4.2.1_nussinov_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_nussinov_opt_2.c"
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

17:                                               ; preds = %86, %15
  %18 = phi i64 [ 2499, %15 ], [ %87, %86 ]
  %19 = phi i64 [ 2500, %15 ], [ %89, %86 ]
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp ult i64 %18, 2499
  br i1 %21, label %22, label %86

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, ptr %3, i64 %18
  %24 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %19
  %25 = add nuw nsw i64 %19, 1
  br label %26

26:                                               ; preds = %80, %22
  %27 = phi i64 [ %85, %80 ], [ 0, %22 ]
  %28 = phi i64 [ %83, %80 ], [ %19, %22 ]
  %29 = add nsw i64 %28, -1
  %30 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !12
  %32 = getelementptr inbounds [2500 x i32], ptr %4, i64 %20, i64 %28
  %33 = load i32, ptr %32, align 4, !tbaa !12
  %34 = tail call i32 @llvm.smax.i32(i32 %31, i32 %33)
  %35 = getelementptr inbounds [2500 x i32], ptr %4, i64 %20, i64 %29
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %37 = load i8, ptr %23, align 1, !tbaa !5
  %38 = sext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %3, i64 %28
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, %38
  %43 = icmp eq i32 %42, 3
  %44 = zext i1 %43 to i32
  %45 = add nsw i32 %36, %44
  %46 = tail call i32 @llvm.smax.i32(i32 %34, i32 %45)
  %47 = icmp ult i64 %20, %28
  br i1 %47, label %48, label %80

48:                                               ; preds = %26
  %49 = and i64 %27, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %24, align 4, !tbaa !12
  %53 = getelementptr inbounds [2500 x i32], ptr %4, i64 %25, i64 %28
  %54 = load i32, ptr %53, align 4, !tbaa !12
  %55 = add nsw i32 %54, %52
  %56 = tail call i32 @llvm.smax.i32(i32 %46, i32 %55)
  br label %57

57:                                               ; preds = %51, %48
  %58 = phi i32 [ undef, %48 ], [ %56, %51 ]
  %59 = phi i64 [ %19, %48 ], [ %25, %51 ]
  %60 = phi i32 [ %46, %48 ], [ %56, %51 ]
  %61 = icmp eq i64 %27, 1
  br i1 %61, label %80, label %62

62:                                               ; preds = %57, %62
  %63 = phi i64 [ %74, %62 ], [ %59, %57 ]
  %64 = phi i32 [ %78, %62 ], [ %60, %57 ]
  %65 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %63
  %66 = load i32, ptr %65, align 4, !tbaa !12
  %67 = add nuw nsw i64 %63, 1
  %68 = getelementptr inbounds [2500 x i32], ptr %4, i64 %67, i64 %28
  %69 = load i32, ptr %68, align 4, !tbaa !12
  %70 = add nsw i32 %69, %66
  %71 = tail call i32 @llvm.smax.i32(i32 %64, i32 %70)
  %72 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %67
  %73 = load i32, ptr %72, align 4, !tbaa !12
  %74 = add nuw nsw i64 %63, 2
  %75 = getelementptr inbounds [2500 x i32], ptr %4, i64 %74, i64 %28
  %76 = load i32, ptr %75, align 4, !tbaa !12
  %77 = add nsw i32 %76, %73
  %78 = tail call i32 @llvm.smax.i32(i32 %71, i32 %77)
  %79 = icmp eq i64 %74, %28
  br i1 %79, label %80, label %62, !llvm.loop !14

80:                                               ; preds = %57, %62, %26
  %81 = phi i32 [ %46, %26 ], [ %58, %57 ], [ %78, %62 ]
  %82 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %28
  store i32 %81, ptr %82, align 4, !tbaa !12
  %83 = add nuw nsw i64 %28, 1
  %84 = icmp eq i64 %83, 2500
  %85 = add i64 %27, 1
  br i1 %84, label %86, label %26, !llvm.loop !15

86:                                               ; preds = %80, %17
  %87 = add nsw i64 %18, -1
  %88 = icmp eq i64 %18, 0
  %89 = add nsw i64 %19, -1
  br i1 %88, label %90, label %17, !llvm.loop !16

90:                                               ; preds = %86
  %91 = load ptr, ptr @stdout, align 8, !tbaa !17
  %92 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %91)
  %93 = load ptr, ptr @stdout, align 8, !tbaa !17
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %95

95:                                               ; preds = %115, %90
  %96 = phi i32 [ 2500, %90 ], [ %118, %115 ]
  %97 = phi i64 [ 0, %90 ], [ %117, %115 ]
  %98 = phi i32 [ 0, %90 ], [ %116, %115 ]
  br label %99

99:                                               ; preds = %107, %95
  %100 = phi i64 [ %97, %95 ], [ %113, %107 ]
  %101 = phi i32 [ %98, %95 ], [ %112, %107 ]
  %102 = srem i32 %101, 20
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load ptr, ptr @stdout, align 8, !tbaa !17
  %106 = tail call i32 @fputc(i32 10, ptr %105)
  br label %107

107:                                              ; preds = %104, %99
  %108 = load ptr, ptr @stdout, align 8, !tbaa !17
  %109 = getelementptr inbounds [2500 x i32], ptr %4, i64 %97, i64 %100
  %110 = load i32, ptr %109, align 4, !tbaa !12
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.4, i32 noundef %110)
  %112 = add nsw i32 %101, 1
  %113 = add nuw nsw i64 %100, 1
  %114 = icmp eq i64 %113, 2500
  br i1 %114, label %115, label %99, !llvm.loop !19

115:                                              ; preds = %107
  %116 = add i32 %98, %96
  %117 = add nuw nsw i64 %97, 1
  %118 = add nsw i32 %96, -1
  %119 = icmp eq i64 %117, 2500
  br i1 %119, label %120, label %95, !llvm.loop !20

120:                                              ; preds = %115
  %121 = load ptr, ptr @stdout, align 8, !tbaa !17
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %123 = load ptr, ptr @stdout, align 8, !tbaa !17
  %124 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %123)
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
