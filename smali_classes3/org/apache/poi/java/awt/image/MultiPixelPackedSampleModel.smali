.class public Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;
.super Lorg/apache/poi/java/awt/image/SampleModel;
.source "SourceFile"


# instance fields
.field public bitMask:I

.field public dataBitOffset:I

.field public dataElementSize:I

.field public pixelBitStride:I

.field public pixelsPerDataElement:I

.field public scanlineStride:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 10

    mul-int v0, p2, p4

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v2

    div-int v8, v0, v2

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v3 .. v9}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;-><init>(IIIIII)V

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported data type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/java/awt/image/SampleModel;-><init>(IIII)V

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported data type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iput p4, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    iput p5, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    iput p6, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    div-int p2, p1, p4

    iput p2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelsPerDataElement:I

    mul-int/2addr p2, p4

    if-ne p2, p1, :cond_2

    shl-int p1, v0, p4

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    return-void

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "MultiPixelPackedSampleModel does not allow pixels to span data element boundaries"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget v2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    return-object v0
.end method

.method public createDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferInt;

    iget v2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    add-int/lit8 v2, v2, 0x1f

    div-int/lit8 v2, v2, 0x20

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/image/DataBufferInt;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    iget v2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    add-int/lit8 v2, v2, 0xf

    div-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/image/DataBufferUShort;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    iget v2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(I)V

    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public createSubsetSampleModel([I)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 1

    if-eqz p1, :cond_1

    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string v0, "MultiPixelPackedSampleModel has only one band."

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget p1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelsPerDataElement:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelsPerDataElement:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    iget p1, p1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getBitOffset(I)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    mul-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    rem-int/2addr p1, v0

    return p1
.end method

.method public getDataBitOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    return v0
.end method

.method public getDataElements(IILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)Ljava/lang/Object;
    .locals 6

    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_6

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getTransferType()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    iget v2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    mul-int/2addr p1, v2

    add-int/2addr v1, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    add-int/lit8 v3, p1, -0x1

    and-int/2addr v3, v1

    sub-int v3, p1, v3

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    new-array p3, v4, [I

    goto :goto_0

    :cond_1
    check-cast p3, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    div-int/2addr v1, p1

    add-int/2addr p2, v1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    shr-int/2addr p1, v3

    iget p2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    and-int/2addr p1, p2

    aput p1, p3, v2

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    new-array p3, v4, [S

    goto :goto_1

    :cond_3
    check-cast p3, [S

    :goto_1
    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    div-int/2addr v1, p1

    add-int/2addr p2, v1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    shr-int/2addr p1, v3

    iget p2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    and-int/2addr p1, p2

    int-to-short p1, p1

    aput-short p1, p3, v2

    goto :goto_3

    :cond_4
    if-nez p3, :cond_5

    new-array p3, v4, [B

    goto :goto_2

    :cond_5
    check-cast p3, [B

    :goto_2
    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    div-int/2addr v1, p1

    add-int/2addr p2, v1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    shr-int/2addr p1, v3

    iget p2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    and-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p3, v2

    :goto_3
    return-object p3

    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNumDataElements()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOffset(II)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    mul-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    return p2
.end method

.method public getPixel(II[ILorg/apache/poi/java/awt/image/DataBuffer;)[I
    .locals 2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    new-array p3, p3, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    div-int p1, v0, p1

    add-int/2addr p2, p1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    iget p2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    add-int/lit8 p4, p2, -0x1

    and-int/2addr p4, v0

    sub-int/2addr p2, p4

    iget p4, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    sub-int/2addr p2, p4

    const/4 p4, 0x0

    shr-int/2addr p1, p2

    iget p2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    and-int/2addr p1, p2

    aput p1, p3, p4

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPixelBitStride()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    return v0
.end method

.method public getSample(IIILorg/apache/poi/java/awt/image/DataBuffer;)I
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    if-nez p3, :cond_0

    iget p3, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    mul-int/2addr p1, v0

    add-int/2addr p3, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    div-int p1, p3, p1

    add-int/2addr p2, p1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    iget p2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    add-int/lit8 p4, p2, -0x1

    and-int/2addr p3, p4

    sub-int/2addr p2, p3

    iget p3, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    sub-int/2addr p2, p3

    shr-int/2addr p1, p2

    iget p2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    and-int/2addr p1, p2

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSampleSize(I)I
    .locals 0

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    return p1
.end method

.method public getSampleSize()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object v0
.end method

.method public getScanlineStride()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    return v0
.end method

.method public getTransferType()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelsPerDataElement:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public setDataElements(IILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getTransferType()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    iget v2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    mul-int/2addr p1, v2

    add-int/2addr v1, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    div-int v3, v1, p1

    add-int/2addr p2, v3

    add-int/lit8 v3, p1, -0x1

    and-int/2addr v1, v3

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result v1

    iget v2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    shl-int v3, v2, p1

    not-int v3, v3

    and-int/2addr v1, v3

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_1

    :cond_0
    check-cast p3, [I

    aget p3, p3, v3

    goto :goto_0

    :cond_1
    check-cast p3, [S

    aget-short p3, p3, v3

    const v0, 0xffff

    and-int/2addr p3, v0

    goto :goto_0

    :cond_2
    check-cast p3, [B

    aget-byte p3, p3, v3

    and-int/lit16 p3, p3, 0xff

    :goto_0
    and-int/2addr p3, v2

    shl-int p1, p3, p1

    or-int/2addr p1, v1

    invoke-virtual {p4, p2, p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(II)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixel(II[ILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 3

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    div-int v2, v0, p1

    add-int/2addr p2, v2

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v0, v2

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result v0

    iget v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    shl-int v2, v1, p1

    not-int v2, v2

    and-int/2addr v0, v2

    const/4 v2, 0x0

    aget p3, p3, v2

    and-int/2addr p3, v1

    shl-int p1, p3, p1

    or-int/2addr p1, v0

    invoke-virtual {p4, p2, p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSample(IIIILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    if-nez p3, :cond_0

    iget p3, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataBitOffset:I

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->pixelBitStride:I

    mul-int/2addr p1, v0

    add-int/2addr p3, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->dataElementSize:I

    div-int v1, p3, p1

    add-int/2addr p2, v1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr p3, v1

    sub-int/2addr p1, p3

    sub-int/2addr p1, v0

    invoke-virtual {p5, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p3

    iget v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->bitMask:I

    shl-int v1, v0, p1

    not-int v1, v1

    and-int/2addr p3, v1

    and-int/2addr p4, v0

    shl-int p1, p4, p1

    or-int/2addr p1, p3

    invoke-virtual {p5, p2, p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
