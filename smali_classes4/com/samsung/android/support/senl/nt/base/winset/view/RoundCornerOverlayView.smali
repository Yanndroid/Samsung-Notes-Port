.class public Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final mCorner:I

.field public final mOverlayColor:I

.field public mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/R$styleable;->RoundCornerOverlayAttribute:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->RoundCornerOverlayAttribute_corner:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mCorner:I

    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->RoundCornerOverlayAttribute_overlayColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$color;->round_corner_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mOverlayColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mCorner:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->setRoundedCorner(I)V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v2}, Landroidx/appcompat/util/SeslRoundedCorner;->getRoundedCorners()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/util/SeslRoundedCorner;->getRoundedCorners()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public setRoundedCorner(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v0}, Landroidx/appcompat/util/SeslRoundedCorner;->getRoundedCorners()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/RoundCornerOverlayView;->mOverlayColor:I

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
