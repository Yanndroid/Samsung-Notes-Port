.class public Lcom/sun/imageio/plugins/gif/GIFImageReader;
.super Lorg/apache/poi/javax/imageio/ImageReader;
.source "SourceFile"


# static fields
.field private static defaultPalette:[B

.field public static final interlaceIncrement:[I

.field public static final interlaceOffset:[I


# instance fields
.field public bitPos:I

.field public block:[B

.field public blockLength:I

.field public clearCode:I

.field public currIndex:I

.field public decodeThisRow:Z

.field public destY:I

.field public destinationOffset:Lorg/apache/poi/java/awt/Point;

.field public destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

.field public eofCode:I

.field private fallbackColorTable:[B

.field public gotHeader:Z

.field public height:I

.field public imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

.field public imageMetadataLength:I

.field public imageStartPosition:Ljava/util/List;

.field public initCodeSize:I

.field public interlacePass:I

.field public lastBlockFound:Z

.field public next32Bits:I

.field public nextByte:I

.field public numImages:I

.field public rowBuf:[B

.field public rowsDone:I

.field public sourceMaxProgressivePass:I

.field public sourceMinProgressivePass:I

.field public sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

.field public sourceXSubsampling:I

.field public sourceYSubsampling:I

.field public stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

.field public streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

.field public streamX:I

.field public streamY:I

.field public theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

.field public theTile:Lorg/apache/poi/java/awt/image/WritableRaster;

.field public updateMinY:I

.field public updateYStep:I

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceIncrement:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceOffset:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x4
        0x2
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x2
        0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->gotHeader:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->currIndex:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    const/16 v2, 0xff

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Lorg/apache/poi/java/awt/image/WritableRaster;

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->decodeThisRow:Z

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    return-void
.end method

.method private checkIndex(I)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->minIndex:I

    if-lt p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->seekForwardOnly:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->minIndex:I

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "imageIndex < minIndex!"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeDecodeThisRow()V
    .locals 3

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v2, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v2, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    if-lt v0, v2, :cond_0

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    sub-int/2addr v0, v2

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->decodeThisRow:Z

    return-void
.end method

.method private concatenateBlocks()[B
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [B

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    array-length v3, v1

    add-int/2addr v3, v2

    new-array v3, v3, [B

    array-length v4, v1

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    array-length v1, v1

    invoke-interface {v4, v3, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    move-object v1, v3

    goto :goto_0
.end method

.method private copyData([BI[B)I
    .locals 2

    array-length v0, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    return p2
.end method

.method private createIndexed([B[B[BI)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 18

    move-object/from16 v3, p1

    move-object/from16 v7, p0

    move/from16 v8, p4

    iget-object v0, v7, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    array-length v1, v3

    sub-int/2addr v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v10, Lorg/apache/poi/java/awt/image/IndexColorModel;

    array-length v2, v3

    move-object v0, v10

    move/from16 v1, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[BI)V

    goto :goto_0

    :cond_0
    new-instance v10, Lorg/apache/poi/java/awt/image/IndexColorModel;

    array-length v2, v3

    move-object v0, v10

    move/from16 v1, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    :goto_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne v8, v0, :cond_1

    new-array v0, v9, [I

    aput v1, v0, v1

    new-instance v1, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v11, v1

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-direct {v0, v1, v9, v9, v8}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    move-object v1, v0

    :goto_1
    new-instance v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {v0, v10, v1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)V

    return-object v0
.end method

.method private getCode(II)I
    .locals 4

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    add-int v1, v0, p1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    iget p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->eofCode:I

    return p1

    :cond_0
    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    shr-int/2addr v1, v0

    and-int/2addr p2, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    :goto_0
    iget p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_4

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    ushr-int/lit8 v0, v1, 0x8

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    iget p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    return p2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lez p1, :cond_2

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    invoke-interface {v2, v3, v1, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    :cond_3
    iget p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    goto :goto_0

    :cond_4
    return p2
.end method

.method private static declared-synchronized getDefaultPalette()[B
    .locals 10

    const-class v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/image/BufferedImage;

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getMapSize()I

    move-result v2

    new-array v3, v2, [B

    new-array v4, v2, [B

    new-array v5, v2, [B

    invoke-virtual {v1, v3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getReds([B)V

    invoke-virtual {v1, v4}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getGreens([B)V

    invoke-virtual {v1, v5}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getBlues([B)V

    mul-int/lit8 v1, v2, 0x3

    new-array v1, v1, [B

    sput-object v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    sget-object v6, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v8, v7, 0x0

    aget-byte v9, v3, v1

    aput-byte v9, v6, v8

    add-int/lit8 v8, v7, 0x1

    aget-byte v9, v4, v1

    aput-byte v9, v6, v8

    add-int/lit8 v7, v7, 0x2

    aget-byte v8, v5, v1

    aput-byte v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initNext32Bits()V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    return-void
.end method

.method private locateImage(I)I
    .locals 5

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readHeader()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->skipImage()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->currIndex:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    :cond_2
    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->currIndex:I

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "Couldn\'t seek!"

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private outputPixels([BI)V
    .locals 6

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMinProgressivePass:I

    if-lt v0, v1, :cond_8

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMaxProgressivePass:I

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_8

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v3, Lorg/apache/poi/java/awt/Rectangle;->x:I

    if-lt v2, v3, :cond_1

    iget-object v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowBuf:[B

    sub-int v3, v2, v3

    aget-byte v5, p1, v1

    aput-byte v5, v4, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    const/high16 v3, 0x42c80000    # 100.0f

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->decodeThisRow:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->outputRow()V

    :cond_2
    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-boolean v2, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    sget-object v3, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceIncrement:[I

    iget v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    if-lt v2, v3, :cond_6

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {p0, v2}, Lorg/apache/poi/javax/imageio/ImageReader;->processPassComplete(Lorg/apache/poi/java/awt/image/BufferedImage;)V

    :cond_3
    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMaxProgressivePass:I

    if-le v2, v3, :cond_4

    return-void

    :cond_4
    sget-object v3, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceOffset:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->startPass(I)V

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iget-object v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->computeDecodeThisRow()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method private outputRow()V
    .locals 11

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v2, v8, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Lorg/apache/poi/java/awt/image/WritableRaster;

    iget v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowBuf:[B

    move v3, v1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    move v2, v9

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Lorg/apache/poi/java/awt/image/WritableRaster;

    iget v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowBuf:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v1, v4, v9, v5}, Lorg/apache/poi/java/awt/image/WritableRaster;->setSample(IIII)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    new-array v10, v8, [I

    aput v9, v10, v9

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    iget v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget v9, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->updateYStep:I

    move-object v2, p0

    move v6, v0

    invoke-virtual/range {v2 .. v10}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    :cond_2
    return-void
.end method

.method private readHeader()V
    .locals 7

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->gotHeader:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    aget-byte v3, v0, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x5

    aget-byte v0, v0, v3

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->version:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenWidth:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenHeight:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v4

    iput v6, v5, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorResolution:I

    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, v5, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->sortFlag:Z

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v4

    shl-int v0, v4, v0

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v5, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->backgroundColorIndex:I

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v5

    iput v5, v3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->pixelAspectRatio:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    :goto_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->gotHeader:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "I/O error reading header!"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readMetadata()V
    .locals 10

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_10

    :try_start_0
    new-instance v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x2c

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    iget-object v7, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_2

    :cond_1
    move v8, v5

    :goto_2
    iput-boolean v8, v7, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_2

    move v5, v6

    :cond_2
    iput-boolean v5, v7, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->sortFlag:Z

    and-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v6

    shl-int v2, v6, v2

    if-eqz v3, :cond_3

    mul-int/2addr v2, v4

    new-array v2, v2, [B

    iput-object v2, v7, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    iput-object v2, v7, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    :goto_3
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadataLength:I

    return-void

    :cond_4
    const/16 v3, 0x21

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0xf9

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v4, v7

    iput v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_5

    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    iput-boolean v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->userInputFlag:Z

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    move v5, v6

    :cond_6
    iput-boolean v5, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->delayTime:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    goto/16 :goto_0

    :cond_7
    if-ne v2, v6, :cond_8

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iput-boolean v6, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->hasPlainTextExtension:Z

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridLeft:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridTop:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridWidth:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridHeight:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellWidth:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellHeight:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textForegroundColor:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textBackgroundColor:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->concatenateBlocks()[B

    move-result-object v3

    iput-object v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->text:[B

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xfe

    if-ne v2, v3, :cond_a

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->concatenateBlocks()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    if-nez v4, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    :cond_9
    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xff

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [B

    new-array v4, v4, [B

    new-array v6, v2, [B

    iget-object v7, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v7, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    invoke-direct {p0, v6, v5, v3}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->copyData([BI[B)I

    move-result v7

    invoke-direct {p0, v6, v7, v4}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->copyData([BI[B)I

    move-result v7

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->concatenateBlocks()[B

    move-result-object v8

    if-ge v7, v2, :cond_b

    sub-int/2addr v2, v7

    array-length v9, v8

    add-int/2addr v9, v2

    new-array v9, v9, [B

    invoke-static {v6, v7, v9, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v8

    invoke-static {v8, v5, v9, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_b
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v5, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    if-nez v5, :cond_c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    :cond_c
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    if-gtz v2, :cond_d

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x3b

    if-ne v2, v0, :cond_f

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Attempt to read past end of image sequence!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected block type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/apache/poi/javax/imageio/IIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "I/O error reading image metadata!"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetStreamSettings()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->gotHeader:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->currIndex:I

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Lorg/apache/poi/java/awt/image/WritableRaster;

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    return-void
.end method

.method private skipImage()Z
    .locals 4

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    shl-int v1, v3, v1

    mul-int/lit8 v1, v1, 0x3

    invoke-interface {v2, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :cond_1
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    if-gtz v1, :cond_1

    return v3

    :cond_2
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    return v0

    :cond_3
    const/16 v2, 0x21

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    :cond_4
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    if-gtz v1, :cond_4

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v1, :cond_6

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "I/O error locating image!"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    return v0
.end method

.method private startPass(I)V
    .locals 25

    move-object/from16 v10, p0

    iget-object v0, v10, Lorg/apache/poi/javax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceOffset:[I

    iget v1, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    aget v20, v0, v1

    sget-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceIncrement:[I

    aget v24, v0, v1

    iget-object v11, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget-object v12, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    iget-object v0, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v13, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v14, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int v2, v13, v1

    const/4 v3, 0x1

    add-int/lit8 v15, v2, -0x1

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int v2, v14, v0

    add-int/lit8 v16, v2, -0x1

    iget v2, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    iget v4, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    const/16 v19, 0x0

    add-int v0, v0, v24

    sub-int/2addr v0, v3

    div-int v22, v0, v24

    const/16 v23, 0x1

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v21, v1

    invoke-static/range {v11 .. v24}, Lcom/sun/imageio/plugins/common/ReaderUtil;->computeUpdatedPixels(Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;IIIIIIIIIIII)[I

    move-result-object v0

    aget v6, v0, v3

    iput v6, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->updateMinY:I

    const/4 v1, 0x5

    aget v8, v0, v1

    iput v8, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->updateYStep:I

    new-array v9, v3, [I

    const/4 v0, 0x0

    aput v0, v9, v0

    iget-object v1, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    iget v2, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iget v3, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMinProgressivePass:I

    iget v4, v10, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMaxProgressivePass:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/ImageReader;->processPassStarted(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultReadParam()Lorg/apache/poi/javax/imageio/ImageReadParam;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageReadParam;

    invoke-direct {v0}, Lorg/apache/poi/javax/imageio/ImageReadParam;-><init>()V

    return-object v0
.end method

.method public getHeight(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget p1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getImageMetadata(I)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Bad image index!"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 9

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v0

    if-ne v0, p1, :cond_8

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    if-nez v1, :cond_1

    const-string v1, "Use default color table."

    invoke-virtual {p0, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    invoke-static {}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getDefaultPalette()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    :cond_1
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    :cond_2
    array-length v2, v1

    div-int/lit8 v2, v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    if-ne v2, v4, :cond_4

    move v3, v5

    goto :goto_1

    :cond_4
    if-eq v2, v3, :cond_5

    const/16 v5, 0x10

    if-ne v2, v5, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    :goto_1
    shl-int/2addr v0, v3

    new-array v4, v0, [B

    new-array v5, v0, [B

    new-array v0, v0, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v6, v2, :cond_7

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v1, v7

    aput-byte v7, v4, v6

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, v1, v8

    aput-byte v8, v5, v6

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v1, v7

    aput-byte v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_2

    :cond_7
    invoke-direct {p0, v4, v5, v0, v3}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->createIndexed([B[B[BI)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getNumImages(Z)I
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageReader;->seekForwardOnly:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "seekForwardOnly and allowSearch can\'t both be true!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    if-lez v0, :cond_2

    return v0

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x7fffffff

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    :cond_3
    iget p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Input not set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStreamMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readHeader()V

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    return-object v0
.end method

.method public getWidth(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget p1, p1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public initializeStringTable([I[B[B[I)V
    .locals 4

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_0

    aput v3, p1, v2

    int-to-byte v3, v2

    aput-byte v3, p2, v2

    aput-byte v3, p3, v2

    aput v1, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 p2, 0x1000

    if-ge v0, p2, :cond_1

    aput v3, p1, v0

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct/range {p0 .. p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v0

    move/from16 v2, p1

    if-ne v0, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->clearAbortRequest()V

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getDefaultReadParam()Lorg/apache/poi/javax/imageio/ImageReadParam;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget v5, v4, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iget v4, v4, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    invoke-static {v0, v3, v5, v4}, Lorg/apache/poi/javax/imageio/ImageReader;->getDestination(Lorg/apache/poi/javax/imageio/ImageReadParam;Ljava/util/Iterator;II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v3

    iput-object v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWritableTile(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v3

    iput-object v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Lorg/apache/poi/java/awt/image/WritableRaster;

    iget-object v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iput v4, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    iget v3, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    iput v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    iput v9, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iput v9, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iput v9, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    iput v9, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    new-instance v3, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v3, v9, v9, v9, v9}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iput-object v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    new-instance v8, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v8, v9, v9, v9, v9}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iput-object v8, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    iget v5, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    iget-object v6, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    iget-object v7, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->computeRegions(Lorg/apache/poi/javax/imageio/ImageReadParam;IILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Rectangle;)V

    new-instance v3, Lorg/apache/poi/java/awt/Point;

    iget-object v4, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v5, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v4, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    invoke-direct {v3, v5, v4}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    iput-object v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v3

    iput v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v3

    iput v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getSourceMinProgressivePass()I

    move-result v3

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMinProgressivePass:I

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getSourceMaxProgressivePass()I

    move-result v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMaxProgressivePass:I

    iget-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iget-object v4, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    div-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->computeDecodeThisRow()V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageStarted(I)V

    invoke-direct {v1, v9}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->startPass(I)V

    iget v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowBuf:[B

    :try_start_0
    iget-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    iget-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    move v2, v9

    :goto_1
    if-lez v0, :cond_1

    iget-object v3, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-object v4, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    invoke-interface {v3, v4, v2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    iput v9, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    iput v9, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    iput-boolean v9, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    iput v9, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initNext32Bits()V

    iget v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    const/4 v2, 0x1

    shl-int v0, v2, v0

    iput v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->clearCode:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->eofCode:I

    const/16 v0, 0x1000

    new-array v3, v0, [I

    new-array v4, v0, [B

    new-array v5, v0, [B

    new-array v6, v0, [I

    new-array v7, v0, [B

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initializeStringTable([I[B[B[I)V

    iget v8, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    shl-int v10, v2, v8

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v2

    shl-int v11, v2, v8

    sub-int/2addr v11, v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-direct {v1, v8, v11}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getCode(II)I

    move-result v12

    iget v13, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->clearCode:I

    if-ne v12, v13, :cond_3

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initializeStringTable([I[B[B[I)V

    iget v8, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    shl-int v9, v2, v8

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v8, v8, 0x1

    shl-int v10, v2, v8

    sub-int/2addr v10, v2

    invoke-direct {v1, v8, v10}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getCode(II)I

    move-result v11

    iget v12, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->eofCode:I

    if-ne v11, v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageComplete()V

    iget-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    return-object v0

    :cond_2
    move/from16 v16, v10

    move v10, v9

    move v9, v11

    move/from16 v11, v16

    goto :goto_4

    :cond_3
    iget v13, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->eofCode:I

    if-ne v12, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageComplete()V

    iget-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    return-object v0

    :cond_4
    if-ge v12, v10, :cond_5

    move v13, v12

    goto :goto_3

    :cond_5
    if-eq v12, v10, :cond_6

    const-string v13, "Out-of-sequence code!"

    invoke-virtual {v1, v13}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_6
    move v13, v9

    :goto_3
    aput v9, v3, v10

    aget-byte v13, v5, v13

    aput-byte v13, v4, v10

    aget-byte v13, v5, v9

    aput-byte v13, v5, v10

    aget v9, v6, v9

    add-int/2addr v9, v2

    aput v9, v6, v10

    add-int/lit8 v10, v10, 0x1

    shl-int v9, v2, v8

    if-ne v10, v9, :cond_7

    if-ge v10, v0, :cond_7

    add-int/lit8 v8, v8, 0x1

    shl-int v9, v2, v8

    sub-int/2addr v9, v2

    move v11, v9

    :cond_7
    move v9, v12

    :goto_4
    aget v12, v6, v9

    add-int/lit8 v13, v12, -0x1

    move v14, v9

    :goto_5
    if-ltz v13, :cond_8

    aget-byte v15, v4, v14

    aput-byte v15, v7, v13

    aget v14, v3, v14

    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    :cond_8
    invoke-direct {v1, v7, v12}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->outputPixels([BI)V

    goto :goto_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processReadAborted()V

    iget-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v3, "I/O error reading image!"

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "imageIndex out of bounds!"

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Input not set!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->reset()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->resetStreamSettings()V

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    if-eqz p1, :cond_1

    instance-of p2, p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input not an ImageInputStream!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->resetStreamSettings()V

    return-void
.end method
