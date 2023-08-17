.class public Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartScanRectifyWrapper"

.field private static mIsInitialized:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertBitmapToRgb(Landroid/graphics/Bitmap;)[B
    .locals 10
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SmartScanRectifyWrapper"

    const-string v1, "convertBitmapToRgb# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v9, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 p0, v0, 0x3

    new-array p0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v1, 0x3

    aget v3, v9, v1

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v3, v2, 0x1

    aget v4, v9, v1

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v2, v2, 0x2

    aget v3, v9, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static convertRgbToPixel([B)[I
    .locals 6
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertRgbToPixel# pixelCnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartScanRectifyWrapper"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x3

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v4, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static deInitialize()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->mIsInitialized:Z

    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->deinitialize()Z

    return-void
.end method

.method public static execute(Lcom/samsung/android/support/senl/docscan/model/DocScanData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0    # Lcom/samsung/android/support/senl/docscan/model/DocScanData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SmartScanRectifyWrapper"

    const-string v1, "execute# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/model/DocScanData;->getVertexList()[Landroid/graphics/PointF;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v3, p0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "execute# handledVertexes are all the same"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->deInitialize()V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_4

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->executeQOSLess(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->executeSOSHigher(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static executeQOSLess(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    new-instance v7, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;

    invoke-direct {v7}, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;-><init>()V

    new-instance v1, Lcamera/samsung/smartscan/SmartScanRectify$DetectResult;

    invoke-direct {v1}, Lcamera/samsung/smartscan/SmartScanRectify$DetectResult;-><init>()V

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    iput-object v2, v1, Lcamera/samsung/smartscan/SmartScanRectify$DetectResult;->coord:[F

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeQOSLess# imageWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " imageHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "SmartScanRectifyWrapper"

    invoke-static {v8, v4}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    if-lez v2, :cond_3

    if-gtz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v10, v0, v5

    iget-object v11, v1, Lcamera/samsung/smartscan/SmartScanRectify$DetectResult;->coord:[F

    add-int/lit8 v12, v6, 0x1

    add-int/lit8 v13, v2, -0x1

    int-to-float v13, v13

    int-to-float v14, v2

    div-float/2addr v13, v14

    iget v14, v10, Landroid/graphics/PointF;->x:F

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, v11, v6

    iget-object v6, v1, Lcamera/samsung/smartscan/SmartScanRectify$DetectResult;->coord:[F

    add-int/lit8 v11, v12, 0x1

    add-int/lit8 v13, v3, -0x1

    int-to-float v13, v13

    int-to-float v14, v3

    div-float/2addr v13, v14

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v15, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v6, v12

    add-int/lit8 v5, v5, 0x1

    move v6, v11

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->convertBitmapToRgb(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const/4 v10, -0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Lcamera/samsung/smartscan/SmartScanRectify$DetectResult;->coord:[F

    array-length v6, v5

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lcamera/samsung/smartscan/SmartScanRectify;->rectify([BIII[FLcamera/samsung/smartscan/SmartScanRectify$SSImage;I)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeQOSLess# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v10, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeQOSLess# error occurred during rectify, return. result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->deInitialize()V

    return-object v9

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->deInitialize()V

    iget-object v0, v7, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;->ImageData:[B

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->convertRgbToPixel([B)[I

    move-result-object v0

    iget v1, v7, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;->width:I

    iget v2, v7, Lcamera/samsung/smartscan/SmartScanRectify$SSImage;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_3
    const-string v0, "executeQOSLess# invalid width and height for rectify, return."

    goto :goto_2
.end method

.method private static executeSOSHigher(Landroid/graphics/Bitmap;[Landroid/graphics/PointF;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    new-instance v7, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;

    invoke-direct {v7}, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;-><init>()V

    new-instance v1, Lcom/samsung/android/smartscan/SmartScanRectify$DetectResult;

    invoke-direct {v1}, Lcom/samsung/android/smartscan/SmartScanRectify$DetectResult;-><init>()V

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    iput-object v2, v1, Lcom/samsung/android/smartscan/SmartScanRectify$DetectResult;->coord:[F

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeSOSHigher# imageWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " imageHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "SmartScanRectifyWrapper"

    invoke-static {v8, v4}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    if-lez v2, :cond_3

    if-gtz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v10, v0, v5

    iget-object v11, v1, Lcom/samsung/android/smartscan/SmartScanRectify$DetectResult;->coord:[F

    add-int/lit8 v12, v6, 0x1

    add-int/lit8 v13, v2, -0x1

    int-to-float v13, v13

    int-to-float v14, v2

    div-float/2addr v13, v14

    iget v14, v10, Landroid/graphics/PointF;->x:F

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, v11, v6

    iget-object v6, v1, Lcom/samsung/android/smartscan/SmartScanRectify$DetectResult;->coord:[F

    add-int/lit8 v11, v12, 0x1

    add-int/lit8 v13, v3, -0x1

    int-to-float v13, v13

    int-to-float v14, v3

    div-float/2addr v13, v14

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v15, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v6, v12

    add-int/lit8 v5, v5, 0x1

    move v6, v11

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->convertBitmapToRgb(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const/4 v10, -0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/smartscan/SmartScanRectify$DetectResult;->coord:[F

    array-length v6, v5

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/smartscan/SmartScanRectify;->execute([BIII[FLcom/samsung/android/smartscan/SmartScanRectify$SSImage;I)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeSOSHigher# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v10, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeSOSHigher# error occurred during rectify, return. result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->deInitialize()V

    return-object v9

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->deInitialize()V

    iget-object v0, v7, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;->ImageData:[B

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->convertRgbToPixel([B)[I

    move-result-object v0

    iget v1, v7, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;->width:I

    iget v2, v7, Lcom/samsung/android/smartscan/SmartScanRectify$SSImage;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_3
    const-string v0, "executeSOSHigher# invalid width and height for rectify, return."

    goto :goto_2
.end method

.method public static initialize()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->mIsInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/SmartScanRectifyWrapper;->mIsInitialized:Z

    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->initialize()Z

    return-void
.end method
