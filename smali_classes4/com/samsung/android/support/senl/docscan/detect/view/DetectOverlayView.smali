.class public Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mIsClear:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mNeedSkip:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPrimaryColor:I

.field private mTextureHeight:I

.field private mTextureWidth:I

.field private mVertexArray:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/docscan/R$dimen;->detect_area_line_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$color;->detect_highlight_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mPrimaryColor:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public clearCanvas()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mNeedSkip:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mVertexArray:[F

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mVertexArray:[F

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mIsClear:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mNeedSkip:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getResultPoint(I)[Landroid/graphics/PointF;
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mVertexArray:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    new-array p1, v2, [Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, p1, v1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, p1, v4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, p1, v3

    const/4 v0, 0x3

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, p1, v0

    return-object p1

    :cond_0
    new-array v0, v2, [Landroid/graphics/PointF;

    :goto_0
    if-ge v1, v2, :cond_4

    if-nez p1, :cond_1

    new-instance v6, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mVertexArray:[F

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, 0x1

    aget v9, v7, v9

    sub-float v9, v5, v9

    aget v7, v7, v8

    invoke-direct {v6, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v0, v1

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mVertexArray:[F

    mul-int/lit8 v8, v1, 0x2

    if-ne p1, v4, :cond_2

    aget v9, v7, v8

    add-int/2addr v8, v4

    aget v7, v7, v8

    invoke-direct {v6, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v0, v1

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    add-int/lit8 v9, v8, 0x1

    aget v9, v7, v9

    aget v7, v7, v8

    sub-float v7, v5, v7

    invoke-direct {v6, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v0, v1

    goto :goto_1

    :cond_3
    aget v9, v7, v8

    sub-float v9, v5, v9

    add-int/2addr v8, v4

    aget v7, v7, v8

    sub-float v7, v5, v7

    invoke-direct {v6, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mVertexArray:[F

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mTextureWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mTextureHeight:I

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mIsClear:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mIsClear:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mPrimaryColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mVertexArray:[F

    array-length v3, v2

    if-ge v0, v3, :cond_3

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    aget v4, v2, v0

    const/4 v5, 0x1

    aget v5, v2, v5

    aget v2, v2, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    aget v4, v2, v0

    add-int/lit8 v5, v0, 0x3

    aget v5, v2, v5

    add-int/lit8 v6, v0, 0x2

    aget v2, v2, v6

    :goto_2
    iget v6, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mTextureWidth:I

    int-to-float v7, v6

    mul-float v9, v3, v7

    int-to-float v3, v6

    mul-float v11, v5, v3

    iget v3, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mTextureHeight:I

    int-to-float v5, v3

    mul-float v10, v4, v5

    int-to-float v3, v3

    mul-float v12, v2, v3

    iget-object v13, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method public setResult([F)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mNeedSkip:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mVertexArray:[F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;ILandroid/graphics/Point;Landroid/util/Size;)V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->setResult([F)V

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mTextureWidth:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mTextureHeight:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eq v4, p2, :cond_1

    const/4 v4, 0x3

    if-ne v4, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mTextureWidth:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, v2, v3, p2, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p2, p4

    div-float/2addr p2, v0

    invoke-virtual {p1, v3, v2, v1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->isTranslucentNavigationBar(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p4

    add-int v0, p2, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransform# naviHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", statusHeight : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", systemUIHeight : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "DetectOverlayView"

    invoke-static {p4, p2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isNavigationLocatedBottom(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget p4, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p4, p2

    iput p4, p3, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_3
    iget p4, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p4, p2

    iput p4, p3, Landroid/graphics/Point;->x:I

    :goto_2
    iget p2, p3, Landroid/graphics/Point;->x:I

    iget p4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mTextureWidth:I

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p4, p0, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->mTextureHeight:I

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method
