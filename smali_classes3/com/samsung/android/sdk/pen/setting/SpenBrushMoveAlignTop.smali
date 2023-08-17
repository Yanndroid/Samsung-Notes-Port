.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignTop;
.super Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushMoveAlignTop"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorFlip(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getDeviceAngle()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMoveOrientation()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNextViewAngle(ZII)I
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_INVALID:I

    return p1

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_0:I

    return p1

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getViewAngleTopToLeft(Z)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getViewAngleTopToRight(Z)I

    move-result p1

    :goto_0
    return p1

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getViewAngleTopToRight(Z)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getViewAngleTopToLeft(Z)I

    move-result p1

    :goto_1
    return p1
.end method

.method public getPenAngle(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->getDeviceAngle()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_0:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    :cond_0
    return v0
.end method

.method public getSelectorAngle(I)I
    .locals 0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_0:I

    return p1
.end method

.method public moveView(Landroid/view/View;Landroid/util/Size;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_0:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
