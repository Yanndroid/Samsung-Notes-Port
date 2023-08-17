.class public interface abstract Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDoubleTap(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onHoldCanceled()V
.end method

.method public abstract onHoldEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onHoldLongPress(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onMultipleTap(Landroid/view/MotionEvent;I)V
.end method

.method public abstract onScale(FFF)Z
.end method

.method public abstract onScaleBegin()Z
.end method

.method public abstract onScaleConfirmed()V
.end method

.method public abstract onScaleEnd()V
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method
