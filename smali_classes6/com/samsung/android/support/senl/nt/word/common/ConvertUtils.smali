.class public Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToInputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method public static convertRectContinuousPage(IIIIILandroid/graphics/RectF;Z)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v1, p5, Landroid/graphics/RectF;->top:F

    int-to-float p0, p0

    sub-float/2addr v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p5, Landroid/graphics/RectF;->bottom:F

    iget p5, p5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p5

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    if-eqz p6, :cond_0

    if-gt p1, p2, :cond_1

    :cond_0
    add-int/lit8 p2, p2, -0x24

    int-to-float p5, p2

    const v3, 0x3fb50750

    div-float/2addr p5, v3

    int-to-float p1, p1

    div-float p1, p5, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, p1

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int p1, p5

    :cond_1
    mul-int p5, p4, p1

    div-int/2addr p5, p2

    if-le p5, p3, :cond_2

    move p4, p1

    goto :goto_0

    :cond_2
    move p3, p4

    move p4, p2

    :goto_0
    int-to-float p3, p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    mul-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iget p4, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr p4, p3

    iput p4, v0, Landroid/graphics/RectF;->left:F

    iget p4, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr p4, p3

    iput p4, v0, Landroid/graphics/RectF;->right:F

    if-eqz p6, :cond_3

    if-gt p1, p2, :cond_4

    :cond_3
    const/high16 p1, 0x42100000    # 36.0f

    invoke-virtual {v0, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_4
    return-object v0
.end method

.method public static convertRectF(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    if-le v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result p0

    move p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result p0

    :goto_0
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    int-to-float p1, p1

    mul-float/2addr p2, p1

    int-to-float p0, p0

    div-float/2addr p2, p0

    mul-float/2addr v0, p1

    div-float/2addr v0, p0

    mul-float/2addr v1, p1

    div-float/2addr v1, p0

    mul-float/2addr p3, p1

    div-float/2addr p3, p0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v1, p2, p3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public static dpToPt(D)D
    .locals 2

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4064000000000000L    # 160.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static filePathToInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static getCropRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    instance-of v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    instance-of v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static isStrokeType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
