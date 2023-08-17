.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignEnd;
.super Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorFlip(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getDeviceAngle()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getDeviceAngle()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_270:I

    if-ne v0, v1, :cond_1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public getMoveOrientation()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNextViewAngle(ZII)I
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_INVALID:I

    return p1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getViewAngleRightToTop(Z)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getViewAngleLeftToTop(Z)I

    move-result p1

    :goto_0
    return p1

    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_0:I

    return p1
.end method

.method public getPenAngle(I)I
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_270:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getDeviceAngle()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_0:I

    :goto_1
    return p1
.end method

.method public getSelectorAngle(I)I
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_270:I

    :goto_0
    return p1
.end method

.method public moveView(Landroid/view/View;Landroid/util/Size;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    sub-float v1, v0, p2

    if-nez p3, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    if-nez p3, :cond_1

    neg-int p2, p2

    :cond_1
    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    mul-float/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
