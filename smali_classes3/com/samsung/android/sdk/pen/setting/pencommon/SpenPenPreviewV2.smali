.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ENLARGED_VALUE:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "SpenPenPreviewV2"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mEnlargedValue:F

.field private mIsFixedWidth:Z

.field private mIsRTL:Z

.field private mNeedToMakeBitmap:Z

.field private mOverlapBgResId:I

.field private mParticleSize:F

.field private mPenColor:I

.field private mPenName:Ljava/lang/String;

.field private mSizeLevel:I

.field private mUseResource:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->construct()V

    return-void
.end method

.method private construct()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenColor:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmapPaint:Landroid/graphics/Paint;

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mOverlapBgResId:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mUseResource:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mParticleSize:F

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mIsFixedWidth:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mIsRTL:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mNeedToMakeBitmap:Z

    return-void
.end method

.method private getDrawBitmap()Landroid/graphics/Bitmap;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->needToMakeBitmap()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->initBitmap(II)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mOverlapBgResId:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mOverlapBgResId:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v2, v3, v4, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilImage;->getDrawable(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mUseResource:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mSizeLevel:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenColor:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mParticleSize:F

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mIsFixedWidth:Z

    iput-boolean v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mIsRTL:Z

    invoke-static {v2, v3, v0, v4, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->drawPenPreview(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;ZZ)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mEnlargedValue:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mEnlargedValue:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setNeedToMakeBitmap(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private initBitmap(II)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mEnlargedValue:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mEnlargedValue:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    mul-float/2addr v1, p2

    float-to-int p2, v1

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    :cond_3
    :goto_0
    return v0
.end method

.method private needToMakeBitmap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mNeedToMakeBitmap:Z

    return v0
.end method

.method private setAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/spen/R$styleable;->SpenPenPreviewV2:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenPenPreviewV2_enlargedValue:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mEnlargedValue:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mEnlargedValue:F

    :goto_0
    return-void
.end method

.method private setNeedToMakeBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mNeedToMakeBitmap:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Unknown PenName"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenPreviewV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mNeedToMakeBitmap:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenName:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setNeedToMakeBitmap(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFixedWidth(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mIsFixedWidth:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mIsFixedWidth:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setNeedToMakeBitmap(Z)V

    return-void
.end method

.method public setInfo(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mSizeLevel:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mSizeLevel:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setNeedToMakeBitmap(Z)V

    return-void
.end method

.method public setOverlapBgResource(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mOverlapBgResId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mOverlapBgResId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setNeedToMakeBitmap(Z)V

    return-void
.end method

.method public setParticleSize(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mParticleSize:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mParticleSize:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setNeedToMakeBitmap(Z)V

    return-void
.end method

.method public setPenColor(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenColor:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mPenColor:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setNeedToMakeBitmap(Z)V

    return-void
.end method

.method public setPenSizeLevel(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mSizeLevel:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mSizeLevel:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setNeedToMakeBitmap(Z)V

    return-void
.end method

.method public setUserResource(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->setOverlapBgResource(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreviewV2;->mUseResource:Z

    return-void
.end method
