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

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [2000 x [2000 x double]], align 16
  %4 = alloca [2000 x double], align 16
  %5 = alloca [2000 x [2000 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 32000000, ptr nonnull %5) #7
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  br label %7

7:                                                ; preds = %48, %2
  %8 = phi i64 [ 1, %2 ], [ %50, %48 ]
  %9 = phi i64 [ 0, %2 ], [ %43, %48 ]
  %10 = mul nuw nsw i64 %9, 16008
  %11 = shl i64 %9, 3
  %12 = sub nsw i64 15984, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp ult i64 %8, 2
  br i1 %14, label %30, label %15

15:                                               ; preds = %7
  %16 = and i64 %8, 9223372036854775806
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %25, %17 ]
  %19 = phi <2 x i32> [ <i32 0, i32 1>, %15 ], [ %26, %17 ]
  %20 = sub <2 x i32> zeroinitializer, %19
  %21 = sitofp <2 x i32> %20 to <2 x double>
  %22 = fdiv <2 x double> %21, <double 2.000000e+03, double 2.000000e+03>
  %23 = fadd <2 x double> %22, <double 1.000000e+00, double 1.000000e+00>
  %24 = getelementptr inbounds [2000 x double], ptr %5, i64 %9, i64 %18
  store <2 x double> %23, ptr %24, align 16, !tbaa !5
  %25 = add nuw i64 %18, 2
  %26 = add <2 x i32> %19, <i32 2, i32 2>
  %27 = icmp eq i64 %25, %16
  br i1 %27, label %28, label %17, !llvm.loop !9

28:                                               ; preds = %17
  %29 = icmp eq i64 %8, %16
  br i1 %29, label %42, label %30

30:                                               ; preds = %7, %28
  %31 = phi i64 [ 0, %7 ], [ %16, %28 ]
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %40, %32 ], [ %31, %30 ]
  %34 = trunc i64 %33 to i32
  %35 = sub i32 0, %34
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %36, 2.000000e+03
  %38 = fadd double %37, 1.000000e+00
  %39 = getelementptr inbounds [2000 x double], ptr %5, i64 %9, i64 %33
  store double %38, ptr %39, align 8, !tbaa !5
  %40 = add nuw nsw i64 %33, 1
  %41 = icmp eq i64 %40, %8
  br i1 %41, label %42, label %32, !llvm.loop !13

42:                                               ; preds = %32, %28
  %43 = add nuw nsw i64 %9, 1
  %44 = icmp ult i64 %9, 1999
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %13, 8
  %47 = getelementptr i8, ptr %6, i64 %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %47, i8 0, i64 %46, i1 false), !tbaa !5
  br label %48

48:                                               ; preds = %45, %42
  %49 = getelementptr inbounds [2000 x double], ptr %5, i64 %9, i64 %9
  store double 1.000000e+00, ptr %49, align 8, !tbaa !5
  %50 = add nuw nsw i64 %8, 1
  %51 = icmp eq i64 %43, 2000
  br i1 %51, label %52, label %7, !llvm.loop !14

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 32000000, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %3, i8 0, i64 32000000, i1 false)
  br label %53

53:                                               ; preds = %90, %52
  %54 = phi i64 [ 0, %52 ], [ %91, %90 ]
  call void @llvm.lifetime.start.p0(i64 16000, ptr nonnull %4) #7
  %55 = getelementptr inbounds [2000 x double], ptr %5, i64 %54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16000) %4, ptr noundef nonnull align 16 dereferenceable(16000) %55, i64 16000, i1 false)
  br label %56

56:                                               ; preds = %86, %53
  %57 = phi i64 [ 0, %53 ], [ %88, %86 ]
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i64 [ 0, %56 ], [ %84, %58 ]
  %60 = phi double [ 0.000000e+00, %56 ], [ %83, %58 ]
  %61 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 %59
  %62 = load double, ptr %61, align 16, !tbaa !5
  %63 = getelementptr inbounds [2000 x double], ptr %5, i64 %54, i64 %59
  %64 = load double, ptr %63, align 16, !tbaa !5
  %65 = tail call double @llvm.fmuladd.f64(double %62, double %64, double %60)
  %66 = or disjoint i64 %59, 1
  %67 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds [2000 x double], ptr %5, i64 %54, i64 %66
  %70 = load double, ptr %69, align 8, !tbaa !5
  %71 = tail call double @llvm.fmuladd.f64(double %68, double %70, double %65)
  %72 = or disjoint i64 %59, 2
  %73 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 %72
  %74 = load double, ptr %73, align 16, !tbaa !5
  %75 = getelementptr inbounds [2000 x double], ptr %5, i64 %54, i64 %72
  %76 = load double, ptr %75, align 16, !tbaa !5
  %77 = tail call double @llvm.fmuladd.f64(double %74, double %76, double %71)
  %78 = or disjoint i64 %59, 3
  %79 = getelementptr inbounds [2000 x double], ptr %4, i64 0, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !5
  %81 = getelementptr inbounds [2000 x double], ptr %5, i64 %54, i64 %78
  %82 = load double, ptr %81, align 8, !tbaa !5
  %83 = tail call double @llvm.fmuladd.f64(double %80, double %82, double %77)
  %84 = add nuw nsw i64 %59, 4
  %85 = icmp eq i64 %84, 2000
  br i1 %85, label %86, label %58, !llvm.loop !15

86:                                               ; preds = %58
  %87 = getelementptr inbounds [2000 x [2000 x double]], ptr %3, i64 0, i64 %57, i64 %54
  store double %83, ptr %87, align 8, !tbaa !5
  %88 = add nuw nsw i64 %57, 1
  %89 = icmp eq i64 %88, 2000
  br i1 %89, label %90, label %56, !llvm.loop !16

90:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull %4) #7
  %91 = add nuw nsw i64 %54, 1
  %92 = icmp eq i64 %91, 2000
  br i1 %92, label %93, label %53, !llvm.loop !17

93:                                               ; preds = %90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32000000) %5, ptr noundef nonnull align 16 dereferenceable(32000000) %3, i64 32000000, i1 false)
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %3) #7
  br label %94

94:                                               ; preds = %191, %93
  %95 = phi i64 [ 0, %93 ], [ %192, %191 ]
  %96 = getelementptr inbounds [2000 x double], ptr %5, i64 %95
  %97 = icmp eq i64 %95, 0
  br i1 %97, label %191, label %137

98:                                               ; preds = %186, %133
  %99 = phi i64 [ %135, %133 ], [ %95, %186 ]
  %100 = getelementptr inbounds double, ptr %96, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !5
  br i1 %188, label %122, label %102

102:                                              ; preds = %98, %102
  %103 = phi i64 [ %119, %102 ], [ 0, %98 ]
  %104 = phi double [ %118, %102 ], [ %101, %98 ]
  %105 = phi i64 [ %120, %102 ], [ 0, %98 ]
  %106 = getelementptr inbounds double, ptr %96, i64 %103
  %107 = load double, ptr %106, align 16, !tbaa !5
  %108 = getelementptr inbounds [2000 x double], ptr %5, i64 %103, i64 %99
  %109 = load double, ptr %108, align 8, !tbaa !5
  %110 = fneg double %107
  %111 = tail call double @llvm.fmuladd.f64(double %110, double %109, double %104)
  %112 = or disjoint i64 %103, 1
  %113 = getelementptr inbounds double, ptr %96, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds [2000 x double], ptr %5, i64 %112, i64 %99
  %116 = load double, ptr %115, align 8, !tbaa !5
  %117 = fneg double %114
  %118 = tail call double @llvm.fmuladd.f64(double %117, double %116, double %111)
  %119 = add nuw nsw i64 %103, 2
  %120 = add i64 %105, 2
  %121 = icmp eq i64 %120, %189
  br i1 %121, label %122, label %102, !llvm.loop !18

122:                                              ; preds = %102, %98
  %123 = phi double [ undef, %98 ], [ %118, %102 ]
  %124 = phi i64 [ 0, %98 ], [ %119, %102 ]
  %125 = phi double [ %101, %98 ], [ %118, %102 ]
  br i1 %190, label %133, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds double, ptr %96, i64 %124
  %128 = load double, ptr %127, align 8, !tbaa !5
  %129 = getelementptr inbounds [2000 x double], ptr %5, i64 %124, i64 %99
  %130 = load double, ptr %129, align 8, !tbaa !5
  %131 = fneg double %128
  %132 = tail call double @llvm.fmuladd.f64(double %131, double %130, double %125)
  br label %133

133:                                              ; preds = %122, %126
  %134 = phi double [ %123, %122 ], [ %132, %126 ]
  store double %134, ptr %100, align 8, !tbaa !5
  %135 = add nuw nsw i64 %99, 1
  %136 = icmp eq i64 %135, 2000
  br i1 %136, label %191, label %98, !llvm.loop !19

137:                                              ; preds = %94, %179
  %138 = phi i64 [ %184, %179 ], [ 0, %94 ]
  %139 = getelementptr inbounds double, ptr %96, i64 %138
  %140 = load double, ptr %139, align 8, !tbaa !5
  %141 = icmp eq i64 %138, 0
  br i1 %141, label %179, label %142

142:                                              ; preds = %137
  %143 = and i64 %138, 1
  %144 = icmp eq i64 %138, 1
  br i1 %144, label %167, label %145

145:                                              ; preds = %142
  %146 = and i64 %138, 9223372036854775806
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi i64 [ 0, %145 ], [ %164, %147 ]
  %149 = phi double [ %140, %145 ], [ %163, %147 ]
  %150 = phi i64 [ 0, %145 ], [ %165, %147 ]
  %151 = getelementptr inbounds double, ptr %96, i64 %148
  %152 = load double, ptr %151, align 16, !tbaa !5
  %153 = getelementptr inbounds [2000 x double], ptr %5, i64 %148, i64 %138
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = fneg double %152
  %156 = tail call double @llvm.fmuladd.f64(double %155, double %154, double %149)
  %157 = or disjoint i64 %148, 1
  %158 = getelementptr inbounds double, ptr %96, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !5
  %160 = getelementptr inbounds [2000 x double], ptr %5, i64 %157, i64 %138
  %161 = load double, ptr %160, align 8, !tbaa !5
  %162 = fneg double %159
  %163 = tail call double @llvm.fmuladd.f64(double %162, double %161, double %156)
  %164 = add nuw nsw i64 %148, 2
  %165 = add i64 %150, 2
  %166 = icmp eq i64 %165, %146
  br i1 %166, label %167, label %147, !llvm.loop !20

167:                                              ; preds = %147, %142
  %168 = phi double [ undef, %142 ], [ %163, %147 ]
  %169 = phi i64 [ 0, %142 ], [ %164, %147 ]
  %170 = phi double [ %140, %142 ], [ %163, %147 ]
  %171 = icmp eq i64 %143, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds double, ptr %96, i64 %169
  %174 = load double, ptr %173, align 8, !tbaa !5
  %175 = getelementptr inbounds [2000 x double], ptr %5, i64 %169, i64 %138
  %176 = load double, ptr %175, align 8, !tbaa !5
  %177 = fneg double %174
  %178 = tail call double @llvm.fmuladd.f64(double %177, double %176, double %170)
  br label %179

179:                                              ; preds = %172, %167, %137
  %180 = phi double [ %140, %137 ], [ %168, %167 ], [ %178, %172 ]
  %181 = getelementptr inbounds [2000 x double], ptr %5, i64 %138, i64 %138
  %182 = load double, ptr %181, align 8, !tbaa !5
  %183 = fdiv double %180, %182
  store double %183, ptr %139, align 8, !tbaa !5
  %184 = add nuw nsw i64 %138, 1
  %185 = icmp eq i64 %184, %95
  br i1 %185, label %186, label %137, !llvm.loop !21

186:                                              ; preds = %179
  %187 = and i64 %95, 1
  %188 = icmp eq i64 %95, 1
  %189 = and i64 %95, 9223372036854775806
  %190 = icmp eq i64 %187, 0
  br label %98

191:                                              ; preds = %133, %94
  %192 = add nuw nsw i64 %95, 1
  %193 = icmp eq i64 %192, 2000
  br i1 %193, label %194, label %94, !llvm.loop !22

194:                                              ; preds = %191
  %195 = load ptr, ptr @stdout, align 8, !tbaa !23
  %196 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %195)
  %197 = load ptr, ptr @stdout, align 8, !tbaa !23
  %198 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %199

199:                                              ; preds = %218, %194
  %200 = phi i64 [ 0, %194 ], [ %219, %218 ]
  %201 = mul nuw nsw i64 %200, 2000
  br label %202

202:                                              ; preds = %211, %199
  %203 = phi i64 [ 0, %199 ], [ %216, %211 ]
  %204 = add nuw nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  %206 = urem i32 %205, 20
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = load ptr, ptr @stdout, align 8, !tbaa !23
  %210 = tail call i32 @fputc(i32 10, ptr %209)
  br label %211

211:                                              ; preds = %208, %202
  %212 = load ptr, ptr @stdout, align 8, !tbaa !23
  %213 = getelementptr inbounds [2000 x double], ptr %5, i64 %200, i64 %203
  %214 = load double, ptr %213, align 8, !tbaa !5
  %215 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.4, double noundef %214)
  %216 = add nuw nsw i64 %203, 1
  %217 = icmp eq i64 %216, 2000
  br i1 %217, label %218, label %202, !llvm.loop !25

218:                                              ; preds = %211
  %219 = add nuw nsw i64 %200, 1
  %220 = icmp eq i64 %219, 2000
  br i1 %220, label %221, label %199, !llvm.loop !26

221:                                              ; preds = %218
  %222 = load ptr, ptr @stdout, align 8, !tbaa !23
  %223 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %224 = load ptr, ptr @stdout, align 8, !tbaa !23
  %225 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %224)
  call void @llvm.lifetime.end.p0(i64 32000000, ptr nonnull %5) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
