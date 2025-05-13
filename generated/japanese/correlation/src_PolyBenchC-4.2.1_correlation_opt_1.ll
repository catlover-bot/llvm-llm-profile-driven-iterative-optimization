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

30:                                               ; preds = %27, %32
  %31 = phi i64 [ %35, %32 ], [ 0, %27 ]
  br label %37

32:                                               ; preds = %37
  %33 = fdiv double %58, 1.400000e+03
  %34 = getelementptr inbounds double, ptr %5, i64 %31
  store double %33, ptr %34, align 8, !tbaa !5
  %35 = add nuw nsw i64 %31, 1
  %36 = icmp eq i64 %35, 1200
  br i1 %36, label %61, label %30, !llvm.loop !14

37:                                               ; preds = %37, %30
  %38 = phi i64 [ 0, %30 ], [ %59, %37 ]
  %39 = phi double [ 0.000000e+00, %30 ], [ %58, %37 ]
  %40 = getelementptr inbounds [1200 x double], ptr %3, i64 %38, i64 %31
  %41 = load double, ptr %40, align 8, !tbaa !5
  %42 = fadd double %39, %41
  %43 = add nuw nsw i64 %38, 1
  %44 = getelementptr inbounds [1200 x double], ptr %3, i64 %43, i64 %31
  %45 = load double, ptr %44, align 8, !tbaa !5
  %46 = fadd double %42, %45
  %47 = add nuw nsw i64 %38, 2
  %48 = getelementptr inbounds [1200 x double], ptr %3, i64 %47, i64 %31
  %49 = load double, ptr %48, align 8, !tbaa !5
  %50 = fadd double %46, %49
  %51 = add nuw nsw i64 %38, 3
  %52 = getelementptr inbounds [1200 x double], ptr %3, i64 %51, i64 %31
  %53 = load double, ptr %52, align 8, !tbaa !5
  %54 = fadd double %50, %53
  %55 = add nuw nsw i64 %38, 4
  %56 = getelementptr inbounds [1200 x double], ptr %3, i64 %55, i64 %31
  %57 = load double, ptr %56, align 8, !tbaa !5
  %58 = fadd double %54, %57
  %59 = add nuw nsw i64 %38, 5
  %60 = icmp eq i64 %59, 1400
  br i1 %60, label %32, label %37, !llvm.loop !15

61:                                               ; preds = %32, %65
  %62 = phi i64 [ %71, %65 ], [ 0, %32 ]
  %63 = getelementptr inbounds double, ptr %5, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !5
  br label %84

65:                                               ; preds = %84
  %66 = fdiv double %105, 1.400000e+03
  %67 = tail call double @sqrt(double noundef %66) #7
  %68 = fcmp ole double %67, 1.000000e-01
  %69 = select i1 %68, double 1.000000e+00, double %67
  %70 = getelementptr inbounds double, ptr %6, i64 %62
  store double %69, ptr %70, align 8, !tbaa !5
  %71 = add nuw nsw i64 %62, 1
  %72 = icmp eq i64 %71, 1200
  br i1 %72, label %73, label %61, !llvm.loop !16

73:                                               ; preds = %65
  %74 = getelementptr i8, ptr %3, i64 13440000
  %75 = getelementptr i8, ptr %5, i64 9600
  %76 = getelementptr i8, ptr %6, i64 9600
  %77 = icmp ult ptr %3, %75
  %78 = icmp ult ptr %5, %74
  %79 = and i1 %77, %78
  %80 = icmp ult ptr %3, %76
  %81 = icmp ult ptr %6, %74
  %82 = and i1 %80, %81
  %83 = or i1 %79, %82
  br label %108

84:                                               ; preds = %84, %61
  %85 = phi i64 [ 0, %61 ], [ %106, %84 ]
  %86 = phi double [ 0.000000e+00, %61 ], [ %105, %84 ]
  %87 = getelementptr inbounds [1200 x double], ptr %3, i64 %85, i64 %62
  %88 = load double, ptr %87, align 8, !tbaa !5
  %89 = fsub double %88, %64
  %90 = tail call double @llvm.fmuladd.f64(double %89, double %89, double %86)
  %91 = or disjoint i64 %85, 1
  %92 = getelementptr inbounds [1200 x double], ptr %3, i64 %91, i64 %62
  %93 = load double, ptr %92, align 8, !tbaa !5
  %94 = fsub double %93, %64
  %95 = tail call double @llvm.fmuladd.f64(double %94, double %94, double %90)
  %96 = or disjoint i64 %85, 2
  %97 = getelementptr inbounds [1200 x double], ptr %3, i64 %96, i64 %62
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = fsub double %98, %64
  %100 = tail call double @llvm.fmuladd.f64(double %99, double %99, double %95)
  %101 = or disjoint i64 %85, 3
  %102 = getelementptr inbounds [1200 x double], ptr %3, i64 %101, i64 %62
  %103 = load double, ptr %102, align 8, !tbaa !5
  %104 = fsub double %103, %64
  %105 = tail call double @llvm.fmuladd.f64(double %104, double %104, double %100)
  %106 = add nuw nsw i64 %85, 4
  %107 = icmp eq i64 %106, 1400
  br i1 %107, label %65, label %84, !llvm.loop !17

108:                                              ; preds = %133, %73
  %109 = phi i64 [ %134, %133 ], [ 0, %73 ]
  br i1 %83, label %136, label %110

110:                                              ; preds = %108, %110
  %111 = phi i64 [ %131, %110 ], [ 0, %108 ]
  %112 = getelementptr inbounds [1200 x double], ptr %3, i64 %109, i64 %111
  %113 = load <2 x double>, ptr %112, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %114 = getelementptr inbounds double, ptr %5, i64 %111
  %115 = load <2 x double>, ptr %114, align 8, !tbaa !5, !alias.scope !24
  %116 = fsub <2 x double> %113, %115
  %117 = getelementptr inbounds double, ptr %6, i64 %111
  %118 = load <2 x double>, ptr %117, align 8, !tbaa !5, !alias.scope !25
  %119 = fmul <2 x double> %118, <double 0x4042B5524AE1278E, double 0x4042B5524AE1278E>
  %120 = fdiv <2 x double> %116, %119
  store <2 x double> %120, ptr %112, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %121 = or disjoint i64 %111, 2
  %122 = getelementptr inbounds [1200 x double], ptr %3, i64 %109, i64 %121
  %123 = load <2 x double>, ptr %122, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %124 = getelementptr inbounds double, ptr %5, i64 %121
  %125 = load <2 x double>, ptr %124, align 8, !tbaa !5, !alias.scope !24
  %126 = fsub <2 x double> %123, %125
  %127 = getelementptr inbounds double, ptr %6, i64 %121
  %128 = load <2 x double>, ptr %127, align 8, !tbaa !5, !alias.scope !25
  %129 = fmul <2 x double> %128, <double 0x4042B5524AE1278E, double 0x4042B5524AE1278E>
  %130 = fdiv <2 x double> %126, %129
  store <2 x double> %130, ptr %122, align 8, !tbaa !5, !alias.scope !18, !noalias !21
  %131 = add nuw nsw i64 %111, 4
  %132 = icmp eq i64 %131, 1200
  br i1 %132, label %133, label %110, !llvm.loop !26

133:                                              ; preds = %110, %136
  %134 = add nuw nsw i64 %109, 1
  %135 = icmp eq i64 %134, 1400
  br i1 %135, label %163, label %108, !llvm.loop !27

136:                                              ; preds = %108, %136
  %137 = phi i64 [ %157, %136 ], [ 0, %108 ]
  %138 = getelementptr inbounds [1200 x double], ptr %3, i64 %109, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !5
  %140 = getelementptr inbounds double, ptr %5, i64 %137
  %141 = load double, ptr %140, align 8, !tbaa !5
  %142 = fsub double %139, %141
  %143 = getelementptr inbounds double, ptr %6, i64 %137
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = fmul double %144, 0x4042B5524AE1278E
  %146 = fdiv double %142, %145
  store double %146, ptr %138, align 8, !tbaa !5
  %147 = or disjoint i64 %137, 1
  %148 = getelementptr inbounds [1200 x double], ptr %3, i64 %109, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds double, ptr %5, i64 %147
  %151 = load double, ptr %150, align 8, !tbaa !5
  %152 = fsub double %149, %151
  %153 = getelementptr inbounds double, ptr %6, i64 %147
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = fmul double %154, 0x4042B5524AE1278E
  %156 = fdiv double %152, %155
  store double %156, ptr %148, align 8, !tbaa !5
  %157 = add nuw nsw i64 %137, 2
  %158 = icmp eq i64 %157, 1200
  br i1 %158, label %133, label %136, !llvm.loop !28

159:                                              ; preds = %169
  %160 = add nuw nsw i64 %164, 1
  %161 = add nuw nsw i64 %165, 1
  %162 = icmp eq i64 %160, 1199
  br i1 %162, label %190, label %163, !llvm.loop !29

163:                                              ; preds = %133, %159
  %164 = phi i64 [ %160, %159 ], [ 0, %133 ]
  %165 = phi i64 [ %161, %159 ], [ 1, %133 ]
  %166 = getelementptr inbounds [1200 x double], ptr %4, i64 %164, i64 %164
  store double 1.000000e+00, ptr %166, align 8, !tbaa !5
  br label %167

167:                                              ; preds = %169, %163
  %168 = phi i64 [ %165, %163 ], [ %172, %169 ]
  br label %174

169:                                              ; preds = %174
  %170 = getelementptr inbounds [1200 x double], ptr %4, i64 %164, i64 %168
  store double %187, ptr %170, align 8, !tbaa !5
  %171 = getelementptr inbounds [1200 x double], ptr %4, i64 %168, i64 %164
  store double %187, ptr %171, align 8, !tbaa !5
  %172 = add nuw nsw i64 %168, 1
  %173 = icmp eq i64 %172, 1200
  br i1 %173, label %159, label %167, !llvm.loop !30

174:                                              ; preds = %174, %167
  %175 = phi i64 [ 0, %167 ], [ %188, %174 ]
  %176 = phi double [ 0.000000e+00, %167 ], [ %187, %174 ]
  %177 = getelementptr inbounds [1200 x double], ptr %3, i64 %175, i64 %164
  %178 = load double, ptr %177, align 8, !tbaa !5
  %179 = getelementptr inbounds [1200 x double], ptr %3, i64 %175, i64 %168
  %180 = load double, ptr %179, align 8, !tbaa !5
  %181 = tail call double @llvm.fmuladd.f64(double %178, double %180, double %176)
  %182 = or disjoint i64 %175, 1
  %183 = getelementptr inbounds [1200 x double], ptr %3, i64 %182, i64 %164
  %184 = load double, ptr %183, align 8, !tbaa !5
  %185 = getelementptr inbounds [1200 x double], ptr %3, i64 %182, i64 %168
  %186 = load double, ptr %185, align 8, !tbaa !5
  %187 = tail call double @llvm.fmuladd.f64(double %184, double %186, double %181)
  %188 = add nuw nsw i64 %175, 2
  %189 = icmp eq i64 %188, 1400
  br i1 %189, label %169, label %174, !llvm.loop !31

190:                                              ; preds = %159
  %191 = getelementptr inbounds [1200 x double], ptr %4, i64 1199, i64 1199
  store double 1.000000e+00, ptr %191, align 8, !tbaa !5
  %192 = load ptr, ptr @stdout, align 8, !tbaa !32
  %193 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %192)
  %194 = load ptr, ptr @stdout, align 8, !tbaa !32
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %196

196:                                              ; preds = %199, %190
  %197 = phi i64 [ 0, %190 ], [ %200, %199 ]
  %198 = mul nuw nsw i64 %197, 1200
  br label %202

199:                                              ; preds = %211
  %200 = add nuw nsw i64 %197, 1
  %201 = icmp eq i64 %200, 1200
  br i1 %201, label %218, label %196, !llvm.loop !34

202:                                              ; preds = %211, %196
  %203 = phi i64 [ 0, %196 ], [ %216, %211 ]
  %204 = add nuw nsw i64 %203, %198
  %205 = trunc i64 %204 to i32
  %206 = urem i32 %205, 20
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = load ptr, ptr @stdout, align 8, !tbaa !32
  %210 = tail call i32 @fputc(i32 10, ptr %209)
  br label %211

211:                                              ; preds = %208, %202
  %212 = load ptr, ptr @stdout, align 8, !tbaa !32
  %213 = getelementptr inbounds [1200 x double], ptr %4, i64 %197, i64 %203
  %214 = load double, ptr %213, align 8, !tbaa !5
  %215 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.4, double noundef %214)
  %216 = add nuw nsw i64 %203, 1
  %217 = icmp eq i64 %216, 1200
  br i1 %217, label %199, label %202, !llvm.loop !35

218:                                              ; preds = %199
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !7, i64 0}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
