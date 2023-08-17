.class public Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;
.super Lorg/apache/poi/javax/imageio/ImageWriter;
.source "SourceFile"


# instance fields
.field private stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriter;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    return-void
.end method

.method private checkSampleModel(Lorg/apache/poi/java/awt/image/SampleModel;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "WBMPImageWriter2"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getNumBits(I)I
    .locals 3

    const/16 v0, 0x20

    const/high16 v1, -0x80000000

    :goto_0
    if-eqz v1, :cond_0

    and-int v2, p0, v1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static intToMultiByte(I)[B
    .locals 4

    invoke-static {p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->getNumBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    new-array v1, v0, [B

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_1

    sub-int v3, v0, v2

    mul-int/lit8 v3, v3, 0x7

    ushr-int v3, p0, v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    if-eq v2, v0, :cond_0

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public canWriteRasters()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public convertImageMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public convertStreamMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultImageMetadata(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 0

    new-instance p1, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

    invoke-direct {p1}, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;-><init>()V

    const/4 p2, 0x0

    iput p2, p1, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->wbmpType:I

    return-object p1
.end method

.method public getDefaultStreamMetadata(Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "WBMPImageWriter"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz v1, :cond_15

    if-eqz p2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->clearAbortRequest()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageStarted(I)V

    if-nez p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getDefaultWriteParam()Lorg/apache/poi/javax/imageio/ImageWriteParam;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/javax/imageio/IIOImage;->hasRaster()Z

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceRegion()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v5

    if-eqz v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/javax/imageio/IIOImage;->getRaster()Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/javax/imageio/IIOImage;->getRenderedImage()Lorg/apache/poi/java/awt/image/RenderedImage;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/java/awt/image/RenderedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/poi/java/awt/image/RenderedImage;->getData()Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v6

    :goto_1
    invoke-direct {v0, v7}, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->checkSampleModel(Lorg/apache/poi/java/awt/image/SampleModel;)V

    if-nez v5, :cond_2

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/poi/java/awt/Rectangle;->intersection(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v5

    :goto_2
    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Rectangle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-virtual {v2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v8

    invoke-virtual {v2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v9

    invoke-virtual {v2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v10

    invoke-virtual {v2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v2

    invoke-virtual {v5, v10, v2}, Lorg/apache/poi/java/awt/Rectangle;->translate(II)V

    iget v11, v5, Lorg/apache/poi/java/awt/Rectangle;->width:I

    sub-int/2addr v11, v10

    iput v11, v5, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v10, v5, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v10, v2

    iput v10, v5, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget v2, v5, Lorg/apache/poi/java/awt/Rectangle;->x:I

    div-int/2addr v2, v8

    iget v12, v5, Lorg/apache/poi/java/awt/Rectangle;->y:I

    div-int/2addr v12, v9

    add-int/2addr v11, v8

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    div-int v13, v11, v8

    add-int/2addr v10, v9

    sub-int/2addr v10, v14

    div-int v11, v10, v9

    new-instance v10, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v10, v2, v12, v13, v11}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v7, v13, v11}, Lorg/apache/poi/java/awt/image/SampleModel;->createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v15

    if-nez v15, :cond_4

    instance-of v15, v7, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    if-eqz v15, :cond_4

    move-object v15, v7

    check-cast v15, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v15}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getDataBitOffset()I

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_3

    :cond_3
    move-object v15, v7

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v7, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    const/16 v16, 0x0

    const/16 v19, 0x1

    add-int/lit8 v15, v13, 0x7

    shr-int/lit8 v20, v15, 0x3

    const/16 v21, 0x0

    move-object v15, v7

    move/from16 v17, v13

    move/from16 v18, v11

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;-><init>(IIIIII)V

    :goto_4
    invoke-virtual {v10, v5}, Lorg/apache/poi/java/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    if-ne v8, v14, :cond_5

    if-ne v9, v14, :cond_5

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v7

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v8

    const/4 v5, 0x0

    move v9, v13

    move v10, v11

    move v14, v11

    move v11, v2

    move v2, v13

    move-object v13, v5

    invoke-virtual/range {v6 .. v13}, Lorg/apache/poi/java/awt/image/Raster;->createChild(IIIIII[I)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v6

    move v11, v2

    goto :goto_7

    :cond_5
    move v14, v11

    move v11, v13

    new-instance v7, Lorg/apache/poi/java/awt/Point;

    invoke-direct {v7, v2, v12}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-static {v15, v7}, Lorg/apache/poi/java/awt/image/Raster;->createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v7}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v7

    iget v10, v5, Lorg/apache/poi/java/awt/Rectangle;->y:I

    move/from16 v16, v1

    move v13, v12

    :goto_5
    add-int v1, v12, v14

    if-ge v13, v1, :cond_7

    iget v1, v5, Lorg/apache/poi/java/awt/Rectangle;->x:I

    move-object/from16 p2, v2

    const/4 v2, 0x0

    :goto_6
    move-object/from16 p3, v5

    if-ge v2, v11, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v6, v1, v10, v5}, Lorg/apache/poi/java/awt/image/Raster;->getSample(III)I

    move-result v18

    shr-int/lit8 v5, v2, 0x3

    add-int v5, v16, v5

    aget-byte v19, v7, v5

    and-int/lit8 v20, v2, 0x7

    rsub-int/lit8 v20, v20, 0x7

    shl-int v18, v18, v20

    move-object/from16 v20, v6

    or-int v6, v19, v18

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v8

    move-object/from16 v5, p3

    move-object/from16 v6, v20

    goto :goto_6

    :cond_6
    move-object/from16 v20, v6

    add-int/lit8 v1, v11, 0x7

    shr-int/lit8 v1, v1, 0x3

    add-int v16, v16, v1

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v10, v9

    move-object/from16 v2, p2

    goto :goto_5

    :cond_7
    move-object/from16 p2, v2

    move-object/from16 v6, p2

    goto :goto_7

    :cond_8
    move-object/from16 v20, v6

    move v14, v11

    move v11, v13

    :goto_7
    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Lorg/apache/poi/java/awt/Point;

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v2

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v5

    invoke-direct {v1, v2, v5}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-static {v15, v1}, Lorg/apache/poi/java/awt/image/Raster;->createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/apache/poi/java/awt/image/WritableRaster;->setRect(Lorg/apache/poi/java/awt/image/Raster;)V

    move-object v6, v1

    :cond_9
    if-nez v4, :cond_b

    invoke-interface {v3}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz v1, :cond_b

    invoke-interface {v3}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getRed(I)I

    move-result v3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getRed(I)I

    move-result v1

    if-le v3, v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    move v5, v2

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    :goto_9
    check-cast v15, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v15}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v1

    add-int/lit8 v13, v11, 0x7

    div-int/lit8 v13, v13, 0x8

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v2

    iget-object v3, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-static {v11}, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->intToMultiByte(I)[B

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-static {v14}, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->intToMultiByte(I)[B

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V

    const/high16 v3, 0x42c80000    # 100.0f

    if-nez v5, :cond_c

    if-ne v1, v13, :cond_c

    iget-object v1, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    mul-int v11, v14, v13

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v11}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageProgress(F)V

    goto :goto_d

    :cond_c
    if-nez v5, :cond_e

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v4, v14, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_d

    :cond_d
    iget-object v6, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v6, v2, v5, v13}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr v5, v1

    int-to-float v6, v4

    mul-float/2addr v6, v3

    int-to-float v7, v14

    div-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageProgress(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_e
    new-array v4, v13, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    if-ge v5, v14, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_d

    :cond_f
    const/4 v7, 0x0

    :goto_c
    if-ge v7, v13, :cond_10

    add-int v8, v7, v6

    aget-byte v8, v2, v8

    not-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_10
    iget-object v7, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v8, 0x0

    invoke-interface {v7, v4, v8, v13}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr v6, v1

    int-to-float v7, v5

    mul-float/2addr v7, v3

    int-to-float v9, v14

    div-float/2addr v7, v9

    invoke-virtual {v0, v7}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageProgress(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_11
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWriteAborted()V

    goto :goto_e

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageComplete()V

    iget-object v1, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->flushBefore(J)V

    :goto_e
    return-void

    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "WBMPImageWriter1"

    invoke-static {v2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "WBMPImageWriter4"

    invoke-static {v2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WBMPImageWriter3"

    invoke-static {v2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
