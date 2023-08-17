.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mCropRect:Landroid/graphics/RectF;

.field private mDrawableH:I

.field private mDrawableW:I

.field private mImageRect:Landroid/graphics/RectF;

.field private mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->getResultBitmapSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getDeltaScale()F
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private getResultBitmapSize()Landroid/util/Size;
    .locals 4

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mDrawableW:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mDrawableH:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private postScale()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->getDeltaScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCenterX:F

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCenterY:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCenterX:F

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCenterY:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method private postTranslate()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mImageRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mImageRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCropRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public build(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mDrawableW:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mDrawableH:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->postScale()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->postTranslate()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public setCenter(FF)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCenterX:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCenterY:F

    return-object p0
.end method

.method public setCropRect(Landroid/graphics/RectF;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mCropRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setImageRect(Landroid/graphics/RectF;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mImageRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method
