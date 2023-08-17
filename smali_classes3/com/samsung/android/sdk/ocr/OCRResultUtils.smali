.class public Lcom/samsung/android/sdk/ocr/OCRResultUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OCRResultUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Point;)D
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->lambda$getCenterPoint$0(Landroid/graphics/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Landroid/graphics/Point;)D
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->lambda$getCenterPoint$1(Landroid/graphics/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static cornerToRect([Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 7

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x3

    aget-object v4, p0, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget-object v1, p0, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget-object v5, p0, v4

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-object v4, p0, v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/4 v5, 0x2

    aget-object v6, p0, v5

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget-object v5, p0, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    aget-object p0, p0, v3

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v2, v1, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public static createInitialRect()[Landroid/graphics/Point;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const v2, 0x7fffffff

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Point;

    const/high16 v3, -0x80000000

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getCenterPoint([Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/ocr/a;->a:Lcom/samsung/android/sdk/ocr/a;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/ocr/b;->a:Lcom/samsung/android/sdk/ocr/b;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static getImageCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getROI(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, v0, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, v2, p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getROI(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->cornerToRect([Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->getROI(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getRotatedROI(Landroid/graphics/Bitmap;[Landroid/graphics/Point;FLandroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->cornerToRect([Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    neg-float v0, p2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/ocr/OCRResult;->getRotatedCorner([Landroid/graphics/Point;FLandroid/graphics/PointF;)[Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "OCRResultUtils"

    const-string p2, "Error on calculating deskewed points from rotated corners"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->cornerToRect([Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p2, v2, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    int-to-float p2, p2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget p0, p1, Landroid/graphics/Rect;->left:I

    iput p0, p3, Landroid/graphics/Point;->x:I

    iget p0, p1, Landroid/graphics/Rect;->top:I

    iput p0, p3, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public static intersectRect([Landroid/graphics/Point;[Landroid/graphics/Point;)V
    .locals 4

    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v0, p1, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v0, p1, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    const/4 v0, 0x2

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v0, p1, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    const/4 v0, 0x3

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    aget-object v1, p0, v0

    aget-object p0, p0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    aget-object p1, p1, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private static synthetic lambda$getCenterPoint$0(Landroid/graphics/Point;)D
    .locals 2

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-double v0, p0

    return-wide v0
.end method

.method private static synthetic lambda$getCenterPoint$1(Landroid/graphics/Point;)D
    .locals 2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-double v0, p0

    return-wide v0
.end method

.method public static rectToCorner(Landroid/graphics/Rect;)[Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x3

    aput-object v1, v0, p0

    return-object v0
.end method
