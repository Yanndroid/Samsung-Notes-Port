.class public Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;
.super Lorg/apache/poi/javax/imageio/ImageReader;
.source "SourceFile"


# instance fields
.field private gotHeader:Z

.field private height:I

.field private iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

.field private metadata:Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

.field private wbmpType:I

.field private width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->gotHeader:Z

    return-void
.end method

.method private checkIndex(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "WBMPImageReader0"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canReadRaster()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultReadParam()Lorg/apache/poi/javax/imageio/ImageReadParam;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageReadParam;

    invoke-direct {v0}, Lorg/apache/poi/javax/imageio/ImageReadParam;-><init>()V

    return-object v0
.end method

.method public getHeight(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->checkIndex(I)V

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->readHeader()V

    iget p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->height:I

    return p1
.end method

.method public getImageMetadata(I)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->checkIndex(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->metadata:Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->readHeader()V

    :cond_0
    iget-object p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->metadata:Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

    return-object p1
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->checkIndex(I)V

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->readHeader()V

    new-instance p1, Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p1, v0, v0, v1}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(III)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {v0, p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getNumImages(Z)I
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->seekForwardOnly:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GetNumImages1"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GetNumImages0"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStreamMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->checkIndex(I)V

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->readHeader()V

    iget p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->width:I

    return p1
.end method

.method public isRandomAccessEasy(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->checkIndex(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public isValidWbmpType(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 27

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->checkIndex(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->clearAbortRequest()V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageStarted(I)V

    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->getDefaultReadParam()Lorg/apache/poi/javax/imageio/ImageReadParam;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->readHeader()V

    new-instance v7, Lorg/apache/poi/java/awt/Rectangle;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v10, v10}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    new-instance v11, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v11, v10, v10, v10, v10}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iget v2, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->width:I

    iget v3, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->height:I

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getDestination()Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v4

    move-object v1, v0

    move-object v5, v7

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/javax/imageio/ImageReader;->computeRegions(Lorg/apache/poi/javax/imageio/ImageReadParam;IILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Rectangle;)V

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingXOffset()I

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingYOffset()I

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getDestination()Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/java/awt/image/BufferedImage;

    iget v3, v11, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v4, v11, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v3, v4

    iget v4, v11, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v5, v11, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v4, v5

    const/16 v5, 0xc

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(III)V

    :cond_1
    move-object v12, v0

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->width:I

    iget v4, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->height:I

    invoke-direct {v0, v10, v10, v3, v4}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v11, v0}, Lorg/apache/poi/java/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    invoke-virtual {v12}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {v12}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v4

    invoke-direct {v0, v10, v10, v3, v4}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v11, v0}, Lorg/apache/poi/java/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v13

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    invoke-virtual {v12, v10, v10}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWritableTile(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v3

    invoke-virtual {v12}, Lorg/apache/poi/java/awt/image/BufferedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    const/high16 v14, 0x42c80000    # 100.0f

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processReadAborted()V

    return-object v12

    :cond_3
    iget-object v0, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v1

    iget v2, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->height:I

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-interface {v0, v1, v10, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->width:I

    iget v5, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->height:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v8, v13, [I

    aput v10, v8, v10

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    invoke-virtual {v9, v14}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    goto/16 :goto_5

    :cond_4
    iget v0, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v15, v0, 0x8

    new-array v8, v15, [B

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v16

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v17

    iget-object v0, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v3, v7, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v3, v15

    invoke-interface {v0, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    sub-int/2addr v2, v13

    mul-int v6, v15, v2

    iget v0, v11, Lorg/apache/poi/java/awt/Rectangle;->width:I

    new-array v5, v0, [I

    new-array v4, v0, [I

    new-array v3, v0, [I

    new-array v2, v0, [I

    iget v0, v11, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v7, v7, Lorg/apache/poi/java/awt/Rectangle;->x:I

    move/from16 v18, v10

    :goto_2
    iget v14, v11, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v10, v11, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v14, v10

    if-ge v0, v14, :cond_5

    shr-int/lit8 v10, v7, 0x3

    aput v10, v3, v18

    and-int/lit8 v10, v7, 0x7

    rsub-int/lit8 v10, v10, 0x7

    aput v10, v5, v18

    shr-int/lit8 v10, v0, 0x3

    aput v10, v2, v18

    and-int/lit8 v10, v0, 0x7

    rsub-int/lit8 v10, v10, 0x7

    aput v10, v4, v18

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v18, v18, 0x1

    add-int/2addr v7, v1

    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    iget v0, v11, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int v0, v0, v17

    const/4 v10, 0x0

    :goto_3
    iget v1, v11, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-ge v10, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v1, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v7, 0x0

    invoke-interface {v1, v8, v7, v15}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    const/4 v7, 0x0

    :goto_4
    iget v1, v11, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-ge v7, v1, :cond_7

    aget v1, v3, v7

    aget-byte v1, v8, v1

    aget v14, v5, v7

    shr-int/2addr v1, v14

    and-int/2addr v1, v13

    aget v14, v2, v7

    add-int/2addr v14, v0

    aget-byte v18, v16, v14

    aget v19, v4, v7

    shl-int v1, v1, v19

    or-int v1, v18, v1

    int-to-byte v1, v1

    aput-byte v1, v16, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    add-int v14, v0, v17

    iget-object v0, v9, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    const/4 v7, 0x0

    iget v1, v11, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    new-array v0, v13, [I

    const/16 v21, 0x0

    aput v21, v0, v21

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v23, v1

    move-object v1, v12

    move-object/from16 v24, v2

    move v2, v7

    move-object/from16 v25, v3

    move v3, v10

    move-object/from16 v26, v4

    move/from16 v4, v23

    move-object/from16 v23, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v19, v8

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v10

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v2, v11, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v10, v10, 0x1

    move v0, v14

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    goto/16 :goto_3

    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processReadAborted()V

    goto :goto_6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageComplete()V

    :goto_6
    return-object v12

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WBMPImageReader1"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readHeader()V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->gotHeader:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->metadata:Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

    iget-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->wbmpType:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->wbmpType:I

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->isValidWbmpType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->metadata:Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

    iget v1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->wbmpType:I

    iput v1, v0, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->wbmpType:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/ReaderUtil;->readMultiByteInteger(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->width:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->metadata:Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

    iput v0, v1, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->width:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/ReaderUtil;->readMultiByteInteger(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->height:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->metadata:Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

    iput v0, v1, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->height:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->gotHeader:Z

    return-void

    :cond_1
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "WBMPImageReader2"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input source not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readRaster(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/Raster;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getData()Lorg/apache/poi/java/awt/image/Raster;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->gotHeader:Z

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageReader;->gotHeader:Z

    return-void
.end method
