.class public interface abstract Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;
    }
.end annotation


# static fields
.field public static final CANCEL_STATE_INSERT:I = 0x0

.field public static final CANCEL_STATE_RUN:I = 0x1

.field public static final TYPE_CONTAINER:I = 0x3

.field public static final TYPE_IMAGE:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_STROKE:I = 0x2


# virtual methods
.method public abstract getType()I
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract setListener(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenObjectRuntimeInterface$UpdateListener;)Z
.end method

.method public abstract setRect(Landroid/graphics/RectF;)V
.end method

.method public abstract start(Ljava/lang/Object;Landroid/graphics/RectF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/view/ViewGroup;)V
.end method

.method public abstract stop(Z)V
.end method
