.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInsideBorderOffset:I

.field private mInsideBorderPaint:Landroid/graphics/Paint;

.field private mTrimAreaPaint:Landroid/graphics/Paint;

.field private mTrimAreaPaintInMoving:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;->getBorderThickness()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->mInsideBorderOffset:I

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;->getInsideBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->mInsideBorderPaint:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;->getTrimAreaPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->mTrimAreaPaint:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;->getTrimAreaPaintInMoving()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->mTrimAreaPaintInMoving:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public drawBorders(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->mInsideBorderOffset:I

    int-to-float v2, v1

    add-float v4, v0, v2

    iget v0, p2, Landroid/graphics/RectF;->top:F

    int-to-float v2, v1

    add-float v5, v0, v2

    iget v0, p2, Landroid/graphics/RectF;->right:F

    int-to-float v2, v1

    sub-float v6, v0, v2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v1

    sub-float v7, p2, v0

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->mInsideBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTrimArea(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Z)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->mTrimAreaPaintInMoving:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/CropRectPainter;->mTrimAreaPaint:Landroid/graphics/Paint;

    :goto_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
