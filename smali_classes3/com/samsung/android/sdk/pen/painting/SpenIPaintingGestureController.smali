.class public interface abstract Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController$PaintingListener;
    }
.end annotation


# virtual methods
.method public abstract getCanvasRotationAngle()F
.end method

.method public abstract getCanvasRotationPivot()Landroid/graphics/PointF;
.end method

.method public abstract getRotationSnapAngle()F
.end method

.method public abstract getRotationSnapBound()F
.end method

.method public abstract isCanvasRotationEnabled()Z
.end method

.method public abstract isRotationSnapEnabled()Z
.end method

.method public abstract setCanvasRotation(FFF)V
.end method

.method public abstract setCanvasRotationEnabled(Z)V
.end method

.method public abstract setPaintingListener(Lcom/samsung/android/sdk/pen/painting/SpenIPaintingGestureController$PaintingListener;)V
.end method

.method public abstract setRotationSnapAngle(F)V
.end method

.method public abstract setRotationSnapBound(F)V
.end method

.method public abstract setRotationSnapEnabled(Z)V
.end method
