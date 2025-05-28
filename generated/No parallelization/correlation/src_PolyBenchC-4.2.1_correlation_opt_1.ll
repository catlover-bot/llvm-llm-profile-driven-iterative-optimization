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

7:                                                ; preds = %2, %31
  %8 = phi i64 [ 0, %2 ], [ %32, %31 ]
  %9 = trunc i64 %8 to i32
  %10 = sitofp i32 %9 to double
  %11 = insertelement <2 x double> poison, double %10, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %28, %13 ]
  %15 = phi <2 x i32> [ <i32 0, i32 1>, %7 ], [ %29, %13 ]
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fmul <2 x double> %12, %16
  %18 = fdiv <2 x double> %17, <double 1.200000e+03, double 1.200000e+03>
  %19 = fadd <2 x double> %18, %12
  %20 = getelementptr inbounds [1200 x double], ptr %3, i64 %8, i64 %14
  store <2 x double> %19, ptr %20, align 8, !tbaa !5
  %21 = or disjoint i64 %14, 2
  %22 = add <2 x i32> %15, <i32 2, i32 2>
  %23 = sitofp <2 x i32> %22 to <2 x double>
  %24 = fmul <2 x double> %12, %23
  %25 = fdiv <2 x double> %24, <double 1.200000e+03, double 1.200000e+03>
  %26 = fadd <2 x double> %25, %12
  %27 = getelementptr inbounds [1200 x double], ptr %3, i64 %8, i64 %21
  store <2 x double> %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw nsw i64 %14, 4
  %29 = add <2 x i32> %15, <i32 4, i32 4>
  %30 = icmp eq i64 %28, 1200
  br i1 %30, label %31, label %13, !llvm.loop !9

31:                                               ; preds = %13
  %32 = add nuw nsw i64 %8, 1
  %33 = icmp eq i64 %32, 1400
  br i1 %33, label %34, label %7, !llvm.loop !13

34:                                               ; preds = %31, %60
  %35 = phi i64 [ %63, %60 ], [ 0, %31 ]
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i64 [ 0, %34 ], [ %58, %36 ]
  %38 = phi double [ 0.000000e+00, %34 ], [ %57, %36 ]
  %39 = getelementptr inbounds [1200 x double], ptr %3, i64 %37, i64 %35
  %40 = load double, ptr %39, align 8, !tbaa !5
  %41 = fadd double %38, %40
  %42 = add nuw nsw i64 %37, 1
  %43 = getelementptr inbounds [1200 x double], ptr %3, i64 %42, i64 %35
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = fadd double %41, %44
  %46 = add nuw nsw i64 %37, 2
  %47 = getelementptr inbounds [1200 x double], ptr %3, i64 %46, i64 %35
  %48 = load double, ptr %47, align 8, !tbaa !5
  %49 = fadd double %45, %48
  %50 = add nuw nsw i64 %37, 3
  %51 = getelementptr inbounds [1200 x double], ptr %3, i64 %50, i64 %35
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = fadd double %49, %52
  %54 = add nuw nsw i64 %37, 4
  %55 = getelementptr inbounds [1200 x double], ptr %3, i64 %54, i64 %35
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = fadd double %53, %56
  %58 = add nuw nsw i64 %37, 5
  %59 = icmp eq i64 %58, 1400
  br i1 %59, label %60, label %36, !llvm.loop !14

60:                                               ; preds = %36
  %61 = fmul double %57, 0x3F4767DCE434A9B1
  %62 = getelementptr inbounds double, ptr %5, i64 %35
  store double %61, ptr %62, align 8, !tbaa !5
  %63 = add nuw nsw i64 %35, 1
  %64 = icmp eq i64 %63, 1200
  br i1 %64, label %65, label %34, !llvm.loop !15

65:                                               ; preds = %60, %93
  %66 = phi i64 [ %99, %93 ], [ 0, %60 ]
  %67 = getelementptr inbounds double, ptr %5, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !5
  br label %69

69:                                               ; preds = %69, %65
  %70 = phi i64 [ 0, %65 ], [ %91, %69 ]
  %71 = phi double [ 0.000000e+00, %65 ], [ %90, %69 ]
  %72 = getelementptr inbounds [1200 x double], ptr %3, i64 %70, i64 %66
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = fsub double %73, %68
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %74, double %71)
  %76 = or disjoint i64 %70, 1
  %77 = getelementptr inbounds [1200 x double], ptr %3, i64 %76, i64 %66
  %78 = load double, ptr %77, align 8, !tbaa !5
  %79 = fsub double %78, %68
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %79, double %75)
  %81 = or disjoint i64 %70, 2
  %82 = getelementptr inbounds [1200 x double], ptr %3, i64 %81, i64 %66
  %83 = load double, ptr %82, align 8, !tbaa !5
  %84 = fsub double %83, %68
  %85 = tail call double @llvm.fmuladd.f64(double %84, double %84, double %80)
  %86 = or disjoint i64 %70, 3
  %87 = getelementptr inbounds [1200 x double], ptr %3, i64 %86, i64 %66
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = fsub double %88, %68
  %90 = tail call double @llvm.fmuladd.f64(double %89, double %89, double %85)
  %91 = add nuw nsw i64 %70, 4
  %92 = icmp eq i64 %91, 1400
  br i1 %92, label %93, label %69, !llvm.loop !16

93:                                               ; preds = %69
  %94 = fmul double %90, 0x3F4767DCE434A9B1
  %95 = getelementptr inbounds double, ptr %6, i64 %66
  %96 = tail call double @sqrt(double noundef %94) #7
  %97 = fcmp ugt double %96, 1.000000e-01
  %98 = select i1 %97, double %96, double 1.000000e+00
  store double %98, ptr %95, align 8, !tbaa !5
  %99 = add nuw nsw i64 %66, 1
  %100 = icmp eq i64 %99, 1200
  br i1 %100, label %101, label %65, !llvm.loop !17

101:                                              ; preds = %93
  %102 = getelementptr i8, ptr %3, i64 13440000
  %103 = getelementptr i8, ptr %5, i64 9600
  %104 = getelementptr i8, ptr %6, i64 9600
  %105 = icmp ult ptr %3, %103
  %106 = icmp ult ptr %5, %102
  %107 = and i1 %105, %106
  %108 = icmp ult ptr %3, %104
  %109 = icmp ult ptr %6, %102
  %110 = and i1 %108, %109
  %111 = or i1 %107, %110
  br label %112

112:                                              ; preds = %160, %101
  %113 = phi i64 [ %161, %160 ], [ 0, %101 ]
  br i1 %111, label %137, label %114

114:                                              ; preds = %112, %114
  %115 = phi i64 [ %135, %114 ], [ 0, %112 ]
  %116 = getelementptr inbounds double, ptr %5, i64 %115
  %117 = load <2 x double>, ptr %116, align 8, !tbaa !5, !alias.scope !18
  %118 = getelementptr inbounds [1200 x double], ptr %3, i64 %113, i64 %115
  %119 = load <2 x double>, ptr %118, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  %120 = fsub <2 x double> %119, %117
  store <2 x double> %120, ptr %118, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  %121 = getelementptr inbounds double, ptr %6, i64 %115
  %122 = load <2 x double>, ptr %121, align 8, !tbaa !5, !alias.scope !25
  %123 = fmul <2 x double> %122, <double 0x4042B5524AE1278E, double 0x4042B5524AE1278E>
  %124 = fdiv <2 x double> %120, %123
  store <2 x double> %124, ptr %118, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  %125 = or disjoint i64 %115, 2
  %126 = getelementptr inbounds double, ptr %5, i64 %125
  %127 = load <2 x double>, ptr %126, align 8, !tbaa !5, !alias.scope !18
  %128 = getelementptr inbounds [1200 x double], ptr %3, i64 %113, i64 %125
  %129 = load <2 x double>, ptr %128, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  %130 = fsub <2 x double> %129, %127
  store <2 x double> %130, ptr %128, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  %131 = getelementptr inbounds double, ptr %6, i64 %125
  %132 = load <2 x double>, ptr %131, align 8, !tbaa !5, !alias.scope !25
  %133 = fmul <2 x double> %132, <double 0x4042B5524AE1278E, double 0x4042B5524AE1278E>
  %134 = fdiv <2 x double> %130, %133
  store <2 x double> %134, ptr %128, align 8, !tbaa !5, !alias.scope !21, !noalias !23
  %135 = add nuw nsw i64 %115, 4
  %136 = icmp eq i64 %135, 1200
  br i1 %136, label %160, label %114, !llvm.loop !26

137:                                              ; preds = %112, %137
  %138 = phi i64 [ %158, %137 ], [ 0, %112 ]
  %139 = getelementptr inbounds double, ptr %5, i64 %138
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = getelementptr inbounds [1200 x double], ptr %3, i64 %113, i64 %138
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = fsub double %142, %140
  store double %143, ptr %141, align 8, !tbaa !5
  %144 = getelementptr inbounds double, ptr %6, i64 %138
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = fmul double %145, 0x4042B5524AE1278E
  %147 = fdiv double %143, %146
  store double %147, ptr %141, align 8, !tbaa !5
  %148 = or disjoint i64 %138, 1
  %149 = getelementptr inbounds double, ptr %5, i64 %148
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = getelementptr inbounds [1200 x double], ptr %3, i64 %113, i64 %148
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = fsub double %152, %150
  store double %153, ptr %151, align 8, !tbaa !5
  %154 = getelementptr inbounds double, ptr %6, i64 %148
  %155 = load double, ptr %154, align 8, !tbaa !5
  %156 = fmul double %155, 0x4042B5524AE1278E
  %157 = fdiv double %153, %156
  store double %157, ptr %151, align 8, !tbaa !5
  %158 = add nuw nsw i64 %138, 2
  %159 = icmp eq i64 %158, 1200
  br i1 %159, label %160, label %137, !llvm.loop !27

160:                                              ; preds = %114, %137
  %161 = add nuw nsw i64 %113, 1
  %162 = icmp eq i64 %161, 1400
  br i1 %162, label %167, label %112, !llvm.loop !28

163:                                              ; preds = %189
  %164 = add nuw nsw i64 %168, 1
  %165 = add nuw nsw i64 %169, 1
  %166 = icmp eq i64 %164, 1199
  br i1 %166, label %194, label %167, !llvm.loop !29

167:                                              ; preds = %160, %163
  %168 = phi i64 [ %164, %163 ], [ 0, %160 ]
  %169 = phi i64 [ %165, %163 ], [ 1, %160 ]
  %170 = getelementptr inbounds [1200 x double], ptr %4, i64 %168, i64 %168
  store double 1.000000e+00, ptr %170, align 8, !tbaa !5
  br label %171

171:                                              ; preds = %189, %167
  %172 = phi i64 [ %169, %167 ], [ %192, %189 ]
  br label %173

173:                                              ; preds = %173, %171
  %174 = phi i64 [ 0, %171 ], [ %187, %173 ]
  %175 = phi double [ 0.000000e+00, %171 ], [ %186, %173 ]
  %176 = getelementptr inbounds [1200 x double], ptr %3, i64 %174, i64 %168
  %177 = load double, ptr %176, align 8, !tbaa !5
  %178 = getelementptr inbounds [1200 x double], ptr %3, i64 %174, i64 %172
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = tail call double @llvm.fmuladd.f64(double %177, double %179, double %175)
  %181 = or disjoint i64 %174, 1
  %182 = getelementptr inbounds [1200 x double], ptr %3, i64 %181, i64 %168
  %183 = load double, ptr %182, align 8, !tbaa !5
  %184 = getelementptr inbounds [1200 x double], ptr %3, i64 %181, i64 %172
  %185 = load double, ptr %184, align 8, !tbaa !5
  %186 = tail call double @llvm.fmuladd.f64(double %183, double %185, double %180)
  %187 = add nuw nsw i64 %174, 2
  %188 = icmp eq i64 %187, 1400
  br i1 %188, label %189, label %173, !llvm.loop !30

189:                                              ; preds = %173
  %190 = getelementptr inbounds [1200 x double], ptr %4, i64 %168, i64 %172
  store double %186, ptr %190, align 8, !tbaa !5
  %191 = getelementptr inbounds [1200 x double], ptr %4, i64 %172, i64 %168
  store double %186, ptr %191, align 8, !tbaa !5
  %192 = add nuw nsw i64 %172, 1
  %193 = icmp eq i64 %192, 1200
  br i1 %193, label %163, label %171, !llvm.loop !31

194:                                              ; preds = %163
  %195 = getelementptr inbounds [1200 x double], ptr %4, i64 1199, i64 1199
  store double 1.000000e+00, ptr %195, align 8, !tbaa !5
  %196 = load ptr, ptr @stdout, align 8, !tbaa !32
  %197 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %196)
  %198 = load ptr, ptr @stdout, align 8, !tbaa !32
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %200

200:                                              ; preds = %219, %194
  %201 = phi i64 [ 0, %194 ], [ %220, %219 ]
  %202 = mul nuw nsw i64 %201, 1200
  br label %203

203:                                              ; preds = %212, %200
  %204 = phi i64 [ 0, %200 ], [ %217, %212 ]
  %205 = add nuw nsw i64 %204, %202
  %206 = trunc i64 %205 to i32
  %207 = urem i32 %206, 20
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = load ptr, ptr @stdout, align 8, !tbaa !32
  %211 = tail call i32 @fputc(i32 10, ptr %210)
  br label %212

212:                                              ; preds = %209, %203
  %213 = load ptr, ptr @stdout, align 8, !tbaa !32
  %214 = getelementptr inbounds [1200 x double], ptr %4, i64 %201, i64 %204
  %215 = load double, ptr %214, align 8, !tbaa !5
  %216 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.4, double noundef %215)
  %217 = add nuw nsw i64 %204, 1
  %218 = icmp eq i64 %217, 1200
  br i1 %218, label %219, label %203, !llvm.loop !34

219:                                              ; preds = %212
  %220 = add nuw nsw i64 %201, 1
  %221 = icmp eq i64 %220, 1200
  br i1 %221, label %222, label %200, !llvm.loop !35

222:                                              ; preds = %219
  %223 = load ptr, ptr @stdout, align 8, !tbaa !32
  %224 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %225 = load ptr, ptr @stdout, align 8, !tbaa !32
  %226 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %225)
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
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = !{!19, !24}
!24 = distinct !{!24, !20}
!25 = !{!24}
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
