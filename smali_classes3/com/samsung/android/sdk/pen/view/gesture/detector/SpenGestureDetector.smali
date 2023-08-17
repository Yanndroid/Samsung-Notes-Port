.class public Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;
.implements Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$OnMultipleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SpenGestureDetector"

.field private static final LONG_PRESS_THRESHOLD:F = 17.0f

.field private static final SCALE_CONFIRMED_THRESHOLD:F = 0.3f

.field private static final SCALE_STABILIZATION:Z = true

.field private static final SINGLE_TAP_UP_THRESHOLD:F = 10.0f

.field private static final VALID_SCROLL_LENGTH_THRESHOLD:F = 17.0f


# instance fields
.field private mBlockScroll:Z

.field private mDensity:F

.field private mDoubleTapEnabled:Z

.field private mFirstScroll:Z

.field private mFlingEnabled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHoldLongPressEnabled:Z

.field private mHoldMotionDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;

.field private mHoldMotionEnabled:Z

.field private mIsGesture:Z

.field private mIsLastTouchPointerUp:Z

.field private mIsScaleConfirmedCalled:Z

.field private mIsStroke:Z

.field private mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

.field private mLongPressEnabled:Z

.field private mMultipleTapDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;

.field private mMultipleTapEnabled:Z

.field private mPreviousSpan:F

.field private mPreviousTouchPosition:Landroid/graphics/PointF;

.field private mScaleEnabled:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleRatioForConfirmed:F

.field private mScaleStabilizer:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;

.field private mScrollEnabled:Z

.field private final mScrollLowPassFilterX:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

.field private final mScrollLowPassFilterY:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

.field private final mSync:Ljava/lang/Object;

.field private mTouchMeasure:Landroid/graphics/PathMeasure;

.field private mTouchPath:Landroid/graphics/Path;

.field private mTouchStartPosition:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDensity:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsGesture:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsStroke:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mFirstScroll:Z

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousTouchPosition:Landroid/graphics/PointF;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mBlockScroll:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsLastTouchPointerUp:Z

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchStartPosition:Landroid/graphics/PointF;

    new-instance v3, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollLowPassFilterX:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    new-instance v3, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollLowPassFilterY:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousSpan:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleRatioForConfirmed:F

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsScaleConfirmedCalled:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDoubleTapEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mLongPressEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldLongPressEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldMotionEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mFlingEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mMultipleTapEnabled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mSync:Ljava/lang/Object;

    const-string v0, "SpenGestureDetector"

    const-string v2, "[JavaGesture] Constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDensity:F

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector$OnHoldingMotionListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldMotionDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$OnMultipleTapListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mMultipleTapDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, p1

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDensity:F

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleStabilizer:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;

    return-void
.end method

.method private checkScaleConfirmed(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsScaleConfirmedCalled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleRatioForConfirmed:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleRatioForConfirmed:F

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleRatioForConfirmed:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onScaleConfirmed()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsScaleConfirmedCalled:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private onScaleByStabilization(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    new-instance v2, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;-><init>()V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, v2, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->span:F

    iput v0, v2, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotX:F

    iput v1, v2, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotY:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleStabilizer:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->stabilizeScaleInfo(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->span:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousSpan:F

    div-float v1, v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousSpan:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotX:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotY:F

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->checkScaleConfirmed(F)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    invoke-interface {v2, v1, v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onScale(FFF)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenGestureDetector"

    const-string v1, "[JavaGesture] Close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mMultipleTapDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mMultipleTapDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldMotionDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldMotionDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchPath:Landroid/graphics/Path;

    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDoubleTapEnabled:Z

    return v0
.end method

.method public isFlingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mFlingEnabled:Z

    return v0
.end method

.method public isHoldLongPressEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldLongPressEnabled:Z

    return v0
.end method

.method public isHoldMotionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldMotionEnabled:Z

    return v0
.end method

.method public isLongPressEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mLongPressEnabled:Z

    return v0
.end method

.method public isMultipleTapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mMultipleTapEnabled:Z

    return v0
.end method

.method public isScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleEnabled:Z

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollEnabled:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDoubleTapEnabled:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mFlingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsGesture:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mBlockScroll:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHoldCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldMotionEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsStroke:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onHoldCanceled()V

    :cond_0
    return-void
.end method

.method public onHoldEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldMotionEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsStroke:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onHoldEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHoldLongPress(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldLongPressEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDensity:F

    const/high16 v2, 0x41880000    # 17.0f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    cmpl-float v2, v2, v0

    const-string v3, "SpenGestureDetector"

    if-lez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JavaGesture] onHoldLongPress blocked by path length "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " is higher than "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JavaGesture] onHoldLongPress path length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " is lower than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onHoldLongPress(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mLongPressEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDensity:F

    const/high16 v1, 0x41880000    # 17.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    cmpl-float v1, v1, v0

    const-string v2, "SpenGestureDetector"

    if-lez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] onLongPress blocked by path length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " is higher than "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JavaGesture] onLongPress path length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " is lower than "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onLongPress(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMultipleTap(Landroid/view/MotionEvent;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsGesture:Z

    if-eqz v1, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onMultipleTap(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->onScaleByStabilization(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleRatioForConfirmed:F

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsScaleConfirmedCalled:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;-><init>()V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->span:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotX:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotY:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleStabilizer:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->reset(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleStabilizer:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->stabilizeScaleInfo(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleStabilizer:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->stabilizeScaleInfo(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->span:F

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousSpan:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onScaleBegin()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleEnabled:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onScaleEnd()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollEnabled:Z

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mBlockScroll:Z

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchStartPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v0

    float-to-double v0, p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchStartPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, v2

    float-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    const/high16 p3, 0x41880000    # 17.0f

    iget v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDensity:F

    mul-float/2addr v2, p3

    float-to-double v2, v2

    cmpl-double p3, v0, v2

    if-lez p3, :cond_1

    iput-boolean p4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mBlockScroll:Z

    :cond_1
    iget-boolean p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsGesture:Z

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mBlockScroll:Z

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousTouchPosition:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousTouchPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mFirstScroll:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollLowPassFilterX:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->reset(F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollLowPassFilterY:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->reset(F)V

    iput-boolean p4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mFirstScroll:Z

    :cond_3
    iget-object p4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollLowPassFilterX:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p4, p3, v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->correct(FF)F

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollLowPassFilterY:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    invoke-virtual {p4, v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->correct(FF)F

    move-result p4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDensity:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    cmpl-float v2, v2, v0

    const-string v3, "SpenGestureDetector"

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsStroke:Z

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JavaGesture] onSingleTapUp blocked by mIsStroke && path length "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " is higher than "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JavaGesture] onSingleTapUp path length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " is lower than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " || mIsStroke is false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;ZZZ)Z
    .locals 4

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsGesture:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsStroke:Z

    iget-boolean p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsLastTouchPointerUp:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsLastTouchPointerUp:Z

    new-instance p3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousTouchPosition:Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchStartPosition:Landroid/graphics/PointF;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/4 v1, 0x1

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance p3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p3, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousTouchPosition:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mFirstScroll:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mBlockScroll:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-ne p3, v2, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mIsLastTouchPointerUp:Z

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mTouchPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p3, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mSync:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p4

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p3

    if-nez p3, :cond_4

    if-eqz p4, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldMotionDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;

    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mMultipleTapEnabled:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mMultipleTapDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_6
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mPreviousTouchPosition:Landroid/graphics/PointF;

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mDoubleTapEnabled:Z

    return-void
.end method

.method public setFlingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mFlingEnabled:Z

    return-void
.end method

.method public setGestureDetectorListener(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;

    return-void
.end method

.method public setHoldLongPressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldLongPressEnabled:Z

    return-void
.end method

.method public setHoldMotionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mHoldMotionEnabled:Z

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mLongPressEnabled:Z

    return-void
.end method

.method public setMultipleTapEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mMultipleTapEnabled:Z

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScaleEnabled:Z

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->mScrollEnabled:Z

    return-void
.end method
