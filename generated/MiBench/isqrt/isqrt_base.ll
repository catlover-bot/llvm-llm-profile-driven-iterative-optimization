; ModuleID = 'mibench/automotive/basicmath/isqrt.c'
source_filename = "mibench/automotive/basicmath/isqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @usqrt(i64 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i32 [ 0, %2 ], [ %21, %3 ]
  %5 = phi i64 [ 0, %2 ], [ %20, %3 ]
  %6 = phi i64 [ 0, %2 ], [ %18, %3 ]
  %7 = phi i64 [ %0, %2 ], [ %12, %3 ]
  %8 = shl i64 %5, 2
  %9 = lshr i64 %7, 30
  %10 = and i64 %9, 3
  %11 = or disjoint i64 %8, %10
  %12 = shl i64 %7, 2
  %13 = shl i64 %6, 1
  %14 = shl i64 %6, 2
  %15 = icmp ugt i64 %11, %14
  %16 = xor i64 %14, -1
  %17 = zext i1 %15 to i64
  %18 = or disjoint i64 %13, %17
  %19 = select i1 %15, i64 %16, i64 0
  %20 = add i64 %19, %11
  %21 = add nuw nsw i32 %4, 1
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %3, !llvm.loop !5

23:                                               ; preds = %3
  store i64 %18, ptr %1, align 4
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
