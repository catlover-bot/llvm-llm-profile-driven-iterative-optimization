; ModuleID = 'outputs/basicmath/basicmath_3.c'
source_filename = "outputs/basicmath/basicmath_3.c"
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
  br label %327

12:                                               ; preds = %2
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call i64 @strtol(ptr nocapture noundef nonnull %14, ptr noundef null, i32 noundef 10) #7
  %16 = trunc i64 %15 to i32
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %327

18:                                               ; preds = %12, %324
  %19 = phi i32 [ %325, %324 ], [ 0, %12 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %20 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %22 = load i32, ptr %4, align 4, !tbaa !9
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %124, label %24

24:                                               ; preds = %124, %18
  %25 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %27 = load i32, ptr %4, align 4, !tbaa !9
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24, %29
  %30 = phi i64 [ %34, %29 ], [ 0, %24 ]
  %31 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !11
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %32)
  %34 = add nuw nsw i64 %30, 1
  %35 = load i32, ptr %4, align 4, !tbaa !9
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %29, label %38, !llvm.loop !13

38:                                               ; preds = %29, %24
  %39 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %41 = load i32, ptr %4, align 4, !tbaa !9
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38, %43
  %44 = phi i64 [ %48, %43 ], [ 0, %38 ]
  %45 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !11
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %46)
  %48 = add nuw nsw i64 %44, 1
  %49 = load i32, ptr %4, align 4, !tbaa !9
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %43, label %52, !llvm.loop !13

52:                                               ; preds = %43, %38
  %53 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %55 = load i32, ptr %4, align 4, !tbaa !9
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52, %57
  %58 = phi i64 [ %62, %57 ], [ 0, %52 ]
  %59 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !11
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %60)
  %62 = add nuw nsw i64 %58, 1
  %63 = load i32, ptr %4, align 4, !tbaa !9
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %57, label %66, !llvm.loop !13

66:                                               ; preds = %57, %52
  %67 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 3.000000e+00, double noundef 1.234000e+01, double noundef 5.000000e+00, double noundef 1.200000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %69 = load i32, ptr %4, align 4, !tbaa !9
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66, %71
  %72 = phi i64 [ %76, %71 ], [ 0, %66 ]
  %73 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !11
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %74)
  %76 = add nuw nsw i64 %72, 1
  %77 = load i32, ptr %4, align 4, !tbaa !9
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %71, label %80, !llvm.loop !13

80:                                               ; preds = %71, %66
  %81 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -8.000000e+00, double noundef -6.789000e+01, double noundef 6.000000e+00, double noundef -2.360000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %83 = load i32, ptr %4, align 4, !tbaa !9
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80, %85
  %86 = phi i64 [ %90, %85 ], [ 0, %80 ]
  %87 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !11
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %88)
  %90 = add nuw nsw i64 %86, 1
  %91 = load i32, ptr %4, align 4, !tbaa !9
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %85, label %94, !llvm.loop !13

94:                                               ; preds = %85, %80
  %95 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 4.500000e+01, double noundef 8.670000e+00, double noundef 7.500000e+00, double noundef 3.400000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %97 = load i32, ptr %4, align 4, !tbaa !9
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94, %99
  %100 = phi i64 [ %104, %99 ], [ 0, %94 ]
  %101 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !11
  %103 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %102)
  %104 = add nuw nsw i64 %100, 1
  %105 = load i32, ptr %4, align 4, !tbaa !9
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %99, label %108, !llvm.loop !13

108:                                              ; preds = %99, %94
  %109 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -1.200000e+01, double noundef -1.700000e+00, double noundef 5.300000e+00, double noundef 1.600000e+01, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %110 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %111 = load i32, ptr %4, align 4, !tbaa !9
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108, %113
  %114 = phi i64 [ %118, %113 ], [ 0, %108 ]
  %115 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %114
  %116 = load double, ptr %115, align 8, !tbaa !11
  %117 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %116)
  %118 = add nuw nsw i64 %114, 1
  %119 = load i32, ptr %4, align 4, !tbaa !9
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %113, label %122, !llvm.loop !13

122:                                              ; preds = %113, %108
  %123 = call i32 @putchar(i32 10)
  br label %133

124:                                              ; preds = %18, %124
  %125 = phi i64 [ %129, %124 ], [ 0, %18 ]
  %126 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !11
  %128 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %127)
  %129 = add nuw nsw i64 %125, 1
  %130 = load i32, ptr %4, align 4, !tbaa !9
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %124, label %24, !llvm.loop !13

133:                                              ; preds = %122, %140
  %134 = phi i32 [ 1, %122 ], [ %141, %140 ]
  %135 = sitofp i32 %134 to double
  br label %138

136:                                              ; preds = %140
  %137 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  br label %276

138:                                              ; preds = %133, %148
  %139 = phi double [ 1.000000e+01, %133 ], [ %149, %148 ]
  br label %143

140:                                              ; preds = %148
  %141 = add nuw nsw i32 %134, 1
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %136, label %133, !llvm.loop !15

143:                                              ; preds = %138, %263
  %144 = phi double [ 5.000000e+00, %138 ], [ %265, %263 ]
  call void @SolveCubic(double noundef %135, double noundef %139, double noundef %144, double noundef -1.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %145 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %146 = load i32, ptr %4, align 4, !tbaa !9
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %267, label %151

148:                                              ; preds = %263
  %149 = fadd double %139, -2.500000e-01
  %150 = fcmp ogt double %149, 0.000000e+00
  br i1 %150, label %138, label %140, !llvm.loop !16

151:                                              ; preds = %267, %143
  %152 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %139, double noundef %144, double noundef -1.451000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %153 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %154 = load i32, ptr %4, align 4, !tbaa !9
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %151, %156
  %157 = phi i64 [ %161, %156 ], [ 0, %151 ]
  %158 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !11
  %160 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %159)
  %161 = add nuw nsw i64 %157, 1
  %162 = load i32, ptr %4, align 4, !tbaa !9
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %156, label %165, !llvm.loop !17

165:                                              ; preds = %156, %151
  %166 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %139, double noundef %144, double noundef 0xBFFE6E978D4FDF3C, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %167 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %168 = load i32, ptr %4, align 4, !tbaa !9
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %165, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %165 ]
  %172 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !11
  %174 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %173)
  %175 = add nuw nsw i64 %171, 1
  %176 = load i32, ptr %4, align 4, !tbaa !9
  %177 = sext i32 %176 to i64
  %178 = icmp slt i64 %175, %177
  br i1 %178, label %170, label %179, !llvm.loop !17

179:                                              ; preds = %170, %165
  %180 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %139, double noundef %144, double noundef -2.353000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %181 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %182 = load i32, ptr %4, align 4, !tbaa !9
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %179, %184
  %185 = phi i64 [ %189, %184 ], [ 0, %179 ]
  %186 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %185
  %187 = load double, ptr %186, align 8, !tbaa !11
  %188 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %187)
  %189 = add nuw nsw i64 %185, 1
  %190 = load i32, ptr %4, align 4, !tbaa !9
  %191 = sext i32 %190 to i64
  %192 = icmp slt i64 %189, %191
  br i1 %192, label %184, label %193, !llvm.loop !17

193:                                              ; preds = %184, %179
  %194 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %139, double noundef %144, double noundef 0xC0066E978D4FDF3C, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %195 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %196 = load i32, ptr %4, align 4, !tbaa !9
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %193, %198
  %199 = phi i64 [ %203, %198 ], [ 0, %193 ]
  %200 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %199
  %201 = load double, ptr %200, align 8, !tbaa !11
  %202 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %201)
  %203 = add nuw nsw i64 %199, 1
  %204 = load i32, ptr %4, align 4, !tbaa !9
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %203, %205
  br i1 %206, label %198, label %207, !llvm.loop !17

207:                                              ; preds = %198, %193
  %208 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %139, double noundef %144, double noundef 0xC00A0A3D70A3D70B, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %209 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %210 = load i32, ptr %4, align 4, !tbaa !9
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %207, %212
  %213 = phi i64 [ %217, %212 ], [ 0, %207 ]
  %214 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %213
  %215 = load double, ptr %214, align 8, !tbaa !11
  %216 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %215)
  %217 = add nuw nsw i64 %213, 1
  %218 = load i32, ptr %4, align 4, !tbaa !9
  %219 = sext i32 %218 to i64
  %220 = icmp slt i64 %217, %219
  br i1 %220, label %212, label %221, !llvm.loop !17

221:                                              ; preds = %212, %207
  %222 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %139, double noundef %144, double noundef 0xC00DA5E353F7CEDA, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %223 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %224 = load i32, ptr %4, align 4, !tbaa !9
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %221, %226
  %227 = phi i64 [ %231, %226 ], [ 0, %221 ]
  %228 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %227
  %229 = load double, ptr %228, align 8, !tbaa !11
  %230 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %229)
  %231 = add nuw nsw i64 %227, 1
  %232 = load i32, ptr %4, align 4, !tbaa !9
  %233 = sext i32 %232 to i64
  %234 = icmp slt i64 %231, %233
  br i1 %234, label %226, label %235, !llvm.loop !17

235:                                              ; preds = %226, %221
  %236 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %139, double noundef %144, double noundef -4.157000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %237 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %238 = load i32, ptr %4, align 4, !tbaa !9
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %235, %240
  %241 = phi i64 [ %245, %240 ], [ 0, %235 ]
  %242 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %241
  %243 = load double, ptr %242, align 8, !tbaa !11
  %244 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %243)
  %245 = add nuw nsw i64 %241, 1
  %246 = load i32, ptr %4, align 4, !tbaa !9
  %247 = sext i32 %246 to i64
  %248 = icmp slt i64 %245, %247
  br i1 %248, label %240, label %249, !llvm.loop !17

249:                                              ; preds = %240, %235
  %250 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef %135, double noundef %139, double noundef %144, double noundef -4.608000e+00, ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %251 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %252 = load i32, ptr %4, align 4, !tbaa !9
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %249, %254
  %255 = phi i64 [ %259, %254 ], [ 0, %249 ]
  %256 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %255
  %257 = load double, ptr %256, align 8, !tbaa !11
  %258 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %257)
  %259 = add nuw nsw i64 %255, 1
  %260 = load i32, ptr %4, align 4, !tbaa !9
  %261 = sext i32 %260 to i64
  %262 = icmp slt i64 %259, %261
  br i1 %262, label %254, label %263, !llvm.loop !17

263:                                              ; preds = %254, %249
  %264 = call i32 @putchar(i32 10)
  %265 = fadd double %144, 6.100000e-01
  %266 = fcmp olt double %265, 1.500000e+01
  br i1 %266, label %143, label %148, !llvm.loop !18

267:                                              ; preds = %143, %267
  %268 = phi i64 [ %272, %267 ], [ 0, %143 ]
  %269 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %268
  %270 = load double, ptr %269, align 8, !tbaa !11
  %271 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %270)
  %272 = add nuw nsw i64 %268, 1
  %273 = load i32, ptr %4, align 4, !tbaa !9
  %274 = sext i32 %273 to i64
  %275 = icmp slt i64 %272, %274
  br i1 %275, label %267, label %151, !llvm.loop !17

276:                                              ; preds = %136, %276
  %277 = phi i64 [ 0, %136 ], [ %285, %276 ]
  call void @usqrt(i64 noundef %277, ptr noundef nonnull %5) #7
  %278 = load i32, ptr %5, align 4, !tbaa !19
  %279 = trunc i64 %277 to i32
  %280 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %279, i32 noundef %278)
  %281 = or disjoint i64 %277, 2
  call void @usqrt(i64 noundef %281, ptr noundef nonnull %5) #7
  %282 = load i32, ptr %5, align 4, !tbaa !19
  %283 = trunc i64 %281 to i32
  %284 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %283, i32 noundef %282)
  %285 = add nuw nsw i64 %277, 4
  %286 = icmp ult i64 %277, 99996
  br i1 %286, label %276, label %287, !llvm.loop !21

287:                                              ; preds = %276
  %288 = call i32 @putchar(i32 10)
  br label %289

289:                                              ; preds = %287, %289
  %290 = phi i64 [ 1072497001, %287 ], [ %296, %289 ]
  call void @usqrt(i64 noundef %290, ptr noundef nonnull %5) #7
  %291 = load i32, ptr %5, align 4, !tbaa !19
  %292 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %290, i32 noundef %291)
  %293 = add nuw nsw i64 %290, 1
  call void @usqrt(i64 noundef %293, ptr noundef nonnull %5) #7
  %294 = load i32, ptr %5, align 4, !tbaa !19
  %295 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %293, i32 noundef %294)
  %296 = add nuw nsw i64 %290, 2
  %297 = icmp ult i64 %290, 1072513383
  br i1 %297, label %289, label %298, !llvm.loop !22

298:                                              ; preds = %289
  %299 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  br label %300

300:                                              ; preds = %298, %300
  %301 = phi double [ 0.000000e+00, %298 ], [ %309, %300 ]
  %302 = fmul double %301, 0x400921FB54442D18
  %303 = fdiv double %302, 1.800000e+02
  %304 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %301, double noundef %303)
  %305 = fadd double %301, 1.000000e-03
  %306 = fmul double %305, 0x400921FB54442D18
  %307 = fdiv double %306, 1.800000e+02
  %308 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %305, double noundef %307)
  %309 = fadd double %301, 2.000000e-03
  %310 = fcmp ugt double %309, 3.600000e+02
  br i1 %310, label %311, label %300, !llvm.loop !23

311:                                              ; preds = %300
  %312 = call i32 @putchar(i32 10)
  br label %313

313:                                              ; preds = %311, %313
  %314 = phi double [ 0.000000e+00, %311 ], [ %322, %313 ]
  %315 = fmul double %314, 1.800000e+02
  %316 = fdiv double %315, 0x400921FB54442D18
  %317 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %314, double noundef %316)
  %318 = fadd double %314, 0x3F41DF46A2529D39
  %319 = fmul double %318, 1.800000e+02
  %320 = fdiv double %319, 0x400921FB54442D18
  %321 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %318, double noundef %320)
  %322 = fadd double %314, 0x3F51DF46A2529D39
  %323 = fcmp ugt double %322, 0x401921FB97600B9B
  br i1 %323, label %324, label %313, !llvm.loop !24

324:                                              ; preds = %313
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  %325 = add nuw nsw i32 %19, 1
  %326 = icmp eq i32 %325, %16
  br i1 %326, label %327, label %18, !llvm.loop !25

327:                                              ; preds = %324, %12, %7
  %328 = phi i32 [ 1, %7 ], [ 0, %12 ], [ 0, %324 ]
  ret i32 %328
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @SolveCubic(double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @usqrt(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

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
!19 = !{!20, !10, i64 0}
!20 = !{!"int_sqrt", !10, i64 0, !10, i64 4}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
