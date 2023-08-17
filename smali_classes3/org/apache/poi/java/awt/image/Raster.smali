.class public Lorg/apache/poi/java/awt/image/Raster;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

.field public height:I

.field public minX:I

.field public minY:I

.field public numBands:I

.field public numDataElements:I

.field public parent:Lorg/apache/poi/java/awt/image/Raster;

.field public sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

.field public sampleModelTranslateX:I

.field public sampleModelTranslateY:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->loadLibraries()V

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

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/Raster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/java/awt/image/Raster;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/Raster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/java/awt/image/Raster;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/java/awt/image/Raster;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    iget p2, p3, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iput p2, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    iget v0, p3, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iput v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    iget v1, p3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iput v1, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    iget p3, p3, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iput p3, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    if-lez v1, :cond_3

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, p2

    if-lt v1, p2, :cond_2

    add-int/2addr p3, v0

    if-lt p3, v0, :cond_1

    iget p2, p4, Lorg/apache/poi/java/awt/Point;->x:I

    iput p2, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    iget p2, p4, Lorg/apache/poi/java/awt/Point;->y:I

    iput p2, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/java/awt/image/Raster;->numBands:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumDataElements()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/image/Raster;->numDataElements:I

    iput-object p5, p0, Lorg/apache/poi/java/awt/image/Raster;->parent:Lorg/apache/poi/java/awt/image/Raster;

    return-void

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "overflow condition for Y coordinates of Raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "overflow condition for X coordinates of Raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "negative or zero "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    if-gtz p3, :cond_4

    const-string/jumbo p3, "width"

    goto :goto_1

    :cond_4
    const-string p3, "height"

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "SampleModel, dataBuffer, aRegion and sampleModelTranslate cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createBandedRaster(IIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 8

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    new-array v5, p3, [I

    new-array v6, p3, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    aput v1, v5, v1

    aput v0, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/Raster;->createBandedRaster(IIII[I[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Number of bands ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be greater than 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBandedRaster(IIII[I[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 8

    array-length v1, p5

    if-eqz p4, :cond_6

    const/4 v2, 0x0

    aget v3, p4, v2

    aget v2, p5, v2

    const/4 v4, 0x1

    move v6, v4

    :goto_0
    if-ge v6, v1, :cond_2

    aget v7, p4, v6

    if-le v7, v3, :cond_0

    aget v3, p4, v6

    :cond_0
    aget v7, p5, v6

    if-le v7, v2, :cond_1

    aget v2, p5, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v3, v4

    add-int/lit8 v1, p2, -0x1

    mul-int/2addr v1, p3

    add-int/2addr v2, v1

    add-int/2addr v2, p1

    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_4

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    new-instance v0, Lorg/apache/poi/java/awt/image/DataBufferInt;

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBufferInt;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported data type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBufferUShort;-><init>(II)V

    goto :goto_1

    :cond_5
    new-instance v0, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(II)V

    :goto_1
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->createBandedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;III[I[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Bank indices array is null"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBandedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;III[I[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 9

    const-string v0, "DataBuffer cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p6, :cond_0

    new-instance p6, Lorg/apache/poi/java/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p6, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataType()I

    move-result v7

    array-length v0, p4

    array-length v1, p5

    if-ne v1, v0, :cond_4

    new-instance v8, Lorg/apache/poi/java/awt/image/BandedSampleModel;

    move-object v0, v8

    move v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/BandedSampleModel;-><init>(IIII[I[I)V

    if-eqz v7, :cond_3

    const/4 p1, 0x1

    if-eq v7, p1, :cond_2

    const/4 p1, 0x3

    if-ne v7, p1, :cond_1

    new-instance p1, Lorg/apache/poi/sun/awt/image/SunWritableRaster;

    invoke-direct {p1, v8, p0, p6}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported data type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Lorg/apache/poi/sun/awt/image/ShortBandedRaster;

    invoke-direct {p1, v8, p0, p6}, Lorg/apache/poi/sun/awt/image/ShortBandedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/apache/poi/sun/awt/image/ByteBandedRaster;

    invoke-direct {p1, v8, p0, p6}, Lorg/apache/poi/sun/awt/image/ByteBandedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bankIndices.length != bandOffsets.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createInterleavedRaster(IIIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 8

    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p3

    mul-int v1, p4, p1

    add-int/2addr v0, v1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    new-instance p0, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/image/DataBufferUShort;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported data type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(I)V

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;IIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public static createInterleavedRaster(IIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 7

    new-array v5, p3, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aput v0, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int v3, p1, p3

    move v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public static createInterleavedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;IIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 9

    const-string v0, "DataBuffer cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p6, :cond_0

    new-instance p6, Lorg/apache/poi/java/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p6, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataType()I

    move-result v7

    new-instance v8, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    move-object v0, v8

    move v1, v7

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    if-eqz v7, :cond_2

    const/4 p1, 0x1

    if-ne v7, p1, :cond_1

    new-instance p1, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;

    invoke-direct {p1, v8, p0, p6}, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported data type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-direct {p1, v8, p0, p6}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1
.end method

.method public static createPackedRaster(IIIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 8

    const-string v0, ") must be greater than 0"

    if-lez p3, :cond_9

    if-lez p4, :cond_8

    const-string v0, "Unsupported data type "

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_4

    new-array v3, p3, [I

    shl-int v4, v2, p4

    sub-int/2addr v4, v2

    add-int/lit8 v5, p3, -0x1

    mul-int/2addr v5, p4

    add-int v6, v5, p4

    invoke-static {p0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v7

    if-gt v6, v7, :cond_3

    if-eqz p0, :cond_1

    if-eq p0, v2, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    shl-int v1, v4, v5

    aput v1, v3, v0

    sub-int/2addr v5, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, p2, v3, p5}, Lorg/apache/poi/java/awt/image/Raster;->createPackedRaster(III[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bitsPerBand("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") * bands is  greater than data type size."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    int-to-double v3, p1

    if-eqz p0, :cond_7

    if-eq p0, v2, :cond_6

    if-ne p0, v1, :cond_5

    new-instance p0, Lorg/apache/poi/java/awt/image/DataBufferInt;

    const/16 p3, 0x20

    div-int/2addr p3, p4

    int-to-double v0, p3

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    mul-int/2addr p3, p2

    invoke-direct {p0, p3}, Lorg/apache/poi/java/awt/image/DataBufferInt;-><init>(I)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    const/16 p3, 0x10

    div-int/2addr p3, p4

    int-to-double v0, p3

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    mul-int/2addr p3, p2

    invoke-direct {p0, p3}, Lorg/apache/poi/java/awt/image/DataBufferUShort;-><init>(I)V

    goto :goto_2

    :cond_7
    new-instance p0, Lorg/apache/poi/java/awt/image/DataBufferByte;

    const/16 p3, 0x8

    div-int/2addr p3, p4

    int-to-double v0, p3

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    mul-int/2addr p3, p2

    invoke-direct {p0, p3}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(I)V

    :goto_2
    invoke-static {p0, p1, p2, p4, p5}, Lorg/apache/poi/java/awt/image/Raster;->createPackedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;IIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bits per band ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Number of bands ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPackedRaster(III[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 7

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance p0, Lorg/apache/poi/java/awt/image/DataBufferInt;

    mul-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/image/DataBufferInt;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported data type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    mul-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/image/DataBufferUShort;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/poi/java/awt/image/DataBufferByte;

    mul-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(I)V

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->createPackedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;III[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public static createPackedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;IIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 3

    const-string v0, "DataBuffer cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p4, :cond_0

    new-instance p4, Lorg/apache/poi/java/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p4, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported data type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getNumBanks()I

    move-result v2

    if-ne v2, v1, :cond_5

    new-instance v2, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    if-nez v0, :cond_4

    if-eq p3, v1, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    const/4 p1, 0x4

    if-ne p3, p1, :cond_4

    :cond_3
    new-instance p1, Lorg/apache/poi/sun/awt/image/BytePackedRaster;

    invoke-direct {p1, v2, p0, p4}, Lorg/apache/poi/sun/awt/image/BytePackedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/apache/poi/sun/awt/image/SunWritableRaster;

    invoke-direct {p1, v2, p0, p4}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1

    :cond_5
    new-instance p0, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p1, "DataBuffer for packed Rasters must only have 1 bank."

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPackedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;III[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 8

    const-string v0, "DataBuffer cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p5, :cond_0

    new-instance p5, Lorg/apache/poi/java/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p5, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataType()I

    move-result v6

    new-instance v7, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    move-object v0, v7

    move v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;-><init>(IIII[I)V

    if-eqz v6, :cond_3

    const/4 p1, 0x1

    if-eq v6, p1, :cond_2

    const/4 p1, 0x3

    if-ne v6, p1, :cond_1

    new-instance p1, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;

    invoke-direct {p1, v7, p0, p5}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported data type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;

    invoke-direct {p1, v7, p0, p5}, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-direct {p1, v7, p0, p5}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object p1
.end method

.method public static createRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/Raster;
    .locals 4

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/poi/java/awt/Point;

    invoke-direct {p2, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v1

    instance-of v2, p0, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_3
    instance-of v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_5
    new-instance v0, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_6
    new-instance v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_7
    instance-of v2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_8

    new-instance v0, Lorg/apache/poi/sun/awt/image/BytePackedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/BytePackedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_8
    :goto_0
    new-instance v0, Lorg/apache/poi/java/awt/image/Raster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/java/awt/image/Raster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "SampleModel and DataBuffer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/java/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->createDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/java/awt/image/Raster;->createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public static createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 4

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/poi/java/awt/Point;

    invoke-direct {p2, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v1

    instance-of v2, p0, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_3
    instance-of v2, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_5
    new-instance v0, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/ShortInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_6
    new-instance v0, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_7
    instance-of v2, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_8

    new-instance v0, Lorg/apache/poi/sun/awt/image/BytePackedRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/BytePackedRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_8
    :goto_0
    new-instance v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "SampleModel and DataBuffer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createChild(IIIIII[I)Lorg/apache/poi/java/awt/image/Raster;
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_3

    add-int v2, p1, p3

    if-lt v2, p1, :cond_2

    iget v3, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    add-int/2addr v3, v0

    if-gt v2, v3, :cond_2

    add-int v0, p2, p4

    if-lt v0, p2, :cond_1

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    add-int/2addr v2, v1

    if-gt v0, v2, :cond_1

    if-nez p7, :cond_0

    iget-object p7, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v0, p7}, Lorg/apache/poi/java/awt/image/SampleModel;->createSubsetSampleModel([I)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p7

    :goto_0
    sub-int p1, p5, p1

    sub-int p2, p6, p2

    new-instance v0, Lorg/apache/poi/java/awt/image/Raster;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

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

    invoke-direct/range {p1 .. p6}, Lorg/apache/poi/java/awt/image/Raster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/java/awt/image/Raster;)V

    return-object v0

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "(parentY + height) is outside raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "(parentX + width) is outside raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "parentY lies outside raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/apache/poi/java/awt/image/RasterFormatException;

    const-string p2, "parentX lies outside raster"

    invoke-direct {p1, p2}, Lorg/apache/poi/java/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCompatibleWritableRaster()Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 4

    new-instance v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    new-instance v2, Lorg/apache/poi/java/awt/Point;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)V

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

    new-instance p2, Lorg/apache/poi/sun/awt/image/SunWritableRaster;

    new-instance v0, Lorg/apache/poi/java/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-direct {p2, p1, v0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)V

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

.method public createCompatibleWritableRaster(IIII)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 8

    invoke-virtual {p0, p3, p4}, Lorg/apache/poi/java/awt/image/Raster;->createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    return-object p1
.end method

.method public createCompatibleWritableRaster(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 3

    const-string v0, "Rect cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v2, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget p1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/poi/java/awt/image/Raster;->createCompatibleWritableRaster(IIII)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    return-object p1
.end method

.method public createTranslatedChild(II)Lorg/apache/poi/java/awt/image/Raster;
    .locals 8

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    iget v3, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    iget v4, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/Raster;->createChild(IIIIII[I)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object p1

    return-object p1
.end method

.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    iget v2, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    iget v3, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    iget v4, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    return-object v0
.end method

.method public getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataElements(IIIILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDataElements(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataElements(IILjava/lang/Object;Lorg/apache/poi/java/awt/image/DataBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->height:I

    return v0
.end method

.method public final getMinX()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minX:I

    return v0
.end method

.method public final getMinY()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->minY:I

    return v0
.end method

.method public final getNumBands()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->numBands:I

    return v0
.end method

.method public final getNumDataElements()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumDataElements()I

    move-result v0

    return v0
.end method

.method public getParent()Lorg/apache/poi/java/awt/image/Raster;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->parent:Lorg/apache/poi/java/awt/image/Raster;

    return-object v0
.end method

.method public getPixel(II[D)[D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getPixel(II[DLorg/apache/poi/java/awt/image/DataBuffer;)[D

    move-result-object p1

    return-object p1
.end method

.method public getPixel(II[F)[F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getPixel(II[FLorg/apache/poi/java/awt/image/DataBuffer;)[F

    move-result-object p1

    return-object p1
.end method

.method public getPixel(II[I)[I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getPixel(II[ILorg/apache/poi/java/awt/image/DataBuffer;)[I

    move-result-object p1

    return-object p1
.end method

.method public getPixels(IIII[D)[D
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/SampleModel;->getPixels(IIII[DLorg/apache/poi/java/awt/image/DataBuffer;)[D

    move-result-object p1

    return-object p1
.end method

.method public getPixels(IIII[F)[F
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/SampleModel;->getPixels(IIII[FLorg/apache/poi/java/awt/image/DataBuffer;)[F

    move-result-object p1

    return-object p1
.end method

.method public getPixels(IIII[I)[I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v6, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/SampleModel;->getPixels(IIII[ILorg/apache/poi/java/awt/image/DataBuffer;)[I

    move-result-object p1

    return-object p1
.end method

.method public getSample(III)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSample(IIILorg/apache/poi/java/awt/image/DataBuffer;)I

    move-result p1

    return p1
.end method

.method public getSampleDouble(III)D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleDouble(IIILorg/apache/poi/java/awt/image/DataBuffer;)D

    move-result-wide p1

    return-wide p1
.end method

.method public getSampleFloat(III)F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleFloat(IIILorg/apache/poi/java/awt/image/DataBuffer;)F

    move-result p1

    return p1
.end method

.method public getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    return-object v0
.end method

.method public final getSampleModelTranslateX()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    return v0
.end method

.method public final getSampleModelTranslateY()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    return v0
.end method

.method public getSamples(IIIII[D)[D
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/SampleModel;->getSamples(IIIII[DLorg/apache/poi/java/awt/image/DataBuffer;)[D

    move-result-object p1

    return-object p1
.end method

.method public getSamples(IIIII[F)[F
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/SampleModel;->getSamples(IIIII[FLorg/apache/poi/java/awt/image/DataBuffer;)[F

    move-result-object p1

    return-object p1
.end method

.method public getSamples(IIIII[I)[I
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/SampleModel;->getSamples(IIIII[ILorg/apache/poi/java/awt/image/DataBuffer;)[I

    move-result-object p1

    return-object p1
.end method

.method public final getTransferType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/Raster;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/Raster;->width:I

    return v0
.end method
