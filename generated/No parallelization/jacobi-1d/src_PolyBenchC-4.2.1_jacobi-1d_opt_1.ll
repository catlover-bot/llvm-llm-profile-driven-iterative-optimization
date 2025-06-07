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
  %55 = getelementptr i8, ptr %4, i64 8
  %56 = getelementptr i8, ptr %4, i64 16000
  %57 = getelementptr i8, ptr %4, i64 15992
  %58 = getelementptr i8, ptr %3, i64 16000
  %59 = icmp ult ptr %55, %58
  %60 = icmp ult ptr %53, %57
  %61 = and i1 %59, %60
  %62 = icmp ult ptr %53, %56
  %63 = icmp ult ptr %55, %54
  %64 = and i1 %62, %63
  br label %65

65:                                               ; preds = %52, %178
  %66 = phi i32 [ %179, %178 ], [ 0, %52 ]
  %67 = load double, ptr %3, align 8, !tbaa !5
  br i1 %61, label %97, label %68

68:                                               ; preds = %65
  %69 = insertelement <2 x double> poison, double %67, i64 1
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i64 [ 0, %68 ], [ %93, %70 ]
  %72 = phi <2 x double> [ %69, %68 ], [ %77, %70 ]
  %73 = or disjoint i64 %71, 1
  %74 = getelementptr inbounds double, ptr %3, i64 %73
  %75 = getelementptr inbounds double, ptr %74, i64 2
  %76 = load <2 x double>, ptr %74, align 8, !tbaa !5, !alias.scope !14
  %77 = load <2 x double>, ptr %75, align 8, !tbaa !5, !alias.scope !14
  %78 = shufflevector <2 x double> %72, <2 x double> %76, <2 x i32> <i32 1, i32 2>
  %79 = shufflevector <2 x double> %76, <2 x double> %77, <2 x i32> <i32 1, i32 2>
  %80 = fadd <2 x double> %78, %76
  %81 = fadd <2 x double> %79, %77
  %82 = or disjoint i64 %71, 2
  %83 = getelementptr inbounds double, ptr %3, i64 %82
  %84 = getelementptr inbounds double, ptr %83, i64 2
  %85 = load <2 x double>, ptr %83, align 8, !tbaa !5, !alias.scope !14
  %86 = load <2 x double>, ptr %84, align 8, !tbaa !5, !alias.scope !14
  %87 = fadd <2 x double> %80, %85
  %88 = fadd <2 x double> %81, %86
  %89 = fmul <2 x double> %87, <double 3.333300e-01, double 3.333300e-01>
  %90 = fmul <2 x double> %88, <double 3.333300e-01, double 3.333300e-01>
  %91 = getelementptr inbounds double, ptr %4, i64 %73
  %92 = getelementptr inbounds double, ptr %91, i64 2
  store <2 x double> %89, ptr %91, align 8, !tbaa !5, !alias.scope !17, !noalias !14
  store <2 x double> %90, ptr %92, align 8, !tbaa !5, !alias.scope !17, !noalias !14
  %93 = add nuw i64 %71, 4
  %94 = icmp eq i64 %93, 1996
  br i1 %94, label %95, label %70, !llvm.loop !19

95:                                               ; preds = %70
  %96 = extractelement <2 x double> %77, i64 1
  br label %97

97:                                               ; preds = %95, %65
  %98 = phi i64 [ 1997, %95 ], [ 1, %65 ]
  %99 = phi double [ %96, %95 ], [ %67, %65 ]
  br label %100

100:                                              ; preds = %100, %97
  %101 = phi i64 [ %98, %97 ], [ %115, %100 ]
  %102 = phi double [ %99, %97 ], [ %113, %100 ]
  %103 = getelementptr inbounds double, ptr %3, i64 %101
  %104 = load double, ptr %103, align 8, !tbaa !5
  %105 = fadd double %102, %104
  %106 = add nuw nsw i64 %101, 1
  %107 = getelementptr inbounds double, ptr %3, i64 %106
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = fadd double %105, %108
  %110 = fmul double %109, 3.333300e-01
  %111 = getelementptr inbounds double, ptr %4, i64 %101
  store double %110, ptr %111, align 8, !tbaa !5
  %112 = getelementptr inbounds double, ptr %3, i64 %106
  %113 = load double, ptr %112, align 8, !tbaa !5
  %114 = fadd double %104, %113
  %115 = add nuw nsw i64 %101, 2
  %116 = getelementptr inbounds double, ptr %3, i64 %115
  %117 = load double, ptr %116, align 8, !tbaa !5
  %118 = fadd double %114, %117
  %119 = fmul double %118, 3.333300e-01
  %120 = getelementptr inbounds double, ptr %4, i64 %106
  store double %119, ptr %120, align 8, !tbaa !5
  %121 = icmp eq i64 %115, 1999
  br i1 %121, label %122, label %100, !llvm.loop !20

122:                                              ; preds = %100
  %123 = load double, ptr %4, align 8, !tbaa !5
  br i1 %64, label %153, label %124

124:                                              ; preds = %122
  %125 = insertelement <2 x double> poison, double %123, i64 1
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i64 [ 0, %124 ], [ %149, %126 ]
  %128 = phi <2 x double> [ %125, %124 ], [ %133, %126 ]
  %129 = or disjoint i64 %127, 1
  %130 = getelementptr inbounds double, ptr %4, i64 %129
  %131 = getelementptr inbounds double, ptr %130, i64 2
  %132 = load <2 x double>, ptr %130, align 8, !tbaa !5, !alias.scope !21
  %133 = load <2 x double>, ptr %131, align 8, !tbaa !5, !alias.scope !21
  %134 = shufflevector <2 x double> %128, <2 x double> %132, <2 x i32> <i32 1, i32 2>
  %135 = shufflevector <2 x double> %132, <2 x double> %133, <2 x i32> <i32 1, i32 2>
  %136 = fadd <2 x double> %134, %132
  %137 = fadd <2 x double> %135, %133
  %138 = or disjoint i64 %127, 2
  %139 = getelementptr inbounds double, ptr %4, i64 %138
  %140 = getelementptr inbounds double, ptr %139, i64 2
  %141 = load <2 x double>, ptr %139, align 8, !tbaa !5, !alias.scope !21
  %142 = load <2 x double>, ptr %140, align 8, !tbaa !5, !alias.scope !21
  %143 = fadd <2 x double> %136, %141
  %144 = fadd <2 x double> %137, %142
  %145 = fmul <2 x double> %143, <double 3.333300e-01, double 3.333300e-01>
  %146 = fmul <2 x double> %144, <double 3.333300e-01, double 3.333300e-01>
  %147 = getelementptr inbounds double, ptr %3, i64 %129
  %148 = getelementptr inbounds double, ptr %147, i64 2
  store <2 x double> %145, ptr %147, align 8, !tbaa !5, !alias.scope !24, !noalias !21
  store <2 x double> %146, ptr %148, align 8, !tbaa !5, !alias.scope !24, !noalias !21
  %149 = add nuw i64 %127, 4
  %150 = icmp eq i64 %149, 1996
  br i1 %150, label %151, label %126, !llvm.loop !26

151:                                              ; preds = %126
  %152 = extractelement <2 x double> %133, i64 1
  br label %153

153:                                              ; preds = %151, %122
  %154 = phi i64 [ 1997, %151 ], [ 1, %122 ]
  %155 = phi double [ %152, %151 ], [ %123, %122 ]
  br label %156

156:                                              ; preds = %156, %153
  %157 = phi i64 [ %154, %153 ], [ %171, %156 ]
  %158 = phi double [ %155, %153 ], [ %169, %156 ]
  %159 = getelementptr inbounds double, ptr %4, i64 %157
  %160 = load double, ptr %159, align 8, !tbaa !5
  %161 = fadd double %158, %160
  %162 = add nuw nsw i64 %157, 1
  %163 = getelementptr inbounds double, ptr %4, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !5
  %165 = fadd double %161, %164
  %166 = fmul double %165, 3.333300e-01
  %167 = getelementptr inbounds double, ptr %3, i64 %157
  store double %166, ptr %167, align 8, !tbaa !5
  %168 = getelementptr inbounds double, ptr %4, i64 %162
  %169 = load double, ptr %168, align 8, !tbaa !5
  %170 = fadd double %160, %169
  %171 = add nuw nsw i64 %157, 2
  %172 = getelementptr inbounds double, ptr %4, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = fadd double %170, %173
  %175 = fmul double %174, 3.333300e-01
  %176 = getelementptr inbounds double, ptr %3, i64 %162
  store double %175, ptr %176, align 8, !tbaa !5
  %177 = icmp eq i64 %171, 1999
  br i1 %177, label %178, label %156, !llvm.loop !27

178:                                              ; preds = %156
  %179 = add nuw nsw i32 %66, 1
  %180 = icmp eq i32 %179, 500
  br i1 %180, label %181, label %65, !llvm.loop !28

181:                                              ; preds = %178
  %182 = load ptr, ptr @stdout, align 8, !tbaa !29
  %183 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %182)
  %184 = load ptr, ptr @stdout, align 8, !tbaa !29
  %185 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %186

186:                                              ; preds = %194, %181
  %187 = phi i64 [ 0, %181 ], [ %199, %194 ]
  %188 = trunc i64 %187 to i16
  %189 = urem i16 %188, 20
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load ptr, ptr @stdout, align 8, !tbaa !29
  %193 = tail call i32 @fputc(i32 10, ptr %192)
  br label %194

194:                                              ; preds = %191, %186
  %195 = load ptr, ptr @stdout, align 8, !tbaa !29
  %196 = getelementptr inbounds double, ptr %3, i64 %187
  %197 = load double, ptr %196, align 8, !tbaa !5
  %198 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef nonnull @.str.4, double noundef %197)
  %199 = add nuw nsw i64 %187, 1
  %200 = icmp eq i64 %199, 2000
  br i1 %200, label %201, label %186, !llvm.loop !31

201:                                              ; preds = %194
  %202 = load ptr, ptr @stdout, align 8, !tbaa !29
  %203 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %204 = load ptr, ptr @stdout, align 8, !tbaa !29
  %205 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %204)
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
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10}
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = distinct !{!31, !10}
