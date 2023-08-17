.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/drawing/SpenUIColorStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenFixedColorStrategy"


# instance fields
.field private mAlphaColor:I

.field private mAlphaSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

.field private mColor:I

.field private mDensitySeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

.field private mSizeSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mSizeSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mDensitySeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    return-void
.end method

.method private alphaToProgress(I)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method


# virtual methods
.method public setFixedColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mColor:I

    return-void
.end method

.method public setPenInfo(III)V
    .locals 3

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaColor:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mSizeSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mSizeSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mSizeSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mColor:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setColor(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaColor:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->alphaToProgress(I)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaColor:I

    or-int/2addr v0, p2

    aput v0, p1, v1

    const/4 v0, 0x1

    and-int/2addr p2, v2

    aput p2, p1, v0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setProgressBackgroundColors([I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mDensitySeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mDensitySeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {p1, p3, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mDensitySeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mColor:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setColor(I)V

    :cond_2
    return-void
.end method

.method public updateAlpha(I)V
    .locals 3

    shl-int/lit8 v0, p1, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaColor:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->alphaToProgress(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenFixedColorStrategy;->mAlphaSeekBar:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    :cond_0
    return-void
.end method
