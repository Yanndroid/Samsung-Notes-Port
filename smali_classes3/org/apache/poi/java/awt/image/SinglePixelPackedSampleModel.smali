.class public Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;
.super Lorg/apache/poi/java/awt/image/SampleModel;
.source "SourceFile"


# instance fields
.field private bitMasks:[I

.field private bitOffsets:[I

.field private bitSizes:[I

.field private maxBitSize:I

.field private scanlineStride:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->loadLibraries()V

    return-void
.end method

.method public constructor <init>(IIII[I)V
    .locals 4

    array-length v0, p5

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/java/awt/image/SampleModel;-><init>(IIII)V

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

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

    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    iput p4, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    iget p3, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    new-array p4, p3, [I

    iput-object p4, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    new-array p3, p3, [I

    iput-object p3, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitSizes:[I

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result p1

    const-wide/16 p3, 0x1

    shl-long v0, p3, p1

    sub-long/2addr v0, p3

    long-to-int p1, v0

    const/4 p3, 0x0

    iput p3, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->maxBitSize:I

    move p4, p3

    :goto_1
    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    if-ge p4, v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget v1, v0, p4

    and-int/2addr v1, p1

    aput v1, v0, p4

    aget v0, v0, p4

    move v1, p3

    if-eqz v0, :cond_5

    :goto_2
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2

    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_3
    and-int/lit8 v3, v0, 0x1

    if-ne v3, p2, :cond_3

    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Mask "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p5, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " must be contiguous"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move v2, v1

    :goto_4
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    aput v1, v0, p4

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitSizes:[I

    aput v2, v0, p4

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->maxBitSize:I

    if-le v2, v0, :cond_6

    iput v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->maxBitSize:I

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public constructor <init>(III[I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;-><init>(IIII[I)V

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

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

.method private getBufferSize()J
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;-><init>(III[I)V

    return-object v0
.end method

.method public createDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getBufferSize()J

    move-result-wide v0

    long-to-int v0, v0

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

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/image/DataBufferInt;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/image/DataBufferUShort;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(I)V

    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public createSubsetSampleModel([I)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 7

    array-length v0, p1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    if-gt v0, v1, :cond_1

    array-length v0, p1

    new-array v6, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget v2, p1, v0

    aget v1, v1, v2

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    iget v2, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget v3, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    iget v4, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    iget v5, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;-><init>(IIII[I)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There are only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bands"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

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

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    iget-object v2, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    iget-object v2, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitSizes:[I

    iget-object v2, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitSizes:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->maxBitSize:I

    iget v2, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->maxBitSize:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    iget p1, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getBitMasks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getBitOffsets()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getDataElements(IILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)Ljava/lang/Object;
    .locals 4

    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_6

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    new-array p3, v2, [I

    goto :goto_0

    :cond_1
    check-cast p3, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    aput p1, p3, v1

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    new-array p3, v2, [S

    goto :goto_1

    :cond_3
    check-cast p3, [S

    :goto_1
    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    int-to-short p1, p1

    aput-short p1, p3, v1

    goto :goto_3

    :cond_4
    if-nez p3, :cond_5

    new-array p3, v2, [B

    goto :goto_2

    :cond_5
    check-cast p3, [B

    :goto_2
    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, p3, v1

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

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    return p2
.end method

.method public getPixel(II[ILorg/apache/poi/java/awt/image/DataBuffer;)[I
    .locals 1

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_2

    if-nez p3, :cond_0

    iget p3, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    new-array p3, p3, [I

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    iget p4, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    if-ge p2, p4, :cond_1

    iget-object p4, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget p4, p4, p2

    and-int/2addr p4, p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    aget v0, v0, p2

    ushr-int/2addr p4, v0

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPixels(IIII[ILorg/apache/poi/java/awt/image/DataBuffer;)[I
    .locals 8

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

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    mul-int/2addr p5, v0

    new-array p5, p5, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_1
    if-ge v0, p4, :cond_3

    move v2, p1

    :goto_2
    if-ge v2, p3, :cond_2

    add-int v3, p2, v2

    invoke-virtual {p6, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result v3

    move v4, p1

    :goto_3
    iget v5, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget v6, v6, v4

    and-int/2addr v6, v3

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    aget v7, v7, v4

    ushr-int/2addr v6, v7

    aput v6, p5, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

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
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    iget-object p2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget p2, p2, p3

    and-int/2addr p1, p2

    iget-object p2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    aget p2, p2, p3

    ushr-int/2addr p1, p2

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSampleSize(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitSizes:[I

    aget p1, v0, p1

    return p1
.end method

.method public getSampleSize()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitSizes:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
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
    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_1
    if-ge v0, p4, :cond_2

    move v2, p1

    :goto_2
    if-ge v2, p3, :cond_1

    add-int v3, p2, v2

    invoke-virtual {p7, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget v5, v5, p5

    and-int/2addr v3, v5

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    aget v5, v5, p5

    ushr-int/2addr v3, v5

    aput v3, p6, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_2

    :cond_1
    iget v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

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

.method public getScanlineStride()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    return v0
.end method

.method public hashCode()I
    .locals 5

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

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    xor-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget-object v3, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    xor-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitSizes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    xor-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->maxBitSize:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public setDataElements(IILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 3

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p3, [I

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    aget p1, p3, v1

    goto :goto_0

    :cond_1
    check-cast p3, [S

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    aget-short p1, p3, v1

    const p3, 0xffff

    and-int/2addr p1, p3

    goto :goto_0

    :cond_2
    check-cast p3, [B

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    aget-byte p1, p3, v1

    and-int/lit16 p1, p1, 0xff

    :goto_0
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
    .locals 4

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    invoke-virtual {p4, p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget v2, v1, v0

    not-int v2, v2

    and-int/2addr p1, v2

    aget v2, p3, v0

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    aget v3, v3, v0

    shl-int/2addr v2, v3

    aget v1, v1, v0

    and-int/2addr v1, v2

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p2, p1}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(II)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixels(IIII[ILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 9

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_3

    iget v2, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v2, :cond_3

    if-gt p3, v2, :cond_3

    if-ltz v0, :cond_3

    if-gt v0, v2, :cond_3

    if-ltz p2, :cond_3

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_3

    if-gt p4, v0, :cond_3

    if-ltz v1, :cond_3

    if-gt v1, v0, :cond_3

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_2

    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_1

    add-int v3, p2, v2

    invoke-virtual {p6, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result v4

    move v5, p1

    :goto_2
    iget v6, p0, Lorg/apache/poi/java/awt/image/SampleModel;->numBands:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget v7, v6, v5

    not-int v7, v7

    and-int/2addr v4, v7

    add-int/lit8 v7, v1, 0x1

    aget v1, p5, v1

    iget-object v8, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    aget v8, v8, v5

    shl-int/2addr v1, v8

    aget v6, v6, v5

    and-int/2addr v1, v6

    or-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v7

    goto :goto_2

    :cond_0
    invoke-virtual {p6, v3, v4}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSample(IIIILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 3

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    invoke-virtual {p5, v0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget v2, v1, p3

    not-int v2, v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    aget v2, v2, p3

    shl-int/2addr p4, v2

    aget p3, v1, p3

    and-int/2addr p3, p4

    or-int/2addr p3, v0

    iget p4, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, p4

    add-int/2addr p2, p1

    invoke-virtual {p5, p2, p3}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSamples(IIIII[ILorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 8

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p1, p3

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    if-gt v0, v1, :cond_2

    add-int v0, p2, p4

    iget v1, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_1

    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_0

    add-int v3, p2, v2

    invoke-virtual {p7, v3}, Lorg/apache/poi/java/awt/image/DataBuffer;->getElem(I)I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitMasks:[I

    aget v6, v5, p5

    not-int v6, v6

    and-int/2addr v4, v6

    add-int/lit8 v6, v1, 0x1

    aget v1, p6, v1

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->bitOffsets:[I

    aget v7, v7, p5

    shl-int/2addr v1, v7

    aget v5, v5, p5

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    invoke-virtual {p7, v3, v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->setElem(II)V

    add-int/lit8 v2, v2, 0x1

    move v1, v6

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->scanlineStride:I

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
