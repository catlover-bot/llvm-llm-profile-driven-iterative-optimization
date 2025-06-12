; ModuleID = 'outputs/basicmath/basicmath_1.c'
source_filename = "outputs/basicmath/basicmath_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"ERROR: number of runs not provided!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"USAGE: ./basicmath [RUNS]\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1
@str = private unnamed_addr constant [38 x i8] c"********* CUBIC FUNCTIONS ***********\00", align 1
@str.13 = private unnamed_addr constant [40 x i8] c"********* INTEGER SQR ROOTS ***********\00", align 1
@str.14 = private unnamed_addr constant [39 x i8] c"********* ANGLE CONVERSION ***********\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x double], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.int_sqrt, align 4
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str, i64 36, i64 1, ptr %8) #6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr %10) #6
  br label %312

12:                                               ; preds = %2
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call i64 @strtol(ptr nocapture noundef nonnull %14, ptr noundef null, i32 noundef 10) #7
  %16 = trunc i64 %15 to i32
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %312

18:                                               ; preds = %12, %309
  %19 = phi i32 [ %310, %309 ], [ 0, %12 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %20 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %22 = load i32, ptr %4, align 4, !tbaa !9
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18, %24
  %25 = phi i64 [ %29, %24 ], [ 0, %18 ]
  %26 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %25
  %27 = load double, ptr %26, align 8, !tbaa !11
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %27)
  %29 = add nuw nsw i64 %25, 1
  %30 = load i32, ptr %4, align 4, !tbaa !9
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %24, label %33, !llvm.loop !13

33:                                               ; preds = %24, %18
  %34 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %36 = load i32, ptr %4, align 4, !tbaa !9
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33, %38
  %39 = phi i64 [ %43, %38 ], [ 0, %33 ]
  %40 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !11
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %41)
  %43 = add nuw nsw i64 %39, 1
  %44 = load i32, ptr %4, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %38, label %47, !llvm.loop !15

47:                                               ; preds = %38, %33
  %48 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %50 = load i32, ptr %4, align 4, !tbaa !9
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47, %52
  %53 = phi i64 [ %57, %52 ], [ 0, %47 ]
  %54 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !11
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %55)
  %57 = add nuw nsw i64 %53, 1
  %58 = load i32, ptr %4, align 4, !tbaa !9
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %52, label %61, !llvm.loop !16

61:                                               ; preds = %52, %47
  %62 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %64 = load i32, ptr %4, align 4, !tbaa !9
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61, %66
  %67 = phi i64 [ %71, %66 ], [ 0, %61 ]
  %68 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !11
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %69)
  %71 = add nuw nsw i64 %67, 1
  %72 = load i32, ptr %4, align 4, !tbaa !9
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %66, label %75, !llvm.loop !17

75:                                               ; preds = %66, %61
  %76 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 3.000000e+00, double noundef 1.234000e+01, double noundef 5.000000e+00, double noundef 1.200000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %78 = load i32, ptr %4, align 4, !tbaa !9
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75, %80
  %81 = phi i64 [ %85, %80 ], [ 0, %75 ]
  %82 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %81
  %83 = load double, ptr %82, align 8, !tbaa !11
  %84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %83)
  %85 = add nuw nsw i64 %81, 1
  %86 = load i32, ptr %4, align 4, !tbaa !9
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %80, label %89, !llvm.loop !18

89:                                               ; preds = %80, %75
  %90 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -8.000000e+00, double noundef -6.789000e+01, double noundef 6.000000e+00, double noundef -2.360000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %92 = load i32, ptr %4, align 4, !tbaa !9
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89, %94
  %95 = phi i64 [ %99, %94 ], [ 0, %89 ]
  %96 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !11
  %98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %97)
  %99 = add nuw nsw i64 %95, 1
  %100 = load i32, ptr %4, align 4, !tbaa !9
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %94, label %103, !llvm.loop !19

103:                                              ; preds = %94, %89
  %104 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 4.500000e+01, double noundef 8.670000e+00, double noundef 7.500000e+00, double noundef 3.400000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %106 = load i32, ptr %4, align 4, !tbaa !9
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103, %108
  %109 = phi i64 [ %113, %108 ], [ 0, %103 ]
  %110 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !11
  %112 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %111)
  %113 = add nuw nsw i64 %109, 1
  %114 = load i32, ptr %4, align 4, !tbaa !9
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %108, label %117, !llvm.loop !20

117:                                              ; preds = %108, %103
  %118 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -1.200000e+01, double noundef -1.700000e+00, double noundef 5.300000e+00, double noundef 1.600000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %119 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %120 = load i32, ptr %4, align 4, !tbaa !9
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117, %122
  %123 = phi i64 [ %127, %122 ], [ 0, %117 ]
  %124 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !11
  %126 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %125)
  %127 = add nuw nsw i64 %123, 1
  %128 = load i32, ptr %4, align 4, !tbaa !9
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %127, %129
  br i1 %130, label %122, label %131, !llvm.loop !21

131:                                              ; preds = %122, %117
  %132 = call i32 @putchar(i32 10)
  br label %133

133:                                              ; preds = %131, %271
  %134 = phi i32 [ 1, %131 ], [ %272, %271 ]
  %135 = sitofp i32 %134 to double
  br label %136

136:                                              ; preds = %133, %268
  %137 = phi double [ 1.000000e+01, %133 ], [ %269, %268 ]
  br label %138

138:                                              ; preds = %136, %264
  %139 = phi double [ 5.000000e+00, %136 ], [ %266, %264 ]
  call void @SolveCubic(double noundef %135, double noundef %137, double noundef %139, double noundef -1.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %140 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %141 = load i32, ptr %4, align 4, !tbaa !9
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138, %143
  %144 = phi i64 [ %148, %143 ], [ 0, %138 ]
  %145 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %144
  %146 = load double, ptr %145, align 8, !tbaa !11
  %147 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %146)
  %148 = add nuw nsw i64 %144, 1
  %149 = load i32, ptr %4, align 4, !tbaa !9
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %143, label %152, !llvm.loop !22

152:                                              ; preds = %143, %138
  %153 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %137, double noundef %139, double noundef -1.451000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %154 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %155 = load i32, ptr %4, align 4, !tbaa !9
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152, %157
  %158 = phi i64 [ %162, %157 ], [ 0, %152 ]
  %159 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %158
  %160 = load double, ptr %159, align 8, !tbaa !11
  %161 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %160)
  %162 = add nuw nsw i64 %158, 1
  %163 = load i32, ptr %4, align 4, !tbaa !9
  %164 = sext i32 %163 to i64
  %165 = icmp slt i64 %162, %164
  br i1 %165, label %157, label %166, !llvm.loop !22

166:                                              ; preds = %157, %152
  %167 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %137, double noundef %139, double noundef 0xBFFE6E978D4FDF3C, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %168 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %169 = load i32, ptr %4, align 4, !tbaa !9
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %166, %171
  %172 = phi i64 [ %176, %171 ], [ 0, %166 ]
  %173 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %172
  %174 = load double, ptr %173, align 8, !tbaa !11
  %175 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %174)
  %176 = add nuw nsw i64 %172, 1
  %177 = load i32, ptr %4, align 4, !tbaa !9
  %178 = sext i32 %177 to i64
  %179 = icmp slt i64 %176, %178
  br i1 %179, label %171, label %180, !llvm.loop !22

180:                                              ; preds = %171, %166
  %181 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %137, double noundef %139, double noundef -2.353000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %182 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %183 = load i32, ptr %4, align 4, !tbaa !9
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %180, %185
  %186 = phi i64 [ %190, %185 ], [ 0, %180 ]
  %187 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %186
  %188 = load double, ptr %187, align 8, !tbaa !11
  %189 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %188)
  %190 = add nuw nsw i64 %186, 1
  %191 = load i32, ptr %4, align 4, !tbaa !9
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %190, %192
  br i1 %193, label %185, label %194, !llvm.loop !22

194:                                              ; preds = %185, %180
  %195 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %137, double noundef %139, double noundef 0xC0066E978D4FDF3C, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %196 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %197 = load i32, ptr %4, align 4, !tbaa !9
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %194, %199
  %200 = phi i64 [ %204, %199 ], [ 0, %194 ]
  %201 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %200
  %202 = load double, ptr %201, align 8, !tbaa !11
  %203 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %202)
  %204 = add nuw nsw i64 %200, 1
  %205 = load i32, ptr %4, align 4, !tbaa !9
  %206 = sext i32 %205 to i64
  %207 = icmp slt i64 %204, %206
  br i1 %207, label %199, label %208, !llvm.loop !22

208:                                              ; preds = %199, %194
  %209 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %137, double noundef %139, double noundef 0xC00A0A3D70A3D70B, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %210 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %211 = load i32, ptr %4, align 4, !tbaa !9
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %208, %213
  %214 = phi i64 [ %218, %213 ], [ 0, %208 ]
  %215 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %214
  %216 = load double, ptr %215, align 8, !tbaa !11
  %217 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %216)
  %218 = add nuw nsw i64 %214, 1
  %219 = load i32, ptr %4, align 4, !tbaa !9
  %220 = sext i32 %219 to i64
  %221 = icmp slt i64 %218, %220
  br i1 %221, label %213, label %222, !llvm.loop !22

222:                                              ; preds = %213, %208
  %223 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %137, double noundef %139, double noundef 0xC00DA5E353F7CEDA, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %224 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %225 = load i32, ptr %4, align 4, !tbaa !9
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %222, %227
  %228 = phi i64 [ %232, %227 ], [ 0, %222 ]
  %229 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %228
  %230 = load double, ptr %229, align 8, !tbaa !11
  %231 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %230)
  %232 = add nuw nsw i64 %228, 1
  %233 = load i32, ptr %4, align 4, !tbaa !9
  %234 = sext i32 %233 to i64
  %235 = icmp slt i64 %232, %234
  br i1 %235, label %227, label %236, !llvm.loop !22

236:                                              ; preds = %227, %222
  %237 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %137, double noundef %139, double noundef -4.157000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %238 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %239 = load i32, ptr %4, align 4, !tbaa !9
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %236, %241
  %242 = phi i64 [ %246, %241 ], [ 0, %236 ]
  %243 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %242
  %244 = load double, ptr %243, align 8, !tbaa !11
  %245 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %244)
  %246 = add nuw nsw i64 %242, 1
  %247 = load i32, ptr %4, align 4, !tbaa !9
  %248 = sext i32 %247 to i64
  %249 = icmp slt i64 %246, %248
  br i1 %249, label %241, label %250, !llvm.loop !22

250:                                              ; preds = %241, %236
  %251 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %137, double noundef %139, double noundef -4.608000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %252 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %253 = load i32, ptr %4, align 4, !tbaa !9
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %250, %255
  %256 = phi i64 [ %260, %255 ], [ 0, %250 ]
  %257 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %256
  %258 = load double, ptr %257, align 8, !tbaa !11
  %259 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %258)
  %260 = add nuw nsw i64 %256, 1
  %261 = load i32, ptr %4, align 4, !tbaa !9
  %262 = sext i32 %261 to i64
  %263 = icmp slt i64 %260, %262
  br i1 %263, label %255, label %264, !llvm.loop !22

264:                                              ; preds = %255, %250
  %265 = call i32 @putchar(i32 10)
  %266 = fadd double %139, 6.100000e-01
  %267 = fcmp olt double %266, 1.500000e+01
  br i1 %267, label %138, label %268, !llvm.loop !23

268:                                              ; preds = %264
  %269 = fadd double %137, -2.500000e-01
  %270 = fcmp ogt double %269, 0.000000e+00
  br i1 %270, label %136, label %271, !llvm.loop !24

271:                                              ; preds = %268
  %272 = add nuw nsw i32 %134, 1
  %273 = icmp eq i32 %272, 10
  br i1 %273, label %274, label %133, !llvm.loop !25

274:                                              ; preds = %271
  %275 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  br label %276

276:                                              ; preds = %274, %276
  %277 = phi i64 [ 0, %274 ], [ %281, %276 ]
  call void @usqrt(i64 noundef %277, ptr noundef nonnull %5) #7
  %278 = load i32, ptr %5, align 4, !tbaa !26
  %279 = trunc i64 %277 to i32
  %280 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %279, i32 noundef %278)
  %281 = add nuw nsw i64 %277, 2
  %282 = icmp ult i64 %277, 99998
  br i1 %282, label %276, label %283, !llvm.loop !28

283:                                              ; preds = %276
  %284 = call i32 @putchar(i32 10)
  br label %285

285:                                              ; preds = %283, %285
  %286 = phi i64 [ 1072497001, %283 ], [ %289, %285 ]
  call void @usqrt(i64 noundef %286, ptr noundef nonnull %5) #7
  %287 = load i32, ptr %5, align 4, !tbaa !26
  %288 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %286, i32 noundef %287)
  %289 = add nuw nsw i64 %286, 1
  %290 = icmp eq i64 %289, 1072513385
  br i1 %290, label %291, label %285, !llvm.loop !29

291:                                              ; preds = %285
  %292 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  br label %293

293:                                              ; preds = %291, %293
  %294 = phi double [ 0.000000e+00, %291 ], [ %298, %293 ]
  %295 = fmul double %294, 0x400921FB54442D18
  %296 = fdiv double %295, 1.800000e+02
  %297 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %294, double noundef %296)
  %298 = fadd double %294, 1.000000e-03
  %299 = fcmp ugt double %298, 3.600000e+02
  br i1 %299, label %300, label %293, !llvm.loop !30

300:                                              ; preds = %293
  %301 = call i32 @putchar(i32 10)
  br label %302

302:                                              ; preds = %300, %302
  %303 = phi double [ 0.000000e+00, %300 ], [ %307, %302 ]
  %304 = fmul double %303, 1.800000e+02
  %305 = fdiv double %304, 0x400921FB54442D18
  %306 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %303, double noundef %305)
  %307 = fadd double %303, 0x3F41DF46A2529D39
  %308 = fcmp ugt double %307, 0x401921FB97600B9B
  br i1 %308, label %309, label %302, !llvm.loop !31

309:                                              ; preds = %302
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  %310 = add nuw nsw i32 %19, 1
  %311 = icmp eq i32 %310, %16
  br i1 %311, label %312, label %18, !llvm.loop !32

312:                                              ; preds = %309, %12, %7
  %313 = phi i32 [ 1, %7 ], [ 0, %12 ], [ 0, %309 ]
  ret i32 %313
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @SolveCubic(double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @usqrt(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { cold }
attributes #7 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = !{!27, !10, i64 0}
!27 = !{!"int_sqrt", !10, i64 0, !10, i64 4}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
