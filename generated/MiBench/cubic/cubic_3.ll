; ModuleID = 'outputs/basicmath/cubic_3.c'
source_filename = "outputs/basicmath/cubic_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @SolveCubic(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = fdiv double %1, %0
  %8 = fpext double %7 to x86_fp80
  %9 = fdiv double %2, %0
  %10 = fpext double %9 to x86_fp80
  %11 = fdiv double %3, %0
  %12 = fpext double %11 to x86_fp80
  %13 = fmul x86_fp80 %8, %8
  %14 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %10, x86_fp80 0xKC000C000000000000000, x86_fp80 %13)
  %15 = fdiv x86_fp80 %14, 0xK40029000000000000000
  %16 = fmul x86_fp80 %13, 0xK40008000000000000000
  %17 = fmul x86_fp80 %8, 0xKC0029000000000000000
  %18 = fmul x86_fp80 %17, %10
  %19 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %16, x86_fp80 %8, x86_fp80 %18)
  %20 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %12, x86_fp80 0xK4003D800000000000000, x86_fp80 %19)
  %21 = fdiv x86_fp80 %20, 0xK4004D800000000000000
  %22 = fneg x86_fp80 %15
  %23 = fmul x86_fp80 %15, %22
  %24 = fmul x86_fp80 %15, %23
  %25 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %21, x86_fp80 %21, x86_fp80 %24)
  %26 = fptrunc x86_fp80 %25 to double
  %27 = fptrunc x86_fp80 %15 to double
  %28 = tail call double @sqrt(double noundef %27) #3
  %29 = fdiv x86_fp80 %8, 0xK4000C000000000000000
  %30 = fptrunc x86_fp80 %29 to double
  %31 = fcmp ugt double %26, 0.000000e+00
  br i1 %31, label %61, label %32

32:                                               ; preds = %6
  store i32 3, ptr %4, align 4, !tbaa !5
  %33 = fpext double %28 to x86_fp80
  %34 = fmul x86_fp80 %15, %33
  %35 = fdiv x86_fp80 %21, %34
  %36 = fptrunc x86_fp80 %35 to double
  %37 = tail call double @acos(double noundef %36) #3
  %38 = fmul double %28, -2.000000e+00
  %39 = fpext double %38 to x86_fp80
  %40 = fdiv double %37, 3.000000e+00
  %41 = tail call double @cos(double noundef %40) #3
  %42 = fpext double %41 to x86_fp80
  %43 = fadd double %37, 0x401921FB54442D18
  %44 = fdiv double %43, 3.000000e+00
  %45 = tail call double @cos(double noundef %44) #3
  %46 = fpext double %45 to x86_fp80
  %47 = fadd double %37, 0x402921FB54442D18
  %48 = fdiv double %47, 3.000000e+00
  %49 = tail call double @cos(double noundef %48) #3
  %50 = fpext double %49 to x86_fp80
  %51 = fpext double %30 to x86_fp80
  %52 = fneg x86_fp80 %51
  %53 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %39, x86_fp80 %42, x86_fp80 %52)
  %54 = fptrunc x86_fp80 %53 to double
  %55 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %39, x86_fp80 %46, x86_fp80 %52)
  %56 = fptrunc x86_fp80 %55 to double
  %57 = getelementptr inbounds double, ptr %5, i64 1
  store double %56, ptr %57, align 8, !tbaa !9
  %58 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %39, x86_fp80 %50, x86_fp80 %52)
  %59 = fptrunc x86_fp80 %58 to double
  %60 = getelementptr inbounds double, ptr %5, i64 2
  store double %59, ptr %60, align 8, !tbaa !9
  br label %75

61:                                               ; preds = %6
  store i32 1, ptr %4, align 4, !tbaa !5
  %62 = fptrunc x86_fp80 %21 to double
  %63 = tail call double @llvm.fabs.f64(double %62)
  %64 = tail call double @sqrt(double noundef %26) #3
  %65 = fadd double %63, %64
  %66 = tail call double @pow(double noundef %65, double noundef 0x3FD5555555555555) #3
  %67 = fpext double %66 to x86_fp80
  %68 = fdiv x86_fp80 %15, %67
  %69 = fadd x86_fp80 %68, %67
  %70 = fptrunc x86_fp80 %69 to double
  %71 = fcmp olt x86_fp80 %21, 0xK00000000000000000000
  %72 = fneg double %70
  %73 = select i1 %71, double %70, double %72
  %74 = fsub double %73, %30
  br label %75

75:                                               ; preds = %61, %32
  %76 = phi double [ %74, %61 ], [ %54, %32 ]
  store double %76, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
