.class public interface abstract Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;,
        Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;,
        Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$ModeChangeListener;
    }
.end annotation


# static fields
.field public static final DOCKER_ID_SIDE_BOTTOM:I = 0x1

.field public static final DOCKER_ID_SIDE_END:I = 0x3

.field public static final DOCKER_ID_SIDE_NONE:I = -0x1

.field public static final DOCKER_ID_SIDE_START:I = 0x2

.field public static final DOCKER_ID_SIDE_TOP:I = 0x0

.field public static final DROP_TYPE_X:I = 0x1

.field public static final DROP_TYPE_Y:I = 0x2

.field public static final DROP_TYPE_Y_FLING:I = 0x3

.field public static final STATE_CHANGING:I = 0x1

.field public static final STATE_DOCKED:I = 0x2

.field public static final STATE_UNDOCKED:I


# virtual methods
.method public abstract addDock(ILcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3L
        .end annotation
    .end param
.end method

.method public abstract addModeChangeListener(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$ModeChangeListener;)V
.end method

.method public abstract animateToFinalPosition(Landroid/graphics/Point;)V
.end method

.method public abstract blockadeDock(IZ)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3L
        .end annotation
    .end param
.end method

.method public abstract cancelTranslationAnimation()V
.end method

.method public abstract captureOriginPosition()V
.end method

.method public abstract contains(Landroid/graphics/PointF;)Z
.end method

.method public abstract dropAction()V
.end method

.method public abstract getEnabledDocking()Z
.end method

.method public abstract getHitRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getOriginRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getState()I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x2L
    .end annotation
.end method

.method public abstract isAcceptableOverlap()Z
.end method

.method public abstract isFreezeState()Z
.end method

.method public abstract isPressed()Z
.end method

.method public abstract isStateDocking()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onFieldSizeChanged()V
.end method

.method public abstract onFling(FFLjava/lang/Runnable;)Z
.end method

.method public abstract onLongPress()V
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract startHideAnimation()V
.end method

.method public abstract startShowAnimation()V
.end method
