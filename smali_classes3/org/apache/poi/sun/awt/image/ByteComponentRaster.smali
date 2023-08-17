.class public Lorg/apache/poi/sun/awt/image/ByteComponentRaster;
.super Lorg/apache/poi/sun/awt/image/SunWritableRaster;
.source "SourceFile"


# instance fields
.field public bandOffset:I

.field public data:[B

.field public dataOffsets:[I

.field private maxX:I

.field private maxY:I

.field public pixelStride:I

.field public scanlineStride:I

.field public type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/sun/awt/image/NativeLibLoader;->loadLibraries()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->createDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/java/awt/Rectangle;

    iget v0, p2, Lorg/apache/poi/java/awt/Point;->x:I

    iget v1, p2, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getHeight()I

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/sun/awt/image/ByteComponentRaster;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V
    .locals 6

    new-instance v3, Lorg/apache/poi/java/awt/Rectangle;

    iget v0, p3, Lorg/apache/poi/java/awt/Point;->x:I

    iget v1, p3, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getHeight()I

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/sun/awt/image/ByteComponentRaster;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/sun/awt/image/ByteComponentRaster;)V
    .locals 4

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/java/awt/image/WritableRaster;)V

    iget p5, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    add-int/2addr p5, v0

    iput p5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    iget p5, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    add-int/2addr p5, v0

    iput p5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    instance-of p5, p2, Lorg/apache/poi/java/awt/image/DataBufferByte;

    if-eqz p5, :cond_4

    check-cast p2, Lorg/apache/poi/java/awt/image/DataBufferByte;

    const/4 p5, 0x0

    invoke-static {p2, p5}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealData(Lorg/apache/poi/java/awt/image/DataBufferByte;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getNumBanks()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getOffset()I

    move-result p2

    instance-of v0, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    iput v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->type:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    iget p1, p3, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v0, p4, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int/2addr p1, v0

    iget p3, p3, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget p4, p4, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr p3, p4

    move p4, p5

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getNumDataElements()I

    move-result v0

    if-ge p4, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v1, v0, p4

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->type:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    iput v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aput p2, v0, p5

    iget p2, p3, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v2, p4, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int/2addr p2, v2

    iget p3, p3, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget p4, p4, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr p3, p4

    aget p4, v0, p5

    mul-int/2addr p2, v1

    mul-int/2addr p3, p1

    add-int/2addr p2, p3

    add-int/2addr p4, p2

    aput p4, v0, p5

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, p5

    iput p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->bandOffset:I

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->verify()V

    return-void

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "IntegerComponentRasters must have ComponentSampleModel or SinglePixelPackedSampleModel"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "DataBuffer for ByteComponentRasters must only have 1 bank."

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "ByteComponentRasters must have byte DataBuffers"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setDataElements(IIIILorg/apache/poi/java/awt/image/Raster;)V
    .locals 14

    move-object v6, p0

    move/from16 v7, p4

    move-object/from16 v8, p5

    if-lez p3, :cond_3

    if-gtz v7, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p5 .. p5}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v10

    const/4 v0, 0x0

    instance-of v1, v8, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v8

    check-cast v1, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->getDataStorage()[B

    move-result-object v3

    iget v4, v6, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->getDataOffset(I)I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->getScanlineStride()I

    move-result v5

    iget-object v11, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v11, v11, v2

    iget v12, v6, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    sub-int v12, p2, v12

    iget v13, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    iget v12, v6, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    sub-int v12, p1, v12

    add-int/2addr v11, v12

    iget v12, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->getPixelStride()I

    move-result v1

    if-ne v12, v1, :cond_2

    iget v0, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int v0, v0, p3

    :goto_0
    if-ge v2, v7, :cond_1

    iget-object v1, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    invoke-static {v3, v4, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    iget v1, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v11, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_2
    move-object v5, v0

    move v11, v2

    :goto_1
    if-ge v11, v7, :cond_3

    add-int v2, v10, v11

    const/4 v4, 0x1

    move-object/from16 v0, p5

    move v1, v9

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    add-int v2, p2, v11

    move-object v0, p0

    move v1, p1

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public createChild(IIIIII[I)Lorg/apache/poi/java/awt/image/Raster;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    return-object p1
.end method

.method public createCompatibleWritableRaster()Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v0

    return-object v0
.end method

.method public createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 2

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/image/SampleModel;->createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    new-instance v0, Lorg/apache/poi/java/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-direct {p2, p1, v0}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)V

    return-object p2

    :cond_1
    :goto_0
    new-instance p2, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "negative "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gtz p1, :cond_2

    const-string/jumbo p1, "width"

    goto :goto_1

    :cond_2
    const-string p1, "height"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_3

    add-int v2, p1, p3

    if-lt v2, p1, :cond_2

    iget v3, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    add-int/2addr v0, v3

    if-gt v2, v0, :cond_2

    add-int v0, p2, p4

    if-lt v0, p2, :cond_1

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-eqz p7, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v0, p7}, Lorg/apache/poi/java/awt/image/SampleModel;->createSubsetSampleModel([I)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p7

    goto :goto_0

    :cond_0
    iget-object p7, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    :goto_0
    sub-int p1, p5, p1

    sub-int p2, p6, p2

    new-instance v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    new-instance v2, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v2, p5, p6, p3, p4}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    new-instance p5, Lorg/apache/poi/java/awt/Point;

    iget p3, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    add-int/2addr p3, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    add-int/2addr p1, p2

    invoke-direct {p5, p3, p1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    move-object p1, v0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p6, p0

    invoke-direct/range {p1 .. p6}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/sun/awt/image/ByteComponentRaster;)V

    return-object v0

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "(y + height) is outside of Raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "(x + width) is outside of Raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string/jumbo p2, "y lies outside the raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string/jumbo p2, "x lies outside the raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getByteData(IIIII[B)[B
    .locals 5

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_5

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_5

    add-int v2, p1, p3

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    if-gt v2, v3, :cond_5

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    if-gt v2, v3, :cond_5

    if-nez p6, :cond_0

    iget p6, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p6, p4

    new-array p6, p6, [B

    :cond_0
    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    const/4 p1, 0x1

    const/4 p5, 0x0

    if-ne v0, p1, :cond_2

    if-ne v1, p3, :cond_1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    mul-int/2addr p3, p4

    invoke-static {p1, p2, p6, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_1
    move p1, p5

    :goto_0
    if-ge p5, p4, :cond_4

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    invoke-static {v0, p2, p6, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    add-int/lit8 p5, p5, 0x1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    move p1, p5

    move v0, p1

    :goto_1
    if-ge p1, p4, :cond_4

    move v2, p2

    move v1, p5

    :goto_2
    if-ge v1, p3, :cond_3

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v4, v4, v2

    aput-byte v4, p6, v0

    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v2, v0

    move v0, v3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    goto :goto_1

    :cond_4
    :goto_3
    return-object p6

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getByteData(IIII[B)[B
    .locals 8

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_4

    add-int v2, p1, p3

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    if-gt v2, v3, :cond_4

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    if-gt v2, v3, :cond_4

    if-nez p5, :cond_0

    iget p5, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p5, v2

    mul-int/2addr p5, p4

    new-array p5, p5, [B

    :cond_0
    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_3

    move v2, p1

    move v3, p2

    :goto_1
    if-ge v2, p3, :cond_2

    move v4, p1

    :goto_2
    iget v5, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v7, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v7, v7, v4

    add-int/2addr v7, v3

    aget-byte v6, v6, v7

    aput-byte v6, p5, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v2

    goto :goto_0

    :cond_3
    return-object p5

    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_4

    add-int v2, p1, p3

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    if-gt v2, v3, :cond_4

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    if-gt v2, v3, :cond_4

    if-nez p5, :cond_0

    mul-int p5, p3, p4

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    mul-int/2addr p5, v2

    new-array p5, p5, [B

    goto :goto_0

    :cond_0
    check-cast p5, [B

    :goto_0
    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_1
    if-ge v0, p4, :cond_3

    move v2, p1

    move v3, p2

    :goto_2
    if-ge v2, p3, :cond_2

    move v4, p1

    :goto_3
    iget v5, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v7, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v7, v7, v4

    add-int/2addr v7, v3

    aget-byte v6, v6, v7

    aput-byte v6, p5, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v2

    goto :goto_1

    :cond_3
    return-object p5

    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElements(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_2

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_2

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    if-ge p2, v2, :cond_2

    if-nez p3, :cond_0

    iget p3, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    check-cast p3, [B

    :goto_0
    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    aget-byte v0, v0, v1

    aput-byte v0, p3, p1

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

.method public getDataOffset(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, v0, p1

    return p1
.end method

.method public getDataOffsets()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getDataStorage()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    return v0
.end method

.method public getScanlineStride()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    return v0
.end method

.method public putByteData(IIIII[B)V
    .locals 5

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_4

    add-int v2, p1, p3

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    if-gt v2, v3, :cond_4

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    if-gt v2, v3, :cond_4

    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    const/4 p1, 0x1

    const/4 p5, 0x0

    if-ne v0, p1, :cond_1

    if-ne v1, p3, :cond_0

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    mul-int/2addr p3, p4

    invoke-static {p6, p5, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_0
    move p1, p5

    :goto_0
    if-ge p5, p4, :cond_3

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    invoke-static {p6, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    add-int/lit8 p5, p5, 0x1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    move p1, p5

    move v0, p1

    :goto_1
    if-ge p1, p4, :cond_3

    move v2, p2

    move v1, p5

    :goto_2
    if-ge v1, p3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p6, v0

    aput-byte v0, v3, v2

    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v2, v0

    move v0, v4

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putByteData(IIII[B)V
    .locals 8

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_7

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_7

    add-int v2, p1, p3

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    if-gt v2, v3, :cond_7

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    if-gt v2, v3, :cond_7

    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, v2

    add-int/2addr p2, p1

    if-ne v0, v3, :cond_1

    if-ne v1, p3, :cond_0

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    mul-int/2addr p3, p4

    invoke-static {p5, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6

    :cond_0
    move p1, v2

    :goto_0
    if-ge v2, p4, :cond_6

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    invoke-static {p5, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    move v0, p1

    :goto_1
    if-ge p1, p4, :cond_6

    move v3, p2

    move v1, v2

    :goto_2
    if-ge v1, p3, :cond_2

    iget-object v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p5, v0

    aput-byte v0, v4, v3

    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v3, v0

    move v0, v5

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    goto :goto_1

    :cond_3
    move p1, v2

    move v0, p1

    :goto_3
    if-ge p1, p4, :cond_6

    move v3, p2

    move v1, v2

    :goto_4
    if-ge v1, p3, :cond_5

    move v4, v2

    :goto_5
    iget v5, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v6, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, p5, v0

    aput-byte v0, v5, v6

    add-int/lit8 v4, v4, 0x1

    move v0, v7

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    goto :goto_3

    :cond_6
    :goto_6
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataElements(IIIILjava/lang/Object;)V
    .locals 8

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_5

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_5

    add-int v2, p1, p3

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    if-gt v2, v3, :cond_5

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    if-gt v2, v3, :cond_5

    check-cast p5, [B

    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, v1

    add-int/2addr p2, p1

    move p1, v1

    :goto_0
    if-ge v1, p4, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    invoke-static {p5, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_1
    move p1, v1

    move v0, p1

    :goto_1
    if-ge p1, p4, :cond_4

    move v3, p2

    move v2, v1

    :goto_2
    if-ge v2, p3, :cond_3

    move v4, v1

    :goto_3
    iget v5, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v6, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, p5, v0

    aput-byte v0, v5, v6

    add-int/lit8 v4, v4, 0x1

    move v0, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataElements(IILjava/lang/Object;)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_1

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    if-ge p2, v2, :cond_1

    check-cast p3, [B

    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    aget-byte v2, p3, p1

    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataElements(IILorg/apache/poi/java/awt/image/Raster;)V
    .locals 7

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v0

    add-int v2, v0, p1

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result p1

    add-int v3, p1, p2

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v5

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt v2, p1, :cond_0

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt v3, p1, :cond_0

    add-int p1, v2, v4

    iget p2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxX:I

    if-gt p1, p2, :cond_0

    add-int p1, v3, v5

    iget p2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->maxY:I

    if-gt p1, p2, :cond_0

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->setDataElements(IIIILorg/apache/poi/java/awt/image/Raster;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteComponentRaster: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " #numDataElements "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dataOff[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final verify()V
    .locals 10

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    if-lez v0, :cond_d

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    if-lez v1, :cond_d

    const v2, 0x7fffffff

    div-int v0, v2, v0

    if-gt v1, v0, :cond_d

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget v3, v3, v1

    if-ltz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data offsets for band "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") must be >= 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    int-to-long v3, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    int-to-long v5, v1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_c

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    int-to-long v3, v1

    iget v7, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    int-to-long v8, v7

    sub-long/2addr v3, v8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_c

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    const-string v4, "Incorrect scanline stride: "

    if-ltz v3, :cond_b

    iget v5, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    div-int v6, v2, v5

    if-gt v3, v6, :cond_b

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    sub-int/2addr v1, v7

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    array-length v1, v1

    if-gt v3, v1, :cond_a

    :cond_3
    sub-int/2addr v5, v6

    mul-int/2addr v5, v3

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    if-ltz v1, :cond_9

    iget v3, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    div-int v4, v2, v3

    if-gt v1, v4, :cond_9

    iget-object v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    array-length v4, v4

    if-gt v1, v4, :cond_9

    sub-int/2addr v3, v6

    mul-int/2addr v3, v1

    sub-int v1, v2, v5

    if-gt v3, v1, :cond_8

    add-int/2addr v3, v5

    move v1, v0

    :goto_1
    iget v4, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v5, v4, v0

    sub-int v6, v2, v3

    if-gt v5, v6, :cond_5

    aget v4, v4, v0

    add-int/2addr v4, v3

    if-le v4, v1, :cond_4

    move v1, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect band offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    array-length v0, v0

    if-le v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data array too small (should be > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string v1, "Incorrect raster attributes"

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect pixel stride: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect origin/translate: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") / ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string v1, "Invalid raster dimension"

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
