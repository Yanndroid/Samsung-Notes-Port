.class public Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;
    }
.end annotation


# static fields
.field private static final EASY_MODE_HOLD_LONG_PRESS_TIME_MARGIN:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String; = "SpenHoldMotionDetector"

.field private static final LONG_PRESS_SIZE_THRESHOLD:F = 8.0f


# instance fields
.field private final detectionAreaLength:F

.field private mCancelRegion:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mDetectionRegion:Landroid/graphics/RectF;

.field private mEasyModeAppliedHoldLongPressResponseTime:I

.field private mHandler:Landroid/os/Handler;

.field private mHoldLongPressResponseTime:I

.field private mIsWaiting:Z

.field private mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;

.field private mOnHoldCalled:Z

.field private mOnHoldLongPressCalled:Z

.field private mOnHoldLongPressChecked:Z

.field private mResponseTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mIsWaiting:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldCalled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressCalled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressChecked:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mResponseTime:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHoldLongPressResponseTime:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mEasyModeAppliedHoldLongPressResponseTime:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mDetectionRegion:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mCancelRegion:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->detectionAreaLength:F

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;ZLandroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->lambda$schedule$0(ZLandroid/view/MotionEvent;)V

    return-void
.end method

.method private checkHoldLongPressTimeForEasyMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHoldLongPressResponseTime:I

    const-string v2, "long_press_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHoldLongPressResponseTime:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mEasyModeAppliedHoldLongPressResponseTime:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x32

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mEasyModeAppliedHoldLongPressResponseTime:I

    :goto_0
    return-void
.end method

.method private synthetic lambda$schedule$0(ZLandroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressCalled:Z

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;->onHoldLongPress(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldCalled:Z

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;->onHoldEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private reset(FF)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->detectionAreaLength:F

    sub-float v2, p1, v1

    sub-float v3, p2, v1

    add-float v4, p1, v1

    add-float/2addr v1, p2

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mDetectionRegion:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->detectionAreaLength:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    sub-float v3, p1, v3

    mul-float v4, v1, v2

    sub-float v4, p2, v4

    mul-float v5, v1, v2

    add-float/2addr p1, v5

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    invoke-direct {v0, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mCancelRegion:Landroid/graphics/RectF;

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldCalled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;->onHoldCanceled()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldCalled:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mIsWaiting:Z

    return-void
.end method

.method private schedule(Landroid/view/MotionEvent;ZI)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/a;-><init>(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;ZLandroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHandler:Landroid/os/Handler;

    int-to-long p2, p3

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getHoldLongPressResponseTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHoldLongPressResponseTime:I

    return v0
.end method

.method public getResponseTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mResponseTime:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressCalled:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->checkHoldLongPressTimeForEasyMode()V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->reset(FF)V

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressCalled:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressChecked:Z

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mDetectionRegion:Landroid/graphics/RectF;

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mCancelRegion:Landroid/graphics/RectF;

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldCalled:Z

    if-nez v5, :cond_3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldCalled:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mCancelRegion:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressChecked:Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->reset(FF)V

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mIsWaiting:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressChecked:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mEasyModeAppliedHoldLongPressResponseTime:I

    invoke-direct {p0, p1, v3, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->schedule(Landroid/view/MotionEvent;ZI)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mResponseTime:I

    invoke-direct {p0, p1, v4, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->schedule(Landroid/view/MotionEvent;ZI)V

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mIsWaiting:Z

    :cond_7
    return-void

    :cond_8
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldCalled:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressCalled:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mOnHoldLongPressChecked:Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->reset(FF)V

    return-void
.end method

.method public setHoldLongPressResponseTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mHoldLongPressResponseTime:I

    return-void
.end method

.method public setResponseTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->mResponseTime:I

    return-void
.end method
