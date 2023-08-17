.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel$OpacityChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field private mDrawableSize:Landroid/util/Size;

.field private mFlingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

.field private mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

.field private mImageRect:Landroid/graphics/RectF;

.field private mIsStored:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mOpacity:I

.field private final mOpacityListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel$OpacityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPainter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;

.field private mPanningAction:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;

.field private mStoredDeltaScale:F

.field private mStoredOpacity:I

.field private mStoredTransXRatio:F

.field private mStoredTransYRatio:F

.field private mViewSize:Landroid/util/Size;

.field private mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TEAdjustModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mFlingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/ActionModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mPanningAction:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mOpacityListeners:Ljava/util/List;

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mDrawableSize:Landroid/util/Size;

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mOpacity:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredOpacity:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredDeltaScale:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredTransXRatio:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredTransYRatio:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mMatrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    return-void
.end method

.method private createResultBuilder()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getCenterX()F

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->setCenter(FF)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->setMatrix(Landroid/graphics/Matrix;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->setImageRect(Landroid/graphics/RectF;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->setCropRect(Landroid/graphics/RectF;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;

    move-result-object v0

    return-object v0
.end method

.method private getCenterX()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getCenterY()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getCroppedImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->createResultBuilder()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropResultBuilder;->build(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCroppedImage, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getDeltaScale()F
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->getCurrentScale()F

    move-result v1

    const/4 v2, 0x0

    aget v0, v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method private getInitialScale()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mDrawableSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mDrawableSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private initCropRect(II)V
    .locals 4

    int-to-float v0, p1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    int-to-float p2, v2

    cmpl-float v2, v0, p1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    move p1, v3

    move v0, p1

    :cond_0
    cmpl-float v2, v1, p2

    if-lez v2, :cond_1

    move p2, v3

    move v1, p2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private onMatrixChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->updateImageRect()V

    return-void
.end method

.method private postScale(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->onMatrixChanged()V

    return-void
.end method

.method private restoreEditState()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreEditState, mIsStored = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mIsStored:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mIsStored:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredDeltaScale:F

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->getMinScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->setCurrentScale(F)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredOpacity:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->setOpacity(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredTransXRatio:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredTransYRatio:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    iget v0, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->postTranslate(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mIsStored:Z

    :cond_0
    return-void
.end method

.method private translateImageToCropBoundaries()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->postTranslate(FF)V

    :cond_5
    return-void
.end method

.method private translateInitialImage()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mDrawableSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mDrawableSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->postTranslate(FF)V

    return-void
.end method

.method private updateImageRect()V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mDrawableSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mDrawableSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method


# virtual methods
.method public addOpacityListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel$OpacityChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mOpacityListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getCroppedImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->applyImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public calculateDeltaScale()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->getCurrentScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->getMinScale()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public calculateImageXTransRatio()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v1, v0

    return v1
.end method

.method public calculateImageYTransRatio()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v1, v0

    return v1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mOpacityListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mFlingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mPanningAction:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mPainter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->drawBorders(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mPainter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->drawTrimArea(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public getCropRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mCropRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFlingAction()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mFlingAction:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mOpacity:I

    return v0
.end method

.method public getPageHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->getPageHeight()I

    move-result v0

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->getPageWidth()I

    move-result v0

    return v0
.end method

.method public getPanningAction()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mPanningAction:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;

    return-object v0
.end method

.method public getZoomModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    return-object v0
.end method

.method public initResource(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mPainter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;

    return-void
.end method

.method public initialize(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->initCropRect(II)V

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->translateImageToCropBoundaries()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->translateInitialImage()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getInitialScale()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->setScales(F)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->restoreEditState()V

    return-void
.end method

.method public postTranslate(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->onMatrixChanged()V

    return-void
.end method

.method public scaleImage()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->scaleImage(FF)V

    return-void
.end method

.method public scaleImage(FF)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getDeltaScale()F

    move-result v0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->postScale(FFFF)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->translateImageToCropBoundaries()V

    return-void
.end method

.method public setDrawableSize(II)V
    .locals 1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mDrawableSize:Landroid/util/Size;

    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mOpacity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mOpacity:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mOpacityListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel$OpacityChangedListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel$OpacityChangedListener;->notifyOpacityChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public storeEditState()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->calculateDeltaScale()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mOpacity:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->calculateImageXTransRatio()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->calculateImageYTransRatio()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->storeEditState(FIFF)V

    return-void
.end method

.method public storeEditState(FIFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredDeltaScale:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredOpacity:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredTransXRatio:F

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredTransYRatio:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mIsStored:Z

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "storeEditState, deltaScale/opacity = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredDeltaScale:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mStoredOpacity:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateViewSize(II)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->mViewSize:Landroid/util/Size;

    const/4 p1, 0x1

    return p1
.end method
