; ModuleID = 'outputs/src_PolyBenchC-4.2.1_jacobi-1d_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_jacobi-1d_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #5
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 2000, i32 noundef 8) #5
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %3 to i64
  %7 = sub i64 %5, %6
  %8 = icmp ult i64 %7, 16
  br i1 %8, label %31, label %9

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %28, %9 ], [ 0, %2 ]
  %11 = phi <2 x i32> [ %29, %9 ], [ <i32 0, i32 1>, %2 ]
  %12 = sitofp <2 x i32> %11 to <2 x double>
  %13 = fadd <2 x double> %12, <double 2.000000e+00, double 2.000000e+00>
  %14 = fdiv <2 x double> %13, <double 2.000000e+03, double 2.000000e+03>
  %15 = getelementptr inbounds double, ptr %3, i64 %10
  store <2 x double> %14, ptr %15, align 8, !tbaa !5
  %16 = fadd <2 x double> %12, <double 3.000000e+00, double 3.000000e+00>
  %17 = fdiv <2 x double> %16, <double 2.000000e+03, double 2.000000e+03>
  %18 = getelementptr inbounds double, ptr %4, i64 %10
  store <2 x double> %17, ptr %18, align 8, !tbaa !5
  %19 = or disjoint i64 %10, 2
  %20 = add <2 x i32> %11, <i32 2, i32 2>
  %21 = sitofp <2 x i32> %20 to <2 x double>
  %22 = fadd <2 x double> %21, <double 2.000000e+00, double 2.000000e+00>
  %23 = fdiv <2 x double> %22, <double 2.000000e+03, double 2.000000e+03>
  %24 = getelementptr inbounds double, ptr %3, i64 %19
  store <2 x double> %23, ptr %24, align 8, !tbaa !5
  %25 = fadd <2 x double> %21, <double 3.000000e+00, double 3.000000e+00>
  %26 = fdiv <2 x double> %25, <double 2.000000e+03, double 2.000000e+03>
  %27 = getelementptr inbounds double, ptr %4, i64 %19
  store <2 x double> %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw nsw i64 %10, 4
  %29 = add <2 x i32> %11, <i32 4, i32 4>
  %30 = icmp eq i64 %28, 2000
  br i1 %30, label %52, label %9, !llvm.loop !9

31:                                               ; preds = %2, %31
  %32 = phi i64 [ %50, %31 ], [ 0, %2 ]
  %33 = trunc i64 %32 to i32
  %34 = sitofp i32 %33 to double
  %35 = fadd double %34, 2.000000e+00
  %36 = fdiv double %35, 2.000000e+03
  %37 = getelementptr inbounds double, ptr %3, i64 %32
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = fadd double %34, 3.000000e+00
  %39 = fdiv double %38, 2.000000e+03
  %40 = getelementptr inbounds double, ptr %4, i64 %32
  store double %39, ptr %40, align 8, !tbaa !5
  %41 = or disjoint i64 %32, 1
  %42 = trunc i64 %41 to i32
  %43 = sitofp i32 %42 to double
  %44 = fadd double %43, 2.000000e+00
  %45 = fdiv double %44, 2.000000e+03
  %46 = getelementptr inbounds double, ptr %3, i64 %41
  store double %45, ptr %46, align 8, !tbaa !5
  %47 = fadd double %43, 3.000000e+00
  %48 = fdiv double %47, 2.000000e+03
  %49 = getelementptr inbounds double, ptr %4, i64 %41
  store double %48, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %32, 2
  %51 = icmp eq i64 %50, 2000
  br i1 %51, label %52, label %31, !llvm.loop !13

52:                                               ; preds = %9, %31
  %53 = getelementptr i8, ptr %3, i64 8
  %54 = getelementptr i8, ptr %3, i64 15992
  %55 = getelementptr i8, ptr %4, i64 16000
  %56 = getelementptr i8, ptr %4, i64 8
  %57 = getelementptr i8, ptr %4, i64 15992
  %58 = getelementptr i8, ptr %3, i64 16000
  %59 = icmp ult ptr %56, %58
  %60 = icmp ult ptr %3, %57
  %61 = and i1 %59, %60
  %62 = icmp ult ptr %53, %55
  %63 = icmp ult ptr %4, %54
  %64 = and i1 %62, %63
  br label %65

65:                                               ; preds = %149, %52
  %66 = phi i32 [ %150, %149 ], [ 0, %52 ]
  br i1 %61, label %93, label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ %91, %67 ], [ 0, %65 ]
  %69 = or disjoint i64 %68, 1
  %70 = getelementptr double, ptr %3, i64 %69
  %71 = getelementptr double, ptr %70, i64 -1
  %72 = getelementptr double, ptr %70, i64 1
  %73 = load <2 x double>, ptr %71, align 8, !tbaa !5, !alias.scope !14
  %74 = load <2 x double>, ptr %72, align 8, !tbaa !5, !alias.scope !14
  %75 = getelementptr double, ptr %70, i64 2
  %76 = load <2 x double>, ptr %70, align 8, !tbaa !5, !alias.scope !14
  %77 = load <2 x double>, ptr %75, align 8, !tbaa !5, !alias.scope !14
  %78 = fadd <2 x double> %73, %76
  %79 = fadd <2 x double> %74, %77
  %80 = or disjoint i64 %68, 2
  %81 = getelementptr inbounds double, ptr %3, i64 %80
  %82 = getelementptr inbounds double, ptr %81, i64 2
  %83 = load <2 x double>, ptr %81, align 8, !tbaa !5, !alias.scope !14
  %84 = load <2 x double>, ptr %82, align 8, !tbaa !5, !alias.scope !14
  %85 = fadd <2 x double> %78, %83
  %86 = fadd <2 x double> %79, %84
  %87 = fmul <2 x double> %85, <double 3.333300e-01, double 3.333300e-01>
  %88 = fmul <2 x double> %86, <double 3.333300e-01, double 3.333300e-01>
  %89 = getelementptr inbounds double, ptr %4, i64 %69
  %90 = getelementptr inbounds double, ptr %89, i64 2
  store <2 x double> %87, ptr %89, align 8, !tbaa !5, !alias.scope !17, !noalias !14
  store <2 x double> %88, ptr %90, align 8, !tbaa !5, !alias.scope !17, !noalias !14
  %91 = add nuw i64 %68, 4
  %92 = icmp eq i64 %91, 1996
  br i1 %92, label %93, label %67, !llvm.loop !19

93:                                               ; preds = %67, %65
  %94 = phi i64 [ 1, %65 ], [ 1997, %67 ]
  br label %95

95:                                               ; preds = %95, %93
  %96 = phi i64 [ %94, %93 ], [ %113, %95 ]
  %97 = getelementptr double, ptr %3, i64 %96
  %98 = getelementptr double, ptr %97, i64 -1
  %99 = load double, ptr %98, align 8, !tbaa !5
  %100 = load double, ptr %97, align 8, !tbaa !5
  %101 = fadd double %99, %100
  %102 = add nuw nsw i64 %96, 1
  %103 = getelementptr inbounds double, ptr %3, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = fadd double %101, %104
  %106 = fmul double %105, 3.333300e-01
  %107 = getelementptr inbounds double, ptr %4, i64 %96
  store double %106, ptr %107, align 8, !tbaa !5
  %108 = getelementptr double, ptr %3, i64 %102
  %109 = getelementptr double, ptr %3, i64 %96
  %110 = load double, ptr %109, align 8, !tbaa !5
  %111 = load double, ptr %108, align 8, !tbaa !5
  %112 = fadd double %110, %111
  %113 = add nuw nsw i64 %96, 2
  %114 = getelementptr inbounds double, ptr %3, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !5
  %116 = fadd double %112, %115
  %117 = fmul double %116, 3.333300e-01
  %118 = getelementptr inbounds double, ptr %4, i64 %102
  store double %117, ptr %118, align 8, !tbaa !5
  %119 = icmp eq i64 %113, 1999
  br i1 %119, label %120, label %95, !llvm.loop !20

120:                                              ; preds = %95
  br i1 %64, label %121, label %123

121:                                              ; preds = %123, %120
  %122 = phi i64 [ 1, %120 ], [ 1997, %123 ]
  br label %152

123:                                              ; preds = %120, %123
  %124 = phi i64 [ %147, %123 ], [ 0, %120 ]
  %125 = or disjoint i64 %124, 1
  %126 = getelementptr double, ptr %4, i64 %125
  %127 = getelementptr double, ptr %126, i64 -1
  %128 = getelementptr double, ptr %126, i64 1
  %129 = load <2 x double>, ptr %127, align 8, !tbaa !5, !alias.scope !21
  %130 = load <2 x double>, ptr %128, align 8, !tbaa !5, !alias.scope !21
  %131 = getelementptr double, ptr %126, i64 2
  %132 = load <2 x double>, ptr %126, align 8, !tbaa !5, !alias.scope !21
  %133 = load <2 x double>, ptr %131, align 8, !tbaa !5, !alias.scope !21
  %134 = fadd <2 x double> %129, %132
  %135 = fadd <2 x double> %130, %133
  %136 = or disjoint i64 %124, 2
  %137 = getelementptr inbounds double, ptr %4, i64 %136
  %138 = getelementptr inbounds double, ptr %137, i64 2
  %139 = load <2 x double>, ptr %137, align 8, !tbaa !5, !alias.scope !21
  %140 = load <2 x double>, ptr %138, align 8, !tbaa !5, !alias.scope !21
  %141 = fadd <2 x double> %134, %139
  %142 = fadd <2 x double> %135, %140
  %143 = fmul <2 x double> %141, <double 3.333300e-01, double 3.333300e-01>
  %144 = fmul <2 x double> %142, <double 3.333300e-01, double 3.333300e-01>
  %145 = getelementptr inbounds double, ptr %3, i64 %125
  %146 = getelementptr inbounds double, ptr %145, i64 2
  store <2 x double> %143, ptr %145, align 8, !tbaa !5, !alias.scope !24, !noalias !21
  store <2 x double> %144, ptr %146, align 8, !tbaa !5, !alias.scope !24, !noalias !21
  %147 = add nuw i64 %124, 4
  %148 = icmp eq i64 %147, 1996
  br i1 %148, label %121, label %123, !llvm.loop !26

149:                                              ; preds = %152
  %150 = add nuw nsw i32 %66, 1
  %151 = icmp eq i32 %150, 500
  br i1 %151, label %177, label %65, !llvm.loop !27

152:                                              ; preds = %152, %121
  %153 = phi i64 [ %122, %121 ], [ %170, %152 ]
  %154 = getelementptr double, ptr %4, i64 %153
  %155 = getelementptr double, ptr %154, i64 -1
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = load double, ptr %154, align 8, !tbaa !5
  %158 = fadd double %156, %157
  %159 = add nuw nsw i64 %153, 1
  %160 = getelementptr inbounds double, ptr %4, i64 %159
  %161 = load double, ptr %160, align 8, !tbaa !5
  %162 = fadd double %158, %161
  %163 = fmul double %162, 3.333300e-01
  %164 = getelementptr inbounds double, ptr %3, i64 %153
  store double %163, ptr %164, align 8, !tbaa !5
  %165 = getelementptr double, ptr %4, i64 %159
  %166 = getelementptr double, ptr %4, i64 %153
  %167 = load double, ptr %166, align 8, !tbaa !5
  %168 = load double, ptr %165, align 8, !tbaa !5
  %169 = fadd double %167, %168
  %170 = add nuw nsw i64 %153, 2
  %171 = getelementptr inbounds double, ptr %4, i64 %170
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = fadd double %169, %172
  %174 = fmul double %173, 3.333300e-01
  %175 = getelementptr inbounds double, ptr %3, i64 %159
  store double %174, ptr %175, align 8, !tbaa !5
  %176 = icmp eq i64 %170, 1999
  br i1 %176, label %149, label %152, !llvm.loop !28

177:                                              ; preds = %149
  %178 = load ptr, ptr @stdout, align 8, !tbaa !29
  %179 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %178)
  %180 = load ptr, ptr @stdout, align 8, !tbaa !29
  %181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %182

182:                                              ; preds = %190, %177
  %183 = phi i64 [ 0, %177 ], [ %195, %190 ]
  %184 = trunc i64 %183 to i16
  %185 = urem i16 %184, 20
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load ptr, ptr @stdout, align 8, !tbaa !29
  %189 = tail call i32 @fputc(i32 10, ptr %188)
  br label %190

190:                                              ; preds = %187, %182
  %191 = load ptr, ptr @stdout, align 8, !tbaa !29
  %192 = getelementptr inbounds double, ptr %3, i64 %183
  %193 = load double, ptr %192, align 8, !tbaa !5
  %194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef nonnull @.str.4, double noundef %193)
  %195 = add nuw nsw i64 %183, 1
  %196 = icmp eq i64 %195, 2000
  br i1 %196, label %197, label %182, !llvm.loop !31

197:                                              ; preds = %190
  %198 = load ptr, ptr @stdout, align 8, !tbaa !29
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %200 = load ptr, ptr @stdout, align 8, !tbaa !29
  %201 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %200)
  tail call void @free(ptr noundef nonnull %3) #5
  tail call void @free(ptr noundef %4) #5
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !11}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10, !11}
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = distinct !{!31, !10}
