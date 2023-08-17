.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenBeautify2Preview;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public decidePosition(Landroid/view/View;F)I
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getSizeLevel()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPointCount()I

    move-result v2

    int-to-float p2, p2

    add-int/lit8 v3, v2, 0x1

    int-to-float v3, v3

    div-float/2addr p2, v3

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPoint(FFF)V

    return v2
.end method
