.class public Lcom/sun/imageio/plugins/gif/GIFImageWriter;
.super Lorg/apache/poi/javax/imageio/ImageWriter;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final IMAGE_METADATA_NAME:Ljava/lang/String; = "javax_imageio_gif_image_1.0"

.field public static final STANDARD_METADATA_NAME:Ljava/lang/String; = "javax_imageio_1.0"

.field public static final STREAM_METADATA_NAME:Ljava/lang/String; = "javax_imageio_gif_stream_1.0"


# instance fields
.field private imageIndex:I

.field private isWritingSequence:Z

.field private stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

.field private theStreamMetadata:Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

.field private wroteSequenceHeader:Z


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/gif/GIFImageWriterSpi;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriter;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->isWritingSequence:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->wroteSequenceHeader:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->theStreamMetadata:Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->imageIndex:I

    return-void
.end method

.method private static computeRegions(Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Dimension;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-ne v2, v0, :cond_0

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot sub-band image!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceRegion()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Rectangle;->intersection(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Rectangle;->setBounds(Lorg/apache/poi/java/awt/Rectangle;)V

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v3, p0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v3, p0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v1, p0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v0

    move v1, p2

    :goto_1
    iget v2, p0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    div-int/2addr v2, v1

    iget p0, p0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr p0, p2

    sub-int/2addr p0, v0

    div-int/2addr p0, p2

    invoke-virtual {p1, v2, p0}, Lorg/apache/poi/java/awt/Dimension;->setSize(II)V

    iget p0, p1, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-lez p0, :cond_4

    iget p0, p1, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-lez p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty source region!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private convertMetadata(Ljava/lang/String;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V
    .locals 3

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getExtraMetadataFormatNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "javax_imageio_1.0"

    :cond_3
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p2, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private static createColorTable(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)[B
    .locals 7

    instance-of v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getMapSize()I

    move-result p1

    invoke-static {p1}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->getGifPaletteSize(I)I

    move-result v0

    new-array v2, v0, [B

    new-array v3, v0, [B

    new-array v4, v0, [B

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getReds([B)V

    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getGreens([B)V

    invoke-virtual {p0, v4}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getBlues([B)V

    :goto_0
    if-ge p1, v0, :cond_0

    aget-byte p0, v2, v1

    aput-byte p0, v2, p1

    aget-byte p0, v3, v1

    aput-byte p0, v3, p1

    aget-byte p0, v4, v1

    aput-byte p0, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, v0, 0x3

    new-array p0, p0, [B

    move p1, v1

    :goto_1
    if-ge v1, v0, :cond_5

    add-int/lit8 v5, p1, 0x1

    aget-byte v6, v2, v1

    aput-byte v6, p0, p1

    add-int/lit8 p1, v5, 0x1

    aget-byte v6, v3, v1

    aput-byte v6, p0, v5

    add-int/lit8 v5, p1, 0x1

    aget-byte v6, v4, v1

    aput-byte v6, p0, p1

    add-int/lit8 v1, v1, 0x1

    move p1, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object p0

    aget p0, p0, v1

    const/16 p1, 0x8

    if-le p0, p1, :cond_2

    move p0, p1

    :cond_2
    shl-int p0, v0, p0

    mul-int/lit8 p0, p0, 0x3

    new-array p1, p0, [B

    :goto_2
    if-ge v1, p0, :cond_3

    div-int/lit8 v0, v1, 0x3

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object p0, p1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :cond_5
    :goto_3
    return-object p0
.end method

.method private static getGifPaletteSize(I)I
    .locals 1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static getNumBits(I)I
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_5

    const/16 v2, 0x10

    if-eq p0, v2, :cond_4

    const/16 v1, 0x20

    if-eq p0, v1, :cond_3

    const/16 v1, 0x40

    if-eq p0, v1, :cond_2

    const/16 v1, 0x80

    if-eq p0, v1, :cond_1

    const/16 v1, 0x100

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad palette length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private needToCreateIndex(Lorg/apache/poi/java/awt/image/RenderedImage;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v0

    aget v0, v0, v3

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getComponentSize()[I

    move-result-object p1

    aget p1, p1, v3

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2
.end method

.method private resetLocal()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->isWritingSequence:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->wroteSequenceHeader:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->theStreamMetadata:Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->imageIndex:I

    return-void
.end method

.method private write(ZZLorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->clearAbortRequest()V

    invoke-virtual {p4}, Lorg/apache/poi/javax/imageio/IIOImage;->getRenderedImage()Lorg/apache/poi/java/awt/image/RenderedImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->needToCreateIndex(Lorg/apache/poi/java/awt/image/RenderedImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/PaletteBuilder;->createIndexedImage(Lorg/apache/poi/java/awt/image/RenderedImage;)Lorg/apache/poi/java/awt/image/RenderedImage;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/apache/poi/javax/imageio/IIOImage;->setRenderedImage(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/java/awt/image/RenderedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v2

    new-instance v8, Lorg/apache/poi/java/awt/Rectangle;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/image/RenderedImage;->getMinX()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/poi/java/awt/image/RenderedImage;->getMinY()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/poi/java/awt/image/RenderedImage;->getWidth()I

    move-result v5

    invoke-interface {v0}, Lorg/apache/poi/java/awt/image/RenderedImage;->getHeight()I

    move-result v0

    invoke-direct {v8, v3, v4, v5, v0}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    new-instance v9, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v9}, Lorg/apache/poi/java/awt/Dimension;-><init>()V

    invoke-static {v8, v9, p5}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->computeRegions(Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Dimension;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V

    const/4 v0, 0x0

    invoke-virtual {p4}, Lorg/apache/poi/javax/imageio/IIOImage;->getMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_2

    new-instance v0, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;-><init>()V

    invoke-virtual {p4}, Lorg/apache/poi/javax/imageio/IIOImage;->getMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object v3

    const-string v6, "javax_imageio_gif_image_1.0"

    invoke-direct {p0, v6, v3, v0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->convertMetadata(Ljava/lang/String;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    if-nez v3, :cond_2

    invoke-static {v1, v2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->createColorTable(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)[B

    move-result-object v3

    iput-object v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    instance-of v3, v1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getTransparentPixel()I

    move-result v3

    if-eq v3, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    iput-boolean v6, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    if-eqz v6, :cond_2

    iput v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    :cond_2
    if-eqz p1, :cond_e

    if-eqz p3, :cond_d

    check-cast p3, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    iget-object p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->version:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "89a"

    iput-object p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->version:Ljava/lang/String;

    :cond_3
    iget p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenWidth:I

    if-ne p1, v5, :cond_4

    iget p1, v9, Lorg/apache/poi/java/awt/Dimension;->width:I

    iput p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenWidth:I

    :cond_4
    iget p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenHeight:I

    if-ne p1, v5, :cond_5

    iget p1, v9, Lorg/apache/poi/java/awt/Dimension;->height:I

    iput p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenHeight:I

    :cond_5
    iget p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorResolution:I

    if-ne p1, v5, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/ColorModel;->getComponentSize()[I

    move-result-object p1

    aget p1, p1, v4

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object p1

    aget p1, p1, v4

    :goto_1
    iput p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorResolution:I

    :cond_7
    iget-object p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->isWritingSequence:Z

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    iget-object p1, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    if-eqz p1, :cond_8

    iput-object p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget-object p1, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    if-nez p1, :cond_a

    :cond_9
    invoke-static {v1, v2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->createColorTable(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)[B

    move-result-object p1

    iput-object p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    :cond_a
    :goto_2
    iget-object p1, p3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    if-eqz p1, :cond_b

    array-length v1, p1

    :goto_3
    div-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->getNumBits(I)I

    move-result v1

    goto :goto_4

    :cond_b
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    if-eqz v1, :cond_c

    array-length v1, v1

    goto :goto_3

    :cond_c
    invoke-virtual {v2, v4}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result v1

    :goto_4
    invoke-direct {p0, p3, v1}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeHeader(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;I)V

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot write null header!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iget-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->isWritingSequence:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->theStreamMetadata:Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    iget-object p1, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    :goto_5
    move-object v7, p1

    invoke-virtual {p4}, Lorg/apache/poi/javax/imageio/IIOImage;->getRenderedImage()Lorg/apache/poi/java/awt/image/RenderedImage;

    move-result-object v4

    move-object v3, p0

    move-object v5, v0

    move-object v6, p5

    invoke-direct/range {v3 .. v9}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeImage(Lorg/apache/poi/java/awt/image/RenderedImage;Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;Lorg/apache/poi/javax/imageio/ImageWriteParam;[BLorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Dimension;)V

    if-eqz p2, :cond_f

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeTrailer()V

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must write header for single image!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeApplicationExtension(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;)V
    .locals 6

    iget-object v0, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object p1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v3, 0x21

    invoke-interface {v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v3, 0xff

    invoke-interface {v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x3

    invoke-interface {v2, v3, v5, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeBlocks([B)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "I/O error writing Application Extension!"

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method private writeBlocks([B)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v0

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, p1, v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeCommentExtension(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;)V
    .locals 2

    iget-object p1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0xfe

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeBlocks([B)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "I/O error writing Comment Extension!"

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method private writeGraphicControlExtension(IZZII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0xf9

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x2

    if-eqz p2, :cond_0

    or-int/lit8 p1, p1, 0x2

    :cond_0
    if-eqz p3, :cond_1

    or-int/lit8 p1, p1, 0x1

    :cond_1
    iget-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p2, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-short p2, p4

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p1, p5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/javax/imageio/IIOException;

    const-string p3, "I/O error writing Graphic Control Extension!"

    invoke-direct {p2, p3, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private writeGraphicControlExtension(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;)V
    .locals 6

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    iget-boolean v2, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->userInputFlag:Z

    iget-boolean v3, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    iget v4, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->delayTime:I

    iget v5, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeGraphicControlExtension(IZZII)V

    return-void
.end method

.method private writeHeader(Ljava/lang/String;IIIIIZI[B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-short p2, p2

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-short p2, p3

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    if-eqz p9, :cond_0

    const/16 p1, 0x80

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p4, p4, -0x1

    and-int/lit8 p2, p4, 0x7

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p1, p2

    if-eqz p7, :cond_1

    or-int/lit8 p1, p1, 0x8

    :cond_1
    add-int/lit8 p8, p8, -0x1

    or-int/2addr p1, p8

    iget-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p2, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p1, p6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p1, p5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    if-eqz p9, :cond_2

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p1, p9}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/javax/imageio/IIOException;

    const-string p3, "I/O error writing header!"

    invoke-direct {p2, p3, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private writeHeader(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;I)V
    .locals 10

    instance-of v0, p1, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;-><init>()V

    const-string v1, "javax_imageio_gif_stream_1.0"

    invoke-virtual {p1, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    move-object p1, v0

    :goto_0
    iget-object v1, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->version:Ljava/lang/String;

    iget v2, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenWidth:I

    iget v3, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenHeight:I

    iget v4, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorResolution:I

    iget v5, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->pixelAspectRatio:I

    iget v6, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->backgroundColorIndex:I

    iget-boolean v7, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->sortFlag:Z

    iget-object v9, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    move-object v0, p0

    move v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeHeader(Ljava/lang/String;IIIIIZI[B)V

    return-void
.end method

.method private writeImage(Lorg/apache/poi/java/awt/image/RenderedImage;Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;Lorg/apache/poi/javax/imageio/ImageWriteParam;[BLorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Dimension;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {p2, p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    invoke-virtual {p0, p2, p3}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->getDefaultImageMetadata(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p2

    check-cast p2, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;

    iget-boolean v3, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v3, "javax_imageio_gif_image_1.0"

    invoke-virtual {p2, v3}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v4, "GraphicControlExtension"

    invoke-virtual {v3, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getProgressiveMode()I

    move-result v5

    if-nez v5, :cond_2

    iput-boolean v2, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getProgressiveMode()I

    move-result v5

    if-ne v5, v4, :cond_3

    iput-boolean v4, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    :cond_3
    :goto_2
    iget-object v4, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    invoke-static {p4, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-object v1, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    :cond_4
    iget v1, p6, Lorg/apache/poi/java/awt/Dimension;->width:I

    iput v1, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iget v1, p6, Lorg/apache/poi/java/awt/Dimension;->height:I

    iput v1, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    if-eqz v3, :cond_5

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeGraphicControlExtension(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;)V

    :cond_5
    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writePlainTextExtension(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;)V

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeApplicationExtension(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;)V

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeCommentExtension(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;)V

    iget-object v1, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    if-nez v1, :cond_7

    if-nez p4, :cond_6

    invoke-virtual {v0, v2}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result p4

    goto :goto_4

    :cond_6
    array-length p4, p4

    goto :goto_3

    :cond_7
    array-length p4, v1

    :goto_3
    div-int/lit8 p4, p4, 0x3

    :goto_4
    invoke-static {p4}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->getNumBits(I)I

    move-result p4

    invoke-direct {p0, p2, p4}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeImageDescriptor(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;I)V

    iget-boolean v5, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRasterData(Lorg/apache/poi/java/awt/image/RenderedImage;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Dimension;Lorg/apache/poi/javax/imageio/ImageWriteParam;Z)V

    return-void
.end method

.method private writeImageDescriptor(IIIIZZI[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-short p1, p1

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-short p2, p2

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-short p2, p3

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-short p2, p4

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    if-eqz p8, :cond_0

    const/16 p1, 0x80

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit8 p1, p1, 0x40

    :cond_1
    if-eqz p6, :cond_2

    or-int/lit8 p1, p1, 0x8

    :cond_2
    add-int/lit8 p7, p7, -0x1

    or-int/2addr p1, p7

    iget-object p2, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p2, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    if-eqz p8, :cond_3

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p1, p8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/javax/imageio/IIOException;

    const-string p3, "I/O error writing Image Descriptor!"

    invoke-direct {p2, p3, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private writeImageDescriptor(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;I)V
    .locals 9

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    iget v2, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    iget v3, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iget v4, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    iget-boolean v5, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    iget-boolean v6, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->sortFlag:Z

    iget-object v8, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeImageDescriptor(IIIIZZI[B)V

    return-void
.end method

.method private writePlainTextExtension(Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;)V
    .locals 2

    iget-boolean v0, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->hasPlainTextExtension:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridLeft:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridTop:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridWidth:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridHeight:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellWidth:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellHeight:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textForegroundColor:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textBackgroundColor:I

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object p1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->text:[B

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeBlocks([B)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "I/O error writing Plain Text Extension!"

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private writeRasterData(Lorg/apache/poi/java/awt/image/RenderedImage;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Dimension;Lorg/apache/poi/javax/imageio/ImageWriteParam;Z)V
    .locals 28

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget v13, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v12, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v11, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v10, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v9, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    const/4 v0, 0x1

    if-nez p4, :cond_0

    move v7, v0

    move v8, v7

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v2

    move v8, v1

    move v7, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v2

    const/4 v6, 0x0

    aget v2, v2, v6

    if-ne v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v3, v14, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v3, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    new-instance v5, Lcom/sun/imageio/plugins/common/LZWCompressor;

    iget-object v3, v14, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v5, v3, v2, v6}, Lcom/sun/imageio/plugins/common/LZWCompressor;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;IZ)V

    if-ne v8, v0, :cond_2

    if-ne v7, v0, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getNumXTiles()I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getNumYTiles()I

    move-result v2

    if-ne v2, v0, :cond_2

    instance-of v1, v1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-eqz v1, :cond_2

    invoke-interface {v15, v6, v6}, Lorg/apache/poi/java/awt/image/RenderedImage;->getTile(II)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    if-eqz v1, :cond_2

    invoke-interface {v15, v6, v6}, Lorg/apache/poi/java/awt/image/RenderedImage;->getTile(II)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    div-int/lit8 v2, v9, 0x14

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    iget v0, v14, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->imageIndex:I

    invoke-virtual {v14, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageStarted(I)V

    if-eqz p5, :cond_a

    if-eqz v1, :cond_6

    invoke-interface {v15, v6, v6}, Lorg/apache/poi/java/awt/image/RenderedImage;->getTile(II)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {v1, v13, v12, v6}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getOffset(III)I

    move-result v2

    invoke-virtual {v0, v6}, Lorg/apache/poi/sun/awt/image/ByteComponentRaster;->getDataOffset(I)I

    move-result v0

    add-int v12, v2, v0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v13

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move-object v4, v5

    move-object/from16 v17, v5

    move v5, v7

    move v7, v6

    move v6, v8

    move v8, v7

    move v7, v10

    move v8, v9

    move/from16 v19, v9

    move v9, v15

    move/from16 v20, v10

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRowsOpt([BIILcom/sun/imageio/plugins/common/LZWCompressor;IIIIII)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    div-int/lit8 v9, v19, 0x8

    const/4 v15, 0x0

    add-int/lit8 v18, v9, 0x0

    const/4 v5, 0x4

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move-object/from16 v4, v17

    move/from16 v7, v20

    move/from16 v8, v19

    move/from16 v9, v18

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRowsOpt([BIILcom/sun/imageio/plugins/common/LZWCompressor;IIIIII)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    add-int/lit8 v9, v19, -0x4

    div-int/lit8 v9, v9, 0x8

    add-int v18, v18, v9

    const/4 v5, 0x2

    const/4 v6, 0x4

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move-object/from16 v4, v17

    move/from16 v7, v20

    move/from16 v8, v19

    move/from16 v9, v18

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRowsOpt([BIILcom/sun/imageio/plugins/common/LZWCompressor;IIIIII)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    add-int/lit8 v9, v19, -0x2

    div-int/lit8 v9, v9, 0x4

    add-int v9, v18, v9

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move-object/from16 v4, v17

    move/from16 v7, v20

    move/from16 v8, v19

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRowsOpt([BIILcom/sun/imageio/plugins/common/LZWCompressor;IIIIII)V

    move v14, v15

    goto/16 :goto_2

    :cond_6
    move-object/from16 v17, v5

    move/from16 v19, v9

    move/from16 v20, v10

    move v10, v6

    mul-int/lit8 v18, v7, 0x8

    const/4 v9, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move v3, v13

    move v4, v8

    move v5, v12

    move/from16 v6, v18

    move/from16 v23, v7

    move v7, v11

    move/from16 v24, v8

    move v8, v9

    move/from16 v9, v21

    move/from16 v10, v20

    move/from16 v21, v11

    move/from16 v11, v19

    move/from16 v26, v12

    move/from16 v12, v22

    move/from16 p2, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRows(Lorg/apache/poi/java/awt/image/RenderedImage;Lcom/sun/imageio/plugins/common/LZWCompressor;IIIIIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    div-int/lit8 v9, v19, 0x8

    const/4 v13, 0x0

    add-int/lit8 v22, v9, 0x0

    mul-int/lit8 v25, v23, 0x4

    move/from16 v12, v26

    add-int v5, v12, v25

    const/4 v8, 0x4

    const/16 v9, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p2

    move/from16 v4, v24

    move/from16 v6, v18

    move/from16 v7, v21

    move/from16 v10, v20

    move/from16 v11, v19

    move/from16 v27, v12

    move/from16 v12, v22

    move v14, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRows(Lorg/apache/poi/java/awt/image/RenderedImage;Lcom/sun/imageio/plugins/common/LZWCompressor;IIIIIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    add-int/lit8 v9, v19, -0x4

    div-int/lit8 v9, v9, 0x8

    add-int v22, v22, v9

    mul-int/lit8 v18, v23, 0x2

    move/from16 v13, v27

    add-int v5, v13, v18

    const/4 v8, 0x2

    const/4 v9, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p2

    move/from16 v4, v24

    move/from16 v6, v25

    move/from16 v7, v21

    move/from16 v10, v20

    move/from16 v11, v19

    move/from16 v12, v22

    move v14, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRows(Lorg/apache/poi/java/awt/image/RenderedImage;Lcom/sun/imageio/plugins/common/LZWCompressor;IIIIIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    add-int/lit8 v9, v19, -0x2

    div-int/lit8 v9, v9, 0x4

    add-int v12, v22, v9

    add-int v5, v14, v23

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p2

    move/from16 v4, v24

    move/from16 v6, v18

    move/from16 v7, v21

    move/from16 v10, v20

    move/from16 v11, v19

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRows(Lorg/apache/poi/java/awt/image/RenderedImage;Lcom/sun/imageio/plugins/common/LZWCompressor;IIIIIIIIIII)V

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v17, v5

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move v14, v12

    move/from16 p2, v13

    if-eqz v1, :cond_b

    const/4 v13, 0x0

    invoke-interface {v15, v13, v13}, Lorg/apache/poi/java/awt/image/RenderedImage;->getTile(II)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    move/from16 v3, p2

    invoke-virtual {v0, v3, v14, v13}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getOffset(III)I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v17

    move/from16 v7, v20

    move/from16 v8, v19

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRowsOpt([BIILcom/sun/imageio/plugins/common/LZWCompressor;IIIIII)V

    move v14, v13

    goto :goto_2

    :cond_b
    move/from16 v3, p2

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v4, v24

    move v5, v14

    move/from16 v6, v23

    move/from16 v7, v21

    move/from16 v10, v20

    move/from16 v11, v19

    move v14, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeRows(Lorg/apache/poi/java/awt/image/RenderedImage;Lcom/sun/imageio/plugins/common/LZWCompressor;IIIIIIIIIII)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/high16 v0, 0x42c80000    # 100.0f

    move-object/from16 v1, p0

    move v2, v14

    invoke-virtual {v1, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageProgress(F)V

    invoke-virtual/range {v17 .. v17}, Lcom/sun/imageio/plugins/common/LZWCompressor;->flush()V

    iget-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageComplete()V

    return-void
.end method

.method private writeRows(Lorg/apache/poi/java/awt/image/RenderedImage;Lcom/sun/imageio/plugins/common/LZWCompressor;IIIIIIIIIII)V
    .locals 17

    move/from16 v0, p10

    move/from16 v1, p11

    move/from16 v9, p7

    new-array v10, v9, [I

    new-array v11, v0, [B

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getNumXTiles()I

    move-result v2

    const/4 v3, 0x1

    const/4 v12, 0x0

    if-ne v2, v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getNumYTiles()I

    move-result v2

    if-ne v2, v3, :cond_0

    move-object/from16 v2, p1

    invoke-interface {v2, v12, v12}, Lorg/apache/poi/java/awt/image/RenderedImage;->getTile(II)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getData()Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v2

    :goto_0
    move-object v13, v2

    move/from16 v14, p5

    move/from16 v15, p8

    move/from16 v8, p12

    :goto_1
    if-ge v15, v1, :cond_4

    rem-int v2, v8, p13

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWriteAborted()V

    return-void

    :cond_1
    int-to-float v2, v8

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    move-object/from16 v7, p0

    invoke-virtual {v7, v2}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageProgress(F)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, p0

    :goto_2
    const/4 v6, 0x1

    const/16 v16, 0x0

    move-object v2, v13

    move/from16 v3, p3

    move v4, v14

    move/from16 v5, p7

    move/from16 v7, v16

    move/from16 v16, v8

    move-object v8, v10

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/java/awt/image/Raster;->getSamples(IIIII[I)[I

    move v2, v12

    move v3, v2

    :goto_3
    if-ge v2, v0, :cond_3

    aget v4, v10, v3

    int-to-byte v4, v4

    aput-byte v4, v11, v2

    add-int/lit8 v2, v2, 0x1

    add-int v3, v3, p4

    goto :goto_3

    :cond_3
    move-object/from16 v2, p2

    invoke-virtual {v2, v11, v12, v0}, Lcom/sun/imageio/plugins/common/LZWCompressor;->compress([BII)V

    add-int/lit8 v8, v16, 0x1

    add-int v14, v14, p6

    add-int v15, v15, p9

    goto :goto_1

    :cond_4
    return-void
.end method

.method private writeRowsOpt([BIILcom/sun/imageio/plugins/common/LZWCompressor;IIIIII)V
    .locals 2

    mul-int v0, p5, p3

    add-int/2addr p2, v0

    mul-int/2addr p3, p6

    :goto_0
    if-ge p5, p8, :cond_2

    rem-int v0, p9, p10

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWriteAborted()V

    return-void

    :cond_0
    int-to-float v0, p9

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float v1, p8

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageProgress(F)V

    :cond_1
    invoke-virtual {p4, p1, p2, p7}, Lcom/sun/imageio/plugins/common/LZWCompressor;->compress([BII)V

    add-int/lit8 p9, p9, 0x1

    add-int/2addr p2, p3

    add-int/2addr p5, p6

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeTrailer()V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public canWriteSequence()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public convertImageMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->getDefaultImageMetadata(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p2

    check-cast p2, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;

    iget-boolean v0, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    const-string v1, "javax_imageio_gif_image_1.0"

    invoke-direct {p0, v1, p1, p2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->convertMetadata(Ljava/lang/String;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getProgressiveMode()I

    move-result p1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    iput-boolean v0, p2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    :cond_0
    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "imageType == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inData == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public convertStreamMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->getDefaultStreamMetadata(Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p2

    const-string v0, "javax_imageio_gif_stream_1.0"

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->convertMetadata(Ljava/lang/String;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inData == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endWriteSequence()V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->isWritingSequence:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->writeTrailer()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->resetLocal()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "prepareWriteSequence() was not invoked!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultImageMetadata(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 5

    new-instance v0, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/gif/GIFWritableImageMetadata;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/java/awt/Rectangle;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/java/awt/Rectangle;-><init>(II)V

    new-instance v3, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v3}, Lorg/apache/poi/java/awt/Dimension;-><init>()V

    invoke-static {v2, v3, p2}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->computeRegions(Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Dimension;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V

    iget v2, v3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iput v2, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iget v2, v3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iput v2, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getProgressiveMode()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->createColorTable(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)[B

    move-result-object p2

    iput-object p2, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    instance-of p2, p1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getTransparentPixel()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    iput p1, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    :cond_1
    return-object v0
.end method

.method public getDefaultStreamMetadata(Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    new-instance p1, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    invoke-direct {p1}, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;-><init>()V

    const-string v0, "89a"

    iput-object v0, p1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->version:Ljava/lang/String;

    return-object p1
.end method

.method public getDefaultWriteParam()Lorg/apache/poi/javax/imageio/ImageWriteParam;
    .locals 2

    new-instance v0, Lcom/sun/imageio/plugins/gif/GIFImageWriteParam;

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/gif/GIFImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public prepareWriteSequence(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->resetLocal()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->getDefaultStreamMetadata(Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p1

    check-cast p1, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->theStreamMetadata:Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->theStreamMetadata:Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    const-string v1, "javax_imageio_gif_stream_1.0"

    invoke-direct {p0, v1, p1, v0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->convertMetadata(Ljava/lang/String;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->isWritingSequence:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Output is not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->reset()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->resetLocal()V

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "output is not an ImageOutputStream"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    :goto_0
    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 6

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOImage;->hasRaster()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->resetLocal()V

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->getDefaultStreamMetadata(Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->convertStreamMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    move-object v3, p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->write(ZZLorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "canWriteRasters() == false!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iioimage == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "output == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToSequence(Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 8

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/IIOImage;->hasRaster()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->isWritingSequence:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->wroteSequenceHeader:Z

    const/4 v1, 0x1

    xor-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->theStreamMetadata:Lcom/sun/imageio/plugins/gif/GIFWritableStreamMetadata;

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->write(ZZLorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->wroteSequenceHeader:Z

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->wroteSequenceHeader:Z

    :cond_0
    iget p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->imageIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageWriter;->imageIndex:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "prepareWriteSequence() was not invoked!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "canWriteRasters() == false!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "image == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "output == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
