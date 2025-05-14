; ModuleID = 'outputs/src_PolyBenchC-4.2.1_correlation_opt_1.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_correlation_opt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"corr\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 8) #7
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 8) #7
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #7
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 8) #7
  br label %7

7:                                                ; preds = %2, %27
  %8 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %9 = trunc i64 %8 to i32
  %10 = sitofp i32 %9 to double
  %11 = insertelement <2 x i64> poison, i64 %8, i64 0
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x double> poison, double %10, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %15, %7
  %16 = phi i64 [ 0, %7 ], [ %24, %15 ]
  %17 = phi <2 x i64> [ <i64 0, i64 1>, %7 ], [ %25, %15 ]
  %18 = mul nuw nsw <2 x i64> %17, %12
  %19 = trunc <2 x i64> %18 to <2 x i32>
  %20 = sitofp <2 x i32> %19 to <2 x double>
  %21 = fdiv <2 x double> %20, <double 1.200000e+03, double 1.200000e+03>
  %22 = fadd <2 x double> %21, %14
  %23 = getelementptr inbounds [1200 x double], ptr %3, i64 %8, i64 %16
  store <2 x double> %22, ptr %23, align 8, !tbaa !5
  %24 = add nuw i64 %16, 2
  %25 = add <2 x i64> %17, <i64 2, i64 2>
  %26 = icmp eq i64 %24, 1200
  br i1 %26, label %27, label %15, !llvm.loop !9

27:                                               ; preds = %15
  %28 = add nuw nsw i64 %8, 1
  %29 = icmp eq i64 %28, 1400
  br i1 %29, label %30, label %7, !llvm.loop !13

30:                                               ; preds = %27, %56
  %31 = phi i64 [ %59, %56 ], [ 0, %27 ]
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %54, %32 ]
  %34 = phi double [ 0.000000e+00, %30 ], [ %53, %32 ]
  %35 = getelementptr inbounds [1200 x double], ptr %3, i64 %33, i64 %31
  %36 = load double, ptr %35, align 8, !tbaa !5
  %37 = fadd double %34, %36
  %38 = add nuw nsw i64 %33, 1
  %39 = getelementptr inbounds [1200 x double], ptr %3, i64 %38, i64 %31
  %40 = load double, ptr %39, align 8, !tbaa !5
  %41 = fadd double %37, %40
  %42 = add nuw nsw i64 %33, 2
  %43 = getelementptr inbounds [1200 x double], ptr %3, i64 %42, i64 %31
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = fadd double %41, %44
  %46 = add nuw nsw i64 %33, 3
  %47 = getelementptr inbounds [1200 x double], ptr %3, i64 %46, i64 %31
  %48 = load double, ptr %47, align 8, !tbaa !5
  %49 = fadd double %45, %48
  %50 = add nuw nsw i64 %33, 4
  %51 = getelementptr inbounds [1200 x double], ptr %3, i64 %50, i64 %31
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = fadd double %49, %52
  %54 = add nuw nsw i64 %33, 5
  %55 = icmp eq i64 %54, 1400
  br i1 %55, label %56, label %32, !llvm.loop !14

56:                                               ; preds = %32
  %57 = fdiv double %53, 1.400000e+03
  %58 = getelementptr inbounds double, ptr %5, i64 %31
  store double %57, ptr %58, align 8, !tbaa !5
  %59 = add nuw nsw i64 %31, 1
  %60 = icmp eq i64 %59, 1200
  br i1 %60, label %61, label %30, !llvm.loop !15

61:                                               ; preds = %56, %89
  %62 = phi i64 [ %95, %89 ], [ 0, %56 ]
  %63 = getelementptr inbounds double, ptr %5, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !5
  br label %65

65:                                               ; preds = %65, %61
  %66 = phi i64 [ 0, %61 ], [ %87, %65 ]
  %67 = phi double [ 0.000000e+00, %61 ], [ %86, %65 ]
  %68 = getelementptr inbounds [1200 x double], ptr %3, i64 %66, i64 %62
  %69 = load double, ptr %68, align 8, !tbaa !5
  %70 = fsub double %69, %64
  %71 = tail call double @llvm.fmuladd.f64(double %70, double %70, double %67)
  %72 = or disjoint i64 %66, 1
  %73 = getelementptr inbounds [1200 x double], ptr %3, i64 %72, i64 %62
  %74 = load double, ptr %73, align 8, !tbaa !5
  %75 = fsub double %74, %64
  %76 = tail call double @llvm.fmuladd.f64(double %75, double %75, double %71)
  %77 = or disjoint i64 %66, 2
  %78 = getelementptr inbounds [1200 x double], ptr %3, i64 %77, i64 %62
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = fsub double %79, %64
  %81 = tail call double @llvm.fmuladd.f64(double %80, double %80, double %76)
  %82 = or disjoint i64 %66, 3
  %83 = getelementptr inbounds [1200 x double], ptr %3, i64 %82, i64 %62
  %84 = load double, ptr %83, align 8, !tbaa !5
  %85 = fsub double %84, %64
  %86 = tail call double @llvm.fmuladd.f64(double %85, double %85, double %81)
  %87 = add nuw nsw i64 %66, 4
  %88 = icmp eq i64 %87, 1400
  br i1 %88, label %89, label %65, !llvm.loop !16

89:                                               ; preds = %65
  %90 = fdiv double %86, 1.400000e+03
  %91 = tail call double @sqrt(double noundef %90) #7
  %92 = getelementptr inbounds double, ptr %6, i64 %62
  %93 = fcmp ugt double %91, 1.000000e-01
  %94 = select i1 %93, double %91, double 1.000000e+00
  store double %94, ptr %92, align 8, !tbaa !5
  %95 = add nuw nsw i64 %62, 1
  %96 = icmp eq i64 %95, 1200
  br i1 %96, label %97, label %61, !llvm.loop !17

97:                                               ; preds = %89
  %98 = getelementptr i8, ptr %3, i64 13440000
  %99 = getelementptr i8, ptr %5, i64 9600
  %100 = getelementptr i8, ptr %6, i64 9600
  %101 = icmp ult ptr %3, %99
  %102 = icmp ult ptr %5, %98
  %103 = and i1 %101, %102
  %104 = icmp ult ptr %3, %100
  %105 = icmp ult ptr %6, %98
  %106 = and i1 %104, %105
  %107 = or i1 %103, %106
  br label %108

108:                                              ; preds = %156, %97
  %109 = phi i64 [ %157, %156 ], [ 0, %97 ]
  br i1 %107, label %133, label %110

110:                                              ; preds = %108, %110
  %111 = phi i64 [ %131, %110 ], [ 0, %108 ]
  %112 = getelementptr inbounds [1200 x double], ptr %3, i64 %109, i64 %111
  %113 = load <2 x double>, ptr %112, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %114 = getelementptr inbounds double, ptr %5, i64 %111
  %115 = load <2 x double>, ptr %114, align 8, !tbaa !5, !alias.scope !24
  %116 = fsub <2 x double> %113, %115
  %117 = fmul <2 x double> %116, <double 0x3F9B5E17D566A042, double 0x3F9B5E17D566A042>
  %118 = getelementptr inbounds double, ptr %6, i64 %111
  %119 = load <2 x double>, ptr %118, align 8, !tbaa !5, !alias.scope !25
  %120 = fdiv <2 x double> %117, %119
  store <2 x double> %120, ptr %112, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %121 = or disjoint i64 %111, 2
  %122 = getelementptr inbounds [1200 x double], ptr %3, i64 %109, i64 %121
  %123 = load <2 x double>, ptr %122, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %124 = getelementptr inbounds double, ptr %5, i64 %121
  %125 = load <2 x double>, ptr %124, align 8, !tbaa !5, !alias.scope !24
  %126 = fsub <2 x double> %123, %125
  %127 = fmul <2 x double> %126, <double 0x3F9B5E17D566A042, double 0x3F9B5E17D566A042>
  %128 = getelementptr inbounds double, ptr %6, i64 %121
  %129 = load <2 x double>, ptr %128, align 8, !tbaa !5, !alias.scope !25
  %130 = fdiv <2 x double> %127, %129
  store <2 x double> %130, ptr %122, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %131 = add nuw nsw i64 %111, 4
  %132 = icmp eq i64 %131, 1200
  br i1 %132, label %156, label %110, !llvm.loop !26

133:                                              ; preds = %108, %133
  %134 = phi i64 [ %154, %133 ], [ 0, %108 ]
  %135 = getelementptr inbounds [1200 x double], ptr %3, i64 %109, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = getelementptr inbounds double, ptr %5, i64 %134
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = fsub double %136, %138
  %140 = fmul double %139, 0x3F9B5E17D566A042
  %141 = getelementptr inbounds double, ptr %6, i64 %134
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = fdiv double %140, %142
  store double %143, ptr %135, align 8, !tbaa !5
  %144 = or disjoint i64 %134, 1
  %145 = getelementptr inbounds [1200 x double], ptr %3, i64 %109, i64 %144
  %146 = load double, ptr %145, align 8, !tbaa !5
  %147 = getelementptr inbounds double, ptr %5, i64 %144
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = fsub double %146, %148
  %150 = fmul double %149, 0x3F9B5E17D566A042
  %151 = getelementptr inbounds double, ptr %6, i64 %144
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = fdiv double %150, %152
  store double %153, ptr %145, align 8, !tbaa !5
  %154 = add nuw nsw i64 %134, 2
  %155 = icmp eq i64 %154, 1200
  br i1 %155, label %156, label %133, !llvm.loop !27

156:                                              ; preds = %110, %133
  %157 = add nuw nsw i64 %109, 1
  %158 = icmp eq i64 %157, 1400
  br i1 %158, label %163, label %108, !llvm.loop !28

159:                                              ; preds = %185
  %160 = add nuw nsw i64 %164, 1
  %161 = add nuw nsw i64 %165, 1
  %162 = icmp eq i64 %160, 1199
  br i1 %162, label %190, label %163, !llvm.loop !29

163:                                              ; preds = %156, %159
  %164 = phi i64 [ %160, %159 ], [ 0, %156 ]
  %165 = phi i64 [ %161, %159 ], [ 1, %156 ]
  %166 = getelementptr inbounds [1200 x double], ptr %4, i64 %164, i64 %164
  store double 1.000000e+00, ptr %166, align 8, !tbaa !5
  br label %167

167:                                              ; preds = %185, %163
  %168 = phi i64 [ %165, %163 ], [ %188, %185 ]
  br label %169

169:                                              ; preds = %169, %167
  %170 = phi i64 [ 0, %167 ], [ %183, %169 ]
  %171 = phi double [ 0.000000e+00, %167 ], [ %182, %169 ]
  %172 = getelementptr inbounds [1200 x double], ptr %3, i64 %170, i64 %164
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = getelementptr inbounds [1200 x double], ptr %3, i64 %170, i64 %168
  %175 = load double, ptr %174, align 8, !tbaa !5
  %176 = tail call double @llvm.fmuladd.f64(double %173, double %175, double %171)
  %177 = or disjoint i64 %170, 1
  %178 = getelementptr inbounds [1200 x double], ptr %3, i64 %177, i64 %164
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = getelementptr inbounds [1200 x double], ptr %3, i64 %177, i64 %168
  %181 = load double, ptr %180, align 8, !tbaa !5
  %182 = tail call double @llvm.fmuladd.f64(double %179, double %181, double %176)
  %183 = add nuw nsw i64 %170, 2
  %184 = icmp eq i64 %183, 1400
  br i1 %184, label %185, label %169, !llvm.loop !30

185:                                              ; preds = %169
  %186 = getelementptr inbounds [1200 x double], ptr %4, i64 %164, i64 %168
  store double %182, ptr %186, align 8, !tbaa !5
  %187 = getelementptr inbounds [1200 x double], ptr %4, i64 %168, i64 %164
  store double %182, ptr %187, align 8, !tbaa !5
  %188 = add nuw nsw i64 %168, 1
  %189 = icmp eq i64 %188, 1200
  br i1 %189, label %159, label %167, !llvm.loop !31

190:                                              ; preds = %159
  %191 = getelementptr inbounds [1200 x double], ptr %4, i64 1199, i64 1199
  store double 1.000000e+00, ptr %191, align 8, !tbaa !5
  %192 = load ptr, ptr @stdout, align 8, !tbaa !32
  %193 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %192)
  %194 = load ptr, ptr @stdout, align 8, !tbaa !32
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %196

196:                                              ; preds = %215, %190
  %197 = phi i64 [ 0, %190 ], [ %216, %215 ]
  %198 = mul nuw nsw i64 %197, 1200
  br label %199

199:                                              ; preds = %208, %196
  %200 = phi i64 [ 0, %196 ], [ %213, %208 ]
  %201 = add nuw nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  %203 = urem i32 %202, 20
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load ptr, ptr @stdout, align 8, !tbaa !32
  %207 = tail call i32 @fputc(i32 10, ptr %206)
  br label %208

208:                                              ; preds = %205, %199
  %209 = load ptr, ptr @stdout, align 8, !tbaa !32
  %210 = getelementptr inbounds [1200 x double], ptr %4, i64 %197, i64 %200
  %211 = load double, ptr %210, align 8, !tbaa !5
  %212 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef nonnull @.str.4, double noundef %211)
  %213 = add nuw nsw i64 %200, 1
  %214 = icmp eq i64 %213, 1200
  br i1 %214, label %215, label %199, !llvm.loop !34

215:                                              ; preds = %208
  %216 = add nuw nsw i64 %197, 1
  %217 = icmp eq i64 %216, 1200
  br i1 %217, label %218, label %196, !llvm.loop !35

218:                                              ; preds = %215
  %219 = load ptr, ptr @stdout, align 8, !tbaa !32
  %220 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %221 = load ptr, ptr @stdout, align 8, !tbaa !32
  %222 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %221)
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef nonnull %4) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %6) #7
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22, !23}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = !{!22}
!25 = !{!23}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !7, i64 0}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
