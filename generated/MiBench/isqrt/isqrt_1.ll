; ModuleID = 'outputs/basicmath/isqrt_1.c'
source_filename = "outputs/basicmath/isqrt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @usqrt(i64 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = lshr i64 %0, 30
  %4 = and i64 %3, 3
  %5 = icmp ne i64 %4, 0
  %6 = sext i1 %5 to i64
  %7 = add nsw i64 %4, %6
  %8 = shl nsw i64 %7, 2
  %9 = lshr i64 %0, 28
  %10 = and i64 %9, 3
  %11 = or disjoint i64 %8, %10
  %12 = select i1 %5, i64 2, i64 0
  %13 = select i1 %5, i64 4, i64 0
  %14 = icmp ugt i64 %11, %13
  %15 = xor i64 %13, -1
  %16 = zext i1 %14 to i64
  %17 = or disjoint i64 %12, %16
  %18 = select i1 %14, i64 %15, i64 0
  %19 = add nsw i64 %18, %11
  %20 = shl nsw i64 %19, 2
  %21 = lshr i64 %0, 26
  %22 = and i64 %21, 3
  %23 = or disjoint i64 %20, %22
  %24 = shl nuw nsw i64 %17, 1
  %25 = shl nuw nsw i64 %17, 2
  %26 = icmp ugt i64 %23, %25
  %27 = xor i64 %25, -1
  %28 = zext i1 %26 to i64
  %29 = or disjoint i64 %24, %28
  %30 = select i1 %26, i64 %27, i64 0
  %31 = add i64 %30, %23
  %32 = shl i64 %31, 2
  %33 = lshr i64 %0, 24
  %34 = and i64 %33, 3
  %35 = or disjoint i64 %32, %34
  %36 = shl nuw nsw i64 %29, 1
  %37 = shl nuw nsw i64 %29, 2
  %38 = icmp ugt i64 %35, %37
  %39 = xor i64 %37, -1
  %40 = zext i1 %38 to i64
  %41 = or disjoint i64 %36, %40
  %42 = select i1 %38, i64 %39, i64 0
  %43 = add i64 %42, %35
  %44 = shl i64 %43, 2
  %45 = lshr i64 %0, 22
  %46 = and i64 %45, 3
  %47 = or disjoint i64 %44, %46
  %48 = shl nuw nsw i64 %41, 1
  %49 = shl nuw nsw i64 %41, 2
  %50 = icmp ugt i64 %47, %49
  %51 = xor i64 %49, -1
  %52 = zext i1 %50 to i64
  %53 = or disjoint i64 %48, %52
  %54 = select i1 %50, i64 %51, i64 0
  %55 = add i64 %54, %47
  %56 = shl i64 %55, 2
  %57 = lshr i64 %0, 20
  %58 = and i64 %57, 3
  %59 = or disjoint i64 %56, %58
  %60 = shl nuw nsw i64 %53, 1
  %61 = shl nuw nsw i64 %53, 2
  %62 = icmp ugt i64 %59, %61
  %63 = xor i64 %61, -1
  %64 = zext i1 %62 to i64
  %65 = or disjoint i64 %60, %64
  %66 = select i1 %62, i64 %63, i64 0
  %67 = add i64 %66, %59
  %68 = shl i64 %67, 2
  %69 = lshr i64 %0, 18
  %70 = and i64 %69, 3
  %71 = or disjoint i64 %68, %70
  %72 = shl nuw nsw i64 %65, 1
  %73 = shl nuw nsw i64 %65, 2
  %74 = icmp ugt i64 %71, %73
  %75 = xor i64 %73, -1
  %76 = zext i1 %74 to i64
  %77 = or disjoint i64 %72, %76
  %78 = select i1 %74, i64 %75, i64 0
  %79 = add i64 %78, %71
  %80 = shl i64 %79, 2
  %81 = lshr i64 %0, 16
  %82 = and i64 %81, 3
  %83 = or disjoint i64 %80, %82
  %84 = shl nuw nsw i64 %77, 1
  %85 = shl nuw nsw i64 %77, 2
  %86 = icmp ugt i64 %83, %85
  %87 = xor i64 %85, -1
  %88 = zext i1 %86 to i64
  %89 = or disjoint i64 %84, %88
  %90 = select i1 %86, i64 %87, i64 0
  %91 = add i64 %90, %83
  %92 = shl i64 %91, 2
  %93 = lshr i64 %0, 14
  %94 = and i64 %93, 3
  %95 = or disjoint i64 %92, %94
  %96 = shl nuw nsw i64 %89, 1
  %97 = shl nuw nsw i64 %89, 2
  %98 = icmp ugt i64 %95, %97
  %99 = xor i64 %97, -1
  %100 = zext i1 %98 to i64
  %101 = or disjoint i64 %96, %100
  %102 = select i1 %98, i64 %99, i64 0
  %103 = add i64 %102, %95
  %104 = shl i64 %103, 2
  %105 = lshr i64 %0, 12
  %106 = and i64 %105, 3
  %107 = or disjoint i64 %104, %106
  %108 = shl nuw nsw i64 %101, 1
  %109 = shl nuw nsw i64 %101, 2
  %110 = icmp ugt i64 %107, %109
  %111 = xor i64 %109, -1
  %112 = zext i1 %110 to i64
  %113 = or disjoint i64 %108, %112
  %114 = select i1 %110, i64 %111, i64 0
  %115 = add i64 %114, %107
  %116 = shl i64 %115, 2
  %117 = lshr i64 %0, 10
  %118 = and i64 %117, 3
  %119 = or disjoint i64 %116, %118
  %120 = shl nuw nsw i64 %113, 1
  %121 = shl nuw nsw i64 %113, 2
  %122 = icmp ugt i64 %119, %121
  %123 = xor i64 %121, -1
  %124 = zext i1 %122 to i64
  %125 = or disjoint i64 %120, %124
  %126 = select i1 %122, i64 %123, i64 0
  %127 = add i64 %126, %119
  %128 = shl i64 %127, 2
  %129 = lshr i64 %0, 8
  %130 = and i64 %129, 3
  %131 = or disjoint i64 %128, %130
  %132 = shl nuw nsw i64 %125, 1
  %133 = shl nuw nsw i64 %125, 2
  %134 = icmp ugt i64 %131, %133
  %135 = xor i64 %133, -1
  %136 = zext i1 %134 to i64
  %137 = or disjoint i64 %132, %136
  %138 = select i1 %134, i64 %135, i64 0
  %139 = add i64 %138, %131
  %140 = shl i64 %139, 2
  %141 = lshr i64 %0, 6
  %142 = and i64 %141, 3
  %143 = or disjoint i64 %140, %142
  %144 = shl nuw nsw i64 %137, 1
  %145 = shl nuw nsw i64 %137, 2
  %146 = icmp ugt i64 %143, %145
  %147 = xor i64 %145, -1
  %148 = zext i1 %146 to i64
  %149 = or disjoint i64 %144, %148
  %150 = select i1 %146, i64 %147, i64 0
  %151 = add i64 %150, %143
  %152 = shl i64 %151, 2
  %153 = lshr i64 %0, 4
  %154 = and i64 %153, 3
  %155 = or disjoint i64 %152, %154
  %156 = shl nuw nsw i64 %149, 1
  %157 = shl nuw nsw i64 %149, 2
  %158 = icmp ugt i64 %155, %157
  %159 = xor i64 %157, -1
  %160 = zext i1 %158 to i64
  %161 = or disjoint i64 %156, %160
  %162 = select i1 %158, i64 %159, i64 0
  %163 = add i64 %162, %155
  %164 = shl i64 %163, 2
  %165 = lshr i64 %0, 2
  %166 = and i64 %165, 3
  %167 = or disjoint i64 %164, %166
  %168 = shl nuw nsw i64 %161, 1
  %169 = shl nuw nsw i64 %161, 2
  %170 = icmp ugt i64 %167, %169
  %171 = xor i64 %169, -1
  %172 = zext i1 %170 to i64
  %173 = or disjoint i64 %168, %172
  %174 = select i1 %170, i64 %171, i64 0
  %175 = add i64 %174, %167
  %176 = shl i64 %175, 2
  %177 = and i64 %0, 3
  %178 = or disjoint i64 %176, %177
  %179 = shl nuw nsw i64 %173, 1
  %180 = shl nuw nsw i64 %173, 2
  %181 = icmp ugt i64 %178, %180
  %182 = zext i1 %181 to i64
  %183 = or disjoint i64 %179, %182
  store i64 %183, ptr %1, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
