; ModuleID = 'outputs/src_PolyBenchC-4.2.1_cholesky_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_cholesky_opt_2.c"
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
  %3 = tail call noalias dereferenceable_or_null(32000000) ptr @malloc(i64 noundef 32000000) #11
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

50:                                               ; preds = %46
  %51 = tail call dereferenceable_or_null(32000000) ptr @calloc(i64 1, i64 32000000)
  br label %52

52:                                               ; preds = %54, %50
  %53 = phi i64 [ 0, %50 ], [ %55, %54 ]
  br label %57

54:                                               ; preds = %88
  %55 = add nuw nsw i64 %53, 1
  %56 = icmp eq i64 %55, 2000
  br i1 %56, label %91, label %52, !llvm.loop !15

57:                                               ; preds = %52, %88
  %58 = phi i64 [ 0, %52 ], [ %89, %88 ]
  %59 = getelementptr inbounds [2000 x double], ptr %3, i64 %58, i64 %53
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = insertelement <2 x double> poison, double %60, i64 0
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi i64 [ 0, %57 ], [ %86, %63 ]
  %65 = or disjoint i64 %64, 1
  %66 = or disjoint i64 %64, 2
  %67 = or disjoint i64 %64, 3
  %68 = getelementptr inbounds [2000 x double], ptr %3, i64 %64, i64 %53
  %69 = getelementptr inbounds [2000 x double], ptr %3, i64 %65, i64 %53
  %70 = getelementptr inbounds [2000 x double], ptr %3, i64 %66, i64 %53
  %71 = getelementptr inbounds [2000 x double], ptr %3, i64 %67, i64 %53
  %72 = load double, ptr %68, align 8, !tbaa !5
  %73 = load double, ptr %69, align 8, !tbaa !5
  %74 = insertelement <2 x double> poison, double %72, i64 0
  %75 = insertelement <2 x double> %74, double %73, i64 1
  %76 = load double, ptr %70, align 8, !tbaa !5
  %77 = load double, ptr %71, align 8, !tbaa !5
  %78 = insertelement <2 x double> poison, double %76, i64 0
  %79 = insertelement <2 x double> %78, double %77, i64 1
  %80 = getelementptr inbounds [2000 x double], ptr %51, i64 %58, i64 %64
  %81 = getelementptr inbounds double, ptr %80, i64 2
  %82 = load <2 x double>, ptr %80, align 8, !tbaa !5
  %83 = load <2 x double>, ptr %81, align 8, !tbaa !5
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %62, <2 x double> %75, <2 x double> %82)
  %85 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %62, <2 x double> %79, <2 x double> %83)
  store <2 x double> %84, ptr %80, align 8, !tbaa !5
  store <2 x double> %85, ptr %81, align 8, !tbaa !5
  %86 = add nuw i64 %64, 4
  %87 = icmp eq i64 %86, 2000
  br i1 %87, label %88, label %63, !llvm.loop !16

88:                                               ; preds = %63
  %89 = add nuw nsw i64 %58, 1
  %90 = icmp eq i64 %89, 2000
  br i1 %90, label %54, label %57, !llvm.loop !17

91:                                               ; preds = %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %3, ptr noundef nonnull align 8 dereferenceable(32000000) %51, i64 32000000, i1 false)
  tail call void @free(ptr noundef nonnull %51) #12
  br label %92

92:                                               ; preds = %195, %91
  %93 = phi i64 [ 0, %91 ], [ %199, %195 ]
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load double, ptr %3, align 8, !tbaa !5
  br label %195

97:                                               ; preds = %92, %139
  %98 = phi i64 [ %144, %139 ], [ 0, %92 ]
  %99 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %98
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = icmp eq i64 %98, 0
  br i1 %101, label %139, label %102

102:                                              ; preds = %97
  %103 = and i64 %98, 1
  %104 = icmp eq i64 %98, 1
  br i1 %104, label %127, label %105

105:                                              ; preds = %102
  %106 = and i64 %98, 9223372036854775806
  br label %107

107:                                              ; preds = %107, %105
  %108 = phi i64 [ 0, %105 ], [ %124, %107 ]
  %109 = phi double [ %100, %105 ], [ %123, %107 ]
  %110 = phi i64 [ 0, %105 ], [ %125, %107 ]
  %111 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %108
  %112 = load double, ptr %111, align 8, !tbaa !5
  %113 = getelementptr inbounds [2000 x double], ptr %3, i64 %98, i64 %108
  %114 = load double, ptr %113, align 8, !tbaa !5
  %115 = fneg double %112
  %116 = tail call double @llvm.fmuladd.f64(double %115, double %114, double %109)
  %117 = or disjoint i64 %108, 1
  %118 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %117
  %119 = load double, ptr %118, align 8, !tbaa !5
  %120 = getelementptr inbounds [2000 x double], ptr %3, i64 %98, i64 %117
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = fneg double %119
  %123 = tail call double @llvm.fmuladd.f64(double %122, double %121, double %116)
  %124 = add nuw nsw i64 %108, 2
  %125 = add i64 %110, 2
  %126 = icmp eq i64 %125, %106
  br i1 %126, label %127, label %107, !llvm.loop !18

127:                                              ; preds = %107, %102
  %128 = phi double [ undef, %102 ], [ %123, %107 ]
  %129 = phi i64 [ 0, %102 ], [ %124, %107 ]
  %130 = phi double [ %100, %102 ], [ %123, %107 ]
  %131 = icmp eq i64 %103, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %129
  %134 = load double, ptr %133, align 8, !tbaa !5
  %135 = getelementptr inbounds [2000 x double], ptr %3, i64 %98, i64 %129
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = fneg double %134
  %138 = tail call double @llvm.fmuladd.f64(double %137, double %136, double %130)
  br label %139

139:                                              ; preds = %132, %127, %97
  %140 = phi double [ %100, %97 ], [ %128, %127 ], [ %138, %132 ]
  %141 = getelementptr inbounds [2000 x double], ptr %3, i64 %98, i64 %98
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = fdiv double %140, %142
  store double %143, ptr %99, align 8, !tbaa !5
  %144 = add nuw nsw i64 %98, 1
  %145 = icmp eq i64 %144, %93
  br i1 %145, label %146, label %97, !llvm.loop !19

146:                                              ; preds = %139
  %147 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %93
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = and i64 %93, 3
  %150 = icmp ult i64 %93, 4
  br i1 %150, label %179, label %151

151:                                              ; preds = %146
  %152 = and i64 %93, 9223372036854775804
  br label %153

153:                                              ; preds = %153, %151
  %154 = phi i64 [ 0, %151 ], [ %176, %153 ]
  %155 = phi double [ %148, %151 ], [ %175, %153 ]
  %156 = phi i64 [ 0, %151 ], [ %177, %153 ]
  %157 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %154
  %158 = load double, ptr %157, align 8, !tbaa !5
  %159 = fneg double %158
  %160 = tail call double @llvm.fmuladd.f64(double %159, double %158, double %155)
  %161 = or disjoint i64 %154, 1
  %162 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %161
  %163 = load double, ptr %162, align 8, !tbaa !5
  %164 = fneg double %163
  %165 = tail call double @llvm.fmuladd.f64(double %164, double %163, double %160)
  %166 = or disjoint i64 %154, 2
  %167 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %166
  %168 = load double, ptr %167, align 8, !tbaa !5
  %169 = fneg double %168
  %170 = tail call double @llvm.fmuladd.f64(double %169, double %168, double %165)
  %171 = or disjoint i64 %154, 3
  %172 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = fneg double %173
  %175 = tail call double @llvm.fmuladd.f64(double %174, double %173, double %170)
  %176 = add nuw nsw i64 %154, 4
  %177 = add i64 %156, 4
  %178 = icmp eq i64 %177, %152
  br i1 %178, label %179, label %153, !llvm.loop !20

179:                                              ; preds = %153, %146
  %180 = phi double [ undef, %146 ], [ %175, %153 ]
  %181 = phi i64 [ 0, %146 ], [ %176, %153 ]
  %182 = phi double [ %148, %146 ], [ %175, %153 ]
  %183 = icmp eq i64 %149, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %179, %184
  %185 = phi i64 [ %192, %184 ], [ %181, %179 ]
  %186 = phi double [ %191, %184 ], [ %182, %179 ]
  %187 = phi i64 [ %193, %184 ], [ 0, %179 ]
  %188 = getelementptr inbounds [2000 x double], ptr %3, i64 %93, i64 %185
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = fneg double %189
  %191 = tail call double @llvm.fmuladd.f64(double %190, double %189, double %186)
  %192 = add nuw nsw i64 %185, 1
  %193 = add i64 %187, 1
  %194 = icmp eq i64 %193, %149
  br i1 %194, label %195, label %184, !llvm.loop !21

195:                                              ; preds = %179, %184, %95
  %196 = phi ptr [ %3, %95 ], [ %147, %184 ], [ %147, %179 ]
  %197 = phi double [ %96, %95 ], [ %180, %179 ], [ %191, %184 ]
  %198 = tail call double @sqrt(double noundef %197) #12
  store double %198, ptr %196, align 8, !tbaa !5
  %199 = add nuw nsw i64 %93, 1
  %200 = icmp eq i64 %199, 2000
  br i1 %200, label %201, label %92, !llvm.loop !23

201:                                              ; preds = %195
  %202 = load ptr, ptr @stdout, align 8, !tbaa !24
  %203 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %202)
  %204 = load ptr, ptr @stdout, align 8, !tbaa !24
  %205 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %206

206:                                              ; preds = %226, %201
  %207 = phi i64 [ 0, %201 ], [ %227, %226 ]
  %208 = phi i64 [ 1, %201 ], [ %228, %226 ]
  %209 = mul nuw nsw i64 %207, 2000
  br label %210

210:                                              ; preds = %219, %206
  %211 = phi i64 [ 0, %206 ], [ %224, %219 ]
  %212 = add nuw nsw i64 %211, %209
  %213 = trunc i64 %212 to i32
  %214 = urem i32 %213, 20
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load ptr, ptr @stdout, align 8, !tbaa !24
  %218 = tail call i32 @fputc(i32 10, ptr %217)
  br label %219

219:                                              ; preds = %216, %210
  %220 = load ptr, ptr @stdout, align 8, !tbaa !24
  %221 = getelementptr inbounds [2000 x double], ptr %3, i64 %207, i64 %211
  %222 = load double, ptr %221, align 8, !tbaa !5
  %223 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.4, double noundef %222)
  %224 = add nuw nsw i64 %211, 1
  %225 = icmp eq i64 %224, %208
  br i1 %225, label %226, label %210, !llvm.loop !26

226:                                              ; preds = %219
  %227 = add nuw nsw i64 %207, 1
  %228 = add nuw nsw i64 %208, 1
  %229 = icmp eq i64 %227, 2000
  br i1 %229, label %230, label %206, !llvm.loop !27

230:                                              ; preds = %226
  %231 = load ptr, ptr @stdout, align 8, !tbaa !24
  %232 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %231, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %233 = load ptr, ptr @stdout, align 8, !tbaa !24
  %234 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %233)
  tail call void @free(ptr noundef nonnull %3) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }

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
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !10}
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
