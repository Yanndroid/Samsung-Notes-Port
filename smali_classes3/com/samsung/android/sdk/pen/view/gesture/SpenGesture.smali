.class public Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;
.implements Lcom/samsung/android/sdk/pen/view/gesture/SpenIGesture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture$System;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SpenGesture"

.field private static mCreationCount:I = 0x0

.field private static mIsGestureEnabled:Z = true

.field private static mIsStrictDetection:Z = false

.field private static mMotionEvent:Landroid/view/MotionEvent;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

.field private mNativeGestureRefiner:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->init()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {p2, p0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->setGestureDetectorListener(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector$Listener;)V

    return-void
.end method

.method private static native Native_onDoubleTap(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_onFling(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;FF)Z
.end method

.method private static native Native_onHoldCanceled(J)V
.end method

.method private static native Native_onHoldEvent(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_onHoldLongPress(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_onLongPress(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)V
.end method

.method private static native Native_onMultipleTap(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;I)V
.end method

.method private static native Native_onScale(JFFF)Z
.end method

.method private static native Native_onScaleBegin(J)Z
.end method

.method private static native Native_onScaleConfirmed(J)V
.end method

.method private static native Native_onScaleEnd(J)V
.end method

.method private static native Native_onScroll(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;FF)Z
.end method

.method private static native Native_onSingleTapConfirmed(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private static native Native_onSingleTapUp(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z
.end method

.method private close()V
    .locals 2

    const-string v0, "SpenGesture"

    const-string v1, "[JavaGesture] close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->destruct()V

    return-void
.end method

.method private destruct()V
    .locals 2

    sget v0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mCreationCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mCreationCount:I

    if-nez v0, :cond_0

    const-string v0, "SpenGesture"

    const-string v1, "[JavaGesture] destruct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mMotionEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    sget v0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mCreationCount:I

    if-nez v0, :cond_0

    const-string v0, "SpenGesture"

    const-string v1, "[JavaGesture] init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mCreationCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mCreationCount:I

    return-void
.end method

.method public static onTouchEvent(Landroid/view/MotionEvent;Z)V
    .locals 0

    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mMotionEvent:Landroid/view/MotionEvent;

    sput-boolean p1, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mIsStrictDetection:Z

    return-void
.end method

.method public static setGestureEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mIsGestureEnabled:Z

    return-void
.end method

.method private setGestureRefiner(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] nativeGestureRefiner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    return-void
.end method


# virtual methods
.method public isAirViewActionEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isDoubleTapEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->isDoubleTapEnabled()Z

    move-result v0

    return v0
.end method

.method public isFlingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->isFlingEnabled()Z

    move-result v0

    return v0
.end method

.method public isHoldLongPressEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->isHoldLongPressEnabled()Z

    move-result v0

    return v0
.end method

.method public isHoldMotionEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->isHoldMotionEnabled()Z

    move-result v0

    return v0
.end method

.method public isLongPressEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->isLongPressEnabled()Z

    move-result v0

    return v0
.end method

.method public isMultipleTapEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->isMultipleTapEnabled()Z

    move-result v0

    return v0
.end method

.method public isScaleEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->isScaleEnabled()Z

    move-result v0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->isScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onDoubleTap(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] onFling velocityX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocityY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v4, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    new-instance v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v5, p2}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onFling(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onGesture(ZZ)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mIsGestureEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    const-string p1, "SpenGesture"

    const-string p2, "[JavaGesture] MotionEvent is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    sget-boolean v2, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mIsStrictDetection:Z

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;ZZZ)Z

    move-result p1

    return p1
.end method

.method public onHoldCanceled()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenGesture"

    const-string v1, "[JavaGesture] onHoldCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onHoldCanceled(J)V

    return-void
.end method

.method public onHoldEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] onHoldEvent x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onHoldEvent(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoldLongPress(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onHoldLongPress(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onLongPress(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)V

    return-void
.end method

.method public onMultipleTap(Landroid/view/MotionEvent;I)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaGesture] onMultipleTap count="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SpenGesture"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v1, v2, v0, p2}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onMultipleTap(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;I)V

    return-void
.end method

.method public onScale(FFF)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onScale(JFFF)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "SpenGesture"

    const-string v1, "[JavaGesture] onScaleBegin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onScaleBegin(J)Z

    move-result v0

    return v0
.end method

.method public onScaleConfirmed()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenGesture"

    const-string v1, "[JavaGesture] onScaleConfirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onScaleConfirmed(J)V

    return-void
.end method

.method public onScaleEnd()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenGesture"

    const-string v1, "[JavaGesture] onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onScaleEnd(J)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v4, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    new-instance v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v5, p2}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onScroll(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;FF)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onSingleTapConfirmed(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mNativeGestureRefiner:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->Native_onSingleTapUp(JLcom/samsung/android/sdk/pen/view/SpenMotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->setDoubleTapEnabled(Z)V

    return-void
.end method

.method public setFlingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->setFlingEnabled(Z)V

    return-void
.end method

.method public setHoldLongPressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->setHoldLongPressEnabled(Z)V

    return-void
.end method

.method public setHoldMotionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->setHoldMotionEnabled(Z)V

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->setLongPressEnabled(Z)V

    return-void
.end method

.method public setMultipleTapEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->setMultipleTapEnabled(Z)V

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->setScaleEnabled(Z)V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->mGestureDetector:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureDetector;->setScrollEnabled(Z)V

    return-void
.end method
