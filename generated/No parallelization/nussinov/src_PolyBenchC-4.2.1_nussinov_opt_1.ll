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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %4, i8 0, i64 25000000, i1 false), !tbaa !12
  br label %17

17:                                               ; preds = %92, %15
  %18 = phi i64 [ 2499, %15 ], [ %93, %92 ]
  %19 = phi i64 [ 2500, %15 ], [ %95, %92 ]
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp ult i64 %18, 2499
  br i1 %21, label %22, label %92

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, ptr %3, i64 %18
  %24 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %19
  %25 = add nuw nsw i64 %19, 1
  br label %26

26:                                               ; preds = %87, %22
  %27 = phi i64 [ %91, %87 ], [ 0, %22 ]
  %28 = phi i64 [ %89, %87 ], [ %19, %22 ]
  %29 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %28
  %30 = add nsw i64 %28, -1
  %31 = load i32, ptr %29, align 4, !tbaa !12
  %32 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !12
  %34 = tail call i32 @llvm.smax.i32(i32 %31, i32 %33)
  %35 = getelementptr inbounds [2500 x i32], ptr %4, i64 %20, i64 %28
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %37 = tail call i32 @llvm.smax.i32(i32 %34, i32 %36)
  %38 = icmp ult i64 %18, %30
  %39 = getelementptr inbounds [2500 x i32], ptr %4, i64 %20, i64 %30
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
  %54 = icmp ult i64 %20, %28
  br i1 %54, label %55, label %87

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
  br label %64

64:                                               ; preds = %58, %55
  %65 = phi i32 [ undef, %55 ], [ %63, %58 ]
  %66 = phi i64 [ %19, %55 ], [ %25, %58 ]
  %67 = phi i32 [ %53, %55 ], [ %63, %58 ]
  %68 = icmp eq i64 %27, 1
  br i1 %68, label %87, label %69

69:                                               ; preds = %64, %69
  %70 = phi i64 [ %81, %69 ], [ %66, %64 ]
  %71 = phi i32 [ %85, %69 ], [ %67, %64 ]
  %72 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %70
  %73 = load i32, ptr %72, align 4, !tbaa !12
  %74 = add nuw nsw i64 %70, 1
  %75 = getelementptr inbounds [2500 x i32], ptr %4, i64 %74, i64 %28
  %76 = load i32, ptr %75, align 4, !tbaa !12
  %77 = add nsw i32 %76, %73
  %78 = tail call i32 @llvm.smax.i32(i32 %71, i32 %77)
  %79 = getelementptr inbounds [2500 x i32], ptr %4, i64 %18, i64 %74
  %80 = load i32, ptr %79, align 4, !tbaa !12
  %81 = add nuw nsw i64 %70, 2
  %82 = getelementptr inbounds [2500 x i32], ptr %4, i64 %81, i64 %28
  %83 = load i32, ptr %82, align 4, !tbaa !12
  %84 = add nsw i32 %83, %80
  %85 = tail call i32 @llvm.smax.i32(i32 %78, i32 %84)
  %86 = icmp eq i64 %81, %28
  br i1 %86, label %87, label %69, !llvm.loop !14

87:                                               ; preds = %64, %69, %51
  %88 = phi i32 [ %53, %51 ], [ %65, %64 ], [ %85, %69 ]
  store i32 %88, ptr %29, align 4, !tbaa !12
  %89 = add nuw nsw i64 %28, 1
  %90 = icmp eq i64 %89, 2500
  %91 = add i64 %27, 1
  br i1 %90, label %92, label %26, !llvm.loop !15

92:                                               ; preds = %87, %17
  %93 = add nsw i64 %18, -1
  %94 = icmp eq i64 %18, 0
  %95 = add nsw i64 %19, -1
  br i1 %94, label %96, label %17, !llvm.loop !16

96:                                               ; preds = %92
  %97 = load ptr, ptr @stdout, align 8, !tbaa !17
  %98 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %97)
  %99 = load ptr, ptr @stdout, align 8, !tbaa !17
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %101

101:                                              ; preds = %121, %96
  %102 = phi i32 [ 2500, %96 ], [ %124, %121 ]
  %103 = phi i64 [ 0, %96 ], [ %123, %121 ]
  %104 = phi i32 [ 0, %96 ], [ %122, %121 ]
  br label %105

105:                                              ; preds = %113, %101
  %106 = phi i64 [ %103, %101 ], [ %119, %113 ]
  %107 = phi i32 [ %104, %101 ], [ %118, %113 ]
  %108 = srem i32 %107, 20
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load ptr, ptr @stdout, align 8, !tbaa !17
  %112 = tail call i32 @fputc(i32 10, ptr %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load ptr, ptr @stdout, align 8, !tbaa !17
  %115 = getelementptr inbounds [2500 x i32], ptr %4, i64 %103, i64 %106
  %116 = load i32, ptr %115, align 4, !tbaa !12
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.4, i32 noundef %116)
  %118 = add nsw i32 %107, 1
  %119 = add nuw nsw i64 %106, 1
  %120 = icmp eq i64 %119, 2500
  br i1 %120, label %121, label %105, !llvm.loop !19

121:                                              ; preds = %113
  %122 = add i32 %104, %102
  %123 = add nuw nsw i64 %103, 1
  %124 = add nsw i32 %102, -1
  %125 = icmp eq i64 %123, 2500
  br i1 %125, label %126, label %101, !llvm.loop !20

126:                                              ; preds = %121
  %127 = load ptr, ptr @stdout, align 8, !tbaa !17
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %129 = load ptr, ptr @stdout, align 8, !tbaa !17
  %130 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %129)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef nonnull %4) #7
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
