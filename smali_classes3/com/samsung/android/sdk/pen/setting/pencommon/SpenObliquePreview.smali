.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;
.source "SourceFile"


# static fields
.field public static final OBLIQUE_PREVIEW_POINT_COUNT:I = 0x6


# instance fields
.field private mPointY:F

.field private mXPoints:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->mXPoints:[F

    return-void
.end method


# virtual methods
.method public calculatePoints(Landroid/view/View;F)I
    .locals 2

    const/4 v0, 0x6

    const v1, 0x3ccccccd    # 0.025f

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->checkDeltaValue(Landroid/view/View;IF)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->decidePosition(Landroid/view/View;F)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->mXPoints:[F

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->close()V

    return-void
.end method

.method public decidePosition(Landroid/view/View;F)I
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getSizeLevel()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, p2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->getPointCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->mPointY:F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->mXPoints:[F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr p2, v6

    add-float/2addr v7, p2

    aput v7, v5, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_pen_size_preview_oblique_min_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v6, p1

    sub-float/2addr v3, v6

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->mXPoints:[F

    aget v0, p2, v1

    add-float/2addr v0, p1

    aput v0, p2, v1

    :cond_1
    add-int/lit8 p1, v4, -0x1

    int-to-float p1, p1

    div-float/2addr v3, p1

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->mXPoints:[F

    add-int/lit8 p2, v2, -0x1

    aget p2, p1, p2

    add-float/2addr p2, v3

    aput p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPointCount(I)V

    return v4
.end method

.method public getPoint(I)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->mXPoints:[F

    aget p1, v1, p1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenObliquePreview;->mPointY:F

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getPressure(I)F
    .locals 0

    const p1, 0x3f333333    # 0.7f

    return p1
.end method
