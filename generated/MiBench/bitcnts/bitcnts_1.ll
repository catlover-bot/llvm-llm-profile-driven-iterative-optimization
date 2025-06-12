; ModuleID = 'outputs/bitcount/bitcnts_1.c'
source_filename = "outputs/bitcount/bitcnts_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.pBitCntFunc = internal unnamed_addr constant [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 16
@main.text = internal unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %5) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i64 @strtol(ptr nocapture noundef nonnull %9, ptr noundef null, i32 noundef 10) #10
  %11 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8)
  %12 = freeze i64 %10
  %13 = shl i64 %12, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %104, label %16

16:                                               ; preds = %7
  %17 = tail call i64 @clock() #10
  %18 = tail call i32 @rand() #10
  %19 = tail call i64 @clock() #10
  %20 = sub nsw i64 %19, %17
  %21 = sitofp i64 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = fcmp olt double %22, 0x7FEFFFFFFFFFFFFF
  %24 = select i1 %23, double %22, double 0x7FEFFFFFFFFFFFFF
  %25 = fcmp ogt double %22, 0.000000e+00
  %26 = select i1 %25, double %22, double 0.000000e+00
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str, double noundef %22, i64 noundef 0)
  %28 = tail call i64 @clock() #10
  %29 = tail call i32 @rand() #10
  %30 = tail call i64 @clock() #10
  %31 = sub nsw i64 %30, %28
  %32 = sitofp i64 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = fcmp olt double %33, %24
  %35 = zext i1 %34 to i32
  %36 = select i1 %34, double %33, double %24
  %37 = fcmp ogt double %33, %26
  %38 = zext i1 %37 to i32
  %39 = select i1 %37, double %33, double %26
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.1, double noundef %33, i64 noundef 0)
  %41 = tail call i64 @clock() #10
  %42 = tail call i32 @rand() #10
  %43 = tail call i64 @clock() #10
  %44 = sub nsw i64 %43, %41
  %45 = sitofp i64 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  %47 = fcmp olt double %46, %36
  %48 = select i1 %47, i32 2, i32 %35
  %49 = select i1 %47, double %46, double %36
  %50 = fcmp ogt double %46, %39
  %51 = select i1 %50, i32 2, i32 %38
  %52 = select i1 %50, double %46, double %39
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.2, double noundef %46, i64 noundef 0)
  %54 = tail call i64 @clock() #10
  %55 = tail call i32 @rand() #10
  %56 = tail call i64 @clock() #10
  %57 = sub nsw i64 %56, %54
  %58 = sitofp i64 %57 to double
  %59 = fdiv double %58, 1.000000e+06
  %60 = fcmp olt double %59, %49
  %61 = select i1 %60, i32 3, i32 %48
  %62 = select i1 %60, double %59, double %49
  %63 = fcmp ogt double %59, %52
  %64 = select i1 %63, i32 3, i32 %51
  %65 = select i1 %63, double %59, double %52
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.3, double noundef %59, i64 noundef 0)
  %67 = tail call i64 @clock() #10
  %68 = tail call i32 @rand() #10
  %69 = tail call i64 @clock() #10
  %70 = sub nsw i64 %69, %67
  %71 = sitofp i64 %70 to double
  %72 = fdiv double %71, 1.000000e+06
  %73 = fcmp olt double %72, %62
  %74 = select i1 %73, i32 4, i32 %61
  %75 = select i1 %73, double %72, double %62
  %76 = fcmp ogt double %72, %65
  %77 = select i1 %76, i32 4, i32 %64
  %78 = select i1 %76, double %72, double %65
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.4, double noundef %72, i64 noundef 0)
  %80 = tail call i64 @clock() #10
  %81 = tail call i32 @rand() #10
  %82 = tail call i64 @clock() #10
  %83 = sub nsw i64 %82, %80
  %84 = sitofp i64 %83 to double
  %85 = fdiv double %84, 1.000000e+06
  %86 = fcmp olt double %85, %75
  %87 = select i1 %86, i32 5, i32 %74
  %88 = select i1 %86, double %85, double %75
  %89 = fcmp ogt double %85, %78
  %90 = select i1 %89, i32 5, i32 %77
  %91 = select i1 %89, double %85, double %78
  %92 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.5, double noundef %85, i64 noundef 0)
  %93 = tail call i64 @clock() #10
  %94 = tail call i32 @rand() #10
  %95 = tail call i64 @clock() #10
  %96 = sub nsw i64 %95, %93
  %97 = sitofp i64 %96 to double
  %98 = fdiv double %97, 1.000000e+06
  %99 = fcmp olt double %98, %88
  %100 = select i1 %99, i32 6, i32 %87
  %101 = fcmp ogt double %98, %91
  %102 = select i1 %101, i32 6, i32 %90
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.6, double noundef %98, i64 noundef 0)
  br label %154

104:                                              ; preds = %7, %137
  %105 = phi i64 [ %152, %137 ], [ 0, %7 ]
  %106 = phi double [ %145, %137 ], [ 0x7FEFFFFFFFFFFFFF, %7 ]
  %107 = phi double [ %148, %137 ], [ 0.000000e+00, %7 ]
  %108 = phi i32 [ %147, %137 ], [ undef, %7 ]
  %109 = phi i32 [ %144, %137 ], [ undef, %7 ]
  %110 = tail call i64 @clock() #10
  %111 = tail call i32 @rand() #10
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %105
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  br label %115

115:                                              ; preds = %104, %115
  %116 = phi i64 [ 0, %104 ], [ %133, %115 ]
  %117 = phi i64 [ %112, %104 ], [ %135, %115 ]
  %118 = phi i64 [ 0, %104 ], [ %134, %115 ]
  %119 = tail call i32 %114(i64 noundef %117) #10
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %116, %120
  %122 = add nsw i64 %117, 13
  %123 = tail call i32 %114(i64 noundef %122) #10
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = add nsw i64 %117, 26
  %127 = tail call i32 %114(i64 noundef %126) #10
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %125, %128
  %130 = add nsw i64 %117, 39
  %131 = tail call i32 %114(i64 noundef %130) #10
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %129, %132
  %134 = add nuw nsw i64 %118, 4
  %135 = add nsw i64 %117, 52
  %136 = icmp slt i64 %134, %14
  br i1 %136, label %115, label %137, !llvm.loop !9

137:                                              ; preds = %115
  %138 = tail call i64 @clock() #10
  %139 = sub nsw i64 %138, %110
  %140 = sitofp i64 %139 to double
  %141 = fdiv double %140, 1.000000e+06
  %142 = fcmp olt double %141, %106
  %143 = trunc i64 %105 to i32
  %144 = select i1 %142, i32 %143, i32 %109
  %145 = select i1 %142, double %141, double %106
  %146 = fcmp ogt double %141, %107
  %147 = select i1 %146, i32 %143, i32 %108
  %148 = select i1 %146, double %141, double %107
  %149 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %105
  %150 = load ptr, ptr %149, align 8, !tbaa !5
  %151 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %150, double noundef %141, i64 noundef %133)
  %152 = add nuw nsw i64 %105, 1
  %153 = icmp eq i64 %152, 7
  br i1 %153, label %154, label %104, !llvm.loop !11

154:                                              ; preds = %137, %16
  %155 = phi i32 [ %100, %16 ], [ %144, %137 ]
  %156 = phi i32 [ %102, %16 ], [ %147, %137 ]
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !5
  %160 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %159)
  %161 = sext i32 %156 to i64
  %162 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %163)
  ret i32 0
}

declare i32 @bit_count(i64 noundef) #1

declare i32 @bitcount(i64 noundef) #1

declare i32 @ntbl_bitcnt(i64 noundef) #1

declare i32 @ntbl_bitcount(i64 noundef) #1

declare i32 @BW_btbl_bitcount(i64 noundef) #1

declare i32 @AR_btbl_bitcount(i64 noundef) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal i32 @bit_shifter(i64 noundef %0) #2 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %5 = phi i64 [ %9, %3 ], [ %0, %1 ]
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 1
  %8 = add nuw nsw i32 %7, %4
  %9 = ashr i64 %5, 1
  %10 = icmp ult i64 %5, 2
  br i1 %10, label %11, label %3, !llvm.loop !12

11:                                               ; preds = %3, %1
  %12 = phi i32 [ 0, %1 ], [ %8, %3 ]
  ret i32 %12
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
