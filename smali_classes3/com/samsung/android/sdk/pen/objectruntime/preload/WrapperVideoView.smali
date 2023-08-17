.class public Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;
.super Landroid/widget/VideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;

.field private mStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/VideoView;->onDraw(Landroid/graphics/Canvas;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;->mStart:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;->mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;->onStart()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;->mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;->mStart:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;->mStart:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;->mListener:Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView$WrapperVideoViewListener;

    return-void
.end method
