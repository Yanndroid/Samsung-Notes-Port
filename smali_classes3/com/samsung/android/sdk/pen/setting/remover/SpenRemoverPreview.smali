.class public Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mFillColor:I

.field private mSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mDensity:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mSize:F

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmapPaint:Landroid/graphics/Paint;

    sget v0, Lcom/samsung/android/spen/R$color;->setting_bg_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mFillColor:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mDensity:F

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mSize:F

    mul-float v4, v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmap:Landroid/graphics/Bitmap;

    const/high16 v3, 0x3f800000    # 1.0f

    const v5, -0x686869

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mFillColor:I

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/engine/util/SpenEngineUtil;->drawRemoverPreview(Landroid/graphics/Bitmap;FFFII)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmapPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    return-void
.end method

.method public setRemoverSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->mSize:F

    return-void
.end method
