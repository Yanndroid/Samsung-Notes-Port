.class public Lcom/samsung/android/sdk/pen/engine/SpenGestureController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SPenGestureController"


# instance fields
.field private mListener:Lcom/samsung/android/sdk/pen/engine/SpenIGestureController$Listener;

.field private mNativeGestureController:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenIGestureController$Listener;

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-string v0, "SPenGestureController"

    const-string v1, "[JavaGesture] SpenGestureController construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_init(JLcom/samsung/android/sdk/pen/engine/SpenGestureController;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nativeGestureController is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native Native_init(JLcom/samsung/android/sdk/pen/engine/SpenGestureController;)V
.end method

.method private static native Native_isDoubleTapEnabled(J)Z
.end method

.method private static native Native_isDoubleTapZoomEnabled(J)Z
.end method

.method private static native Native_isDoubleTapZoomRunning(J)Z
.end method

.method private static native Native_isFlingEnabled(J)Z
.end method

.method private static native Native_isFlingScrollEnabled(J)Z
.end method

.method private static native Native_isFlingScrollRunning(J)Z
.end method

.method private static native Native_isGestureLocked(J)Z
.end method

.method private static native Native_isHoldLongPressEnabled(J)Z
.end method

.method private static native Native_isHoldMotionEnabled(J)Z
.end method

.method private static native Native_isHoverScrollEnabled(J)Z
.end method

.method private static native Native_isHoverScrollRunning(J)Z
.end method

.method private static native Native_isLongPressEnabled(J)Z
.end method

.method private static native Native_isMagneticZoomEnabled(J)Z
.end method

.method private static native Native_isMultipleTapEnabled(J)Z
.end method

.method private static native Native_isOneFingerScrollAndScaleLocked(J)Z
.end method

.method private static native Native_isScaleEnabled(J)Z
.end method

.method private static native Native_isScrollEnabled(J)Z
.end method

.method private static native Native_setDoubleTapEnabled(JZ)V
.end method

.method private static native Native_setDoubleTapZoomEnabled(JZ)V
.end method

.method private static native Native_setFlingEnabled(JZ)V
.end method

.method private static native Native_setFlingScrollEnabled(JZ)V
.end method

.method private static native Native_setGestureLocked(JZ)V
.end method

.method private static native Native_setHoldLongPressEnabled(JZ)V
.end method

.method private static native Native_setHoldMotionEnabled(JZ)V
.end method

.method private static native Native_setHoverScrollEnabled(JZ)V
.end method

.method private static native Native_setHoverScrollOption(JJFI)V
.end method

.method private static native Native_setLongPressEnabled(JZ)V
.end method

.method private static native Native_setMagneticZoomEnabled(JZ)V
.end method

.method private static native Native_setMultipleTapEnabled(JZ)V
.end method

.method private static native Native_setOneFingerScrollAndScaleLocked(JZ)V
.end method

.method private static native Native_setScaleEnabled(JZ)V
.end method

.method private static native Native_setScrollEnabled(JZ)V
.end method

.method private onOneFingerScrollAndScaleLockedChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenIGestureController$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenIGestureController$Listener;->onOneFingerScrollAndScaleLockedChanged(Z)V

    :cond_0
    return-void
.end method

.method private onZoomBlockedByOneFingerScrollAndScaleLock()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenIGestureController$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenIGestureController$Listener;->onZoomBlockedByOneFingerScrollAndScaleLock()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isDoubleTapEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isDoubleTapZoomEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isDoubleTapZoomEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isDoubleTapZoomRunning()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isDoubleTapZoomRunning(J)Z

    move-result v0

    return v0
.end method

.method public isFlingEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isFlingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isFlingScrollEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isFlingScrollEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isFlingScrollRunning()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isFlingScrollRunning(J)Z

    move-result v0

    return v0
.end method

.method public isGestureLocked()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isGestureLocked(J)Z

    move-result v0

    return v0
.end method

.method public isHoldLongPressEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isHoldLongPressEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isHoldMotionEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isHoldMotionEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isHoverScrollEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isHoverScrollEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isHoverScrollRunning()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isHoverScrollRunning(J)Z

    move-result v0

    return v0
.end method

.method public isLongPressEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isLongPressEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isMagneticZoomEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isMagneticZoomEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isMultipleTapEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isMultipleTapEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isOnFingerScrollAndScaleLocked()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isOneFingerScrollAndScaleLocked(J)Z

    move-result v0

    return v0
.end method

.method public isScaleEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isScaleEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_isScrollEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setDoubleTapEnabled(JZ)V

    return-void
.end method

.method public setDoubleTapZoomEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setDoubleTapZoomEnabled(JZ)V

    return-void
.end method

.method public setFlingEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setFlingEnabled(JZ)V

    return-void
.end method

.method public setFlingScrollEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setFlingScrollEnabled(JZ)V

    return-void
.end method

.method public setGestureLocked(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setGestureLocked(JZ)V

    return-void
.end method

.method public setHoldLongPressEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setHoldLongPressEnabled(JZ)V

    return-void
.end method

.method public setHoldMotionEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setHoldMotionEnabled(JZ)V

    return-void
.end method

.method public setHoverScrollEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setHoverScrollEnabled(JZ)V

    return-void
.end method

.method public setHoverScrollOption(JFI)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setHoverScrollOption(JJFI)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/engine/SpenIGestureController$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenIGestureController$Listener;

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setLongPressEnabled(JZ)V

    return-void
.end method

.method public setMagneticZoomEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setMagneticZoomEnabled(JZ)V

    return-void
.end method

.method public setMultipleTapEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setMultipleTapEnabled(JZ)V

    return-void
.end method

.method public setOneFingerScrollAndScaleLocked(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setOneFingerScrollAndScaleLocked(JZ)V

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setScaleEnabled(JZ)V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;->Native_setScrollEnabled(JZ)V

    return-void
.end method
