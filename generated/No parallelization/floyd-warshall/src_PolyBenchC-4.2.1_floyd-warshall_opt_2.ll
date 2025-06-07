; ModuleID = 'outputs/src_PolyBenchC-4.2.1_floyd-warshall_opt_2.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_floyd-warshall_opt_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 7840000, i32 noundef 4) #5
  br label %4

4:                                                ; preds = %2, %30
  %5 = phi i64 [ 0, %2 ], [ %31, %30 ]
  %6 = insertelement <4 x i64> poison, i64 %5, i64 0
  %7 = shufflevector <4 x i64> %6, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi i64 [ 0, %4 ], [ %27, %8 ]
  %10 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %4 ], [ %28, %8 ]
  %11 = add nuw nsw <4 x i64> %10, %7
  %12 = mul nuw nsw <4 x i64> %10, %7
  %13 = trunc <4 x i64> %12 to <4 x i32>
  %14 = urem <4 x i32> %13, <i32 7, i32 7, i32 7, i32 7>
  %15 = add nuw nsw <4 x i32> %14, <i32 1, i32 1, i32 1, i32 1>
  %16 = getelementptr inbounds [2800 x i32], ptr %3, i64 %5, i64 %9
  %17 = trunc <4 x i64> %11 to <4 x i32>
  %18 = urem <4 x i32> %17, <i32 13, i32 13, i32 13, i32 13>
  %19 = icmp eq <4 x i32> %18, zeroinitializer
  %20 = urem <4 x i32> %17, <i32 7, i32 7, i32 7, i32 7>
  %21 = icmp eq <4 x i32> %20, zeroinitializer
  %22 = or <4 x i1> %19, %21
  %23 = urem <4 x i32> %17, <i32 11, i32 11, i32 11, i32 11>
  %24 = icmp eq <4 x i32> %23, zeroinitializer
  %25 = or <4 x i1> %24, %22
  %26 = select <4 x i1> %25, <4 x i32> <i32 999, i32 999, i32 999, i32 999>, <4 x i32> %15
  store <4 x i32> %26, ptr %16, align 4, !tbaa !5
  %27 = add nuw i64 %9, 4
  %28 = add <4 x i64> %10, <i64 4, i64 4, i64 4, i64 4>
  %29 = icmp eq i64 %27, 2800
  br i1 %29, label %30, label %8, !llvm.loop !9

30:                                               ; preds = %8
  %31 = add nuw nsw i64 %5, 1
  %32 = icmp eq i64 %31, 2800
  br i1 %32, label %33, label %4, !llvm.loop !13

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %3, i64 31360000
  %35 = getelementptr i8, ptr %3, i64 11200
  br label %36

36:                                               ; preds = %33, %138
  %37 = phi i64 [ %139, %138 ], [ 0, %33 ]
  %38 = mul nuw nsw i64 %37, 11200
  %39 = getelementptr i8, ptr %3, i64 %38
  %40 = getelementptr i8, ptr %35, i64 %38
  %41 = icmp ult ptr %3, %40
  %42 = icmp ult ptr %39, %34
  %43 = and i1 %41, %42
  br label %44

44:                                               ; preds = %135, %36
  %45 = phi i64 [ 0, %36 ], [ %136, %135 ]
  %46 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %37
  %47 = load i32, ptr %46, align 4, !tbaa !5
  br i1 %43, label %114, label %48

48:                                               ; preds = %44
  %49 = insertelement <4 x i32> poison, i32 %47, i64 0
  %50 = shufflevector <4 x i32> %49, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %51

51:                                               ; preds = %111, %48
  %52 = phi i64 [ 0, %48 ], [ %112, %111 ]
  %53 = or disjoint i64 %52, 4
  %54 = getelementptr inbounds [2800 x i32], ptr %3, i64 %37, i64 %52
  %55 = getelementptr inbounds i32, ptr %54, i64 4
  %56 = load <4 x i32>, ptr %54, align 4, !tbaa !5, !alias.scope !14
  %57 = load <4 x i32>, ptr %55, align 4, !tbaa !5, !alias.scope !14
  %58 = add nsw <4 x i32> %56, %50
  %59 = add nsw <4 x i32> %57, %50
  %60 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %52
  %61 = getelementptr inbounds i32, ptr %60, i64 4
  %62 = load <4 x i32>, ptr %60, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  %63 = load <4 x i32>, ptr %61, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  %64 = icmp sgt <4 x i32> %62, %58
  %65 = icmp sgt <4 x i32> %63, %59
  %66 = extractelement <4 x i1> %64, i64 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %52
  %69 = extractelement <4 x i32> %58, i64 0
  store i32 %69, ptr %68, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  br label %70

70:                                               ; preds = %67, %51
  %71 = extractelement <4 x i1> %64, i64 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = or disjoint i64 %52, 1
  %74 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %73
  %75 = extractelement <4 x i32> %58, i64 1
  store i32 %75, ptr %74, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  br label %76

76:                                               ; preds = %72, %70
  %77 = extractelement <4 x i1> %64, i64 2
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = or disjoint i64 %52, 2
  %80 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %79
  %81 = extractelement <4 x i32> %58, i64 2
  store i32 %81, ptr %80, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  br label %82

82:                                               ; preds = %78, %76
  %83 = extractelement <4 x i1> %64, i64 3
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = or disjoint i64 %52, 3
  %86 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %85
  %87 = extractelement <4 x i32> %58, i64 3
  store i32 %87, ptr %86, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  br label %88

88:                                               ; preds = %84, %82
  %89 = extractelement <4 x i1> %65, i64 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %53
  %92 = extractelement <4 x i32> %59, i64 0
  store i32 %92, ptr %91, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  br label %93

93:                                               ; preds = %90, %88
  %94 = extractelement <4 x i1> %65, i64 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = or disjoint i64 %52, 5
  %97 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %96
  %98 = extractelement <4 x i32> %59, i64 1
  store i32 %98, ptr %97, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  br label %99

99:                                               ; preds = %95, %93
  %100 = extractelement <4 x i1> %65, i64 2
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  %102 = or disjoint i64 %52, 6
  %103 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %102
  %104 = extractelement <4 x i32> %59, i64 2
  store i32 %104, ptr %103, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  br label %105

105:                                              ; preds = %101, %99
  %106 = extractelement <4 x i1> %65, i64 3
  br i1 %106, label %107, label %111

107:                                              ; preds = %105
  %108 = or disjoint i64 %52, 7
  %109 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %108
  %110 = extractelement <4 x i32> %59, i64 3
  store i32 %110, ptr %109, align 4, !tbaa !5, !alias.scope !17, !noalias !14
  br label %111

111:                                              ; preds = %107, %105
  %112 = add nuw i64 %52, 8
  %113 = icmp eq i64 %112, 2800
  br i1 %113, label %135, label %51, !llvm.loop !19

114:                                              ; preds = %44, %132
  %115 = phi i64 [ %133, %132 ], [ 0, %44 ]
  %116 = getelementptr inbounds [2800 x i32], ptr %3, i64 %37, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !5
  %118 = add nsw i32 %117, %47
  %119 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %115
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = icmp sgt i32 %120, %118
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 %118, ptr %119, align 4, !tbaa !5
  br label %123

123:                                              ; preds = %122, %114
  %124 = or disjoint i64 %115, 1
  %125 = getelementptr inbounds [2800 x i32], ptr %3, i64 %37, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !5
  %127 = add nsw i32 %126, %47
  %128 = getelementptr inbounds [2800 x i32], ptr %3, i64 %45, i64 %124
  %129 = load i32, ptr %128, align 4, !tbaa !5
  %130 = icmp sgt i32 %129, %127
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i32 %127, ptr %128, align 4, !tbaa !5
  br label %132

132:                                              ; preds = %131, %123
  %133 = add nuw nsw i64 %115, 2
  %134 = icmp eq i64 %133, 2800
  br i1 %134, label %135, label %114, !llvm.loop !20

135:                                              ; preds = %111, %132
  %136 = add nuw nsw i64 %45, 1
  %137 = icmp eq i64 %136, 2800
  br i1 %137, label %138, label %44, !llvm.loop !21

138:                                              ; preds = %135
  %139 = add nuw nsw i64 %37, 1
  %140 = icmp eq i64 %139, 2800
  br i1 %140, label %141, label %36, !llvm.loop !22

141:                                              ; preds = %138
  %142 = load ptr, ptr @stdout, align 8, !tbaa !23
  %143 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %142)
  %144 = load ptr, ptr @stdout, align 8, !tbaa !23
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %146

146:                                              ; preds = %165, %141
  %147 = phi i64 [ 0, %141 ], [ %166, %165 ]
  %148 = mul nuw nsw i64 %147, 2800
  br label %149

149:                                              ; preds = %158, %146
  %150 = phi i64 [ 0, %146 ], [ %163, %158 ]
  %151 = add nuw nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  %153 = urem i32 %152, 20
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load ptr, ptr @stdout, align 8, !tbaa !23
  %157 = tail call i32 @fputc(i32 10, ptr %156)
  br label %158

158:                                              ; preds = %155, %149
  %159 = load ptr, ptr @stdout, align 8, !tbaa !23
  %160 = getelementptr inbounds [2800 x i32], ptr %3, i64 %147, i64 %150
  %161 = load i32, ptr %160, align 4, !tbaa !5
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef nonnull @.str.4, i32 noundef %161)
  %163 = add nuw nsw i64 %150, 1
  %164 = icmp eq i64 %163, 2800
  br i1 %164, label %165, label %149, !llvm.loop !25

165:                                              ; preds = %158
  %166 = add nuw nsw i64 %147, 1
  %167 = icmp eq i64 %166, 2800
  br i1 %167, label %168, label %146, !llvm.loop !26

168:                                              ; preds = %165
  %169 = load ptr, ptr @stdout, align 8, !tbaa !23
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %171 = load ptr, ptr @stdout, align 8, !tbaa !23
  %172 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %171)
  tail call void @free(ptr noundef nonnull %3) #5
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
