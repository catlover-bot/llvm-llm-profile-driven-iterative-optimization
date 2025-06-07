; ModuleID = 'outputs/src_PolyBenchC-4.2.1_lu_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_lu_opt_3.c"
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 4000000, i32 noundef 8) #7
  %4 = getelementptr i8, ptr %3, i64 8
  br label %5

5:                                                ; preds = %46, %2
  %6 = phi i64 [ 1, %2 ], [ %48, %46 ]
  %7 = phi i64 [ 0, %2 ], [ %41, %46 ]
  %8 = mul nuw nsw i64 %7, 16008
  %9 = shl i64 %7, 3
  %10 = sub nsw i64 15984, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp ult i64 %6, 2
  br i1 %12, label %28, label %13

13:                                               ; preds = %5
  %14 = and i64 %6, 9223372036854775806
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %23, %15 ]
  %17 = phi <2 x i32> [ <i32 0, i32 1>, %13 ], [ %24, %15 ]
  %18 = sub <2 x i32> zeroinitializer, %17
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fdiv <2 x double> %19, <double 2.000000e+03, double 2.000000e+03>
  %21 = fadd <2 x double> %20, <double 1.000000e+00, double 1.000000e+00>
  %22 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %16
  store <2 x double> %21, ptr %22, align 8, !tbaa !5
  %23 = add nuw i64 %16, 2
  %24 = add <2 x i32> %17, <i32 2, i32 2>
  %25 = icmp eq i64 %23, %14
  br i1 %25, label %26, label %15, !llvm.loop !9

26:                                               ; preds = %15
  %27 = icmp eq i64 %6, %14
  br i1 %27, label %40, label %28

28:                                               ; preds = %5, %26
  %29 = phi i64 [ 0, %5 ], [ %14, %26 ]
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %38, %30 ], [ %29, %28 ]
  %32 = trunc i64 %31 to i32
  %33 = sub i32 0, %32
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 2.000000e+03
  %36 = fadd double %35, 1.000000e+00
  %37 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %31
  store double %36, ptr %37, align 8, !tbaa !5
  %38 = add nuw nsw i64 %31, 1
  %39 = icmp eq i64 %38, %6
  br i1 %39, label %40, label %30, !llvm.loop !13

40:                                               ; preds = %30, %26
  %41 = add nuw nsw i64 %7, 1
  %42 = icmp ult i64 %7, 1999
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %11, 8
  %45 = getelementptr i8, ptr %4, i64 %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %45, i8 0, i64 %44, i1 false), !tbaa !5
  br label %46

46:                                               ; preds = %43, %40
  %47 = getelementptr inbounds [2000 x double], ptr %3, i64 %7, i64 %7
  store double 1.000000e+00, ptr %47, align 8, !tbaa !5
  %48 = add nuw nsw i64 %6, 1
  %49 = icmp eq i64 %41, 2000
  br i1 %49, label %50, label %5, !llvm.loop !14

50:                                               ; preds = %46, %75
  %51 = phi i64 [ %76, %75 ], [ 0, %46 ]
  br label %52

52:                                               ; preds = %72, %50
  %53 = phi i64 [ 0, %50 ], [ %73, %72 ]
  %54 = getelementptr inbounds [2000 x double], ptr %3, i64 %53
  %55 = getelementptr inbounds [2000 x double], ptr %3, i64 %53, i64 %51
  %56 = load double, ptr %55, align 8, !tbaa !5
  br label %57

57:                                               ; preds = %57, %52
  %58 = phi i64 [ 0, %52 ], [ %70, %57 ]
  %59 = getelementptr inbounds [2000 x double], ptr %3, i64 %58, i64 %51
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = getelementptr inbounds double, ptr %54, i64 %58
  %62 = load double, ptr %61, align 8, !tbaa !5
  %63 = tail call double @llvm.fmuladd.f64(double %56, double %60, double %62)
  store double %63, ptr %61, align 8, !tbaa !5
  %64 = or disjoint i64 %58, 1
  %65 = getelementptr inbounds [2000 x double], ptr %3, i64 %64, i64 %51
  %66 = load double, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds double, ptr %54, i64 %64
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = tail call double @llvm.fmuladd.f64(double %56, double %66, double %68)
  store double %69, ptr %67, align 8, !tbaa !5
  %70 = add nuw nsw i64 %58, 2
  %71 = icmp eq i64 %70, 2000
  br i1 %71, label %72, label %57, !llvm.loop !15

72:                                               ; preds = %57
  %73 = add nuw nsw i64 %53, 1
  %74 = icmp eq i64 %73, 2000
  br i1 %74, label %75, label %52, !llvm.loop !16

75:                                               ; preds = %72
  %76 = add nuw nsw i64 %51, 1
  %77 = icmp eq i64 %76, 2000
  br i1 %77, label %78, label %50, !llvm.loop !17

78:                                               ; preds = %75, %221
  %79 = phi i64 [ %222, %221 ], [ 0, %75 ]
  %80 = icmp eq i64 %79, 0
  %81 = getelementptr inbounds [2000 x double], ptr %3, i64 %79
  br i1 %80, label %198, label %122

82:                                               ; preds = %193, %117
  %83 = phi i64 [ %120, %117 ], [ %79, %193 ]
  %84 = getelementptr inbounds [2000 x double], ptr %3, i64 %79, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !5
  br i1 %195, label %106, label %86

86:                                               ; preds = %82, %86
  %87 = phi i64 [ %103, %86 ], [ 0, %82 ]
  %88 = phi double [ %102, %86 ], [ %85, %82 ]
  %89 = phi i64 [ %104, %86 ], [ 0, %82 ]
  %90 = getelementptr inbounds double, ptr %81, i64 %87
  %91 = load double, ptr %90, align 8, !tbaa !5
  %92 = getelementptr inbounds [2000 x double], ptr %3, i64 %87, i64 %83
  %93 = load double, ptr %92, align 8, !tbaa !5
  %94 = fneg double %91
  %95 = tail call double @llvm.fmuladd.f64(double %94, double %93, double %88)
  %96 = or disjoint i64 %87, 1
  %97 = getelementptr inbounds double, ptr %81, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds [2000 x double], ptr %3, i64 %96, i64 %83
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = fneg double %98
  %102 = tail call double @llvm.fmuladd.f64(double %101, double %100, double %95)
  %103 = add nuw nsw i64 %87, 2
  %104 = add i64 %89, 2
  %105 = icmp eq i64 %104, %196
  br i1 %105, label %106, label %86, !llvm.loop !18

106:                                              ; preds = %86, %82
  %107 = phi double [ undef, %82 ], [ %102, %86 ]
  %108 = phi i64 [ 0, %82 ], [ %103, %86 ]
  %109 = phi double [ %85, %82 ], [ %102, %86 ]
  br i1 %197, label %117, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds double, ptr %81, i64 %108
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = getelementptr inbounds [2000 x double], ptr %3, i64 %108, i64 %83
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = fneg double %112
  %116 = tail call double @llvm.fmuladd.f64(double %115, double %114, double %109)
  br label %117

117:                                              ; preds = %106, %110
  %118 = phi double [ %107, %106 ], [ %116, %110 ]
  %119 = getelementptr inbounds double, ptr %81, i64 %83
  store double %118, ptr %119, align 8, !tbaa !5
  %120 = add nuw nsw i64 %83, 1
  %121 = icmp eq i64 %120, 2000
  br i1 %121, label %221, label %82, !llvm.loop !19

122:                                              ; preds = %78, %185
  %123 = phi i64 [ %191, %185 ], [ 0, %78 ]
  %124 = getelementptr inbounds [2000 x double], ptr %3, i64 %79, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds [2000 x double], ptr %3, i64 %123
  %127 = icmp eq i64 %123, 0
  br i1 %127, label %185, label %128

128:                                              ; preds = %122
  %129 = and i64 %123, 3
  %130 = icmp ult i64 %123, 4
  br i1 %130, label %167, label %131

131:                                              ; preds = %128
  %132 = and i64 %123, 9223372036854775804
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi i64 [ 0, %131 ], [ %164, %133 ]
  %135 = phi double [ %125, %131 ], [ %163, %133 ]
  %136 = phi i64 [ 0, %131 ], [ %165, %133 ]
  %137 = getelementptr inbounds double, ptr %81, i64 %134
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds double, ptr %126, i64 %134
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = fneg double %138
  %142 = tail call double @llvm.fmuladd.f64(double %141, double %140, double %135)
  %143 = or disjoint i64 %134, 1
  %144 = getelementptr inbounds double, ptr %81, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds double, ptr %126, i64 %143
  %147 = load double, ptr %146, align 8, !tbaa !5
  %148 = fneg double %145
  %149 = tail call double @llvm.fmuladd.f64(double %148, double %147, double %142)
  %150 = or disjoint i64 %134, 2
  %151 = getelementptr inbounds double, ptr %81, i64 %150
  %152 = load double, ptr %151, align 8, !tbaa !5
  %153 = getelementptr inbounds double, ptr %126, i64 %150
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = fneg double %152
  %156 = tail call double @llvm.fmuladd.f64(double %155, double %154, double %149)
  %157 = or disjoint i64 %134, 3
  %158 = getelementptr inbounds double, ptr %81, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = getelementptr inbounds double, ptr %126, i64 %157
  %161 = load double, ptr %160, align 8, !tbaa !5
  %162 = fneg double %159
  %163 = tail call double @llvm.fmuladd.f64(double %162, double %161, double %156)
  %164 = add nuw nsw i64 %134, 4
  %165 = add i64 %136, 4
  %166 = icmp eq i64 %165, %132
  br i1 %166, label %167, label %133, !llvm.loop !20

167:                                              ; preds = %133, %128
  %168 = phi double [ undef, %128 ], [ %163, %133 ]
  %169 = phi i64 [ 0, %128 ], [ %164, %133 ]
  %170 = phi double [ %125, %128 ], [ %163, %133 ]
  %171 = icmp eq i64 %129, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %167, %172
  %173 = phi i64 [ %182, %172 ], [ %169, %167 ]
  %174 = phi double [ %181, %172 ], [ %170, %167 ]
  %175 = phi i64 [ %183, %172 ], [ 0, %167 ]
  %176 = getelementptr inbounds double, ptr %81, i64 %173
  %177 = load double, ptr %176, align 8, !tbaa !5
  %178 = getelementptr inbounds double, ptr %126, i64 %173
  %179 = load double, ptr %178, align 8, !tbaa !5
  %180 = fneg double %177
  %181 = tail call double @llvm.fmuladd.f64(double %180, double %179, double %174)
  %182 = add nuw nsw i64 %173, 1
  %183 = add i64 %175, 1
  %184 = icmp eq i64 %183, %129
  br i1 %184, label %185, label %172, !llvm.loop !21

185:                                              ; preds = %167, %172, %122
  %186 = phi double [ %125, %122 ], [ %168, %167 ], [ %181, %172 ]
  %187 = getelementptr inbounds double, ptr %126, i64 %123
  %188 = load double, ptr %187, align 8, !tbaa !5
  %189 = fdiv double %186, %188
  %190 = getelementptr inbounds double, ptr %81, i64 %123
  store double %189, ptr %190, align 8, !tbaa !5
  %191 = add nuw nsw i64 %123, 1
  %192 = icmp eq i64 %191, %79
  br i1 %192, label %193, label %122, !llvm.loop !23

193:                                              ; preds = %185
  %194 = and i64 %79, 1
  %195 = icmp eq i64 %79, 1
  %196 = and i64 %79, 9223372036854775806
  %197 = icmp eq i64 %194, 0
  br label %82

198:                                              ; preds = %78, %198
  %199 = phi i64 [ %219, %198 ], [ 0, %78 ]
  %200 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %199
  %201 = load double, ptr %200, align 8, !tbaa !5
  %202 = getelementptr inbounds double, ptr %81, i64 %199
  store double %201, ptr %202, align 8, !tbaa !5
  %203 = add nuw nsw i64 %199, 1
  %204 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %203
  %205 = load double, ptr %204, align 8, !tbaa !5
  %206 = getelementptr inbounds double, ptr %81, i64 %203
  store double %205, ptr %206, align 8, !tbaa !5
  %207 = add nuw nsw i64 %199, 2
  %208 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %207
  %209 = load double, ptr %208, align 8, !tbaa !5
  %210 = getelementptr inbounds double, ptr %81, i64 %207
  store double %209, ptr %210, align 8, !tbaa !5
  %211 = add nuw nsw i64 %199, 3
  %212 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %211
  %213 = load double, ptr %212, align 8, !tbaa !5
  %214 = getelementptr inbounds double, ptr %81, i64 %211
  store double %213, ptr %214, align 8, !tbaa !5
  %215 = add nuw nsw i64 %199, 4
  %216 = getelementptr inbounds [2000 x double], ptr %3, i64 0, i64 %215
  %217 = load double, ptr %216, align 8, !tbaa !5
  %218 = getelementptr inbounds double, ptr %81, i64 %215
  store double %217, ptr %218, align 8, !tbaa !5
  %219 = add nuw nsw i64 %199, 5
  %220 = icmp eq i64 %219, 2000
  br i1 %220, label %221, label %198, !llvm.loop !24

221:                                              ; preds = %117, %198
  %222 = add nuw nsw i64 %79, 1
  %223 = icmp eq i64 %222, 2000
  br i1 %223, label %224, label %78, !llvm.loop !25

224:                                              ; preds = %221
  %225 = load ptr, ptr @stdout, align 8, !tbaa !26
  %226 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %225)
  %227 = load ptr, ptr @stdout, align 8, !tbaa !26
  %228 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %229

229:                                              ; preds = %248, %224
  %230 = phi i64 [ 0, %224 ], [ %249, %248 ]
  %231 = mul nuw nsw i64 %230, 2000
  br label %232

232:                                              ; preds = %241, %229
  %233 = phi i64 [ 0, %229 ], [ %246, %241 ]
  %234 = add nuw nsw i64 %233, %231
  %235 = trunc i64 %234 to i32
  %236 = urem i32 %235, 20
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = load ptr, ptr @stdout, align 8, !tbaa !26
  %240 = tail call i32 @fputc(i32 10, ptr %239)
  br label %241

241:                                              ; preds = %238, %232
  %242 = load ptr, ptr @stdout, align 8, !tbaa !26
  %243 = getelementptr inbounds [2000 x double], ptr %3, i64 %230, i64 %233
  %244 = load double, ptr %243, align 8, !tbaa !5
  %245 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef nonnull @.str.4, double noundef %244)
  %246 = add nuw nsw i64 %233, 1
  %247 = icmp eq i64 %246, 2000
  br i1 %247, label %248, label %232, !llvm.loop !28

248:                                              ; preds = %241
  %249 = add nuw nsw i64 %230, 1
  %250 = icmp eq i64 %249, 2000
  br i1 %250, label %251, label %229, !llvm.loop !29

251:                                              ; preds = %248
  %252 = load ptr, ptr @stdout, align 8, !tbaa !26
  %253 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %252, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %254 = load ptr, ptr @stdout, align 8, !tbaa !26
  %255 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %254)
  tail call void @free(ptr noundef nonnull %3) #7
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
