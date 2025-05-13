; ModuleID = 'outputs/src_PolyBenchC-4.2.1_floyd-warshall_opt_3.c'
source_filename = "outputs/src_PolyBenchC-4.2.1_floyd-warshall_opt_3.c"
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
  %11 = mul nuw nsw <4 x i64> %10, %7
  %12 = trunc <4 x i64> %11 to <4 x i32>
  %13 = urem <4 x i32> %12, <i32 7, i32 7, i32 7, i32 7>
  %14 = add nuw nsw <4 x i32> %13, <i32 1, i32 1, i32 1, i32 1>
  %15 = getelementptr inbounds [2800 x i32], ptr %3, i64 %5, i64 %9
  %16 = add nuw nsw <4 x i64> %10, %7
  %17 = trunc <4 x i64> %16 to <4 x i32>
  %18 = urem <4 x i32> %17, <i32 13, i32 13, i32 13, i32 13>
  %19 = icmp eq <4 x i32> %18, zeroinitializer
  %20 = urem <4 x i32> %17, <i32 7, i32 7, i32 7, i32 7>
  %21 = icmp eq <4 x i32> %20, zeroinitializer
  %22 = or <4 x i1> %19, %21
  %23 = urem <4 x i32> %17, <i32 11, i32 11, i32 11, i32 11>
  %24 = icmp eq <4 x i32> %23, zeroinitializer
  %25 = or <4 x i1> %24, %22
  %26 = select <4 x i1> %25, <4 x i32> <i32 999, i32 999, i32 999, i32 999>, <4 x i32> %14
  store <4 x i32> %26, ptr %15, align 4, !tbaa !5
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
  %35 = getelementptr i8, ptr %3, i64 31348804
  %36 = getelementptr i8, ptr %3, i64 11200
  br label %37

37:                                               ; preds = %33, %150
  %38 = phi i64 [ %151, %150 ], [ 0, %33 ]
  %39 = shl nuw nsw i64 %38, 2
  %40 = getelementptr i8, ptr %3, i64 %39
  %41 = getelementptr i8, ptr %35, i64 %39
  %42 = mul nuw nsw i64 %38, 11200
  %43 = getelementptr i8, ptr %3, i64 %42
  %44 = getelementptr i8, ptr %36, i64 %42
  %45 = getelementptr inbounds [2800 x i32], ptr %3, i64 %38
  %46 = icmp ult ptr %3, %41
  %47 = icmp ult ptr %40, %34
  %48 = and i1 %46, %47
  %49 = icmp ult ptr %3, %44
  %50 = icmp ult ptr %43, %34
  %51 = and i1 %49, %50
  %52 = or i1 %48, %51
  br label %53

53:                                               ; preds = %147, %37
  %54 = phi i64 [ 0, %37 ], [ %148, %147 ]
  %55 = getelementptr inbounds [2800 x i32], ptr %3, i64 %54
  %56 = getelementptr inbounds i32, ptr %55, i64 %38
  br i1 %52, label %124, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %56, align 4, !tbaa !5, !alias.scope !14
  %59 = insertelement <4 x i32> poison, i32 %58, i64 0
  %60 = shufflevector <4 x i32> %59, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %61

61:                                               ; preds = %57, %121
  %62 = phi i64 [ %122, %121 ], [ 0, %57 ]
  %63 = or disjoint i64 %62, 4
  %64 = getelementptr inbounds i32, ptr %45, i64 %62
  %65 = getelementptr inbounds i32, ptr %64, i64 4
  %66 = load <4 x i32>, ptr %64, align 4, !tbaa !5, !alias.scope !17
  %67 = load <4 x i32>, ptr %65, align 4, !tbaa !5, !alias.scope !17
  %68 = add nsw <4 x i32> %66, %60
  %69 = add nsw <4 x i32> %67, %60
  %70 = getelementptr inbounds i32, ptr %55, i64 %62
  %71 = getelementptr inbounds i32, ptr %70, i64 4
  %72 = load <4 x i32>, ptr %70, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  %73 = load <4 x i32>, ptr %71, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  %74 = icmp sgt <4 x i32> %72, %68
  %75 = icmp sgt <4 x i32> %73, %69
  %76 = extractelement <4 x i1> %74, i64 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %61
  %78 = getelementptr inbounds i32, ptr %55, i64 %62
  %79 = extractelement <4 x i32> %68, i64 0
  store i32 %79, ptr %78, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  br label %80

80:                                               ; preds = %77, %61
  %81 = extractelement <4 x i1> %74, i64 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = or disjoint i64 %62, 1
  %84 = getelementptr inbounds i32, ptr %55, i64 %83
  %85 = extractelement <4 x i32> %68, i64 1
  store i32 %85, ptr %84, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  br label %86

86:                                               ; preds = %82, %80
  %87 = extractelement <4 x i1> %74, i64 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = or disjoint i64 %62, 2
  %90 = getelementptr inbounds i32, ptr %55, i64 %89
  %91 = extractelement <4 x i32> %68, i64 2
  store i32 %91, ptr %90, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  br label %92

92:                                               ; preds = %88, %86
  %93 = extractelement <4 x i1> %74, i64 3
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = or disjoint i64 %62, 3
  %96 = getelementptr inbounds i32, ptr %55, i64 %95
  %97 = extractelement <4 x i32> %68, i64 3
  store i32 %97, ptr %96, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  br label %98

98:                                               ; preds = %94, %92
  %99 = extractelement <4 x i1> %75, i64 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = getelementptr inbounds i32, ptr %55, i64 %63
  %102 = extractelement <4 x i32> %69, i64 0
  store i32 %102, ptr %101, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  br label %103

103:                                              ; preds = %100, %98
  %104 = extractelement <4 x i1> %75, i64 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %103
  %106 = or disjoint i64 %62, 5
  %107 = getelementptr inbounds i32, ptr %55, i64 %106
  %108 = extractelement <4 x i32> %69, i64 1
  store i32 %108, ptr %107, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  br label %109

109:                                              ; preds = %105, %103
  %110 = extractelement <4 x i1> %75, i64 2
  br i1 %110, label %111, label %115

111:                                              ; preds = %109
  %112 = or disjoint i64 %62, 6
  %113 = getelementptr inbounds i32, ptr %55, i64 %112
  %114 = extractelement <4 x i32> %69, i64 2
  store i32 %114, ptr %113, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  br label %115

115:                                              ; preds = %111, %109
  %116 = extractelement <4 x i1> %75, i64 3
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  %118 = or disjoint i64 %62, 7
  %119 = getelementptr inbounds i32, ptr %55, i64 %118
  %120 = extractelement <4 x i32> %69, i64 3
  store i32 %120, ptr %119, align 4, !tbaa !5, !alias.scope !19, !noalias !21
  br label %121

121:                                              ; preds = %117, %115
  %122 = add nuw i64 %62, 8
  %123 = icmp eq i64 %122, 2800
  br i1 %123, label %147, label %61, !llvm.loop !22

124:                                              ; preds = %53, %144
  %125 = phi i64 [ %145, %144 ], [ 0, %53 ]
  %126 = load i32, ptr %56, align 4, !tbaa !5
  %127 = getelementptr inbounds i32, ptr %45, i64 %125
  %128 = load i32, ptr %127, align 4, !tbaa !5
  %129 = add nsw i32 %128, %126
  %130 = getelementptr inbounds i32, ptr %55, i64 %125
  %131 = load i32, ptr %130, align 4, !tbaa !5
  %132 = icmp sgt i32 %131, %129
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  store i32 %129, ptr %130, align 4, !tbaa !5
  br label %134

134:                                              ; preds = %133, %124
  %135 = or disjoint i64 %125, 1
  %136 = load i32, ptr %56, align 4, !tbaa !5
  %137 = getelementptr inbounds i32, ptr %45, i64 %135
  %138 = load i32, ptr %137, align 4, !tbaa !5
  %139 = add nsw i32 %138, %136
  %140 = getelementptr inbounds i32, ptr %55, i64 %135
  %141 = load i32, ptr %140, align 4, !tbaa !5
  %142 = icmp sgt i32 %141, %139
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  store i32 %139, ptr %140, align 4, !tbaa !5
  br label %144

144:                                              ; preds = %143, %134
  %145 = add nuw nsw i64 %125, 2
  %146 = icmp eq i64 %145, 2800
  br i1 %146, label %147, label %124, !llvm.loop !23

147:                                              ; preds = %121, %144
  %148 = add nuw nsw i64 %54, 1
  %149 = icmp eq i64 %148, 2800
  br i1 %149, label %150, label %53, !llvm.loop !24

150:                                              ; preds = %147
  %151 = add nuw nsw i64 %38, 1
  %152 = icmp eq i64 %151, 2800
  br i1 %152, label %153, label %37, !llvm.loop !25

153:                                              ; preds = %150
  %154 = load ptr, ptr @stdout, align 8, !tbaa !26
  %155 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %154)
  %156 = load ptr, ptr @stdout, align 8, !tbaa !26
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %158

158:                                              ; preds = %177, %153
  %159 = phi i64 [ 0, %153 ], [ %178, %177 ]
  %160 = mul nuw nsw i64 %159, 2800
  br label %161

161:                                              ; preds = %170, %158
  %162 = phi i64 [ 0, %158 ], [ %175, %170 ]
  %163 = add nuw nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  %165 = urem i32 %164, 20
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load ptr, ptr @stdout, align 8, !tbaa !26
  %169 = tail call i32 @fputc(i32 10, ptr %168)
  br label %170

170:                                              ; preds = %167, %161
  %171 = load ptr, ptr @stdout, align 8, !tbaa !26
  %172 = getelementptr inbounds [2800 x i32], ptr %3, i64 %159, i64 %162
  %173 = load i32, ptr %172, align 4, !tbaa !5
  %174 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef nonnull @.str.4, i32 noundef %173)
  %175 = add nuw nsw i64 %162, 1
  %176 = icmp eq i64 %175, 2800
  br i1 %176, label %177, label %161, !llvm.loop !28

177:                                              ; preds = %170
  %178 = add nuw nsw i64 %159, 1
  %179 = icmp eq i64 %178, 2800
  br i1 %179, label %180, label %158, !llvm.loop !29

180:                                              ; preds = %177
  %181 = load ptr, ptr @stdout, align 8, !tbaa !26
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
  %183 = load ptr, ptr @stdout, align 8, !tbaa !26
  %184 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %183)
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
!19 = !{!20}
!20 = distinct !{!20, !16}
!21 = !{!15, !18}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
