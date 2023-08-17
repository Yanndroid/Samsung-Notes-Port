.class public Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;

    return-void
.end method

.method public onGesture(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;->onScale(FFF)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;->onScaleBegin(FF)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleGestureDetector$Listener;->onScaleEnd(FF)V

    return-void
.end method
