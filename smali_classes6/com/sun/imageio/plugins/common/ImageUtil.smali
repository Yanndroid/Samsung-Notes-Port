.class public Lcom/sun/imageio/plugins/common/ImageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final canEncodeImage(Lorg/apache/poi/javax/imageio/ImageWriter;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/sun/imageio/plugins/common/ImageUtil;->canEncodeImage(Lorg/apache/poi/javax/imageio/ImageWriter;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)V

    return-void
.end method

.method public static final canEncodeImage(Lorg/apache/poi/javax/imageio/ImageWriter;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOriginatingProvider()Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->canEncodeImage(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageUtil2"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, [B

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    check-cast p0, [B

    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, p0, [I

    if-eqz v1, :cond_4

    check-cast p0, [I

    :goto_1
    array-length v1, p0

    if-ge v3, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    instance-of v1, p0, [S

    if-eqz v1, :cond_6

    check-cast p0, [S

    :goto_2
    array-length v1, p0

    if-ge v3, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-short v0, p0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createColorModel(Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/image/SampleModel;)Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 20

    move-object/from16 v0, p1

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_11

    const/4 v4, 0x4

    if-le v1, v4, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v11

    instance-of v5, v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    const/16 v6, 0x3e8

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v5, :cond_9

    if-ltz v11, :cond_8

    const/4 v0, 0x5

    if-le v11, v0, :cond_1

    goto :goto_6

    :cond_1
    if-nez p0, :cond_3

    if-gt v1, v8, :cond_2

    const/16 v0, 0x3eb

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object/from16 v6, p0

    :goto_1
    if-eq v1, v8, :cond_5

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    move v8, v9

    goto :goto_3

    :cond_5
    :goto_2
    move v8, v3

    :goto_3
    if-eqz v8, :cond_6

    move v10, v7

    goto :goto_4

    :cond_6
    move v10, v3

    :goto_4
    const/4 v0, 0x0

    invoke-static {v11}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v2

    new-array v7, v1, [I

    :goto_5
    if-ge v9, v1, :cond_7

    aput v2, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    new-instance v2, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    move-object v5, v2

    move v9, v0

    invoke-direct/range {v5 .. v11}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    goto/16 :goto_c

    :cond_8
    :goto_6
    return-object v2

    :cond_9
    instance-of v1, v0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getBitMasks()[I

    move-result-object v2

    array-length v5, v2

    if-gt v5, v8, :cond_b

    aget v4, v2, v9

    if-ne v5, v8, :cond_a

    aget v2, v2, v3

    move/from16 v17, v2

    move v14, v4

    move v15, v14

    move/from16 v16, v15

    goto :goto_8

    :cond_a
    move v14, v4

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v9

    goto :goto_8

    :cond_b
    aget v10, v2, v9

    aget v3, v2, v3

    aget v8, v2, v8

    if-ne v5, v4, :cond_c

    aget v2, v2, v7

    move/from16 v17, v2

    move v15, v3

    move/from16 v16, v8

    goto :goto_7

    :cond_c
    move v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    :goto_7
    move v14, v10

    :goto_8
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getSampleSize()[I

    move-result-object v1

    move v13, v9

    :goto_9
    array-length v2, v1

    if-ge v9, v2, :cond_d

    aget v2, v1, v9

    add-int/2addr v13, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_d
    if-nez p0, :cond_e

    invoke-static {v6}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v1

    move-object v12, v1

    goto :goto_a

    :cond_e
    move-object/from16 v12, p0

    :goto_a
    new-instance v2, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v19

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZI)V

    goto :goto_c

    :cond_f
    instance-of v1, v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    if-eqz v1, :cond_11

    check-cast v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getPixelBitStride()I

    move-result v11

    shl-int v12, v3, v11

    new-array v15, v12, [B

    :goto_b
    if-ge v9, v12, :cond_10

    mul-int/lit16 v0, v9, 0xff

    add-int/lit8 v1, v12, -0x1

    div-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_10
    new-instance v2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    move-object v10, v2

    move-object v13, v15

    move-object v14, v15

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    :cond_11
    :goto_c
    return-object v2

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageUtil1"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final createColorModel(Lorg/apache/poi/java/awt/image/SampleModel;)Lorg/apache/poi/java/awt/image/ColorModel;
    .locals 15

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v6

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v6, :cond_0

    if-eq v6, v4, :cond_0

    if-eq v6, v3, :cond_0

    if-eq v6, v1, :cond_0

    if-eq v6, v2, :cond_0

    const/4 v5, 0x5

    if-eq v6, v5, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v5

    instance-of v7, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result p0

    if-gt p0, v3, :cond_1

    const/16 v0, 0x3eb

    :goto_0
    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_1
    if-gt p0, v2, :cond_2

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sun/imageio/plugins/common/BogusColorSpace;

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/common/BogusColorSpace;-><init>(I)V

    goto :goto_1

    :goto_2
    if-eq p0, v3, :cond_4

    if-ne p0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v8

    goto :goto_4

    :cond_4
    :goto_3
    move v3, v4

    :goto_4
    const/4 p0, 0x0

    if-eqz v3, :cond_5

    move v8, v1

    goto :goto_5

    :cond_5
    move v8, v4

    :goto_5
    new-instance v9, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    move-object v0, v9

    move-object v1, v7

    move-object v2, v5

    move v4, p0

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    goto/16 :goto_a

    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v6

    if-gt v6, v2, :cond_b

    instance-of v6, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v6, :cond_b

    check-cast p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getBitMasks()[I

    move-result-object p0

    array-length v0, p0

    if-gt v0, v3, :cond_8

    aget v1, p0, v8

    if-ne v0, v3, :cond_7

    aget p0, p0, v4

    move v14, p0

    move v11, v1

    move v12, v11

    move v13, v12

    goto :goto_7

    :cond_7
    move v11, v1

    move v12, v11

    move v13, v12

    goto :goto_6

    :cond_8
    aget v6, p0, v8

    aget v4, p0, v4

    aget v3, p0, v3

    if-ne v0, v2, :cond_9

    aget p0, p0, v1

    move v14, p0

    move v13, v3

    move v12, v4

    move v11, v6

    goto :goto_7

    :cond_9
    move v13, v3

    move v12, v4

    move v11, v6

    :goto_6
    move v14, v8

    :goto_7
    move v10, v8

    :goto_8
    array-length p0, v5

    if-ge v8, p0, :cond_a

    aget p0, v5, v8

    add-int/2addr v10, p0

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    new-instance p0, Lorg/apache/poi/java/awt/image/DirectColorModel;

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIIII)V

    return-object p0

    :cond_b
    instance-of p0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    if-eqz p0, :cond_d

    aget v10, v5, v8

    shl-int v11, v4, v10

    new-array v14, v11, [B

    :goto_9
    if-ge v8, v11, :cond_c

    mul-int/lit16 p0, v8, 0xff

    add-int/lit8 v0, v11, -0x1

    div-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_c
    new-instance v0, Lorg/apache/poi/java/awt/image/IndexColorModel;

    move-object v9, v0

    move-object v12, v14

    move-object v13, v14

    invoke-direct/range {v9 .. v14}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    :cond_d
    :goto_a
    return-object v0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "sampleModel == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBandSize(Lorg/apache/poi/java/awt/image/SampleModel;)J
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v0

    instance-of v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v2, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    :cond_0
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getHeight()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr v1, p0

    int-to-long v1, v1

    add-long/2addr v3, v1

    :cond_1
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr v3, v0

    return-wide v3

    :cond_2
    invoke-static {p0}, Lcom/sun/imageio/plugins/common/ImageUtil;->getTileSize(Lorg/apache/poi/java/awt/image/SampleModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getElementSize(Lorg/apache/poi/java/awt/image/SampleModel;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v0

    instance-of v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getSampleSize(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result p0

    mul-int/2addr v0, p0

    return v0

    :cond_1
    instance-of v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result p0

    mul-int/2addr p0, v0

    return p0

    :cond_2
    instance-of v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v1, :cond_0

    return v0
.end method

.method public static getPackedBinaryData(Lorg/apache/poi/java/awt/image/Raster;Lorg/apache/poi/java/awt/Rectangle;)[B
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->isBinary(Lorg/apache/poi/java/awt/image/SampleModel;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v3, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v6

    sub-int/2addr v3, v6

    check-cast v1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v6

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/DataBuffer;->getOffset()I

    move-result v7

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getOffset(II)I

    move-result v3

    add-int/2addr v7, v3

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getBitOffset(I)I

    move-result v1

    add-int/lit8 v2, v4, 0x7

    const/16 v3, 0x8

    div-int/2addr v2, v3

    instance-of v8, v5, Lorg/apache/poi/java/awt/image/DataBufferByte;

    if-eqz v8, :cond_0

    if-nez v7, :cond_0

    if-nez v1, :cond_0

    if-ne v2, v6, :cond_0

    move-object v9, v5

    check-cast v9, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v10

    array-length v10, v10

    mul-int v11, v2, v0

    if-ne v10, v11, :cond_0

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v0

    return-object v0

    :cond_0
    mul-int v9, v2, v0

    new-array v9, v9, [B

    const/16 v10, 0x18

    const/4 v11, 0x0

    if-nez v1, :cond_9

    if-eqz v8, :cond_1

    check-cast v5, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v1

    move v3, v11

    :goto_0
    if-ge v11, v0, :cond_15

    invoke-static {v1, v7, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    add-int/2addr v7, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, v5, Lorg/apache/poi/java/awt/image/DataBufferShort;

    if-nez v1, :cond_5

    instance-of v2, v5, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    instance-of v1, v5, Lorg/apache/poi/java/awt/image/DataBufferInt;

    if-eqz v1, :cond_15

    check-cast v5, Lorg/apache/poi/java/awt/image/DataBufferInt;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData()[I

    move-result-object v1

    move v2, v11

    :goto_1
    if-ge v11, v0, :cond_15

    move v3, v4

    move v5, v7

    :goto_2
    if-le v3, v10, :cond_3

    add-int/lit8 v8, v5, 0x1

    aget v5, v1, v5

    add-int/lit8 v12, v2, 0x1

    ushr-int/lit8 v13, v5, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v9, v2

    add-int/lit8 v2, v12, 0x1

    ushr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    add-int/lit8 v12, v2, 0x1

    ushr-int/lit8 v13, v5, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v9, v2

    add-int/lit8 v2, v12, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v9, v12

    add-int/lit8 v3, v3, -0x20

    move v5, v8

    goto :goto_2

    :cond_3
    move v8, v10

    :goto_3
    if-lez v3, :cond_4

    add-int/lit8 v12, v2, 0x1

    aget v13, v1, v5

    ushr-int/2addr v13, v8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v9, v2

    add-int/lit8 v8, v8, -0x8

    add-int/lit8 v3, v3, -0x8

    move v2, v12

    goto :goto_3

    :cond_4
    add-int/2addr v7, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    check-cast v5, Lorg/apache/poi/java/awt/image/DataBufferShort;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/DataBufferShort;->getData()[S

    move-result-object v1

    goto :goto_5

    :cond_6
    check-cast v5, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/DataBufferUShort;->getData()[S

    move-result-object v1

    :goto_5
    move v2, v11

    :goto_6
    if-ge v11, v0, :cond_15

    move v5, v4

    move v8, v7

    :goto_7
    if-le v5, v3, :cond_7

    add-int/lit8 v10, v8, 0x1

    aget-short v8, v1, v8

    add-int/lit8 v12, v2, 0x1

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v9, v2

    add-int/lit8 v2, v12, 0x1

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v9, v12

    add-int/lit8 v5, v5, -0x10

    move v8, v10

    goto :goto_7

    :cond_7
    if-lez v5, :cond_8

    add-int/lit8 v5, v2, 0x1

    aget-short v8, v1, v8

    ushr-int/2addr v8, v3

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v9, v2

    move v2, v5

    :cond_8
    add-int/2addr v7, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_9
    if-eqz v8, :cond_d

    check-cast v5, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v3

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_a

    move v1, v11

    :goto_8
    if-ge v11, v0, :cond_15

    invoke-static {v3, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    add-int/2addr v7, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_a
    rsub-int/lit8 v2, v1, 0x8

    move v5, v11

    :goto_9
    if-ge v11, v0, :cond_15

    move v8, v4

    move v10, v7

    :goto_a
    if-lez v8, :cond_c

    add-int/lit8 v12, v5, 0x1

    if-le v8, v2, :cond_b

    add-int/lit8 v13, v10, 0x1

    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v1

    aget-byte v14, v3, v13

    and-int/lit16 v14, v14, 0xff

    ushr-int/2addr v14, v2

    or-int/2addr v10, v14

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    move v5, v12

    move v10, v13

    goto :goto_b

    :cond_b
    aget-byte v13, v3, v10

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v1

    int-to-byte v13, v13

    aput-byte v13, v9, v5

    move v5, v12

    :goto_b
    add-int/lit8 v8, v8, -0x8

    goto :goto_a

    :cond_c
    add-int/2addr v7, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_d
    instance-of v2, v5, Lorg/apache/poi/java/awt/image/DataBufferShort;

    if-nez v2, :cond_11

    instance-of v8, v5, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    if-eqz v8, :cond_e

    goto :goto_f

    :cond_e
    instance-of v2, v5, Lorg/apache/poi/java/awt/image/DataBufferInt;

    if-eqz v2, :cond_15

    check-cast v5, Lorg/apache/poi/java/awt/image/DataBufferInt;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData()[I

    move-result-object v2

    move v3, v11

    move v5, v3

    :goto_c
    if-ge v3, v0, :cond_15

    move v12, v1

    move v8, v11

    :goto_d
    if-ge v8, v4, :cond_10

    div-int/lit8 v13, v12, 0x20

    add-int/2addr v13, v7

    rem-int/lit8 v14, v12, 0x20

    aget v15, v2, v13

    if-gt v14, v10, :cond_f

    add-int/lit8 v13, v5, 0x1

    rsub-int/lit8 v14, v14, 0x18

    ushr-int v14, v15, v14

    int-to-byte v14, v14

    aput-byte v14, v9, v5

    move v5, v13

    goto :goto_e

    :cond_f
    add-int/lit8 v14, v14, -0x18

    add-int/lit8 v13, v13, 0x1

    aget v13, v2, v13

    add-int/lit8 v16, v5, 0x1

    shl-int/2addr v15, v14

    rsub-int/lit8 v14, v14, 0x20

    ushr-int/2addr v13, v14

    or-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v9, v5

    move/from16 v5, v16

    :goto_e
    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v12, v12, 0x8

    goto :goto_d

    :cond_10
    add-int/2addr v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_11
    :goto_f
    if-eqz v2, :cond_12

    check-cast v5, Lorg/apache/poi/java/awt/image/DataBufferShort;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/DataBufferShort;->getData()[S

    move-result-object v2

    goto :goto_10

    :cond_12
    check-cast v5, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/DataBufferUShort;->getData()[S

    move-result-object v2

    :goto_10
    move v5, v11

    move v8, v5

    :goto_11
    if-ge v5, v0, :cond_15

    move v12, v1

    move v10, v11

    :goto_12
    if-ge v10, v4, :cond_14

    div-int/lit8 v13, v12, 0x10

    add-int/2addr v13, v7

    rem-int/lit8 v14, v12, 0x10

    aget-short v15, v2, v13

    const v16, 0xffff

    and-int v15, v15, v16

    if-gt v14, v3, :cond_13

    add-int/lit8 v13, v8, 0x1

    rsub-int/lit8 v14, v14, 0x8

    ushr-int v14, v15, v14

    int-to-byte v14, v14

    aput-byte v14, v9, v8

    move v8, v13

    goto :goto_13

    :cond_13
    add-int/lit8 v14, v14, -0x8

    add-int/lit8 v13, v13, 0x1

    aget-short v13, v2, v13

    and-int v13, v13, v16

    add-int/lit8 v16, v8, 0x1

    shl-int/2addr v15, v14

    rsub-int/lit8 v14, v14, 0x10

    ushr-int/2addr v13, v14

    or-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v9, v8

    move/from16 v8, v16

    :goto_13
    add-int/lit8 v10, v10, 0x8

    add-int/lit8 v12, v12, 0x8

    goto :goto_12

    :cond_14
    add-int/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_15
    return-object v9

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageUtil0"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTileSize(Lorg/apache/poi/java/awt/image/SampleModel;)J
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v0

    instance-of v1, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getDataBitOffset()I

    move-result p0

    add-int/2addr p0, v0

    sub-int/2addr p0, v2

    div-int/2addr p0, v0

    add-int/2addr v1, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0

    :cond_0
    instance-of v1, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v7, v5, v6

    move v8, v2

    :goto_0
    array-length v9, v5

    if-ge v8, v9, :cond_1

    aget v9, v5, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v5

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v8

    if-ltz v7, :cond_2

    add-int/2addr v7, v2

    int-to-long v9, v7

    add-long/2addr v3, v9

    :cond_2
    if-lez v5, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    mul-int/2addr v5, v7

    int-to-long v9, v5

    add-long/2addr v3, v9

    :cond_3
    if-lez v8, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getHeight()I

    move-result p0

    sub-int/2addr p0, v2

    mul-int/2addr v8, p0

    int-to-long v7, v8

    add-long/2addr v3, v7

    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBankIndices()[I

    move-result-object p0

    aget v1, p0, v6

    move v5, v2

    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_5

    aget v6, p0, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v1, v2

    int-to-long v1, v1

    mul-long/2addr v3, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr v3, v0

    return-wide v3

    :cond_6
    instance-of v1, p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v1, :cond_7

    check-cast p0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    mul-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getWidth()I

    move-result p0

    add-int/2addr v1, p0

    int-to-long v1, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    int-to-long v3, v0

    mul-long/2addr v1, v3

    return-wide v1

    :cond_7
    return-wide v3
.end method

.method public static getUnpackedBinaryData(Lorg/apache/poi/java/awt/image/Raster;Lorg/apache/poi/java/awt/Rectangle;)[B
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/ImageUtil;->isBinary(Lorg/apache/poi/java/awt/image/SampleModel;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v2, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v3, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget p1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateY()I

    move-result p0

    sub-int p0, v2, p0

    check-cast v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v6

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBuffer;->getOffset()I

    move-result v7

    invoke-virtual {v0, v5, p0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getOffset(II)I

    move-result p0

    add-int/2addr v7, p0

    invoke-virtual {v0, v5}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getBitOffset(I)I

    move-result p0

    mul-int v0, v3, p1

    new-array v0, v0, [B

    add-int/2addr p1, v2

    add-int/2addr v3, v1

    const/4 v5, 0x0

    instance-of v8, v4, Lorg/apache/poi/java/awt/image/DataBufferByte;

    if-eqz v8, :cond_1

    check-cast v4, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v4

    :goto_0
    if-ge v2, p1, :cond_7

    mul-int/lit8 v8, v7, 0x8

    add-int/2addr v8, p0

    move v9, v1

    :goto_1
    if-ge v9, v3, :cond_0

    div-int/lit8 v10, v8, 0x8

    aget-byte v10, v4, v10

    add-int/lit8 v11, v5, 0x1

    rsub-int/lit8 v12, v8, 0x7

    and-int/lit8 v12, v12, 0x7

    ushr-int/2addr v10, v12

    and-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v11

    goto :goto_1

    :cond_0
    add-int/2addr v7, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v8, v4, Lorg/apache/poi/java/awt/image/DataBufferShort;

    if-nez v8, :cond_4

    instance-of v9, v4, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    instance-of v8, v4, Lorg/apache/poi/java/awt/image/DataBufferInt;

    if-eqz v8, :cond_7

    check-cast v4, Lorg/apache/poi/java/awt/image/DataBufferInt;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData()[I

    move-result-object v4

    :goto_2
    if-ge v2, p1, :cond_7

    mul-int/lit8 v8, v7, 0x20

    add-int/2addr v8, p0

    move v9, v1

    :goto_3
    if-ge v9, v3, :cond_3

    div-int/lit8 v10, v8, 0x20

    aget v10, v4, v10

    add-int/lit8 v11, v5, 0x1

    rem-int/lit8 v12, v8, 0x20

    rsub-int/lit8 v12, v12, 0x1f

    ushr-int/2addr v10, v12

    and-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v11

    goto :goto_3

    :cond_3
    add-int/2addr v7, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    check-cast v4, Lorg/apache/poi/java/awt/image/DataBufferShort;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBufferShort;->getData()[S

    move-result-object v4

    goto :goto_5

    :cond_5
    check-cast v4, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBufferUShort;->getData()[S

    move-result-object v4

    :goto_5
    if-ge v2, p1, :cond_7

    mul-int/lit8 v8, v7, 0x10

    add-int/2addr v8, p0

    move v9, v1

    :goto_6
    if-ge v9, v3, :cond_6

    div-int/lit8 v10, v8, 0x10

    aget-short v10, v4, v10

    add-int/lit8 v11, v5, 0x1

    rem-int/lit8 v12, v8, 0x10

    rsub-int/lit8 v12, v12, 0xf

    ushr-int/2addr v10, v12

    and-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v11

    goto :goto_6

    :cond_6
    add-int/2addr v7, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageUtil0"

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final imageIsContiguous(Lorg/apache/poi/java/awt/image/RenderedImage;)Z
    .locals 4

    instance-of v0, p0, Lorg/apache/poi/java/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/java/awt/image/RenderedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-eqz v0, :cond_6

    check-cast p0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object v0

    move v1, v2

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget v3, v0, v1

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBankIndices()[I

    move-result-object p0

    move v1, v2

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_5

    aget v3, p0, v1

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-static {p0}, Lcom/sun/imageio/plugins/common/ImageUtil;->isBinary(Lorg/apache/poi/java/awt/image/SampleModel;)Z

    move-result p0

    return p0
.end method

.method public static isBinary(Lorg/apache/poi/java/awt/image/SampleModel;)Z
    .locals 2

    instance-of v0, p0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getPixelBitStride()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isIndicesForGrayscale([B[B[B)Z
    .locals 5

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    array-length v0, p0

    array-length v1, p2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    int-to-byte v3, v1

    aget-byte v4, p0, v1

    if-ne v4, v3, :cond_3

    aget-byte v4, p1, v1

    if-ne v4, v3, :cond_3

    aget-byte v4, p2, v1

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v2
.end method

.method public static setPackedBinaryData([BLorg/apache/poi/java/awt/image/WritableRaster;Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/imageio/plugins/common/ImageUtil;->isBinary(Lorg/apache/poi/java/awt/image/SampleModel;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, v1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v4, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v5, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v7

    sub-int/2addr v4, v7

    check-cast v2, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v7

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/DataBuffer;->getOffset()I

    move-result v8

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getOffset(II)I

    move-result v4

    add-int/2addr v8, v4

    invoke-virtual {v2, v3}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getBitOffset(I)I

    move-result v2

    const/16 v3, 0x18

    const/16 v9, 0xff

    const/16 v10, 0x8

    if-nez v2, :cond_9

    instance-of v2, v6, Lorg/apache/poi/java/awt/image/DataBufferByte;

    if-eqz v2, :cond_1

    check-cast v6, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v5, v5, 0x7

    div-int/2addr v5, v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1c

    invoke-static {v0, v3, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    add-int/2addr v8, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    instance-of v2, v6, Lorg/apache/poi/java/awt/image/DataBufferShort;

    if-nez v2, :cond_5

    instance-of v11, v6, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    if-eqz v11, :cond_2

    goto :goto_4

    :cond_2
    instance-of v2, v6, Lorg/apache/poi/java/awt/image/DataBufferInt;

    if-eqz v2, :cond_1c

    check-cast v6, Lorg/apache/poi/java/awt/image/DataBufferInt;

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData()[I

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v1, :cond_1c

    move v11, v5

    move v12, v8

    :goto_2
    if-le v11, v3, :cond_3

    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v14, v6, 0x1

    aget-byte v6, v0, v6

    and-int/2addr v6, v9

    shl-int/2addr v6, v3

    add-int/lit8 v15, v14, 0x1

    aget-byte v14, v0, v14

    and-int/2addr v14, v9

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v6, v14

    add-int/lit8 v14, v15, 0x1

    aget-byte v15, v0, v15

    and-int/2addr v15, v9

    shl-int/2addr v15, v10

    or-int/2addr v6, v15

    add-int/lit8 v15, v14, 0x1

    aget-byte v14, v0, v14

    and-int/2addr v14, v9

    or-int/2addr v6, v14

    aput v6, v2, v12

    add-int/lit8 v11, v11, -0x20

    move v12, v13

    move v6, v15

    goto :goto_2

    :cond_3
    move v13, v3

    :goto_3
    if-lez v11, :cond_4

    aget v14, v2, v12

    add-int/lit8 v15, v6, 0x1

    aget-byte v6, v0, v6

    and-int/2addr v6, v9

    shl-int/2addr v6, v13

    or-int/2addr v6, v14

    aput v6, v2, v12

    add-int/lit8 v13, v13, -0x8

    add-int/lit8 v11, v11, -0x8

    move v6, v15

    goto :goto_3

    :cond_4
    add-int/2addr v8, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    check-cast v6, Lorg/apache/poi/java/awt/image/DataBufferShort;

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/DataBufferShort;->getData()[S

    move-result-object v2

    goto :goto_5

    :cond_6
    check-cast v6, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/DataBufferUShort;->getData()[S

    move-result-object v2

    :goto_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_1c

    move v6, v5

    move v11, v8

    :goto_7
    if-le v6, v10, :cond_7

    add-int/lit8 v12, v11, 0x1

    add-int/lit8 v13, v3, 0x1

    aget-byte v3, v0, v3

    and-int/2addr v3, v9

    shl-int/2addr v3, v10

    add-int/lit8 v14, v13, 0x1

    aget-byte v13, v0, v13

    and-int/2addr v13, v9

    or-int/2addr v3, v13

    int-to-short v3, v3

    aput-short v3, v2, v11

    add-int/lit8 v6, v6, -0x10

    move v11, v12

    move v3, v14

    goto :goto_7

    :cond_7
    if-lez v6, :cond_8

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v0, v3

    and-int/2addr v3, v9

    shl-int/2addr v3, v10

    int-to-short v3, v3

    aput-short v3, v2, v11

    move v3, v6

    :cond_8
    add-int/2addr v8, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v11, v5, 0x7

    div-int/2addr v11, v10

    instance-of v12, v6, Lorg/apache/poi/java/awt/image/DataBufferByte;

    if-eqz v12, :cond_e

    check-cast v6, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v3

    and-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_a

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_1c

    invoke-static {v0, v2, v3, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v11

    add-int/2addr v8, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    rsub-int/lit8 v6, v2, 0x8

    add-int/lit8 v10, v6, 0x8

    shl-int/2addr v9, v6

    int-to-byte v9, v9

    not-int v11, v9

    int-to-byte v11, v11

    move v12, v8

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ge v4, v1, :cond_1c

    move v14, v5

    move v15, v12

    :goto_a
    if-lez v14, :cond_d

    add-int/lit8 v16, v8, 0x1

    aget-byte v8, v0, v8

    if-le v14, v10, :cond_b

    aget-byte v17, v3, v15

    and-int v17, v17, v9

    and-int/lit16 v8, v8, 0xff

    ushr-int v18, v8, v2

    or-int v13, v17, v18

    int-to-byte v13, v13

    aput-byte v13, v3, v15

    add-int/lit8 v15, v15, 0x1

    shl-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v3, v15

    goto :goto_b

    :cond_b
    if-le v14, v6, :cond_c

    aget-byte v13, v3, v15

    and-int/2addr v13, v9

    and-int/lit16 v8, v8, 0xff

    ushr-int v17, v8, v2

    or-int v13, v13, v17

    int-to-byte v13, v13

    aput-byte v13, v3, v15

    add-int/lit8 v15, v15, 0x1

    aget-byte v13, v3, v15

    and-int/2addr v13, v11

    shl-int/2addr v8, v6

    or-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v3, v15

    goto :goto_b

    :cond_c
    sub-int v13, v6, v14

    const/16 v17, 0x1

    shl-int v13, v17, v13

    add-int/lit8 v13, v13, -0x1

    aget-byte v17, v3, v15

    or-int v18, v9, v13

    and-int v17, v17, v18

    and-int/lit16 v8, v8, 0xff

    ushr-int/2addr v8, v2

    not-int v13, v13

    and-int/2addr v8, v13

    or-int v8, v17, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v15

    :goto_b
    add-int/lit8 v14, v14, -0x8

    move/from16 v8, v16

    goto :goto_a

    :cond_d
    add-int/2addr v12, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    instance-of v11, v6, Lorg/apache/poi/java/awt/image/DataBufferShort;

    if-nez v11, :cond_15

    instance-of v12, v6, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    if-eqz v12, :cond_f

    goto/16 :goto_10

    :cond_f
    instance-of v11, v6, Lorg/apache/poi/java/awt/image/DataBufferInt;

    if-eqz v11, :cond_1c

    check-cast v6, Lorg/apache/poi/java/awt/image/DataBufferInt;

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData()[I

    move-result-object v6

    and-int/lit8 v11, v2, 0x7

    rsub-int/lit8 v12, v11, 0x8

    add-int/lit8 v13, v12, 0x20

    const/4 v14, -0x1

    shl-int/2addr v14, v12

    not-int v15, v14

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_c
    if-ge v4, v1, :cond_1c

    move/from16 v18, v2

    move/from16 v19, v5

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v5, :cond_14

    shr-int/lit8 v20, v18, 0x5

    add-int v20, v8, v20

    and-int/lit8 v3, v18, 0x1f

    add-int/lit8 v22, v16, 0x1

    move/from16 v23, v5

    aget-byte v5, v0, v16

    and-int/2addr v5, v9

    const/16 v9, 0x18

    if-gt v3, v9, :cond_11

    rsub-int/lit8 v3, v3, 0x18

    move/from16 v9, v19

    const/16 v0, 0x8

    if-ge v9, v0, :cond_10

    rsub-int/lit8 v0, v9, 0x8

    const/16 v16, 0xff

    shl-int v0, v16, v0

    and-int/2addr v5, v0

    goto :goto_e

    :cond_10
    const/16 v16, 0xff

    :goto_e
    aget v0, v6, v20

    move/from16 v19, v1

    shl-int v1, v16, v3

    not-int v1, v1

    and-int/2addr v0, v1

    shl-int v1, v5, v3

    or-int/2addr v0, v1

    aput v0, v6, v20

    goto :goto_f

    :cond_11
    move/from16 v9, v19

    move/from16 v19, v1

    if-le v9, v13, :cond_12

    aget v0, v6, v20

    and-int/2addr v0, v14

    ushr-int v1, v5, v11

    or-int/2addr v0, v1

    aput v0, v6, v20

    add-int/lit8 v20, v20, 0x1

    shl-int v0, v5, v12

    aput v0, v6, v20

    goto :goto_f

    :cond_12
    if-le v9, v12, :cond_13

    aget v0, v6, v20

    and-int/2addr v0, v14

    ushr-int v1, v5, v11

    or-int/2addr v0, v1

    aput v0, v6, v20

    add-int/lit8 v20, v20, 0x1

    aget v0, v6, v20

    and-int/2addr v0, v15

    shl-int v1, v5, v12

    or-int/2addr v0, v1

    aput v0, v6, v20

    goto :goto_f

    :cond_13
    sub-int v0, v12, v9

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    aget v1, v6, v20

    or-int v3, v14, v0

    and-int/2addr v1, v3

    ushr-int v3, v5, v11

    not-int v0, v0

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    aput v0, v6, v20

    :goto_f
    add-int/lit8 v10, v10, 0x8

    add-int/lit8 v18, v18, 0x8

    add-int/lit8 v0, v9, -0x8

    move/from16 v1, v19

    move/from16 v16, v22

    move/from16 v5, v23

    const/16 v3, 0x18

    const/16 v9, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    goto/16 :goto_d

    :cond_14
    move/from16 v19, v1

    move/from16 v23, v5

    add-int/2addr v8, v7

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    const/16 v3, 0x18

    const/16 v9, 0xff

    const/16 v10, 0x8

    goto/16 :goto_c

    :cond_15
    :goto_10
    move/from16 v19, v1

    move/from16 v23, v5

    if-eqz v11, :cond_16

    check-cast v6, Lorg/apache/poi/java/awt/image/DataBufferShort;

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/DataBufferShort;->getData()[S

    move-result-object v0

    goto :goto_11

    :cond_16
    check-cast v6, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/DataBufferUShort;->getData()[S

    move-result-object v0

    :goto_11
    and-int/lit8 v1, v2, 0x7

    rsub-int/lit8 v3, v1, 0x8

    add-int/lit8 v4, v3, 0x10

    const/16 v5, 0xff

    shl-int v6, v5, v3

    not-int v5, v6

    int-to-short v5, v5

    const v6, 0xffff

    shl-int v9, v6, v3

    int-to-short v9, v9

    not-int v10, v9

    int-to-short v10, v10

    move/from16 v11, v19

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12
    if-ge v12, v11, :cond_1c

    move/from16 v16, v2

    move/from16 v6, v23

    move v14, v6

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v14, :cond_1b

    shr-int/lit8 v19, v16, 0x4

    add-int v19, v8, v19

    move/from16 v20, v2

    and-int/lit8 v2, v16, 0xf

    add-int/lit8 v21, v13, 0x1

    aget-byte v13, p0, v13

    move/from16 v22, v11

    const/16 v11, 0xff

    and-int/2addr v13, v11

    const/16 v11, 0x8

    if-gt v2, v11, :cond_18

    if-ge v6, v11, :cond_17

    rsub-int/lit8 v2, v6, 0x8

    const/16 v17, 0xff

    shl-int v2, v17, v2

    and-int/2addr v13, v2

    goto :goto_14

    :cond_17
    const/16 v17, 0xff

    :goto_14
    aget-short v2, v0, v19

    and-int/2addr v2, v5

    shl-int/2addr v13, v3

    or-int/2addr v2, v13

    int-to-short v2, v2

    aput-short v2, v0, v19

    :goto_15
    const v18, 0xffff

    goto :goto_16

    :cond_18
    const/16 v17, 0xff

    if-le v6, v4, :cond_19

    aget-short v2, v0, v19

    and-int/2addr v2, v9

    ushr-int v23, v13, v1

    const v18, 0xffff

    and-int v23, v23, v18

    or-int v2, v2, v23

    int-to-short v2, v2

    aput-short v2, v0, v19

    add-int/lit8 v19, v19, 0x1

    shl-int v2, v13, v3

    and-int v2, v2, v18

    int-to-short v2, v2

    aput-short v2, v0, v19

    :goto_16
    const/16 v23, 0x1

    goto :goto_17

    :cond_19
    const v18, 0xffff

    if-le v6, v3, :cond_1a

    aget-short v2, v0, v19

    and-int/2addr v2, v9

    ushr-int v23, v13, v1

    and-int v23, v23, v18

    or-int v2, v2, v23

    int-to-short v2, v2

    aput-short v2, v0, v19

    add-int/lit8 v19, v19, 0x1

    aget-short v2, v0, v19

    and-int/2addr v2, v10

    shl-int/2addr v13, v3

    and-int v13, v13, v18

    or-int/2addr v2, v13

    int-to-short v2, v2

    aput-short v2, v0, v19

    goto :goto_15

    :cond_1a
    sub-int v2, v3, v6

    const/16 v23, 0x1

    shl-int v2, v23, v2

    add-int/lit8 v2, v2, -0x1

    aget-short v24, v0, v19

    or-int v25, v9, v2

    and-int v24, v24, v25

    ushr-int/2addr v13, v1

    const v18, 0xffff

    and-int v13, v13, v18

    not-int v2, v2

    and-int/2addr v2, v13

    or-int v2, v24, v2

    int-to-short v2, v2

    aput-short v2, v0, v19

    :goto_17
    add-int/lit8 v15, v15, 0x8

    add-int/lit8 v16, v16, 0x8

    add-int/lit8 v6, v6, -0x8

    move/from16 v2, v20

    move/from16 v13, v21

    move/from16 v11, v22

    goto/16 :goto_13

    :cond_1b
    move/from16 v20, v2

    move/from16 v22, v11

    const/16 v11, 0x8

    const/16 v17, 0xff

    const v18, 0xffff

    const/16 v23, 0x1

    add-int/2addr v8, v7

    add-int/lit8 v12, v12, 0x1

    move/from16 v23, v14

    move/from16 v6, v18

    move/from16 v11, v22

    goto/16 :goto_12

    :cond_1c
    return-void

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageUtil0"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUnpackedBinaryData([BLorg/apache/poi/java/awt/image/WritableRaster;Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 13

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/ImageUtil;->isBinary(Lorg/apache/poi/java/awt/image/SampleModel;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v2, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v3, p2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget p2, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateY()I

    move-result p1

    sub-int/2addr v2, p1

    check-cast v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result p1

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBuffer;->getOffset()I

    move-result v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getOffset(II)I

    move-result v2

    add-int/2addr v5, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getBitOffset(I)I

    move-result v0

    instance-of v1, v4, Lorg/apache/poi/java/awt/image/DataBufferByte;

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    check-cast v4, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v1

    move v4, v2

    move v7, v4

    :goto_0
    if-ge v4, p2, :cond_a

    mul-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v0

    move v9, v2

    :goto_1
    if-ge v9, v3, :cond_1

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, p0, v7

    if-eqz v7, :cond_0

    div-int/lit8 v7, v8, 0x8

    aget-byte v11, v1, v7

    rsub-int/lit8 v12, v8, 0x7

    and-int/lit8 v12, v12, 0x7

    shl-int v12, v6, v12

    int-to-byte v12, v12

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v7

    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v10

    goto :goto_1

    :cond_1
    add-int/2addr v5, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, v4, Lorg/apache/poi/java/awt/image/DataBufferShort;

    if-nez v1, :cond_6

    instance-of v7, v4, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    instance-of v1, v4, Lorg/apache/poi/java/awt/image/DataBufferInt;

    if-eqz v1, :cond_a

    check-cast v4, Lorg/apache/poi/java/awt/image/DataBufferInt;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData()[I

    move-result-object v1

    move v4, v2

    move v7, v4

    :goto_2
    if-ge v4, p2, :cond_a

    mul-int/lit8 v8, v5, 0x20

    add-int/2addr v8, v0

    move v9, v2

    :goto_3
    if-ge v9, v3, :cond_5

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, p0, v7

    if-eqz v7, :cond_4

    div-int/lit8 v7, v8, 0x20

    aget v11, v1, v7

    rem-int/lit8 v12, v8, 0x20

    rsub-int/lit8 v12, v12, 0x1f

    shl-int v12, v6, v12

    or-int/2addr v11, v12

    aput v11, v1, v7

    :cond_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v10

    goto :goto_3

    :cond_5
    add-int/2addr v5, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    check-cast v4, Lorg/apache/poi/java/awt/image/DataBufferShort;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBufferShort;->getData()[S

    move-result-object v1

    goto :goto_5

    :cond_7
    check-cast v4, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/DataBufferUShort;->getData()[S

    move-result-object v1

    :goto_5
    move v4, v2

    move v7, v4

    :goto_6
    if-ge v4, p2, :cond_a

    mul-int/lit8 v8, v5, 0x10

    add-int/2addr v8, v0

    move v9, v2

    :goto_7
    if-ge v9, v3, :cond_9

    add-int/lit8 v10, v7, 0x1

    aget-byte v7, p0, v7

    if-eqz v7, :cond_8

    div-int/lit8 v7, v8, 0x10

    aget-short v11, v1, v7

    rem-int/lit8 v12, v8, 0x10

    rsub-int/lit8 v12, v12, 0xf

    shl-int v12, v6, v12

    int-to-short v12, v12

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v1, v7

    :cond_8
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v10

    goto :goto_7

    :cond_9
    add-int/2addr v5, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageUtil0"

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
