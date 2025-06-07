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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %4, i8 0, i64 25000000, i1 false), !tbaa !12
  br label %17

17:                                               ; preds = %61, %15
  %18 = phi i64 [ 2499, %15 ], [ %62, %61 ]
  %19 = phi i64 [ 2500, %15 ], [ %64, %61 ]
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp ult i64 %18, 2499
  br i1 %21, label %22, label %61

22:                                               ; preds = %17, %57
  %23 = phi i64 [ %59, %57 ], [ %19, %17 ]
  %24 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !12
  %26 = icmp ult i64 %20, %23
  br i1 %26, label %27, label %57

27:                                               ; preds = %22, %27
  %28 = phi i64 [ %38, %27 ], [ %19, %22 ]
  %29 = phi i32 [ %43, %27 ], [ %25, %22 ]
  %30 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !12
  %32 = add nuw nsw i64 %28, 1
  %33 = getelementptr inbounds [2500 x i32], ptr %4, i64 %32, i64 %23
  %34 = load i32, ptr %33, align 4, !tbaa !12
  %35 = add nsw i32 %34, %31
  %36 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %32
  %37 = load i32, ptr %36, align 4, !tbaa !12
  %38 = add nuw nsw i64 %28, 2
  %39 = getelementptr inbounds [2500 x i32], ptr %4, i64 %38, i64 %23
  %40 = load i32, ptr %39, align 4, !tbaa !12
  %41 = add nsw i32 %40, %37
  %42 = tail call i32 @llvm.smax.i32(i32 %29, i32 %35)
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 %41)
  %44 = icmp ult i64 %38, %23
  br i1 %44, label %27, label %45, !llvm.loop !14

45:                                               ; preds = %27
  %46 = sub nuw nsw i64 %23, %18
  %47 = and i64 %46, 1
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = add nsw i64 %23, -1
  %51 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !12
  %53 = getelementptr inbounds [2500 x i32], ptr %4, i64 %23, i64 %23
  %54 = load i32, ptr %53, align 4, !tbaa !12
  %55 = add nsw i32 %54, %52
  %56 = tail call i32 @llvm.smax.i32(i32 %43, i32 %55)
  br label %57

57:                                               ; preds = %49, %45, %22
  %58 = phi i32 [ %56, %49 ], [ %43, %45 ], [ %25, %22 ]
  store i32 %58, ptr %24, align 4, !tbaa !12
  %59 = add nuw nsw i64 %23, 1
  %60 = icmp eq i64 %59, 2500
  br i1 %60, label %61, label %22, !llvm.loop !15

61:                                               ; preds = %57, %17
  %62 = add nsw i64 %18, -1
  %63 = icmp eq i64 %18, 0
  %64 = add nsw i64 %19, -1
  br i1 %63, label %65, label %17, !llvm.loop !16

65:                                               ; preds = %61
  %66 = load ptr, ptr @stdout, align 8, !tbaa !17
  %67 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %66)
  %68 = load ptr, ptr @stdout, align 8, !tbaa !17
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %70

70:                                               ; preds = %90, %65
  %71 = phi i32 [ 2500, %65 ], [ %93, %90 ]
  %72 = phi i64 [ 0, %65 ], [ %92, %90 ]
  %73 = phi i32 [ 0, %65 ], [ %91, %90 ]
  br label %74

74:                                               ; preds = %82, %70
  %75 = phi i64 [ %72, %70 ], [ %88, %82 ]
  %76 = phi i32 [ %73, %70 ], [ %87, %82 ]
  %77 = srem i32 %76, 20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load ptr, ptr @stdout, align 8, !tbaa !17
  %81 = tail call i32 @fputc(i32 10, ptr %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load ptr, ptr @stdout, align 8, !tbaa !17
  %84 = getelementptr inbounds [2500 x i32], ptr %4, i64 %72, i64 %75
  %85 = load i32, ptr %84, align 4, !tbaa !12
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.4, i32 noundef %85)
  %87 = add nsw i32 %76, 1
  %88 = add nuw nsw i64 %75, 1
  %89 = icmp eq i64 %88, 2500
  br i1 %89, label %90, label %74, !llvm.loop !19

90:                                               ; preds = %82
  %91 = add i32 %73, %71
  %92 = add nuw nsw i64 %72, 1
  %93 = add nsw i32 %71, -1
  %94 = icmp eq i64 %92, 2500
  br i1 %94, label %95, label %70, !llvm.loop !20

95:                                               ; preds = %90
  %96 = load ptr, ptr @stdout, align 8, !tbaa !17
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %98 = load ptr, ptr @stdout, align 8, !tbaa !17
  %99 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %98)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef nonnull %4) #7
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
