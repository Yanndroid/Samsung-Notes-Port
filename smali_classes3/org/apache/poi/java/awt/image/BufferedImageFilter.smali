.class public Lorg/apache/poi/java/awt/image/BufferedImageFilter;
.super Lorg/apache/poi/java/awt/image/ImageFilter;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public bufferedImageOp:Lorg/apache/poi/java/awt/image/BufferedImageOp;

.field public bytePixels:[B

.field public height:I

.field public intPixels:[I

.field public model:Lorg/apache/poi/java/awt/image/ColorModel;

.field public width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/image/BufferedImageOp;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/ImageFilter;-><init>()V

    const-string v0, "Operation cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bufferedImageOp:Lorg/apache/poi/java/awt/image/BufferedImageOp;

    return-void
.end method

.method private convertToRGB()V
    .locals 5

    iget v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(I)I

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    if-eqz v2, :cond_1

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(I)I

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    return-void
.end method

.method private final createDCMraster()Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    add-int/lit8 v2, v0, 0x3

    new-array v7, v2, [I

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getRedMask()I

    move-result v3

    aput v3, v7, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getGreenMask()I

    move-result v3

    aput v3, v7, v2

    const/4 v2, 0x2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getBlueMask()I

    move-result v3

    aput v3, v7, v2

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v0

    const/4 v1, 0x3

    aput v0, v7, v1

    :cond_0
    new-instance v3, Lorg/apache/poi/java/awt/image/DataBufferInt;

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    iget v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    iget v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    mul-int/2addr v1, v2

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/java/awt/image/DataBufferInt;-><init>([II)V

    iget v6, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    iget v5, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    const/4 v8, 0x0

    move v4, v6

    invoke-static/range {v3 .. v8}, Lorg/apache/poi/java/awt/image/Raster;->createPackedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;III[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBufferedImageOp()Lorg/apache/poi/java/awt/image/BufferedImageOp;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bufferedImageOp:Lorg/apache/poi/java/awt/image/BufferedImageOp;

    return-object v0
.end method

.method public imageComplete(I)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    goto/16 :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    if-lez v2, :cond_9

    iget v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    if-gtz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    instance-of v3, v2, Lorg/apache/poi/java/awt/image/DirectColorModel;

    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->createDCMraster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v2, v2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz v2, :cond_5

    new-array v8, v0, [I

    const/4 v0, 0x0

    aput v0, v8, v0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance v3, Lorg/apache/poi/java/awt/image/DataBufferByte;

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    iget v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    iget v4, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    mul-int/2addr v2, v4

    invoke-direct {v3, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>([BI)V

    iget v6, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    iget v5, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    move v4, v6

    invoke-static/range {v3 .. v9}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;IIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->convertToRGB()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    if-nez v0, :cond_2

    goto/16 :goto_1

    :goto_0
    new-instance v2, Lorg/apache/poi/java/awt/image/BufferedImage;

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v4

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bufferedImageOp:Lorg/apache/poi/java/awt/image/BufferedImageOp;

    invoke-interface {v0, v2, v1}, Lorg/apache/poi/java/awt/image/BufferedImageOp;->filter(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/image/BufferedImage;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v10

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v6

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->consumer:Lorg/apache/poi/java/awt/image/ImageConsumer;

    invoke-interface {v0, v10, v6}, Lorg/apache/poi/java/awt/image/ImageConsumer;->setDimensions(II)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->consumer:Lorg/apache/poi/java/awt/image/ImageConsumer;

    invoke-interface {v0, v7}, Lorg/apache/poi/java/awt/image/ImageConsumer;->setColorModel(Lorg/apache/poi/java/awt/image/ColorModel;)V

    instance-of v0, v7, Lorg/apache/poi/java/awt/image/DirectColorModel;

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/image/DataBufferInt;

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->consumer:Lorg/apache/poi/java/awt/image/ImageConsumer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData()[I

    move-result-object v8

    const/4 v9, 0x0

    move v5, v10

    invoke-interface/range {v2 .. v10}, Lorg/apache/poi/java/awt/image/ImageConsumer;->setPixels(IIIILorg/apache/poi/java/awt/image/ColorModel;[III)V

    goto :goto_1

    :cond_6
    instance-of v0, v7, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/image/DataBufferByte;

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->consumer:Lorg/apache/poi/java/awt/image/ImageConsumer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v8

    const/4 v9, 0x0

    move v5, v10

    invoke-interface/range {v2 .. v10}, Lorg/apache/poi/java/awt/image/ImageConsumer;->setPixels(IIIILorg/apache/poi/java/awt/image/ColorModel;[BII)V

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown color model "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iput-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    iput v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    :cond_9
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->consumer:Lorg/apache/poi/java/awt/image/ImageConsumer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/image/ImageConsumer;->imageComplete(I)V

    return-void
.end method

.method public setColorModel(Lorg/apache/poi/java/awt/image/ColorModel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    return-void
.end method

.method public setDimensions(II)V
    .locals 0

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    iput p2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->imageComplete(I)V

    return-void
.end method

.method public setPixels(IIIILorg/apache/poi/java/awt/image/ColorModel;[BII)V
    .locals 4

    if-ltz p3, :cond_c

    if-ltz p4, :cond_c

    if-eqz p3, :cond_b

    if-nez p4, :cond_0

    goto/16 :goto_4

    :cond_0
    if-gez p2, :cond_2

    neg-int v0, p2

    if-lt v0, p4, :cond_1

    return-void

    :cond_1
    mul-int v1, p8, v0

    add-int/2addr p7, v1

    add-int/2addr p2, v0

    sub-int/2addr p4, v0

    :cond_2
    add-int v0, p2, p4

    iget v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    if-le v0, v1, :cond_3

    sub-int p4, v1, p2

    if-gtz p4, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_5

    neg-int v0, p1

    if-lt v0, p3, :cond_4

    return-void

    :cond_4
    add-int/2addr p7, v0

    add-int/2addr p1, v0

    sub-int/2addr p3, v0

    :cond_5
    add-int v0, p1, p3

    iget v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    if-le v0, v2, :cond_6

    sub-int p3, v2, p1

    if-gtz p3, :cond_6

    return-void

    :cond_6
    mul-int/2addr p2, v2

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    if-nez p1, :cond_7

    mul-int/2addr v2, v1

    new-array p1, v2, [B

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    iput-object p5, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    if-eq p1, p5, :cond_8

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->convertToRGB()V

    :cond_8
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    if-eqz p1, :cond_9

    move p1, p4

    :goto_1
    if-lez p1, :cond_9

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    invoke-static {p6, p7, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p7, p8

    iget v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    if-eqz p1, :cond_b

    iget p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    sub-int/2addr p1, p3

    sub-int/2addr p8, p3

    :goto_2
    if-lez p4, :cond_b

    move v0, p3

    :goto_3
    if-lez v0, :cond_a

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p7, 0x1

    aget-byte p7, p6, p7

    and-int/lit16 p7, p7, 0xff

    invoke-virtual {p5, p7}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(I)I

    move-result p7

    aput p7, v1, p2

    add-int/lit8 v0, v0, -0x1

    move p2, v2

    move p7, v3

    goto :goto_3

    :cond_a
    add-int/2addr p7, p8

    add-int/2addr p2, p1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_b
    :goto_4
    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Width ("

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") and height ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") must be > 0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixels(IIIILorg/apache/poi/java/awt/image/ColorModel;[III)V
    .locals 4

    if-ltz p3, :cond_d

    if-ltz p4, :cond_d

    if-eqz p3, :cond_c

    if-nez p4, :cond_0

    goto/16 :goto_4

    :cond_0
    if-gez p2, :cond_2

    neg-int v0, p2

    if-lt v0, p4, :cond_1

    return-void

    :cond_1
    mul-int v1, p8, v0

    add-int/2addr p7, v1

    add-int/2addr p2, v0

    sub-int/2addr p4, v0

    :cond_2
    add-int v0, p2, p4

    iget v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->height:I

    if-le v0, v1, :cond_3

    sub-int p4, v1, p2

    if-gtz p4, :cond_3

    return-void

    :cond_3
    if-gez p1, :cond_5

    neg-int v0, p1

    if-lt v0, p3, :cond_4

    return-void

    :cond_4
    add-int/2addr p7, v0

    add-int/2addr p1, v0

    sub-int/2addr p3, v0

    :cond_5
    add-int v0, p1, p3

    iget v2, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    if-le v0, v2, :cond_6

    sub-int p3, v2, p1

    if-gtz p3, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->bytePixels:[B

    if-nez v0, :cond_7

    mul-int/2addr v2, v1

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    iput-object p5, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->convertToRGB()V

    :cond_8
    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->model:Lorg/apache/poi/java/awt/image/ColorModel;

    if-ne p1, p5, :cond_9

    :goto_1
    if-lez p4, :cond_c

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    invoke-static {p6, p7, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p7, p8

    iget p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    add-int/2addr p2, p1

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_9
    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    if-eq p1, v0, :cond_a

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->convertToRGB()V

    :cond_a
    iget p1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->width:I

    sub-int/2addr p1, p3

    sub-int/2addr p8, p3

    :goto_2
    if-lez p4, :cond_c

    move v0, p3

    :goto_3
    if-lez v0, :cond_b

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImageFilter;->intPixels:[I

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p7, 0x1

    aget p7, p6, p7

    invoke-virtual {p5, p7}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(I)I

    move-result p7

    aput p7, v1, p2

    add-int/lit8 v0, v0, -0x1

    move p2, v2

    move p7, v3

    goto :goto_3

    :cond_b
    add-int/2addr p7, p8

    add-int/2addr p2, p1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_c
    :goto_4
    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Width ("

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") and height ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") must be > 0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
