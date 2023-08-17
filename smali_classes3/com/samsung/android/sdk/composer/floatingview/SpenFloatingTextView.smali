.class public Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenFloatingTextView"


# instance fields
.field private mEnableLinkPreview:Z

.field private mNativeViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->mNativeViewId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->mEnableLinkPreview:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getNativeViewId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->mNativeViewId:I

    return v0
.end method

.method public isLinkPreviewEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->mEnableLinkPreview:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->isLinkPreviewEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public setLinkPreviewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->mEnableLinkPreview:Z

    return-void
.end method

.method public setNativeViewId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingTextView;->mNativeViewId:I

    return-void
.end method
