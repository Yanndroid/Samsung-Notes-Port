.class public Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;
.super Lorg/apache/poi/sun/awt/image/ByteComponentRaster;
.source "SourceFile"


# instance fields
.field public bitMasks:[I

.field public bitOffsets:[I

.field public dbOffset:I

.field public dbOffsetPacked:I

.field public inOrder:Z

.field private maxX:I

.field private maxY:I

.field public packed:Z


# direct methods
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

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;)V
    .locals 5

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/sun/awt/image/ByteComponentRaster;)V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->packed:Z

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    instance-of v0, p2, Lorg/apache/poi/java/awt/image/DataBufferByte;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-static {v0, p5}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealData(Lorg/apache/poi/java/awt/image/DataBufferByte;I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget v1, p3, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v2, p4, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int/2addr v1, v2

    iget p3, p3, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget p4, p4, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr p3, p4

    instance-of p4, p1, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    const/4 v2, 0x1

    if-nez p4, :cond_2

    instance-of p4, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-eqz p4, :cond_0

    move-object p4, p1

    check-cast p4, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-direct {p0, p4}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->isInterleaved(Lorg/apache/poi/java/awt/image/ComponentSampleModel;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    instance-of p4, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz p4, :cond_1

    check-cast p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    iput-boolean v2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->packed:Z

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getBitMasks()[I

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitMasks:[I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getBitOffsets()[I

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitOffsets:[I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    iput v2, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    new-array p1, v2, [I

    iput-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getOffset()I

    move-result p4

    aput p4, p1, p5

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p4, p1, p5

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr v0, v1

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr v3, p3

    add-int/2addr v0, v3

    add-int/2addr p4, v0

    aput p4, p1, p5

    goto :goto_2

    :cond_1
    new-instance p2, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ByteInterleavedRasters must have PixelInterleavedSampleModel, SinglePixelPackedSampleModel or interleaved ComponentSampleModel.  Sample model is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    check-cast p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    move p1, p5

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getNumDataElements()I

    move-result p4

    if-ge p1, p4, :cond_3

    iget-object p4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v0, p4, p1

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr v3, v1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr v4, p3

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    aput v0, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, p5

    iput p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->bandOffset:I

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getOffset()I

    move-result p1

    iget p2, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    iget p4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, p4

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffsetPacked:I

    mul-int/2addr v1, v0

    mul-int/2addr p3, p4

    add-int/2addr v1, p3

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffset:I

    iput-boolean p5, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->inOrder:Z

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ne p1, v0, :cond_5

    iput-boolean v2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->inOrder:Z

    :goto_3
    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p2, p1, v2

    aget p1, p1, p5

    sub-int/2addr p2, p1

    if-eq p2, v2, :cond_4

    iput-boolean p5, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->inOrder:Z

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->verify()V

    return-void

    :cond_6
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "ByteInterleavedRasters must have byte DataBuffers"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isInterleaved(Lorg/apache/poi/java/awt/image/ComponentSampleModel;)Z
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBankIndices()[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget v5, v2, v4

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object v2

    aget v4, v2, v3

    move v6, v1

    move v5, v4

    :goto_1
    if-ge v6, v0, :cond_5

    aget v7, v2, v6

    if-ge v7, v5, :cond_3

    move v5, v7

    :cond_3
    if-le v7, v4, :cond_4

    move v4, v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    sub-int/2addr v4, v5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result p1

    if-lt v4, p1, :cond_6

    return v3

    :cond_6
    return v1
.end method

.method private setDataElements(IIIIIILorg/apache/poi/java/awt/image/Raster;)V
    .locals 13

    move-object v6, p0

    move/from16 v7, p6

    move-object/from16 v8, p7

    if-lez p5, :cond_3

    if-gtz v7, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p7 .. p7}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v9

    invoke-virtual/range {p7 .. p7}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v10

    const/4 v0, 0x0

    instance-of v1, v8, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v8

    check-cast v1, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getDataStorage()[B

    move-result-object v3

    iget-boolean v4, v6, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->inOrder:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v1, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->inOrder:Z

    if-eqz v4, :cond_2

    iget v4, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    iget v5, v1, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getDataOffset(I)I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getScanlineStride()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getPixelStride()I

    move-result v1

    sub-int v5, p4, v10

    mul-int/2addr v5, v4

    add-int/2addr v0, v5

    sub-int v5, p3, v9

    mul-int/2addr v5, v1

    add-int/2addr v0, v5

    iget-object v1, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v1, v1, v2

    iget v5, v6, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    sub-int v5, p2, v5

    iget v8, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr v5, v8

    add-int/2addr v1, v5

    iget v5, v6, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    sub-int v5, p1, v5

    iget v8, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr v5, v8

    add-int/2addr v1, v5

    mul-int v5, p5, v8

    :goto_0
    if-ge v2, v7, :cond_1

    iget-object v8, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    invoke-static {v3, v0, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    iget v8, v6, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v1, v8

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

    move-object/from16 v0, p7

    move v1, v9

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    add-int v2, p2, v11

    move-object v0, p0

    move v1, p1

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public createChild(IIIIII[I)Lorg/apache/poi/java/awt/image/Raster;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    return-object p1
.end method

.method public createCompatibleWritableRaster()Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;

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

    new-instance p2, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    new-instance v0, Lorg/apache/poi/java/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-direct {p2, p1, v0}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)V

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

    new-instance v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

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

    invoke-direct/range {p1 .. p6}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;)V

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

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_5

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_5

    if-nez p6, :cond_0

    mul-int p6, p3, p4

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
    .locals 10

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_e

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_e

    add-int v2, p1, p3

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_e

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_e

    if-nez p5, :cond_0

    iget p5, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    mul-int/2addr p5, p3

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

    iget-boolean p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->inOrder:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, v2

    add-int/2addr p2, p1

    mul-int/2addr p3, v0

    if-ne v1, p3, :cond_1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    mul-int/2addr p3, p4

    invoke-static {p1, p2, p5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_c

    :cond_1
    move p1, v2

    :goto_0
    if-ge v2, p4, :cond_d

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    invoke-static {v0, p2, p5, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    add-int/lit8 v2, v2, 0x1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, v2

    add-int/2addr p2, p1

    move p1, v2

    move v0, p1

    :goto_1
    if-ge p1, p4, :cond_d

    move v3, p2

    move v1, v2

    :goto_2
    if-ge v1, p3, :cond_3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v5, v5, v3

    aput-byte v5, p5, v0

    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v3, v0

    move v0, v4

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v1, p1, v2

    add-int/2addr p2, v1

    aget v0, p1, v0

    aget p1, p1, v2

    sub-int/2addr v0, p1

    move p1, v2

    move v1, p1

    :goto_3
    if-ge p1, p4, :cond_d

    move v4, p2

    move v3, v2

    :goto_4
    if-ge v3, p3, :cond_5

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v7, v6, v4

    aput-byte v7, p5, v1

    add-int/lit8 v1, v5, 0x1

    add-int v7, v4, v0

    aget-byte v6, v6, v7

    aput-byte v6, p5, v5

    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v4, v5

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v3, p1, v2

    add-int/2addr p2, v3

    aget v0, p1, v0

    aget v3, p1, v2

    sub-int/2addr v0, v3

    aget v1, p1, v1

    aget p1, p1, v2

    sub-int/2addr v1, p1

    move p1, v2

    move v3, p1

    :goto_5
    if-ge p1, p4, :cond_d

    move v5, p2

    move v4, v2

    :goto_6
    if-ge v4, p3, :cond_7

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v8, v7, v5

    aput-byte v8, p5, v3

    add-int/lit8 v3, v6, 0x1

    add-int v8, v5, v0

    aget-byte v8, v7, v8

    aput-byte v8, p5, v6

    add-int/lit8 v6, v3, 0x1

    add-int v8, v5, v1

    aget-byte v7, v7, v8

    aput-byte v7, p5, v3

    add-int/lit8 v4, v4, 0x1

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v5, v3

    move v3, v6

    goto :goto_6

    :cond_7
    add-int/lit8 p1, p1, 0x1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v4

    goto :goto_5

    :cond_8
    const/4 v4, 0x4

    if-ne p1, v4, :cond_a

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v4, p1, v2

    add-int/2addr p2, v4

    aget v0, p1, v0

    aget v4, p1, v2

    sub-int/2addr v0, v4

    aget v1, p1, v1

    aget v4, p1, v2

    sub-int/2addr v1, v4

    aget v3, p1, v3

    aget p1, p1, v2

    sub-int/2addr v3, p1

    move p1, v2

    move v4, p1

    :goto_7
    if-ge p1, p4, :cond_d

    move v6, p2

    move v5, v2

    :goto_8
    if-ge v5, p3, :cond_9

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v9, v8, v6

    aput-byte v9, p5, v4

    add-int/lit8 v4, v7, 0x1

    add-int v9, v6, v0

    aget-byte v9, v8, v9

    aput-byte v9, p5, v7

    add-int/lit8 v7, v4, 0x1

    add-int v9, v6, v1

    aget-byte v9, v8, v9

    aput-byte v9, p5, v4

    add-int/lit8 v4, v7, 0x1

    add-int v9, v6, v3

    aget-byte v8, v8, v9

    aput-byte v8, p5, v7

    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v6, v7

    goto :goto_8

    :cond_9
    add-int/lit8 p1, p1, 0x1

    iget v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v5

    goto :goto_7

    :cond_a
    move p1, v2

    move v0, p1

    :goto_9
    if-ge p1, p4, :cond_d

    move v3, p2

    move v1, v2

    :goto_a
    if-ge v1, p3, :cond_c

    move v4, v2

    :goto_b
    iget v5, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_b

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v7, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v7, v7, v4

    add-int/2addr v7, v3

    aget-byte v6, v6, v7

    aput-byte v6, p5, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_b

    :cond_b
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_a

    :cond_c
    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    goto :goto_9

    :cond_d
    :goto_c
    return-object p5

    :cond_e
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p5

    check-cast v5, [B

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getByteData(IIII[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getDataElements(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_2

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_2

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

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

.method public getPixels(IIII[I)[I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget v5, v0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt v1, v5, :cond_f

    iget v5, v0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt v2, v5, :cond_f

    add-int v5, v1, v3

    iget v6, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-gt v5, v6, :cond_f

    add-int v5, v2, v4

    iget v6, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-gt v5, v6, :cond_f

    if-eqz p5, :cond_0

    move-object/from16 v5, p5

    goto :goto_0

    :cond_0
    mul-int v5, v3, v4

    iget v6, v0, Lorg/apache/poi/java/awt/image/Raster;->numBands:I

    mul-int/2addr v5, v6

    new-array v5, v5, [I

    :goto_0
    iget v6, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr v2, v6

    iget v6, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr v1, v6

    add-int/2addr v2, v1

    iget-boolean v1, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->packed:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    iget v1, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffsetPacked:I

    add-int/2addr v2, v1

    move v1, v6

    move v7, v1

    :goto_1
    if-ge v1, v4, :cond_e

    move v8, v6

    :goto_2
    if-ge v8, v3, :cond_2

    iget-object v9, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int v10, v2, v8

    aget-byte v9, v9, v10

    move v10, v6

    :goto_3
    iget v11, v0, Lorg/apache/poi/java/awt/image/Raster;->numBands:I

    if-ge v10, v11, :cond_1

    add-int/lit8 v11, v7, 0x1

    iget-object v12, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitMasks:[I

    aget v12, v12, v10

    and-int/2addr v12, v9

    iget-object v13, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitOffsets:[I

    aget v13, v13, v10

    ushr-int/2addr v12, v13

    aput v12, v5, v7

    add-int/lit8 v10, v10, 0x1

    move v7, v11

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    iget v8, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffset:I

    add-int/2addr v2, v1

    iget-object v1, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v7, v1, v6

    iget v8, v0, Lorg/apache/poi/java/awt/image/Raster;->numBands:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    move v1, v6

    move v8, v1

    :goto_4
    if-ge v1, v4, :cond_e

    add-int v9, v2, v7

    move v10, v6

    :goto_5
    if-ge v10, v3, :cond_4

    add-int/lit8 v11, v8, 0x1

    iget-object v12, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v12, v12, v9

    and-int/lit16 v12, v12, 0xff

    aput v12, v5, v8

    iget v8, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v9, v8

    add-int/lit8 v10, v10, 0x1

    move v8, v11

    goto :goto_5

    :cond_4
    iget v9, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x2

    if-ne v8, v10, :cond_7

    aget v1, v1, v9

    sub-int/2addr v1, v7

    move v8, v6

    move v9, v8

    :goto_6
    if-ge v8, v4, :cond_e

    add-int v10, v2, v7

    move v11, v6

    :goto_7
    if-ge v11, v3, :cond_6

    add-int/lit8 v12, v9, 0x1

    iget-object v13, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v14, v13, v10

    and-int/lit16 v14, v14, 0xff

    aput v14, v5, v9

    add-int/lit8 v9, v12, 0x1

    add-int v14, v10, v1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    aput v13, v5, v12

    iget v12, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v10, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_6
    iget v10, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x3

    if-ne v8, v11, :cond_9

    aget v8, v1, v9

    sub-int/2addr v8, v7

    aget v1, v1, v10

    sub-int/2addr v1, v7

    move v9, v6

    move v10, v9

    :goto_8
    if-ge v9, v4, :cond_e

    add-int v11, v2, v7

    move v12, v6

    :goto_9
    if-ge v12, v3, :cond_8

    add-int/lit8 v13, v10, 0x1

    iget-object v14, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v15, v14, v11

    and-int/lit16 v15, v15, 0xff

    aput v15, v5, v10

    add-int/lit8 v10, v13, 0x1

    add-int v15, v11, v8

    aget-byte v15, v14, v15

    and-int/lit16 v15, v15, 0xff

    aput v15, v5, v13

    add-int/lit8 v13, v10, 0x1

    add-int v15, v11, v1

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    aput v14, v5, v10

    iget v10, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v11, v10

    add-int/lit8 v12, v12, 0x1

    move v10, v13

    goto :goto_9

    :cond_8
    iget v11, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_9
    const/4 v12, 0x4

    if-ne v8, v12, :cond_b

    aget v8, v1, v9

    sub-int/2addr v8, v7

    aget v9, v1, v10

    sub-int/2addr v9, v7

    aget v1, v1, v11

    sub-int/2addr v1, v7

    move v10, v6

    move v11, v10

    :goto_a
    if-ge v10, v4, :cond_e

    add-int v12, v2, v7

    move v13, v6

    :goto_b
    if-ge v13, v3, :cond_a

    add-int/lit8 v14, v11, 0x1

    iget-object v15, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v6, v15, v12

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v11

    add-int/lit8 v6, v14, 0x1

    add-int v11, v12, v8

    aget-byte v11, v15, v11

    and-int/lit16 v11, v11, 0xff

    aput v11, v5, v14

    add-int/lit8 v11, v6, 0x1

    add-int v14, v12, v9

    aget-byte v14, v15, v14

    and-int/lit16 v14, v14, 0xff

    aput v14, v5, v6

    add-int/lit8 v6, v11, 0x1

    add-int v14, v12, v1

    aget-byte v14, v15, v14

    and-int/lit16 v14, v14, 0xff

    aput v14, v5, v11

    iget v11, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v12, v11

    add-int/lit8 v13, v13, 0x1

    move v11, v6

    const/4 v6, 0x0

    goto :goto_b

    :cond_a
    iget v6, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v6

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_c
    if-ge v1, v4, :cond_e

    move v8, v2

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v3, :cond_d

    const/4 v9, 0x0

    :goto_e
    iget v10, v0, Lorg/apache/poi/java/awt/image/Raster;->numBands:I

    if-ge v9, v10, :cond_c

    add-int/lit8 v10, v6, 0x1

    iget-object v11, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v12, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v12, v12, v9

    add-int/2addr v12, v8

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    aput v11, v5, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_e

    :cond_c
    iget v9, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_d
    iget v7, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_e
    return-object v5

    :cond_f
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Coordinate out of bounds!"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSample(III)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-ge p2, v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->packed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffsetPacked:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte p1, p1, p2

    iget-object p2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitMasks:[I

    aget p2, p2, p3

    and-int/2addr p1, p2

    iget-object p2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitOffsets:[I

    aget p2, p2, p3

    ushr-int/2addr p1, p2

    return p1

    :cond_0
    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffset:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p3, v0, p3

    add-int/2addr p2, p3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSamples(IIIII[I)[I
    .locals 7

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_5

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v0, :cond_5

    add-int v0, p1, p3

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-gt v0, v1, :cond_5

    add-int v0, p2, p4

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-gt v0, v1, :cond_5

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    mul-int p6, p3, p4

    new-array p6, p6, [I

    :goto_0
    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-boolean p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->packed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffsetPacked:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitMasks:[I

    aget p1, p1, p5

    iget-object v1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitOffsets:[I

    aget p5, v1, p5

    move v1, v0

    move v2, v1

    :goto_1
    if-ge v1, p4, :cond_4

    move v4, p2

    move v3, v0

    :goto_2
    if-ge v3, p3, :cond_1

    iget-object v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v5, v4

    add-int/lit8 v5, v2, 0x1

    and-int/2addr v4, p1

    ushr-int/2addr v4, p5

    aput v4, p6, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    move v4, v6

    goto :goto_2

    :cond_1
    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffset:I

    iget-object v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p5, v1, p5

    add-int/2addr p1, p5

    add-int/2addr p2, p1

    move p1, v0

    move p5, p1

    :goto_3
    if-ge p1, p4, :cond_4

    move v2, p2

    move v1, v0

    :goto_4
    if-ge v1, p3, :cond_3

    add-int/lit8 v3, p5, 0x1

    iget-object v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    aput v4, p6, p5

    iget p5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v2, p5

    add-int/lit8 v1, v1, 0x1

    move p5, v3

    goto :goto_4

    :cond_3
    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    return-object p6

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_4

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

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
    .locals 10

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_d

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_d

    add-int v2, p1, p3

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_d

    add-int v2, p2, p4

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_d

    sub-int/2addr p2, v1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-boolean p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->inOrder:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, v2

    add-int/2addr p2, p1

    mul-int/2addr p3, v0

    if-ne p3, v1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    mul-int/2addr p3, p4

    invoke-static {p5, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_c

    :cond_0
    move p1, v2

    :goto_0
    if-ge v2, p4, :cond_c

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    invoke-static {p5, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    add-int/lit8 v2, v2, 0x1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p1, p1, v2

    add-int/2addr p2, p1

    move p1, v2

    move v0, p1

    :goto_1
    if-ge p1, p4, :cond_c

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
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v1, p1, v2

    add-int/2addr p2, v1

    aget v0, p1, v0

    aget p1, p1, v2

    sub-int/2addr v0, p1

    move p1, v2

    move v1, p1

    :goto_3
    if-ge p1, p4, :cond_c

    move v4, p2

    move v3, v2

    :goto_4
    if-ge v3, p3, :cond_4

    iget-object v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p5, v1

    aput-byte v1, v5, v4

    add-int v1, v4, v0

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p5, v6

    aput-byte v6, v5, v1

    add-int/lit8 v3, v3, 0x1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v4, v1

    move v1, v7

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x3

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v3, p1, v2

    add-int/2addr p2, v3

    aget v0, p1, v0

    aget v3, p1, v2

    sub-int/2addr v0, v3

    aget v1, p1, v1

    aget p1, p1, v2

    sub-int/2addr v1, p1

    move p1, v2

    move v3, p1

    :goto_5
    if-ge p1, p4, :cond_c

    move v5, p2

    move v4, v2

    :goto_6
    if-ge v4, p3, :cond_6

    iget-object v6, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, p5, v3

    aput-byte v3, v6, v5

    add-int v3, v5, v0

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p5, v7

    aput-byte v7, v6, v3

    add-int v3, v5, v1

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, p5, v8

    aput-byte v8, v6, v3

    add-int/lit8 v4, v4, 0x1

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v5, v3

    move v3, v7

    goto :goto_6

    :cond_6
    add-int/lit8 p1, p1, 0x1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v4

    goto :goto_5

    :cond_7
    const/4 v4, 0x4

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v4, p1, v2

    add-int/2addr p2, v4

    aget v0, p1, v0

    aget v4, p1, v2

    sub-int/2addr v0, v4

    aget v1, p1, v1

    aget v4, p1, v2

    sub-int/2addr v1, v4

    aget v3, p1, v3

    aget p1, p1, v2

    sub-int/2addr v3, p1

    move p1, v2

    move v4, p1

    :goto_7
    if-ge p1, p4, :cond_c

    move v6, p2

    move v5, v2

    :goto_8
    if-ge v5, p3, :cond_8

    iget-object v7, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p5, v4

    aput-byte v4, v7, v6

    add-int v4, v6, v0

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p5, v8

    aput-byte v8, v7, v4

    add-int v4, v6, v1

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p5, v9

    aput-byte v9, v7, v4

    add-int v4, v6, v3

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p5, v8

    aput-byte v8, v7, v4

    add-int/lit8 v5, v5, 0x1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v6, v4

    move v4, v9

    goto :goto_8

    :cond_8
    add-int/lit8 p1, p1, 0x1

    iget v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v5

    goto :goto_7

    :cond_9
    move p1, v2

    move v0, p1

    :goto_9
    if-ge p1, p4, :cond_c

    move v3, p2

    move v1, v2

    :goto_a
    if-ge v1, p3, :cond_b

    move v4, v2

    :goto_b
    iget v5, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_a

    iget-object v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v6, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, p5, v0

    aput-byte v0, v5, v6

    add-int/lit8 v4, v4, 0x1

    move v0, v7

    goto :goto_b

    :cond_a
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_a

    :cond_b
    add-int/lit8 p1, p1, 0x1

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    goto :goto_9

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataElements(IIIILjava/lang/Object;)V
    .locals 6

    move-object v5, p5

    check-cast v5, [B

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->putByteData(IIII[B)V

    return-void
.end method

.method public setDataElements(IILjava/lang/Object;)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_1

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

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
    .locals 8

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v3

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v4

    add-int v1, p1, v3

    add-int v2, p2, v4

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v6

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt v1, p1, :cond_0

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt v2, p1, :cond_0

    add-int p1, v1, v5

    iget p2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-gt p1, p2, :cond_0

    add-int p1, v2, v6

    iget p2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-gt p1, p2, :cond_0

    move-object v0, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->setDataElements(IIIIIILorg/apache/poi/java/awt/image/Raster;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixels(IIII[I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget v5, v0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt v1, v5, :cond_e

    iget v5, v0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt v2, v5, :cond_e

    add-int v5, v1, v3

    iget v6, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-gt v5, v6, :cond_e

    add-int v5, v2, v4

    iget v6, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-gt v5, v6, :cond_e

    iget v5, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr v2, v5

    iget v5, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr v1, v5

    add-int/2addr v2, v1

    iget-boolean v1, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->packed:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iget v1, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffsetPacked:I

    add-int/2addr v2, v1

    move v1, v5

    move v6, v1

    :goto_0
    if-ge v1, v4, :cond_d

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_1

    move v8, v5

    move v9, v8

    :goto_2
    iget v10, v0, Lorg/apache/poi/java/awt/image/Raster;->numBands:I

    if-ge v8, v10, :cond_0

    add-int/lit8 v10, v6, 0x1

    aget v6, p5, v6

    iget-object v11, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitOffsets:[I

    aget v11, v11, v8

    shl-int/2addr v6, v11

    iget-object v11, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitMasks:[I

    aget v11, v11, v8

    and-int/2addr v6, v11

    or-int/2addr v9, v6

    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_2

    :cond_0
    iget-object v8, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int v10, v2, v7

    int-to-byte v9, v9

    aput-byte v9, v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget v7, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffset:I

    add-int/2addr v2, v1

    iget-object v1, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v6, v1, v5

    iget v7, v0, Lorg/apache/poi/java/awt/image/Raster;->numBands:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    move v1, v5

    move v7, v1

    :goto_3
    if-ge v1, v4, :cond_d

    add-int v8, v2, v6

    move v9, v5

    :goto_4
    if-ge v9, v3, :cond_3

    iget-object v10, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v11, v7, 0x1

    aget v7, p5, v7

    int-to-byte v7, v7

    aput-byte v7, v10, v8

    iget v7, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v8, v7

    add-int/lit8 v9, v9, 0x1

    move v7, v11

    goto :goto_4

    :cond_3
    iget v8, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x2

    if-ne v7, v9, :cond_6

    aget v1, v1, v8

    sub-int/2addr v1, v6

    move v7, v5

    move v8, v7

    :goto_5
    if-ge v7, v4, :cond_d

    add-int v9, v2, v6

    move v10, v5

    :goto_6
    if-ge v10, v3, :cond_5

    iget-object v11, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v12, v8, 0x1

    aget v8, p5, v8

    int-to-byte v8, v8

    aput-byte v8, v11, v9

    add-int v8, v9, v1

    add-int/lit8 v13, v12, 0x1

    aget v12, p5, v12

    int-to-byte v12, v12

    aput-byte v12, v11, v8

    iget v8, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v9, v8

    add-int/lit8 v10, v10, 0x1

    move v8, v13

    goto :goto_6

    :cond_5
    iget v9, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v10, 0x3

    if-ne v7, v10, :cond_8

    aget v7, v1, v8

    sub-int/2addr v7, v6

    aget v1, v1, v9

    sub-int/2addr v1, v6

    move v8, v5

    move v9, v8

    :goto_7
    if-ge v8, v4, :cond_d

    add-int v10, v2, v6

    move v11, v5

    :goto_8
    if-ge v11, v3, :cond_7

    iget-object v12, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v13, v9, 0x1

    aget v9, p5, v9

    int-to-byte v9, v9

    aput-byte v9, v12, v10

    add-int v9, v10, v7

    add-int/lit8 v14, v13, 0x1

    aget v13, p5, v13

    int-to-byte v13, v13

    aput-byte v13, v12, v9

    add-int v9, v10, v1

    add-int/lit8 v13, v14, 0x1

    aget v14, p5, v14

    int-to-byte v14, v14

    aput-byte v14, v12, v9

    iget v9, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v10, v9

    add-int/lit8 v11, v11, 0x1

    move v9, v13

    goto :goto_8

    :cond_7
    iget v10, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    const/4 v11, 0x4

    if-ne v7, v11, :cond_a

    aget v7, v1, v8

    sub-int/2addr v7, v6

    aget v8, v1, v9

    sub-int/2addr v8, v6

    aget v1, v1, v10

    sub-int/2addr v1, v6

    move v9, v5

    move v10, v9

    :goto_9
    if-ge v9, v4, :cond_d

    add-int v11, v2, v6

    move v12, v5

    :goto_a
    if-ge v12, v3, :cond_9

    iget-object v13, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v14, v10, 0x1

    aget v10, p5, v10

    int-to-byte v10, v10

    aput-byte v10, v13, v11

    add-int v10, v11, v7

    add-int/lit8 v15, v14, 0x1

    aget v14, p5, v14

    int-to-byte v14, v14

    aput-byte v14, v13, v10

    add-int v10, v11, v8

    add-int/lit8 v14, v15, 0x1

    aget v15, p5, v15

    int-to-byte v15, v15

    aput-byte v15, v13, v10

    add-int v10, v11, v1

    add-int/lit8 v15, v14, 0x1

    aget v14, p5, v14

    int-to-byte v14, v14

    aput-byte v14, v13, v10

    iget v10, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v11, v10

    add-int/lit8 v12, v12, 0x1

    move v10, v15

    goto :goto_a

    :cond_9
    iget v11, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_a
    move v1, v5

    move v6, v1

    :goto_b
    if-ge v1, v4, :cond_d

    move v8, v2

    move v7, v5

    :goto_c
    if-ge v7, v3, :cond_c

    move v9, v5

    :goto_d
    iget v10, v0, Lorg/apache/poi/java/awt/image/Raster;->numBands:I

    if-ge v9, v10, :cond_b

    iget-object v10, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v11, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget v11, v11, v9

    add-int/2addr v11, v8

    add-int/lit8 v12, v6, 0x1

    aget v6, p5, v6

    int-to-byte v6, v6

    aput-byte v6, v10, v11

    add-int/lit8 v9, v9, 0x1

    move v6, v12

    goto :goto_d

    :cond_b
    iget v9, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_c
    iget v7, v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_e
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Coordinate out of bounds!"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRect(IILorg/apache/poi/java/awt/image/Raster;)V
    .locals 10

    instance-of v0, p3, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/image/WritableRaster;->setRect(IILorg/apache/poi/java/awt/image/Raster;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v2

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v3

    add-int v4, p1, v2

    add-int v5, p2, v3

    iget v6, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-ge v4, v6, :cond_1

    sub-int v4, v6, v4

    sub-int/2addr v0, v4

    add-int/2addr v2, v4

    move v4, v6

    :cond_1
    move v6, v2

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-ge v5, v2, :cond_2

    sub-int v5, v2, v5

    sub-int/2addr v1, v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    move v5, v3

    add-int v3, v4, v0

    iget v8, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-le v3, v8, :cond_3

    sub-int/2addr v8, v4

    goto :goto_1

    :cond_3
    move v8, v0

    :goto_1
    add-int v0, v2, v1

    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-le v0, v3, :cond_4

    sub-int/2addr v3, v2

    move v9, v3

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    move-object v0, p0

    move v1, v4

    move v3, v6

    move v4, v5

    move v5, v8

    move v6, v9

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->setDataElements(IIIIIILorg/apache/poi/java/awt/image/Raster;)V

    return-void
.end method

.method public setSample(IIII)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-ge p2, v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->packed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffsetPacked:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitMasks:[I

    aget p1, p1, p3

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v1, v0, p2

    not-int v2, p1

    and-int/2addr v1, v2

    int-to-byte v1, v1

    iget-object v2, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitOffsets:[I

    aget p3, v2, p3

    shl-int p3, p4, p3

    and-int/2addr p1, p3

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffset:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p3, v0, p3

    add-int/2addr p2, p3

    int-to-byte p3, p4

    aput-byte p3, p1, p2

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Coordinate out of bounds!"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSamples(IIIII[I)V
    .locals 9

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v0, :cond_4

    add-int v0, p1, p3

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxX:I

    if-gt v0, v1, :cond_4

    add-int v0, p2, p4

    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->maxY:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-boolean p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->packed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffsetPacked:I

    add-int/2addr p2, p1

    iget-object p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitMasks:[I

    aget p1, p1, p5

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p4, :cond_3

    move v4, p2

    move v3, v0

    :goto_1
    if-ge v3, p3, :cond_0

    iget-object v5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    aget-byte v6, v5, v4

    not-int v7, p1

    and-int/2addr v6, v7

    int-to-byte v6, v6

    add-int/lit8 v7, v2, 0x1

    aget v2, p6, v2

    iget-object v8, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->bitOffsets:[I

    aget v8, v8, p5

    shl-int/2addr v2, v8

    and-int/2addr v2, p1

    or-int/2addr v2, v6

    int-to-byte v2, v2

    add-int/lit8 v6, v4, 0x1

    aput-byte v2, v5, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    move v2, v7

    goto :goto_1

    :cond_0
    iget v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->dbOffset:I

    iget-object v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->dataOffsets:[I

    aget p5, v1, p5

    add-int/2addr p1, p5

    add-int/2addr p2, p1

    move p1, v0

    move p5, p1

    :goto_2
    if-ge p1, p4, :cond_3

    move v2, p2

    move v1, v0

    :goto_3
    if-ge v1, p3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->data:[B

    add-int/lit8 v4, p5, 0x1

    aget p5, p6, p5

    int-to-byte p5, p5

    aput-byte p5, v3, v2

    iget p5, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->pixelStride:I

    add-int/2addr v2, p5

    add-int/lit8 v1, v1, 0x1

    move p5, v4

    goto :goto_3

    :cond_2
    iget v1, p0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_4
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

    const-string v2, "ByteInterleavedRaster: width = "

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
