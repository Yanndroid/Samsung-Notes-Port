.class public interface abstract Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHoldingMotionListener"
.end annotation


# virtual methods
.method public abstract onHoldCanceled()V
.end method

.method public abstract onHoldEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onHoldLongPress(Landroid/view/MotionEvent;)Z
.end method
