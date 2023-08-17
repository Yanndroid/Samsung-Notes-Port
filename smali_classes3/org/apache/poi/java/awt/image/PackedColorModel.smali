.class public abstract Lorg/apache/poi/java/awt/image/PackedColorModel;
.super Lorg/apache/poi/java/awt/image/ColorModel;
.source "SourceFile"


# instance fields
.field public maskArray:[I

.field public maskOffsets:[I

.field public scaleFactors:[F


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZII)V
    .locals 12

    move-object v8, p0

    move/from16 v9, p6

    invoke-static/range {p3 .. p6}, Lorg/apache/poi/java/awt/image/PackedColorModel;->createBitsArray(IIII)[I

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ColorModel;-><init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget v0, v8, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v1, v0, [I

    iput-object v1, v8, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    new-array v1, v0, [I

    iput-object v1, v8, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskOffsets:[I

    new-array v0, v0, [F

    iput-object v0, v8, Lorg/apache/poi/java/awt/image/PackedColorModel;->scaleFactors:[F

    const-string v0, "red"

    move v1, p3

    invoke-direct {p0, p3, v10, v0}, Lorg/apache/poi/java/awt/image/PackedColorModel;->DecomposeMask(IILjava/lang/String;)V

    const-string v0, "green"

    move/from16 v1, p4

    invoke-direct {p0, v1, v11, v0}, Lorg/apache/poi/java/awt/image/PackedColorModel;->DecomposeMask(IILjava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "blue"

    move/from16 v2, p5

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/java/awt/image/PackedColorModel;->DecomposeMask(IILjava/lang/String;)V

    if-eqz v9, :cond_1

    const/4 v1, 0x3

    const-string v2, "alpha"

    invoke-direct {p0, v9, v1, v2}, Lorg/apache/poi/java/awt/image/PackedColorModel;->DecomposeMask(IILjava/lang/String;)V

    iget-object v2, v8, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v1, v2, v1

    if-ne v1, v11, :cond_1

    iput v0, v8, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ColorSpace must be TYPE_RGB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/color/ColorSpace;I[IIZII)V
    .locals 13

    move-object v8, p0

    move v9, p2

    move/from16 v10, p4

    invoke-static/range {p3 .. p4}, Lorg/apache/poi/java/awt/image/PackedColorModel;->createBitsArray([II)[I

    move-result-object v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v10, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v12

    :goto_0
    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ColorModel;-><init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    if-lt v9, v12, :cond_3

    const/16 v0, 0x20

    if-gt v9, v0, :cond_3

    iget v0, v8, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    new-array v1, v0, [I

    iput-object v1, v8, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    new-array v1, v0, [I

    iput-object v1, v8, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskOffsets:[I

    new-array v0, v0, [F

    iput-object v0, v8, Lorg/apache/poi/java/awt/image/PackedColorModel;->scaleFactors:[F

    :goto_1
    iget v0, v8, Lorg/apache/poi/java/awt/image/ColorModel;->numColorComponents:I

    if-ge v11, v0, :cond_1

    aget v0, p3, v11

    move-object v1, p1

    invoke-virtual {p1, v11}, Lorg/apache/poi/java/awt/color/ColorSpace;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v11, v2}, Lorg/apache/poi/java/awt/image/PackedColorModel;->DecomposeMask(IILjava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    const-string v1, "alpha"

    invoke-direct {p0, v10, v0, v1}, Lorg/apache/poi/java/awt/image/PackedColorModel;->DecomposeMask(IILjava/lang/String;)V

    iget-object v0, v8, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    iget v1, v8, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    sub-int/2addr v1, v12

    aget v0, v0, v1

    if-ne v0, v12, :cond_2

    const/4 v0, 0x2

    iput v0, v8, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits must be between 1 and 32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DecomposeMask(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aget v0, v0, p2

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    aput p1, v1, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :goto_0
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int p1, v1, v0

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    if-gt p1, v2, :cond_2

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskOffsets:[I

    aput v1, p1, p2

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->scaleFactors:[F

    if-nez v0, :cond_1

    const/high16 p3, 0x43800000    # 256.0f

    aput p3, p1, p2

    goto :goto_1

    :cond_1
    const/high16 p3, 0x437f0000    # 255.0f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p3, v0

    aput p3, p1, p2

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mask "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    aget p2, p3, p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " overflows pixel (expecting "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bits"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final countBits(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    return v0
.end method

.method private static final createBitsArray(IIII)[I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x3

    add-int/2addr v2, v3

    new-array v2, v2, [I

    invoke-static {p0}, Lorg/apache/poi/java/awt/image/PackedColorModel;->countBits(I)I

    move-result v4

    aput v4, v2, v0

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/PackedColorModel;->countBits(I)I

    move-result v4

    aput v4, v2, v1

    invoke-static {p2}, Lorg/apache/poi/java/awt/image/PackedColorModel;->countBits(I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v2, v5

    aget v0, v2, v0

    if-ltz v0, :cond_5

    aget p0, v2, v1

    if-ltz p0, :cond_4

    aget p0, v2, v5

    if-ltz p0, :cond_3

    if-eqz p3, :cond_2

    invoke-static {p3}, Lorg/apache/poi/java/awt/image/PackedColorModel;->countBits(I)I

    move-result p0

    aput p0, v2, v3

    aget p0, v2, v3

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Noncontiguous alpha mask ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Noncontiguous blue mask ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Noncontiguous green mask ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Noncontiguous red mask ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final createBitsArray([II)[I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v0

    new-array v2, v2, [I

    :goto_1
    if-ge v1, v0, :cond_2

    aget v3, p0, v1

    invoke-static {v3}, Lorg/apache/poi/java/awt/image/PackedColorModel;->countBits(I)I

    move-result v3

    aput v3, v2, v1

    aget v3, v2, v1

    if-ltz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Noncontiguous color mask ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "at index "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/PackedColorModel;->countBits(I)I

    move-result p0

    aput p0, v2, v0

    aget p0, v2, v0

    if-ltz p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Noncontiguous alpha mask ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-object v2
.end method


# virtual methods
.method public createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;-><init>(III[I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/poi/java/awt/image/PackedColorModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/apache/poi/java/awt/image/PackedColorModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getNumComponents()I

    move-result v0

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    aget v3, v3, v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/image/PackedColorModel;->getMask(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getAlphaRaster(Lorg/apache/poi/java/awt/image/WritableRaster;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v6

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v2

    sub-int/2addr v2, v0

    aput v2, v7, v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v4

    move-object v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    return-object p1
.end method

.method public final getMask(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getMasks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public isCompatibleSampleModel(Lorg/apache/poi/java/awt/image/SampleModel;)Z
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result v0

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getBitMasks()[I

    move-result-object p1

    array-length v0, p1

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    array-length v2, v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v0

    const-wide/16 v2, 0x1

    shl-long v4, v2, v0

    sub-long/2addr v4, v2

    long-to-int v0, v4

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    aget v3, p1, v2

    and-int/2addr v3, v0

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/PackedColorModel;->maskArray:[I

    aget v4, v4, v2

    and-int/2addr v4, v0

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
