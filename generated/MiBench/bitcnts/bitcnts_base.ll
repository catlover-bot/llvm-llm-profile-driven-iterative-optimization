; ModuleID = 'mibench/automotive/bitcount/bitcnts.c'
source_filename = "mibench/automotive/bitcount/bitcnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.text = internal unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %5) #7
  tail call void @exit(i32 noundef -1) #8
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i64 @strtol(ptr nocapture noundef nonnull %9, ptr noundef null, i32 noundef 10) #9
  %11 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8)
  %12 = freeze i64 %10
  %13 = shl i64 %12, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp sgt i64 %14, 0
  %16 = tail call i64 @clock() #9
  %17 = tail call i32 @rand() #9
  br i1 %15, label %104, label %18

18:                                               ; preds = %7
  %19 = tail call i64 @clock() #9
  %20 = sub nsw i64 %19, %16
  %21 = sitofp i64 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = fcmp olt double %22, 0x7FEFFFFFFFFFFFFF
  %24 = select i1 %23, double %22, double 0x7FEFFFFFFFFFFFFF
  %25 = fcmp ogt double %22, 0.000000e+00
  %26 = select i1 %25, double %22, double 0.000000e+00
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str, double noundef %22, i64 noundef 0)
  %28 = tail call i64 @clock() #9
  %29 = tail call i32 @rand() #9
  %30 = tail call i64 @clock() #9
  %31 = sub nsw i64 %30, %28
  %32 = sitofp i64 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = fcmp olt double %33, %24
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, double %33, double %24
  %37 = fcmp ogt double %33, %26
  %38 = select i1 %37, double %33, double %26
  %39 = zext i1 %37 to i64
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.1, double noundef %33, i64 noundef 0)
  %41 = tail call i64 @clock() #9
  %42 = tail call i32 @rand() #9
  %43 = tail call i64 @clock() #9
  %44 = sub nsw i64 %43, %41
  %45 = sitofp i64 %44 to double
  %46 = fdiv double %45, 1.000000e+06
  %47 = fcmp olt double %46, %36
  %48 = select i1 %47, i64 2, i64 %35
  %49 = select i1 %47, double %46, double %36
  %50 = fcmp ogt double %46, %38
  %51 = select i1 %50, double %46, double %38
  %52 = select i1 %50, i64 2, i64 %39
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.2, double noundef %46, i64 noundef 0)
  %54 = tail call i64 @clock() #9
  %55 = tail call i32 @rand() #9
  %56 = tail call i64 @clock() #9
  %57 = sub nsw i64 %56, %54
  %58 = sitofp i64 %57 to double
  %59 = fdiv double %58, 1.000000e+06
  %60 = fcmp olt double %59, %49
  %61 = select i1 %60, i64 3, i64 %48
  %62 = select i1 %60, double %59, double %49
  %63 = fcmp ogt double %59, %51
  %64 = select i1 %63, double %59, double %51
  %65 = select i1 %63, i64 3, i64 %52
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.3, double noundef %59, i64 noundef 0)
  %67 = tail call i64 @clock() #9
  %68 = tail call i32 @rand() #9
  %69 = tail call i64 @clock() #9
  %70 = sub nsw i64 %69, %67
  %71 = sitofp i64 %70 to double
  %72 = fdiv double %71, 1.000000e+06
  %73 = fcmp olt double %72, %62
  %74 = select i1 %73, i64 4, i64 %61
  %75 = select i1 %73, double %72, double %62
  %76 = fcmp ogt double %72, %64
  %77 = select i1 %76, double %72, double %64
  %78 = select i1 %76, i64 4, i64 %65
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.4, double noundef %72, i64 noundef 0)
  %80 = tail call i64 @clock() #9
  %81 = tail call i32 @rand() #9
  %82 = tail call i64 @clock() #9
  %83 = sub nsw i64 %82, %80
  %84 = sitofp i64 %83 to double
  %85 = fdiv double %84, 1.000000e+06
  %86 = fcmp olt double %85, %75
  %87 = select i1 %86, i64 5, i64 %74
  %88 = select i1 %86, double %85, double %75
  %89 = fcmp ogt double %85, %77
  %90 = select i1 %89, double %85, double %77
  %91 = select i1 %89, i64 5, i64 %78
  %92 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.5, double noundef %85, i64 noundef 0)
  %93 = tail call i64 @clock() #9
  %94 = tail call i32 @rand() #9
  %95 = tail call i64 @clock() #9
  %96 = sub nsw i64 %95, %93
  %97 = sitofp i64 %96 to double
  %98 = fdiv double %97, 1.000000e+06
  %99 = fcmp olt double %98, %88
  %100 = select i1 %99, i64 6, i64 %87
  %101 = fcmp ogt double %98, %90
  %102 = select i1 %101, i64 6, i64 %91
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.6, double noundef %98, i64 noundef 0)
  br label %288

104:                                              ; preds = %7
  %105 = sext i32 %17 to i64
  br label %106

106:                                              ; preds = %104, %106
  %107 = phi i64 [ %105, %104 ], [ %114, %106 ]
  %108 = phi i64 [ 0, %104 ], [ %112, %106 ]
  %109 = phi i64 [ 0, %104 ], [ %113, %106 ]
  %110 = tail call i32 @bit_count(i64 noundef %107) #9
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %108, %111
  %113 = add nuw nsw i64 %109, 1
  %114 = add nsw i64 %107, 13
  %115 = icmp eq i64 %113, %14
  br i1 %115, label %116, label %106, !llvm.loop !9

116:                                              ; preds = %106
  %117 = tail call i64 @clock() #9
  %118 = sub nsw i64 %117, %16
  %119 = sitofp i64 %118 to double
  %120 = fdiv double %119, 1.000000e+06
  %121 = fcmp olt double %120, 0x7FEFFFFFFFFFFFFF
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str, double noundef %120, i64 noundef %112)
  %123 = tail call i64 @clock() #9
  %124 = tail call i32 @rand() #9
  %125 = sext i32 %124 to i64
  br label %126

126:                                              ; preds = %126, %116
  %127 = phi i64 [ %125, %116 ], [ %134, %126 ]
  %128 = phi i64 [ 0, %116 ], [ %132, %126 ]
  %129 = phi i64 [ 0, %116 ], [ %133, %126 ]
  %130 = tail call i32 @bitcount(i64 noundef %127) #9
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %128, %131
  %133 = add nuw nsw i64 %129, 1
  %134 = add nsw i64 %127, 13
  %135 = icmp eq i64 %133, %14
  br i1 %135, label %136, label %126, !llvm.loop !9

136:                                              ; preds = %126
  %137 = fcmp ogt double %120, 0.000000e+00
  %138 = select i1 %121, double %120, double 0x7FEFFFFFFFFFFFFF
  %139 = select i1 %137, double %120, double 0.000000e+00
  %140 = tail call i64 @clock() #9
  %141 = sub nsw i64 %140, %123
  %142 = sitofp i64 %141 to double
  %143 = fdiv double %142, 1.000000e+06
  %144 = fcmp olt double %143, %138
  %145 = fcmp ogt double %143, %139
  %146 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.1, double noundef %143, i64 noundef %132)
  %147 = tail call i64 @clock() #9
  %148 = tail call i32 @rand() #9
  %149 = sext i32 %148 to i64
  br label %150

150:                                              ; preds = %150, %136
  %151 = phi i64 [ %149, %136 ], [ %158, %150 ]
  %152 = phi i64 [ 0, %136 ], [ %156, %150 ]
  %153 = phi i64 [ 0, %136 ], [ %157, %150 ]
  %154 = tail call i32 @ntbl_bitcnt(i64 noundef %151) #9
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %152, %155
  %157 = add nuw nsw i64 %153, 1
  %158 = add nsw i64 %151, 13
  %159 = icmp eq i64 %157, %14
  br i1 %159, label %160, label %150, !llvm.loop !9

160:                                              ; preds = %150
  %161 = select i1 %145, double %143, double %139
  %162 = select i1 %144, double %143, double %138
  %163 = tail call i64 @clock() #9
  %164 = sub nsw i64 %163, %147
  %165 = sitofp i64 %164 to double
  %166 = fdiv double %165, 1.000000e+06
  %167 = fcmp olt double %166, %162
  %168 = fcmp ogt double %166, %161
  %169 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.2, double noundef %166, i64 noundef %156)
  %170 = tail call i64 @clock() #9
  %171 = tail call i32 @rand() #9
  %172 = sext i32 %171 to i64
  br label %173

173:                                              ; preds = %173, %160
  %174 = phi i64 [ %172, %160 ], [ %181, %173 ]
  %175 = phi i64 [ 0, %160 ], [ %179, %173 ]
  %176 = phi i64 [ 0, %160 ], [ %180, %173 ]
  %177 = tail call i32 @ntbl_bitcount(i64 noundef %174) #9
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %175, %178
  %180 = add nuw nsw i64 %176, 1
  %181 = add nsw i64 %174, 13
  %182 = icmp eq i64 %180, %14
  br i1 %182, label %183, label %173, !llvm.loop !9

183:                                              ; preds = %173
  %184 = zext i1 %145 to i64
  %185 = select i1 %168, double %166, double %161
  %186 = select i1 %167, double %166, double %162
  %187 = tail call i64 @clock() #9
  %188 = sub nsw i64 %187, %170
  %189 = sitofp i64 %188 to double
  %190 = fdiv double %189, 1.000000e+06
  %191 = fcmp olt double %190, %186
  %192 = fcmp ogt double %190, %185
  %193 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.3, double noundef %190, i64 noundef %179)
  %194 = tail call i64 @clock() #9
  %195 = tail call i32 @rand() #9
  %196 = sext i32 %195 to i64
  br label %197

197:                                              ; preds = %197, %183
  %198 = phi i64 [ %196, %183 ], [ %205, %197 ]
  %199 = phi i64 [ 0, %183 ], [ %203, %197 ]
  %200 = phi i64 [ 0, %183 ], [ %204, %197 ]
  %201 = tail call i32 @BW_btbl_bitcount(i64 noundef %198) #9
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %199, %202
  %204 = add nuw nsw i64 %200, 1
  %205 = add nsw i64 %198, 13
  %206 = icmp eq i64 %204, %14
  br i1 %206, label %207, label %197, !llvm.loop !9

207:                                              ; preds = %197
  %208 = zext i1 %144 to i64
  %209 = select i1 %168, i64 2, i64 %184
  %210 = select i1 %192, double %190, double %185
  %211 = select i1 %191, double %190, double %186
  %212 = tail call i64 @clock() #9
  %213 = sub nsw i64 %212, %194
  %214 = sitofp i64 %213 to double
  %215 = fdiv double %214, 1.000000e+06
  %216 = fcmp olt double %215, %211
  %217 = fcmp ogt double %215, %210
  %218 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.4, double noundef %215, i64 noundef %203)
  %219 = tail call i64 @clock() #9
  %220 = tail call i32 @rand() #9
  %221 = sext i32 %220 to i64
  br label %222

222:                                              ; preds = %222, %207
  %223 = phi i64 [ %221, %207 ], [ %230, %222 ]
  %224 = phi i64 [ 0, %207 ], [ %228, %222 ]
  %225 = phi i64 [ 0, %207 ], [ %229, %222 ]
  %226 = tail call i32 @AR_btbl_bitcount(i64 noundef %223) #9
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %224, %227
  %229 = add nuw nsw i64 %225, 1
  %230 = add nsw i64 %223, 13
  %231 = icmp eq i64 %229, %14
  br i1 %231, label %232, label %222, !llvm.loop !9

232:                                              ; preds = %222
  %233 = select i1 %167, i64 2, i64 %208
  %234 = select i1 %192, i64 3, i64 %209
  %235 = select i1 %217, double %215, double %210
  %236 = select i1 %216, double %215, double %211
  %237 = tail call i64 @clock() #9
  %238 = sub nsw i64 %237, %219
  %239 = sitofp i64 %238 to double
  %240 = fdiv double %239, 1.000000e+06
  %241 = fcmp olt double %240, %236
  %242 = fcmp ogt double %240, %235
  %243 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.5, double noundef %240, i64 noundef %228)
  %244 = tail call i64 @clock() #9
  %245 = tail call i32 @rand() #9
  %246 = sext i32 %245 to i64
  br label %247

247:                                              ; preds = %264, %232
  %248 = phi i64 [ %246, %232 ], [ %269, %264 ]
  %249 = phi i64 [ 0, %232 ], [ %267, %264 ]
  %250 = phi i64 [ 0, %232 ], [ %268, %264 ]
  %251 = icmp eq i64 %248, 0
  br i1 %251, label %264, label %252

252:                                              ; preds = %247, %252
  %253 = phi i32 [ %258, %252 ], [ 0, %247 ]
  %254 = phi i32 [ %259, %252 ], [ 0, %247 ]
  %255 = phi i64 [ %260, %252 ], [ %248, %247 ]
  %256 = trunc i64 %255 to i32
  %257 = and i32 %256, 1
  %258 = add nuw nsw i32 %257, %253
  %259 = add nuw nsw i32 %254, 1
  %260 = ashr i64 %255, 1
  %261 = icmp ugt i64 %255, 1
  %262 = icmp ult i32 %254, 63
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %252, label %264, !llvm.loop !11

264:                                              ; preds = %252, %247
  %265 = phi i32 [ 0, %247 ], [ %258, %252 ]
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %249, %266
  %268 = add nuw nsw i64 %250, 1
  %269 = add nsw i64 %248, 13
  %270 = icmp eq i64 %268, %14
  br i1 %270, label %271, label %247, !llvm.loop !9

271:                                              ; preds = %264
  %272 = select i1 %191, i64 3, i64 %233
  %273 = select i1 %216, i64 4, i64 %272
  %274 = select i1 %217, i64 4, i64 %234
  %275 = select i1 %241, i64 5, i64 %273
  %276 = select i1 %242, double %240, double %235
  %277 = select i1 %241, double %240, double %236
  %278 = select i1 %242, i64 5, i64 %274
  %279 = tail call i64 @clock() #9
  %280 = sub nsw i64 %279, %244
  %281 = sitofp i64 %280 to double
  %282 = fdiv double %281, 1.000000e+06
  %283 = fcmp olt double %282, %277
  %284 = select i1 %283, i64 6, i64 %275
  %285 = fcmp ogt double %282, %276
  %286 = select i1 %285, i64 6, i64 %278
  %287 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @.str.6, double noundef %282, i64 noundef %267)
  br label %288

288:                                              ; preds = %18, %271
  %289 = phi i64 [ %284, %271 ], [ %100, %18 ]
  %290 = phi i64 [ %286, %271 ], [ %102, %18 ]
  %291 = and i64 %289, 4294967295
  %292 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !5
  %294 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %293)
  %295 = and i64 %290, 4294967295
  %296 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !5
  %298 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %297)
  ret i32 0
}

declare i32 @bit_count(i64 noundef) local_unnamed_addr #1

declare i32 @bitcount(i64 noundef) local_unnamed_addr #1

declare i32 @ntbl_bitcnt(i64 noundef) local_unnamed_addr #1

declare i32 @ntbl_bitcount(i64 noundef) local_unnamed_addr #1

declare i32 @BW_btbl_bitcount(i64 noundef) local_unnamed_addr #1

declare i32 @AR_btbl_bitcount(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
