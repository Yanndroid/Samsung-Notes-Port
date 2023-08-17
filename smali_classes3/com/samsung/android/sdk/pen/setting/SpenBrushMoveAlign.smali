.class abstract Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ANGLE_0:I

.field public ANGLE_180:I

.field public ANGLE_270:I

.field public ANGLE_90:I

.field public ANGLE_INVALID:I

.field private mDeviceAngle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_INVALID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_0:I

    const/16 v1, 0x5a

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    const/16 v1, 0xb4

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    const/16 v1, 0x10e

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_270:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->mDeviceAngle:I

    return-void
.end method


# virtual methods
.method public abstract getColorFlip(I)I
.end method

.method public getDeviceAngle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->mDeviceAngle:I

    return v0
.end method

.method public abstract getMoveOrientation()I
.end method

.method public abstract getNextViewAngle(ZII)I
.end method

.method public abstract getPenAngle(I)I
.end method

.method public abstract getSelectorAngle(I)I
.end method

.method public getViewAngleLeftToTop(Z)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    new-array v3, v2, [I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    aput v4, v3, v1

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    aput v4, v3, v0

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->hasSameDeviceAngle([I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    new-array p1, v2, [I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    aput v2, p1, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_270:I

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->hasSameDeviceAngle([I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    neg-int p1, p1

    :goto_0
    return p1
.end method

.method public getViewAngleRightToTop(Z)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    new-array v3, v2, [I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    aput v4, v3, v1

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_270:I

    aput v4, v3, v0

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->hasSameDeviceAngle([I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    new-array p1, v2, [I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    aput v2, p1, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->hasSameDeviceAngle([I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    neg-int p1, p1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    :goto_0
    return p1
.end method

.method public getViewAngleTopToLeft(Z)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    new-array v3, v2, [I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    aput v4, v3, v1

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    aput v4, v3, v0

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->hasSameDeviceAngle([I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    new-array p1, v2, [I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    aput v2, p1, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_270:I

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->hasSameDeviceAngle([I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    neg-int p1, p1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    :goto_0
    return p1
.end method

.method public getViewAngleTopToRight(Z)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    new-array v3, v2, [I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    aput v4, v3, v1

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_270:I

    aput v4, v3, v0

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->hasSameDeviceAngle([I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    new-array p1, v2, [I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    aput v2, p1, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_180:I

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->hasSameDeviceAngle([I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->ANGLE_90:I

    neg-int p1, p1

    :goto_0
    return p1
.end method

.method public varargs hasSameDeviceAngle([I)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->mDeviceAngle:I

    if-ne v4, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public abstract moveView(Landroid/view/View;Landroid/util/Size;I)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public setDeviceAngle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;->mDeviceAngle:I

    return-void
.end method
