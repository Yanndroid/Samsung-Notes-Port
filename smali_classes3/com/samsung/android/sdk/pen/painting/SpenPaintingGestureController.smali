.class public Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;
.super Lcom/samsung/android/sdk/pen/engine/SpenGestureController;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PaintingGesture"


# instance fields
.field private mListener:Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController$PaintingListener;

.field private mNativeGestureController:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenGestureController;-><init>(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mListener:Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController$PaintingListener;

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-string v0, "PaintingGesture"

    const-string v1, "[JavaGesture] SpenPaintingGestureController construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_init(JLcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nativePaintingGestureController is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native Native_getCanvasRotationAngle(J)F
.end method

.method private static native Native_getCanvasRotationPivot(J)Landroid/graphics/PointF;
.end method

.method private static native Native_getRotationSnapAngle(J)F
.end method

.method private static native Native_getRotationSnapBound(J)F
.end method

.method private static native Native_init(JLcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;)V
.end method

.method private static native Native_isCanvasRotationEnabled(J)Z
.end method

.method private static native Native_isRotationSnapEnabled(J)Z
.end method

.method private static native Native_setCanvasRotation(JFFF)V
.end method

.method private static native Native_setCanvasRotationEnabled(JZ)V
.end method

.method private static native Native_setRotationSnapAngle(JF)V
.end method

.method private static native Native_setRotationSnapBound(JF)V
.end method

.method private static native Native_setRotationSnapEnabled(JZ)V
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getCanvasRotationAngle()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_getCanvasRotationAngle(J)F

    move-result v0

    return v0
.end method

.method public getCanvasRotationPivot()Landroid/graphics/PointF;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_getCanvasRotationPivot(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getRotationSnapAngle()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_getRotationSnapAngle(J)F

    move-result v0

    return v0
.end method

.method public getRotationSnapBound()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_getRotationSnapBound(J)F

    move-result v0

    return v0
.end method

.method public isCanvasRotationEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_isCanvasRotationEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isRotationSnapEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_isRotationSnapEnabled(J)Z

    move-result v0

    return v0
.end method

.method public onCanvasRotated(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mListener:Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController$PaintingListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController$PaintingListener;->onCanvasRotated(F)V

    :cond_0
    return-void
.end method

.method public setCanvasRotation(FFF)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_setCanvasRotation(JFFF)V

    return-void
.end method

.method public setCanvasRotationEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_setCanvasRotationEnabled(JZ)V

    return-void
.end method

.method public setPaintingListener(Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController$PaintingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mListener:Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController$PaintingListener;

    return-void
.end method

.method public setRotationSnapAngle(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_setRotationSnapAngle(JF)V

    return-void
.end method

.method public setRotationSnapBound(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_setRotationSnapBound(JF)V

    return-void
.end method

.method public setRotationSnapEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->mNativeGestureController:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingGestureController;->Native_setRotationSnapEnabled(JZ)V

    return-void
.end method
