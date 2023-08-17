.class public Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;
.super Lorg/apache/poi/java/awt/image/ComponentSampleModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIIII[I)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;-><init>(IIIII[I)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    const/4 p3, 0x0

    aget p6, p1, p3

    aget p1, p1, p3

    const/4 p3, 0x1

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v1, v0

    if-ge p3, v1, :cond_0

    aget v0, v0, p3

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result p6

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v0, v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p6

    if-gt p1, p5, :cond_3

    mul-int/2addr p2, p4

    if-gt p2, p5, :cond_2

    if-lt p4, p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel stride must be greater than or equal to the offsets between bands"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel stride times width must be less than or equal to the scanline stride"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Offsets between bands must be less than the scanline  stride"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    array-length v0, v0

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v5, v4, v3

    if-ge v5, v2, :cond_0

    aget v2, v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    new-array v3, v0, [I

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v4, v4, v1

    sub-int/2addr v4, v2

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    :cond_3
    move-object v10, v3

    new-instance v0, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    iget v5, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget v8, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int v9, v8, p1

    move-object v4, v0

    move v6, p1

    move v7, p2

    invoke-direct/range {v4 .. v10}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    return-object v0
.end method

.method public createSubsetSampleModel([I)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 8

    array-length v0, p1

    new-array v7, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, p1, v0

    aget v1, v1, v2

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    iget v2, p0, Lorg/apache/poi/java/awt/image/SampleModel;->dataType:I

    iget v3, p0, Lorg/apache/poi/java/awt/image/SampleModel;->width:I

    iget v4, p0, Lorg/apache/poi/java/awt/image/SampleModel;->height:I

    iget v5, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->pixelStride:I

    iget v6, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->scanlineStride:I

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
