; ModuleID = 'main_o3.bc'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%d !=  %ld\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E8\AF\B7\E8\BE\93\E5\85\A5\E4\BD\A0\E8\A6\81\E6\B1\82\E7\9A\84\E9\98\B6\E4\B9\98\EF\BC\9A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %1)
  %5 = load i32, i32* %1, align 4, !tbaa !5
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %0
  %8 = zext i32 %5 to i64
  %9 = add nsw i64 %8, -1
  %10 = and i64 %8, 7
  %11 = icmp ult i64 %9, 7
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  %13 = and i64 %8, 4294967288
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ %8, %12 ], [ %33, %14 ]
  %16 = phi i64 [ 1, %12 ], [ %32, %14 ]
  %17 = phi i64 [ 0, %12 ], [ %34, %14 ]
  %18 = mul nsw i64 %16, %15
  %19 = add nsw i64 %15, -1
  %20 = mul nsw i64 %18, %19
  %21 = add nsw i64 %15, -2
  %22 = mul nsw i64 %20, %21
  %23 = add nsw i64 %15, -3
  %24 = mul nsw i64 %22, %23
  %25 = add nsw i64 %15, -4
  %26 = mul nsw i64 %24, %25
  %27 = add nsw i64 %15, -5
  %28 = mul nsw i64 %26, %27
  %29 = add nsw i64 %15, -6
  %30 = mul nsw i64 %28, %29
  %31 = add nsw i64 %15, -7
  %32 = mul nsw i64 %30, %31
  %33 = add nsw i64 %15, -8
  %34 = add i64 %17, 8
  %35 = icmp eq i64 %34, %13
  br i1 %35, label %36, label %14, !llvm.loop !9

36:                                               ; preds = %14, %7
  %37 = phi i64 [ undef, %7 ], [ %32, %14 ]
  %38 = phi i64 [ %8, %7 ], [ %33, %14 ]
  %39 = phi i64 [ 1, %7 ], [ %32, %14 ]
  %40 = icmp eq i64 %10, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36, %41
  %42 = phi i64 [ %46, %41 ], [ %38, %36 ]
  %43 = phi i64 [ %45, %41 ], [ %39, %36 ]
  %44 = phi i64 [ %47, %41 ], [ 0, %36 ]
  %45 = mul nsw i64 %43, %42
  %46 = add nsw i64 %42, -1
  %47 = add i64 %44, 1
  %48 = icmp eq i64 %47, %10
  br i1 %48, label %49, label %41, !llvm.loop !11

49:                                               ; preds = %41, %36
  %50 = phi i64 [ %37, %36 ], [ %45, %41 ]
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %49, %0
  %53 = phi i32 [ 1, %0 ], [ %51, %49 ]
  %54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %5, i32 noundef %53) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
