.class public final Lorg/apache/poi/java/awt/image/BandedSampleModel;
.super Lorg/apache/poi/java/awt/image/ComponentSampleModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIII)V
    .locals 8

    invoke-static {p4}, Lorg/apache/poi/java/awt/image/BandedSampleModel;->createIndicesArray(I)[I

    move-result-object v6

    invoke-static {p4}, Lorg/apache/poi/java/awt/image/BandedSampleModel;->createOffsetArray(I)[I

    move-result-object v7

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;-><init>(IIIII[I[I)V

    return-void
.end method

.method public constructor <init>(IIII[I[I)V
    .locals 8

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;-><init>(IIIII[I[I)V

    return-void
.end method

.method private static createIndicesArray(I)[I
    .locals 2

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static createOffsetArray(I)[I
    .locals 3

    new-array v0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 8

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    mul-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->orderBands([II)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v0, v0

    new-array v0, v0, [I

    :goto_0
    move-object v7, v0

    new-instance v0, Lorg/apache/poi/java/awt/image/BandedSampleModel;

    iget v2, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/BandedSampleModel;-><init>(IIII[I[I)V

    return-object v0
.end method

.method public createDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferDouble;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferDouble;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataType is not one of the supported types."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferFloat;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferFloat;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferInt;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferInt;-><init>(II)V

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferShort;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferShort;-><init>(II)V

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferUShort;-><init>(II)V

    goto :goto_0

    :cond_5
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(II)V

    :goto_0
    return-object v1
.end method

.method public createSubsetSampleModel([I)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 8

    array-length v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length v1, v1

    if-gt v0, v1, :cond_1

    array-length v0, p1

    new-array v6, v0, [I

    array-length v0, p1

    new-array v7, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v2, p1, v0

    aget v1, v1, v2

    aput v1, v6, v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, p1, v0

    aget v1, v1, v2

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/image/BandedSampleModel;

    iget v2, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget v3, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    iget v4, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    iget v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/BandedSampleModel;-><init>(IIII[I[I)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There are only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bands"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElements(IILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)Ljava/lang/Object;
    .locals 4

    if-ltz p1, :cond_b

    if-ltz p2, :cond_b

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_b

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getNumDataElements()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v2

    add-int/2addr p2, p1

    const/4 p1, 0x0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p3, :cond_1

    new-array p3, v1, [D

    goto :goto_0

    :cond_1
    check-cast p3, [D

    :goto_0
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElemDouble(II)D

    move-result-wide v2

    aput-wide v2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    new-array p3, v1, [F

    goto :goto_1

    :cond_3
    check-cast p3, [F

    :goto_1
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElemFloat(II)F

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    new-array p3, v1, [I

    goto :goto_2

    :cond_5
    check-cast p3, [I

    :goto_2
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    new-array p3, v1, [S

    goto :goto_3

    :cond_7
    check-cast p3, [S

    :goto_3
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    if-nez p3, :cond_9

    new-array p3, v1, [B

    goto :goto_4

    :cond_9
    check-cast p3, [B

    :goto_4
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    return-object p3

    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPixel(II[ILorg/apache/poi/java/awt/image/DataBuffer;)[I
    .locals 2

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    new-array p3, p3, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    invoke-virtual {p4, v0, v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object p3

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPixels(IIII[ILorg/apache/poi/java/awt/image/DataBuffer;)[I
    .locals 9

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_4

    iget v2, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v2, :cond_4

    if-gt p3, v2, :cond_4

    if-ltz v0, :cond_4

    if-gt v0, v2, :cond_4

    if-ltz p2, :cond_4

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_4

    if-gt p4, v0, :cond_4

    if-ltz v1, :cond_4

    if-gt v1, v0, :cond_4

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    mul-int p5, p3, p4

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    mul-int/2addr p5, v0

    new-array p5, p5, [I

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge v1, v2, :cond_3

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr v2, p2

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v3, v3, v1

    move v4, v0

    move v5, v1

    :goto_2
    if-ge v4, p4, :cond_2

    move v6, v0

    move v7, v2

    :goto_3
    if-ge v6, p3, :cond_1

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p6, v3, v7}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v7

    aput v7, p5, v5

    iget v7, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_3

    :cond_1
    iget v6, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p5

    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSample(IIILorg/apache/poi/java/awt/image/DataBuffer;)I
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p4, v0, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSampleDouble(IIILorg/apache/poi/java/awt/image/DataBuffer;)D
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p4, v0, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElemDouble(II)D

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSampleFloat(IIILorg/apache/poi/java/awt/image/DataBuffer;)F
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p4, v0, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElemFloat(II)F

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSamples(IIIII[ILorg/apache/poi/java/awt/image/DataBuffer;)[I
    .locals 6

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    add-int v0, p1, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-gt v0, v1, :cond_3

    add-int v0, p2, p4

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-gt v0, v1, :cond_3

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    mul-int p6, p3, p4

    new-array p6, p6, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget p1, p1, p5

    const/4 p5, 0x0

    move v0, p5

    move v1, v0

    :goto_1
    if-ge v0, p4, :cond_2

    move v3, p2

    move v2, p5

    :goto_2
    if-ge v2, p3, :cond_1

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p7, p1, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(II)I

    move-result v3

    aput v3, p6, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    move v3, v5

    goto :goto_2

    :cond_1
    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p6

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setDataElements(IILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 5

    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_6

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getNumDataElements()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v2

    add-int/2addr p2, p1

    const/4 p1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    check-cast p3, [D

    :goto_0
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget-wide v3, p3, p1

    invoke-virtual {p4, v0, v2, v3, v4}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElemDouble(IID)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    check-cast p3, [F

    :goto_1
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget v3, p3, p1

    invoke-virtual {p4, v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElemFloat(IIF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    check-cast p3, [I

    :goto_2
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget v3, p3, p1

    invoke-virtual {p4, v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    check-cast p3, [S

    :goto_3
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget-short v3, p3, p1

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-virtual {p4, v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    check-cast p3, [B

    :goto_4
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget-byte v3, p3, p1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p4, v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixel(II[ILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 3

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    aget v2, p3, p1

    invoke-virtual {p4, v0, v1, v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixels(IIII[ILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    add-int v5, v1, v3

    add-int v6, v2, v4

    if-ltz v1, :cond_3

    iget v7, v0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge v1, v7, :cond_3

    if-gt v3, v7, :cond_3

    if-ltz v5, :cond_3

    if-gt v5, v7, :cond_3

    if-ltz v2, :cond_3

    iget v5, v0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge v2, v5, :cond_3

    if-gt v4, v5, :cond_3

    if-ltz v6, :cond_3

    if-gt v6, v5, :cond_3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v7, v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    if-ge v6, v7, :cond_2

    iget v7, v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v1

    iget-object v8, v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    iget-object v8, v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v8, v8, v6

    move v9, v5

    move v10, v6

    :goto_1
    if-ge v9, v4, :cond_1

    move v11, v5

    move v12, v7

    :goto_2
    if-ge v11, v3, :cond_0

    add-int/lit8 v13, v12, 0x1

    aget v14, p5, v10

    move-object/from16 v15, p6

    invoke-virtual {v15, v8, v12, v14}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    iget v12, v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->numBands:I

    add-int/2addr v10, v12

    add-int/lit8 v11, v11, 0x1

    move v12, v13

    goto :goto_2

    :cond_0
    move-object/from16 v15, p6

    iget v11, v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr v7, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Coordinate out of bounds!"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSample(IIIDLorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p6, v0, p2, p4, p5}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElemDouble(IID)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSample(IIIFLorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p5, v0, p2, p4}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElemFloat(IIF)V

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p5, v0, p2, p4}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSamples(IIIII[ILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 6

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p1, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-gt v0, v1, :cond_2

    add-int v0, p2, p4

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bankIndices:[I

    aget p1, p1, p5

    const/4 p5, 0x0

    move v0, p5

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_1

    move v3, p2

    move v2, p5

    :goto_1
    if-ge v2, p3, :cond_0

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, 0x1

    aget v1, p6, v1

    invoke-virtual {p7, p1, v3, v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v1, v5

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
