; ModuleID = 'mibench/network/dijkstra/dijkstra.c'
source_filename = "mibench/network/dijkstra/dijkstra.c"
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
@i = dso_local local_unnamed_addr global i32 0, align 4
@AdjMatrix = dso_local local_unnamed_addr global ptr null, align 8
@iCost = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Usage: dijkstra <NUM_NODES> <INPUT_FILE>\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !10
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %7) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

9:                                                ; preds = %3
  %10 = load ptr, ptr @qHead, align 8, !tbaa !10
  store i32 %0, ptr %4, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  store i32 %1, ptr %11, align 4, !tbaa !14
  %12 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  store i32 %2, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !16
  %14 = icmp eq ptr %10, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %18, %15 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct._QITEM, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !17

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._QITEM, ptr %16, i64 0, i32 3
  br label %22

22:                                               ; preds = %9, %20
  %23 = phi ptr [ %21, %20 ], [ @qHead, %9 ]
  store ptr %4, ptr %23, align 8, !tbaa !10
  %24 = load i32, ptr @g_qCount, align 4, !tbaa !19
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @g_qCount, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @dequeue(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr @qHead, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !12
  store i32 %7, ptr %0, align 4, !tbaa !19
  %8 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !14
  store i32 %9, ptr %1, align 4, !tbaa !19
  %10 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !15
  store i32 %11, ptr %2, align 4, !tbaa !19
  %12 = getelementptr inbounds %struct._QITEM, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  store ptr %13, ptr @qHead, align 8, !tbaa !10
  tail call void @free(ptr noundef nonnull %4) #16
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
  br label %143

22:                                               ; preds = %18
  %23 = load ptr, ptr @rgnNodes, align 8, !tbaa !10
  %24 = sext i32 %0 to i64
  %25 = getelementptr inbounds %struct._NODE, ptr %23, i64 %24
  store i32 0, ptr %25, align 4, !tbaa !20
  %26 = getelementptr inbounds %struct._NODE, ptr %23, i64 %24, i32 1
  store i32 9999, ptr %26, align 4, !tbaa !5
  %27 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load ptr, ptr @stderr, align 8, !tbaa !10
  %31 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %30) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

32:                                               ; preds = %22
  %33 = load ptr, ptr @qHead, align 8, !tbaa !10
  store i32 %0, ptr %27, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct._QITEM, ptr %27, i64 0, i32 1
  store i32 0, ptr %34, align 4, !tbaa !14
  %35 = getelementptr inbounds %struct._QITEM, ptr %27, i64 0, i32 2
  store i32 9999, ptr %35, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct._QITEM, ptr %27, i64 0, i32 3
  store ptr null, ptr %36, align 8, !tbaa !16
  %37 = icmp eq ptr %33, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %32, %38
  %39 = phi ptr [ %41, %38 ], [ %33, %32 ]
  %40 = getelementptr inbounds %struct._QITEM, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38, !llvm.loop !17

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct._QITEM, ptr %39, i64 0, i32 3
  br label %45

45:                                               ; preds = %43, %32
  %46 = phi ptr [ @qHead, %32 ], [ %44, %43 ]
  store ptr %27, ptr %46, align 8, !tbaa !10
  %47 = load i32, ptr @g_qCount, align 4, !tbaa !19
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr @g_qCount, align 4, !tbaa !19
  %49 = icmp sgt i32 %47, -1
  br i1 %49, label %53, label %134

50:                                               ; preds = %127, %67
  %51 = phi i32 [ %68, %67 ], [ %128, %127 ]
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %134

53:                                               ; preds = %45, %50
  %54 = phi i32 [ %51, %50 ], [ %48, %45 ]
  %55 = load ptr, ptr @qHead, align 8, !tbaa !10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 8, !tbaa !12
  store i32 %58, ptr @iNode, align 4, !tbaa !19
  %59 = getelementptr inbounds %struct._QITEM, ptr %55, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !14
  store i32 %60, ptr @iDist, align 4, !tbaa !19
  %61 = getelementptr inbounds %struct._QITEM, ptr %55, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !15
  store i32 %62, ptr @iPrev, align 4, !tbaa !19
  %63 = getelementptr inbounds %struct._QITEM, ptr %55, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !16
  store ptr %64, ptr @qHead, align 8, !tbaa !10
  tail call void @free(ptr noundef nonnull %55) #16
  %65 = load i32, ptr @g_qCount, align 4, !tbaa !19
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr @g_qCount, align 4, !tbaa !19
  br label %67

67:                                               ; preds = %53, %57
  %68 = phi i32 [ %54, %53 ], [ %66, %57 ]
  store i32 0, ptr @i, align 4, !tbaa !19
  %69 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %50, !llvm.loop !22

71:                                               ; preds = %67
  %72 = load ptr, ptr @AdjMatrix, align 8, !tbaa !10
  %73 = load ptr, ptr @rgnNodes, align 8
  %74 = load i32, ptr @iNode, align 4, !tbaa !19
  br label %75

75:                                               ; preds = %71, %127
  %76 = phi i32 [ %68, %71 ], [ %128, %127 ]
  %77 = phi i32 [ %69, %71 ], [ %129, %127 ]
  %78 = phi i32 [ %74, %71 ], [ %131, %127 ]
  %79 = phi i32 [ 0, %71 ], [ %132, %127 ]
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds ptr, ptr %72, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = sext i32 %79 to i64
  %84 = getelementptr inbounds i32, ptr %82, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !19
  store i32 %85, ptr @iCost, align 4, !tbaa !19
  %86 = icmp eq i32 %85, 9999
  br i1 %86, label %127, label %87

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct._NODE, ptr %73, i64 %83
  %89 = load i32, ptr %88, align 4, !tbaa !20
  %90 = icmp eq i32 %89, 9999
  %91 = load i32, ptr @iDist, align 4, !tbaa !19
  %92 = add nsw i32 %91, %85
  %93 = icmp sgt i32 %89, %92
  %94 = select i1 %90, i1 true, i1 %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %87
  store i32 %92, ptr %88, align 4, !tbaa !20
  %96 = load i32, ptr @iNode, align 4, !tbaa !19
  %97 = load i32, ptr @i, align 4, !tbaa !19
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct._NODE, ptr %73, i64 %98, i32 1
  store i32 %96, ptr %99, align 4, !tbaa !5
  %100 = load i32, ptr @i, align 4, !tbaa !19
  %101 = load i32, ptr @iDist, align 4, !tbaa !19
  %102 = load i32, ptr @iCost, align 4, !tbaa !19
  %103 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load ptr, ptr @stderr, align 8, !tbaa !10
  %107 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 15, i64 1, ptr %106) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

108:                                              ; preds = %95
  %109 = add nsw i32 %102, %101
  %110 = load ptr, ptr @qHead, align 8, !tbaa !10
  store i32 %100, ptr %103, align 8, !tbaa !12
  %111 = getelementptr inbounds %struct._QITEM, ptr %103, i64 0, i32 1
  store i32 %109, ptr %111, align 4, !tbaa !14
  %112 = getelementptr inbounds %struct._QITEM, ptr %103, i64 0, i32 2
  store i32 %96, ptr %112, align 8, !tbaa !15
  %113 = getelementptr inbounds %struct._QITEM, ptr %103, i64 0, i32 3
  store ptr null, ptr %113, align 8, !tbaa !16
  %114 = icmp eq ptr %110, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %108, %115
  %116 = phi ptr [ %118, %115 ], [ %110, %108 ]
  %117 = getelementptr inbounds %struct._QITEM, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !16
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %115, !llvm.loop !17

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct._QITEM, ptr %116, i64 0, i32 3
  br label %122

122:                                              ; preds = %120, %108
  %123 = phi ptr [ @qHead, %108 ], [ %121, %120 ]
  store ptr %103, ptr %123, align 8, !tbaa !10
  %124 = load i32, ptr @g_qCount, align 4, !tbaa !19
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr @g_qCount, align 4, !tbaa !19
  %126 = load i32, ptr @num_nodes, align 4, !tbaa !19
  br label %127

127:                                              ; preds = %87, %75, %122
  %128 = phi i32 [ %76, %75 ], [ %125, %122 ], [ %76, %87 ]
  %129 = phi i32 [ %77, %75 ], [ %126, %122 ], [ %77, %87 ]
  %130 = phi i32 [ %79, %75 ], [ %100, %122 ], [ %79, %87 ]
  %131 = phi i32 [ %78, %75 ], [ %96, %122 ], [ %78, %87 ]
  %132 = add nsw i32 %130, 1
  store i32 %132, ptr @i, align 4, !tbaa !19
  %133 = icmp slt i32 %132, %129
  br i1 %133, label %75, label %50, !llvm.loop !23

134:                                              ; preds = %50, %45
  %135 = load ptr, ptr @rgnNodes, align 8, !tbaa !10
  %136 = sext i32 %1 to i64
  %137 = getelementptr inbounds %struct._NODE, ptr %135, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !20
  %139 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %138)
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  %141 = load ptr, ptr @rgnNodes, align 8, !tbaa !10
  tail call void @print_path(ptr noundef %141, i32 noundef %1)
  %142 = tail call i32 @putchar(i32 10)
  br label %143

143:                                              ; preds = %134, %20
  ret i32 undef
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = icmp slt i32 %0, 3
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !10
  %7 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 41, i64 1, ptr %6) #14
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = tail call i64 @strtol(ptr nocapture noundef nonnull %10, ptr noundef null, i32 noundef 10) #16
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr @num_nodes, align 4, !tbaa !19
  %13 = shl i64 %11, 32
  %14 = ashr exact i64 %13, 29
  %15 = tail call noalias ptr @malloc(i64 noundef %14) #13
  store ptr %15, ptr @rgnNodes, align 8, !tbaa !10
  %16 = tail call noalias ptr @malloc(i64 noundef %14) #13
  store ptr %16, ptr @AdjMatrix, align 8, !tbaa !10
  %17 = icmp sgt i32 %12, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %8
  %19 = ashr exact i64 %13, 30
  %20 = and i64 %11, 4294967295
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %26, %21 ]
  %23 = tail call noalias ptr @malloc(i64 noundef %19) #13
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
  %32 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %28, %52
  %35 = phi i32 [ %54, %52 ], [ %32, %28 ]
  %36 = phi i64 [ %55, %52 ], [ 0, %28 ]
  %37 = icmp sgt i32 %35, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = sext i32 %35 to i64
  br label %52

40:                                               ; preds = %34, %40
  %41 = phi i64 [ %48, %40 ], [ 0, %34 ]
  %42 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %31, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #16
  %43 = load i32, ptr %3, align 4, !tbaa !19
  %44 = load ptr, ptr @AdjMatrix, align 8, !tbaa !10
  %45 = getelementptr inbounds ptr, ptr %44, i64 %36
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = getelementptr inbounds i32, ptr %46, i64 %41
  store i32 %43, ptr %47, align 4, !tbaa !19
  %48 = add nuw nsw i64 %41, 1
  %49 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %40, label %52, !llvm.loop !25

52:                                               ; preds = %40, %38
  %53 = phi i64 [ %39, %38 ], [ %50, %40 ]
  %54 = phi i32 [ %35, %38 ], [ %49, %40 ]
  %55 = add nuw nsw i64 %36, 1
  %56 = icmp slt i64 %55, %53
  br i1 %56, label %34, label %57, !llvm.loop !26

57:                                               ; preds = %52, %28
  %58 = phi i32 [ %32, %28 ], [ %54, %52 ]
  %59 = sdiv i32 %58, 2
  %60 = srem i32 %59, %58
  %61 = call i32 @dijkstra(i32 noundef 0, i32 noundef %60)
  %62 = add nsw i32 %60, 1
  %63 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %64 = srem i32 %62, %63
  %65 = call i32 @dijkstra(i32 noundef 1, i32 noundef %64)
  %66 = add nsw i32 %64, 1
  %67 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %68 = srem i32 %66, %67
  %69 = call i32 @dijkstra(i32 noundef 2, i32 noundef %68)
  %70 = add nsw i32 %68, 1
  %71 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %72 = srem i32 %70, %71
  %73 = call i32 @dijkstra(i32 noundef 3, i32 noundef %72)
  %74 = add nsw i32 %72, 1
  %75 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %76 = srem i32 %74, %75
  %77 = call i32 @dijkstra(i32 noundef 4, i32 noundef %76)
  %78 = add nsw i32 %76, 1
  %79 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %80 = srem i32 %78, %79
  %81 = call i32 @dijkstra(i32 noundef 5, i32 noundef %80)
  %82 = add nsw i32 %80, 1
  %83 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %84 = srem i32 %82, %83
  %85 = call i32 @dijkstra(i32 noundef 6, i32 noundef %84)
  %86 = add nsw i32 %84, 1
  %87 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %88 = srem i32 %86, %87
  %89 = call i32 @dijkstra(i32 noundef 7, i32 noundef %88)
  %90 = add nsw i32 %88, 1
  %91 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %92 = srem i32 %90, %91
  %93 = call i32 @dijkstra(i32 noundef 8, i32 noundef %92)
  %94 = add nsw i32 %92, 1
  %95 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %96 = srem i32 %94, %95
  %97 = call i32 @dijkstra(i32 noundef 9, i32 noundef %96)
  %98 = add nsw i32 %96, 1
  %99 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %100 = srem i32 %98, %99
  %101 = call i32 @dijkstra(i32 noundef 10, i32 noundef %100)
  %102 = add nsw i32 %100, 1
  %103 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %104 = srem i32 %102, %103
  %105 = call i32 @dijkstra(i32 noundef 11, i32 noundef %104)
  %106 = add nsw i32 %104, 1
  %107 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %108 = srem i32 %106, %107
  %109 = call i32 @dijkstra(i32 noundef 12, i32 noundef %108)
  %110 = add nsw i32 %108, 1
  %111 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %112 = srem i32 %110, %111
  %113 = call i32 @dijkstra(i32 noundef 13, i32 noundef %112)
  %114 = add nsw i32 %112, 1
  %115 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %116 = srem i32 %114, %115
  %117 = call i32 @dijkstra(i32 noundef 14, i32 noundef %116)
  %118 = add nsw i32 %116, 1
  %119 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %120 = srem i32 %118, %119
  %121 = call i32 @dijkstra(i32 noundef 15, i32 noundef %120)
  %122 = add nsw i32 %120, 1
  %123 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %124 = srem i32 %122, %123
  %125 = call i32 @dijkstra(i32 noundef 16, i32 noundef %124)
  %126 = add nsw i32 %124, 1
  %127 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %128 = srem i32 %126, %127
  %129 = call i32 @dijkstra(i32 noundef 17, i32 noundef %128)
  %130 = add nsw i32 %128, 1
  %131 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %132 = srem i32 %130, %131
  %133 = call i32 @dijkstra(i32 noundef 18, i32 noundef %132)
  %134 = add nsw i32 %132, 1
  %135 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %136 = srem i32 %134, %135
  %137 = call i32 @dijkstra(i32 noundef 19, i32 noundef %136)
  %138 = load ptr, ptr @rgnNodes, align 8, !tbaa !10
  call void @free(ptr noundef %138) #16
  %139 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %57, %141
  %142 = phi i64 [ %146, %141 ], [ 0, %57 ]
  %143 = load ptr, ptr @AdjMatrix, align 8, !tbaa !10
  %144 = getelementptr inbounds ptr, ptr %143, i64 %142
  %145 = load ptr, ptr %144, align 8, !tbaa !10
  call void @free(ptr noundef %145) #16
  %146 = add nuw nsw i64 %142, 1
  %147 = load i32, ptr @num_nodes, align 4, !tbaa !19
  %148 = sext i32 %147 to i64
  %149 = icmp slt i64 %146, %148
  br i1 %149, label %141, label %150, !llvm.loop !28

150:                                              ; preds = %141, %57
  %151 = load ptr, ptr @AdjMatrix, align 8, !tbaa !10
  call void @free(ptr noundef %151) #16
  call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }

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
!12 = !{!13, !7, i64 0}
!13 = !{!"_QITEM", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16}
!14 = !{!13, !7, i64 4}
!15 = !{!13, !7, i64 8}
!16 = !{!13, !11, i64 16}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !7, i64 0}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18, !27}
!27 = !{!"llvm.loop.unswitch.partial.disable"}
!28 = distinct !{!28, !18}
