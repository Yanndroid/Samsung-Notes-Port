.class public Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$OnMultipleTapListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_TAP:I = 0x5

.field private static final MULTIPLE_TAP_SIZE_THRESHOLD:F = 30.0f


# instance fields
.field private detectionAreaLength:F

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$OnMultipleTapListener;

.field private mMaxTap:I

.field private mPrevX:F

.field private mPrevY:F

.field private mResponseTime:I

.field private mTapCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$OnMultipleTapListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mResponseTime:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mMaxTap:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mTapCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mPrevX:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mPrevY:F

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$OnMultipleTapListener;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41f00000    # 30.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->detectionAreaLength:F

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mTapCount:I

    return p1
.end method

.method private cancel()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$1;-><init>(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mResponseTime:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onMultipleTap(Landroid/view/MotionEvent;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mTapCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mTapCount:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mMaxTap:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$OnMultipleTapListener;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$OnMultipleTapListener;->onMultipleTap(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->cancel()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$OnMultipleTapListener;

    return-void
.end method

.method public getMaxTap()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mMaxTap:I

    return v0
.end method

.method public getResponseTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mResponseTime:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mTapCount:I

    if-nez v2, :cond_0

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mPrevX:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mPrevY:F

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mPrevX:F

    sub-float/2addr v2, v0

    float-to-double v2, v2

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mPrevY:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->detectionAreaLength:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->onMultipleTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mTapCount:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-ne v2, p1, :cond_3

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mPrevX:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mPrevY:F

    :cond_3
    :goto_0
    return-void
.end method

.method public setMaxTap(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mMaxTap:I

    return-void
.end method

.method public setResponseTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->mResponseTime:I

    return-void
.end method
