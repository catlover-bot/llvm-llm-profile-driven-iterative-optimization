; ModuleID = 'outputs/network/dijstra/dijkstra_1.c'
source_filename = "outputs/network/dijstra/dijkstra_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._NODE = type { i32, i32 }
%struct._QITEM = type { i32, i32, i32, ptr }

@qHead = dso_local local_unnamed_addr global ptr null, align 8
@g_qCount = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = dso_local local_unnamed_addr global i32 0, align 4
@num_nodes = dso_local local_unnamed_addr global i32 0, align 4
@rgnNodes = dso_local local_unnamed_addr global ptr null, align 8
@iNode = dso_local local_unnamed_addr global i32 0, align 4
@iDist = dso_local local_unnamed_addr global i32 0, align 4
@iPrev = dso_local local_unnamed_addr global i32 0, align 4
@AdjMatrix = dso_local local_unnamed_addr global ptr null, align 8
@i = dso_local local_unnamed_addr global i32 0, align 4
@iCost = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Usage: dijkstra <NUM_NODES> <INPUT_FILE>\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Error opening file.\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Shortest path is 0 in cost. Just stay where you are.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_path(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct._NODE, ptr %0, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 9999
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @print_path(ptr noundef nonnull %0, i32 noundef %5)
  br label %8

8:                                                ; preds = %7, %2
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !10
  %11 = tail call i32 @fflush(ptr noundef %10)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @enqueue(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ @qHead, %3 ], [ %8, %4 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct._QITEM, ptr %6, i64 0, i32 3
  br i1 %7, label %9, label %4, !llvm.loop !12

9:                                                ; preds = %4
  %10 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12
  store ptr %10, ptr %5, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load ptr, ptr @stderr, align 8, !tbaa !10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %13) #13
  tail call void @exit(i32 noundef 1) #14
  unreachable

15:                                               ; preds = %9
  store i32 %0, ptr %10, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct._QITEM, ptr %10, i64 0, i32 1
  store i32 %1, ptr %16, align 4, !tbaa !16
  %17 = getelementptr inbounds %struct._QITEM, ptr %10, i64 0, i32 2
  store i32 %2, ptr %17, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct._QITEM, ptr %10, i64 0, i32 3
  store ptr null, ptr %18, align 8, !tbaa !18
  %19 = load i32, ptr @g_qCount, align 4, !tbaa !19
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @g_qCount, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @dequeue(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr @qHead, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !14
  store i32 %7, ptr %0, align 4, !tbaa !19
  %8 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !16
  store i32 %9, ptr %1, align 4, !tbaa !19
  %10 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !17
  store i32 %11, ptr %2, align 4, !tbaa !19
  %12 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  store ptr %13, ptr @qHead, align 8, !tbaa !10
  tail call void @free(ptr noundef nonnull %4) #15
  %14 = load i32, ptr @g_qCount, align 4, !tbaa !19
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr @g_qCount, align 4, !tbaa !19
  br label %16

16:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @qcount() local_unnamed_addr #8 {
  %1 = load i32, ptr @g_qCount, align 4, !tbaa !19
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  store i32 0, ptr @ch, align 4, !tbaa !19
  %3 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = load ptr, ptr @rgnNodes, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct._NODE, ptr %6, i64 %9
  store i32 9999, ptr %10, align 4, !tbaa !20
  %11 = load i32, ptr @ch, align 4, !tbaa !19
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct._NODE, ptr %6, i64 %12, i32 1
  store i32 9999, ptr %13, align 4, !tbaa !5
  %14 = load i32, ptr @ch, align 4, !tbaa !19
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @ch, align 4, !tbaa !19
  %16 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %7, label %18, !llvm.loop !21

18:                                               ; preds = %7, %2
  %19 = icmp eq i32 %0, %1
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %126

22:                                               ; preds = %18
  %23 = load ptr, ptr @rgnNodes, align 8, !tbaa !10
  %24 = sext i32 %0 to i64
  %25 = getelementptr inbounds %struct._NODE, ptr %23, i64 %24
  store i32 0, ptr %25, align 4, !tbaa !20
  %26 = getelementptr inbounds %struct._NODE, ptr %23, i64 %24, i32 1
  store i32 9999, ptr %26, align 4, !tbaa !5
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ @qHead, %22 ], [ %31, %27 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct._QITEM, ptr %29, i64 0, i32 3
  br i1 %30, label %32, label %27, !llvm.loop !12

32:                                               ; preds = %27
  %33 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12
  store ptr %33, ptr %28, align 8, !tbaa !10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load ptr, ptr @stderr, align 8, !tbaa !10
  %37 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %36) #13
  tail call void @exit(i32 noundef 1) #14
  unreachable

38:                                               ; preds = %32
  store i32 %0, ptr %33, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct._QITEM, ptr %33, i64 0, i32 1
  store i32 0, ptr %39, align 4, !tbaa !16
  %40 = getelementptr inbounds %struct._QITEM, ptr %33, i64 0, i32 2
  store i32 9999, ptr %40, align 8, !tbaa !17
  %41 = getelementptr inbounds %struct._QITEM, ptr %33, i64 0, i32 3
  store ptr null, ptr %41, align 8, !tbaa !18
  %42 = load i32, ptr @g_qCount, align 4, !tbaa !19
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @g_qCount, align 4, !tbaa !19
  %44 = icmp sgt i32 %42, -1
  br i1 %44, label %48, label %117

45:                                               ; preds = %111, %62
  %46 = phi i32 [ %63, %62 ], [ %112, %111 ]
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %117

48:                                               ; preds = %38, %45
  %49 = phi i32 [ %46, %45 ], [ %43, %38 ]
  %50 = load ptr, ptr @qHead, align 8, !tbaa !10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %50, align 8, !tbaa !14
  store i32 %53, ptr @iNode, align 4, !tbaa !19
  %54 = getelementptr inbounds %struct._QITEM, ptr %50, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !16
  store i32 %55, ptr @iDist, align 4, !tbaa !19
  %56 = getelementptr inbounds %struct._QITEM, ptr %50, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !17
  store i32 %57, ptr @iPrev, align 4, !tbaa !19
  %58 = getelementptr inbounds %struct._QITEM, ptr %50, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !18
  store ptr %59, ptr @qHead, align 8, !tbaa !10
  tail call void @free(ptr noundef nonnull %50) #15
  %60 = load i32, ptr @g_qCount, align 4, !tbaa !19
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr @g_qCount, align 4, !tbaa !19
  br label %62

62:                                               ; preds = %48, %52
  %63 = phi i32 [ %49, %48 ], [ %61, %52 ]
  %64 = load i32, ptr @iNode, align 4, !tbaa !19
  %65 = sext i32 %64 to i64
  %66 = load ptr, ptr @AdjMatrix, align 8, !tbaa !10
  %67 = getelementptr inbounds ptr, ptr %66, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !10
  store i32 0, ptr @i, align 4, !tbaa !19
  %69 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %45, !llvm.loop !22

71:                                               ; preds = %62
  %72 = load ptr, ptr @rgnNodes, align 8
  br label %73

73:                                               ; preds = %71, %111
  %74 = phi i32 [ %63, %71 ], [ %112, %111 ]
  %75 = phi i32 [ %69, %71 ], [ %113, %111 ]
  %76 = phi i32 [ 0, %71 ], [ %115, %111 ]
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %68, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !19
  store i32 %79, ptr @iCost, align 4, !tbaa !19
  %80 = icmp eq i32 %79, 9999
  br i1 %80, label %111, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct._NODE, ptr %72, i64 %77
  %83 = load i32, ptr @iDist, align 4, !tbaa !19
  %84 = add nsw i32 %83, %79
  %85 = load i32, ptr %82, align 4, !tbaa !20
  %86 = icmp eq i32 %85, 9999
  %87 = icmp sgt i32 %85, %84
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %81
  store i32 %84, ptr %82, align 4, !tbaa !20
  %90 = load i32, ptr @iNode, align 4, !tbaa !19
  %91 = getelementptr inbounds %struct._NODE, ptr %72, i64 %77, i32 1
  store i32 %90, ptr %91, align 4, !tbaa !5
  %92 = load i32, ptr @i, align 4, !tbaa !19
  br label %93

93:                                               ; preds = %93, %89
  %94 = phi ptr [ @qHead, %89 ], [ %97, %93 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !10
  %96 = icmp eq ptr %95, null
  %97 = getelementptr inbounds %struct._QITEM, ptr %95, i64 0, i32 3
  br i1 %96, label %98, label %93, !llvm.loop !12

98:                                               ; preds = %93
  %99 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12
  store ptr %99, ptr %94, align 8, !tbaa !10
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load ptr, ptr @stderr, align 8, !tbaa !10
  %103 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %102) #13
  tail call void @exit(i32 noundef 1) #14
  unreachable

104:                                              ; preds = %98
  store i32 %92, ptr %99, align 8, !tbaa !14
  %105 = getelementptr inbounds %struct._QITEM, ptr %99, i64 0, i32 1
  store i32 %84, ptr %105, align 4, !tbaa !16
  %106 = getelementptr inbounds %struct._QITEM, ptr %99, i64 0, i32 2
  store i32 %90, ptr %106, align 8, !tbaa !17
  %107 = getelementptr inbounds %struct._QITEM, ptr %99, i64 0, i32 3
  store ptr null, ptr %107, align 8, !tbaa !18
  %108 = load i32, ptr @g_qCount, align 4, !tbaa !19
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr @g_qCount, align 4, !tbaa !19
  %110 = load i32, ptr @num_nodes, align 4, !tbaa !19
  br label %111

111:                                              ; preds = %104, %81, %73
  %112 = phi i32 [ %109, %104 ], [ %74, %81 ], [ %74, %73 ]
  %113 = phi i32 [ %110, %104 ], [ %75, %81 ], [ %75, %73 ]
  %114 = phi i32 [ %92, %104 ], [ %76, %81 ], [ %76, %73 ]
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr @i, align 4, !tbaa !19
  %116 = icmp slt i32 %115, %113
  br i1 %116, label %73, label %45, !llvm.loop !23

117:                                              ; preds = %45, %38
  %118 = load ptr, ptr @rgnNodes, align 8, !tbaa !10
  %119 = sext i32 %1 to i64
  %120 = getelementptr inbounds %struct._NODE, ptr %118, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !20
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %121)
  %123 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  %124 = load ptr, ptr @rgnNodes, align 8, !tbaa !10
  tail call void @print_path(ptr noundef %124, i32 noundef %1)
  %125 = tail call i32 @putchar(i32 10)
  br label %126

126:                                              ; preds = %117, %20
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = icmp slt i32 %0, 3
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !10
  %7 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 41, i64 1, ptr %6) #13
  br label %158

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = tail call i64 @strtol(ptr nocapture noundef nonnull %10, ptr noundef null, i32 noundef 10) #15
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr @num_nodes, align 4, !tbaa !19
  %13 = shl i64 %11, 32
  %14 = ashr exact i64 %13, 29
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #12
  store ptr %15, ptr @rgnNodes, align 8, !tbaa !10
  %16 = tail call noalias ptr @malloc(i64 noundef %14) #12
  store ptr %16, ptr @AdjMatrix, align 8, !tbaa !10
  %17 = icmp sgt i32 %12, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %8
  %19 = ashr exact i64 %13, 30
  %20 = and i64 %11, 4294967295
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %26, %21 ]
  %23 = tail call noalias ptr @malloc(i64 noundef %19) #12
  %24 = load ptr, ptr @AdjMatrix, align 8, !tbaa !10
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  store ptr %23, ptr %25, align 8, !tbaa !10
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %20
  br i1 %27, label %28, label %21, !llvm.loop !24

28:                                               ; preds = %21, %8
  %29 = getelementptr inbounds ptr, ptr %1, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  %31 = tail call noalias ptr @fopen(ptr noundef %30, ptr noundef nonnull @.str.7)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %39, label %62

36:                                               ; preds = %28
  %37 = load ptr, ptr @stderr, align 8, !tbaa !10
  %38 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 20, i64 1, ptr %37) #13
  br label %158

39:                                               ; preds = %33, %57
  %40 = phi i32 [ %59, %57 ], [ %34, %33 ]
  %41 = phi i64 [ %60, %57 ], [ 0, %33 ]
  %42 = icmp sgt i32 %40, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = sext i32 %40 to i64
  br label %57

45:                                               ; preds = %39, %45
  %46 = phi i64 [ %53, %45 ], [ 0, %39 ]
  %47 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %31, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #15
  %48 = load i32, ptr %3, align 4, !tbaa !19
  %49 = load ptr, ptr @AdjMatrix, align 8, !tbaa !10
  %50 = getelementptr inbounds ptr, ptr %49, i64 %41
  %51 = load ptr, ptr %50, align 8, !tbaa !10
  %52 = getelementptr inbounds i32, ptr %51, i64 %46
  store i32 %48, ptr %52, align 4, !tbaa !19
  %53 = add nuw nsw i64 %46, 1
  %54 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %45, label %57, !llvm.loop !25

57:                                               ; preds = %45, %43
  %58 = phi i64 [ %44, %43 ], [ %55, %45 ]
  %59 = phi i32 [ %40, %43 ], [ %54, %45 ]
  %60 = add nuw nsw i64 %41, 1
  %61 = icmp slt i64 %60, %58
  br i1 %61, label %39, label %62, !llvm.loop !26

62:                                               ; preds = %57, %33
  %63 = call i32 @fclose(ptr noundef nonnull %31)
  %64 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %65 = sdiv i32 %64, 2
  %66 = srem i32 %65, %64
  %67 = call i32 @dijkstra(i32 noundef 0, i32 noundef %66)
  %68 = add nsw i32 %65, 1
  %69 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %70 = srem i32 %68, %69
  %71 = call i32 @dijkstra(i32 noundef 1, i32 noundef %70)
  %72 = add nsw i32 %65, 2
  %73 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %74 = srem i32 %72, %73
  %75 = call i32 @dijkstra(i32 noundef 2, i32 noundef %74)
  %76 = add nsw i32 %65, 3
  %77 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %78 = srem i32 %76, %77
  %79 = call i32 @dijkstra(i32 noundef 3, i32 noundef %78)
  %80 = add nsw i32 %65, 4
  %81 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %82 = srem i32 %80, %81
  %83 = call i32 @dijkstra(i32 noundef 4, i32 noundef %82)
  %84 = add nsw i32 %65, 5
  %85 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %86 = srem i32 %84, %85
  %87 = call i32 @dijkstra(i32 noundef 5, i32 noundef %86)
  %88 = add nsw i32 %65, 6
  %89 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %90 = srem i32 %88, %89
  %91 = call i32 @dijkstra(i32 noundef 6, i32 noundef %90)
  %92 = add nsw i32 %65, 7
  %93 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %94 = srem i32 %92, %93
  %95 = call i32 @dijkstra(i32 noundef 7, i32 noundef %94)
  %96 = add nsw i32 %65, 8
  %97 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %98 = srem i32 %96, %97
  %99 = call i32 @dijkstra(i32 noundef 8, i32 noundef %98)
  %100 = add nsw i32 %65, 9
  %101 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %102 = srem i32 %100, %101
  %103 = call i32 @dijkstra(i32 noundef 9, i32 noundef %102)
  %104 = add nsw i32 %65, 10
  %105 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %106 = srem i32 %104, %105
  %107 = call i32 @dijkstra(i32 noundef 10, i32 noundef %106)
  %108 = add nsw i32 %65, 11
  %109 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %110 = srem i32 %108, %109
  %111 = call i32 @dijkstra(i32 noundef 11, i32 noundef %110)
  %112 = add nsw i32 %65, 12
  %113 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %114 = srem i32 %112, %113
  %115 = call i32 @dijkstra(i32 noundef 12, i32 noundef %114)
  %116 = add nsw i32 %65, 13
  %117 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %118 = srem i32 %116, %117
  %119 = call i32 @dijkstra(i32 noundef 13, i32 noundef %118)
  %120 = add nsw i32 %65, 14
  %121 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %122 = srem i32 %120, %121
  %123 = call i32 @dijkstra(i32 noundef 14, i32 noundef %122)
  %124 = add nsw i32 %65, 15
  %125 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %126 = srem i32 %124, %125
  %127 = call i32 @dijkstra(i32 noundef 15, i32 noundef %126)
  %128 = add nsw i32 %65, 16
  %129 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %130 = srem i32 %128, %129
  %131 = call i32 @dijkstra(i32 noundef 16, i32 noundef %130)
  %132 = add nsw i32 %65, 17
  %133 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %134 = srem i32 %132, %133
  %135 = call i32 @dijkstra(i32 noundef 17, i32 noundef %134)
  %136 = add nsw i32 %65, 18
  %137 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %138 = srem i32 %136, %137
  %139 = call i32 @dijkstra(i32 noundef 18, i32 noundef %138)
  %140 = add nsw i32 %65, 19
  %141 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %142 = srem i32 %140, %141
  %143 = call i32 @dijkstra(i32 noundef 19, i32 noundef %142)
  %144 = load ptr, ptr @rgnNodes, align 8, !tbaa !10
  call void @free(ptr noundef %144) #15
  %145 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %62, %147
  %148 = phi i64 [ %152, %147 ], [ 0, %62 ]
  %149 = load ptr, ptr @AdjMatrix, align 8, !tbaa !10
  %150 = getelementptr inbounds ptr, ptr %149, i64 %148
  %151 = load ptr, ptr %150, align 8, !tbaa !10
  call void @free(ptr noundef %151) #15
  %152 = add nuw nsw i64 %148, 1
  %153 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %154 = sext i32 %153 to i64
  %155 = icmp slt i64 %152, %154
  br i1 %155, label %147, label %156, !llvm.loop !28

156:                                              ; preds = %147, %62
  %157 = load ptr, ptr @AdjMatrix, align 8, !tbaa !10
  call void @free(ptr noundef %157) #15
  br label %158

158:                                              ; preds = %156, %36, %5
  %159 = phi i32 [ 1, %5 ], [ 0, %156 ], [ 1, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %159
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 4}
!6 = !{!"_NODE", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !7, i64 0}
!15 = !{!"_QITEM", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16}
!16 = !{!15, !7, i64 4}
!17 = !{!15, !7, i64 8}
!18 = !{!15, !11, i64 16}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !7, i64 0}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13, !27}
!27 = !{!"llvm.loop.unswitch.partial.disable"}
!28 = distinct !{!28, !13}
