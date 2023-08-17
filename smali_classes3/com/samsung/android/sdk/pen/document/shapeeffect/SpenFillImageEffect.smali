.class public Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;
.super Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;
.source "SourceFile"


# static fields
.field public static final FILL_TYPE_STRETCH:I = 0x0

.field public static final FILL_TYPE_TILING:I = 0x1


# instance fields
.field private mFillType:I

.field private mImage:Landroid/graphics/Bitmap;

.field private mIsRotatable:Z

.field private mStretchOffset:Landroid/graphics/RectF;

.field private mTilingOffset:Landroid/graphics/PointF;

.field private mTilingScaleX:F

.field private mTilingScaleY:F

.field private mTransparency:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mFillType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mImage:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mStretchOffset:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTilingOffset:Landroid/graphics/PointF;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTilingScaleX:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTilingScaleY:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTransparency:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mIsRotatable:Z

    return-void
.end method


# virtual methods
.method public getFillType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mFillType:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStretchOffset()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mStretchOffset:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getTilingOffset()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTilingOffset:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getTilingScaleX()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTilingScaleX:F

    return v0
.end method

.method public getTilingScaleY()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTilingScaleY:F

    return v0
.end method

.method public getTransparency()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTransparency:F

    return v0
.end method

.method public isRotatable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mIsRotatable:Z

    return v0
.end method

.method public setFillType(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mFillType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Type is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRotatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mIsRotatable:Z

    return-void
.end method

.method public setStretchOffset(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mStretchOffset:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setTilingOffset(Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTilingOffset:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public setTilingScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTilingScaleX:F

    return-void
.end method

.method public setTilingScaleY(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTilingScaleY:F

    return-void
.end method

.method public setTransparency(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;->mTransparency:F

    return-void
.end method
