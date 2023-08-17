.class public Lcom/sun/imageio/plugins/png/PNGImageReader;
.super Lorg/apache/poi/javax/imageio/ImageReader;
.source "SourceFile"


# static fields
.field public static final IDAT_TYPE:I = 0x49444154

.field public static final IEND_TYPE:I = 0x49454e44

.field public static final IHDR_TYPE:I = 0x49484452

.field public static final PLTE_TYPE:I = 0x504c5445

.field public static final PNG_COLOR_GRAY:I = 0x0

.field public static final PNG_COLOR_GRAY_ALPHA:I = 0x4

.field public static final PNG_COLOR_PALETTE:I = 0x3

.field public static final PNG_COLOR_RGB:I = 0x2

.field public static final PNG_COLOR_RGB_ALPHA:I = 0x6

.field public static final PNG_FILTER_AVERAGE:I = 0x3

.field public static final PNG_FILTER_NONE:I = 0x0

.field public static final PNG_FILTER_PAETH:I = 0x4

.field public static final PNG_FILTER_SUB:I = 0x1

.field public static final PNG_FILTER_UP:I = 0x2

.field public static final adam7XOffset:[I

.field public static final adam7XSubsampling:[I

.field public static final adam7YOffset:[I

.field public static final adam7YSubsampling:[I

.field public static final bKGD_TYPE:I = 0x624b4744

.field private static final bandOffsets:[[I

.field public static final cHRM_TYPE:I = 0x6348524d

.field private static final debug:Z = true

.field public static final gAMA_TYPE:I = 0x67414d41

.field public static final hIST_TYPE:I = 0x68495354

.field public static final iCCP_TYPE:I = 0x69434350

.field public static final iTXt_TYPE:I = 0x69545874

.field public static final inputBandsForColorType:[I

.field public static final pHYs_TYPE:I = 0x70485973

.field public static final sBIT_TYPE:I = 0x73424954

.field public static final sPLT_TYPE:I = 0x73504c54

.field public static final sRGB_TYPE:I = 0x73524742

.field public static final tEXt_TYPE:I = 0x74455874

.field public static final tIME_TYPE:I = 0x74494d45

.field public static final tRNS_TYPE:I = 0x74524e53

.field public static final zTXt_TYPE:I = 0x7a545874


# instance fields
.field public destinationBands:[I

.field public destinationOffset:Lorg/apache/poi/java/awt/Point;

.field public gotHeader:Z

.field public gotMetadata:Z

.field public imageStartPosition:J

.field public lastParam:Lorg/apache/poi/javax/imageio/ImageReadParam;

.field public metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

.field public pixelStream:Ljava/io/DataInputStream;

.field public pixelsDone:I

.field public sourceBands:[I

.field public sourceMaxProgressivePass:I

.field public sourceMinProgressivePass:I

.field public sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

.field public sourceXSubsampling:I

.field public sourceYSubsampling:I

.field public stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

.field public theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

.field public totalPixels:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->inputBandsForColorType:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7XOffset:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7YOffset:[I

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7XSubsampling:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7YSubsampling:[I

    const/4 v0, 0x5

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v3, v1, [I

    aput v2, v3, v2

    aput-object v3, v0, v1

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->bandOffsets:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        -0x1
        0x3
        0x1
        0x2
        -0x1
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->gotHeader:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->gotMetadata:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->lastParam:Lorg/apache/poi/javax/imageio/ImageReadParam;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->imageStartPosition:J

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceXSubsampling:I

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceYSubsampling:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMinProgressivePass:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMaxProgressivePass:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceBands:[I

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationBands:[I

    new-instance v1, Lorg/apache/poi/java/awt/Point;

    invoke-direct {v1, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    new-instance v1, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelStream:Ljava/io/DataInputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelsDone:I

    return-void
.end method

.method private createRaster(IIIII)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 7

    new-instance v6, Lorg/apache/poi/java/awt/Point;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    const/16 v0, 0x8

    if-ge p5, v0, :cond_0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    new-instance p3, Lorg/apache/poi/java/awt/image/DataBufferByte;

    mul-int/2addr p4, p2

    invoke-direct {p3, p4}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(I)V

    invoke-static {p3, p1, p2, p5, v6}, Lorg/apache/poi/java/awt/image/Raster;->createPackedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;IIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-gt p5, v0, :cond_1

    new-instance v0, Lorg/apache/poi/java/awt/image/DataBufferByte;

    mul-int p5, p2, p4

    invoke-direct {v0, p5}, Lorg/apache/poi/java/awt/image/DataBufferByte;-><init>(I)V

    sget-object p5, Lcom/sun/imageio/plugins/png/PNGImageReader;->bandOffsets:[[I

    aget-object v5, p5, p3

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;IIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    mul-int p5, p2, p4

    invoke-direct {v0, p5}, Lorg/apache/poi/java/awt/image/DataBufferUShort;-><init>(I)V

    sget-object p5, Lcom/sun/imageio/plugins/png/PNGImageReader;->bandOffsets:[[I

    aget-object v5, p5, p3

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;IIII[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static decodeAverageFilter([BI[BIII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, v0, p1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int v3, v0, p3

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p5

    :goto_1
    if-ge v0, p4, :cond_1

    add-int v1, v0, p1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    sub-int v3, v1, p5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int v4, v0, p3

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private decodeImage()V
    .locals 12

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    iget v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelsDone:I

    mul-int v1, v8, v9

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->totalPixels:I

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->clearAbortRequest()V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v6, v8

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sun/imageio/plugins/png/PNGImageReader;->decodePass(IIIIIII)V

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_0
    iget v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMaxProgressivePass:I

    if-gt v1, v0, :cond_3

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7XOffset:[I

    aget v2, v0, v1

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7YOffset:[I

    aget v3, v0, v1

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7XSubsampling:[I

    aget v4, v0, v1

    sget-object v5, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7YSubsampling:[I

    aget v6, v5, v1

    add-int/lit8 v10, v1, 0x1

    aget v0, v0, v10

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v10

    add-int/lit8 v5, v5, -0x1

    iget v7, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMinProgressivePass:I

    add-int/2addr v0, v8

    if-lt v1, v7, :cond_1

    div-int v7, v0, v4

    add-int/2addr v5, v9

    div-int v11, v5, v6

    move-object v0, p0

    move v5, v6

    move v6, v7

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/sun/imageio/plugins/png/PNGImageReader;->decodePass(IIIIIII)V

    goto :goto_1

    :cond_1
    div-int/2addr v0, v4

    add-int/2addr v5, v9

    div-int/2addr v5, v6

    invoke-direct {p0, v0, v5}, Lcom/sun/imageio/plugins/png/PNGImageReader;->skipPass(II)V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    move v1, v10

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private static decodePaethFilter([BI[BIII)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, v0, p1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int v3, v0, p3

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p5

    :goto_1
    if-ge v0, p4, :cond_1

    add-int v1, v0, p1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    sub-int v3, v1, p5

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int v4, v0, p3

    aget-byte v5, p2, v4

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, p5

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v3, v5, v4}, Lcom/sun/imageio/plugins/png/PNGImageReader;->paethPredictor(III)I

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private decodePass(IIIIIII)V
    .locals 47

    move-object/from16 v11, p0

    move/from16 v0, p6

    move/from16 v10, p7

    if-eqz v0, :cond_1f

    if-nez v10, :cond_0

    goto/16 :goto_18

    :cond_0
    iget-object v1, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v9}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWritableTile(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v14

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v1

    add-int/2addr v1, v14

    const/4 v8, 0x1

    add-int/lit8 v16, v1, -0x1

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v7

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    add-int/lit8 v6, v1, -0x1

    iget-object v12, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget-object v13, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    iget v1, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceXSubsampling:I

    iget v2, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceYSubsampling:I

    move v15, v7

    move/from16 v17, v6

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, p2

    move/from16 v21, p3

    move/from16 v22, p6

    move/from16 v23, p7

    move/from16 v24, p4

    move/from16 v25, p5

    invoke-static/range {v12 .. v25}, Lcom/sun/imageio/plugins/common/ReaderUtil;->computeUpdatedPixels(Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;IIIIIIIIIIII)[I

    move-result-object v1

    aget v15, v1, v9

    aget v12, v1, v8

    const/4 v14, 0x2

    aget v24, v1, v14

    const/4 v13, 0x4

    aget v5, v1, v13

    const/4 v2, 0x5

    aget v25, v1, v2

    iget-object v1, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v4, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGImageReader;->inputBandsForColorType:[I

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    aget v16, v2, v1

    const/16 v3, 0x10

    if-ne v4, v3, :cond_1

    move v1, v14

    goto :goto_0

    :cond_1
    move v1, v8

    :goto_0
    mul-int v2, v1, v16

    mul-int v1, v16, v0

    mul-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    if-ne v4, v3, :cond_2

    div-int/lit8 v17, v1, 0x2

    move/from16 v27, v17

    goto :goto_1

    :cond_2
    move/from16 v27, v1

    :goto_1
    if-nez v24, :cond_4

    :goto_2
    if-ge v9, v10, :cond_3

    invoke-direct {v11, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->updateImageProgress(I)V

    iget-object v2, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelStream:Ljava/io/DataInputStream;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    iget-object v3, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    iget v3, v3, Lorg/apache/poi/java/awt/Point;->x:I

    sub-int v3, v15, v3

    iget v8, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceXSubsampling:I

    mul-int/2addr v3, v8

    iget-object v13, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v13, v13, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr v3, v13

    sub-int v3, v3, p2

    div-int v28, v3, p4

    mul-int/2addr v8, v5

    div-int v13, v8, p4

    new-array v8, v1, [B

    new-array v3, v1, [B

    const/16 v20, 0x1

    move/from16 v29, v1

    move-object/from16 v1, p0

    move/from16 p2, v2

    move/from16 v2, p6

    move-object/from16 v30, v3

    move/from16 v3, v20

    move/from16 p4, v4

    move/from16 v4, v16

    move/from16 v31, v5

    move/from16 v5, v27

    move/from16 v32, v6

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/imageio/plugins/png/PNGImageReader;->createRaster(IIIII)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual {v6, v9, v9, v5}, Lorg/apache/poi/java/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v4

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataType()I

    move-result v2

    if-nez v2, :cond_5

    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v1

    move-object v3, v1

    move-object/from16 v41, v5

    goto :goto_3

    :cond_5
    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBufferUShort;->getData()[S

    move-result-object v1

    move-object/from16 v41, v1

    move-object v3, v5

    :goto_3
    iget-object v2, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    iget v1, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMinProgressivePass:I

    iget v5, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMaxProgressivePass:I

    iget-object v14, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationBands:[I

    move/from16 v20, v1

    move-object/from16 v1, p0

    move-object/from16 v42, v3

    move/from16 v3, p1

    move-object/from16 v43, v4

    move/from16 v4, v20

    const/16 v20, 0x0

    move-object/from16 v16, v6

    move v6, v15

    move/from16 v44, v7

    move v7, v12

    move-object/from16 v45, v8

    const/4 v12, 0x1

    move/from16 v8, v31

    move/from16 v9, v25

    move-object v10, v14

    invoke-virtual/range {v1 .. v10}, Lorg/apache/poi/javax/imageio/ImageReader;->processPassStarted(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V

    iget-object v1, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceBands:[I

    if-eqz v1, :cond_6

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v36

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    iget-object v1, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceBands:[I

    move-object/from16 v33, v16

    move-object/from16 v40, v1

    invoke-virtual/range {v33 .. v40}, Lorg/apache/poi/java/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object/from16 v1, v16

    :goto_4
    iget-object v2, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationBands:[I

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v3

    invoke-virtual/range {v26 .. v26}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v16

    const/4 v4, 0x0

    const/16 v18, 0x0

    iget-object v5, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationBands:[I

    move v10, v12

    move-object/from16 v12, v26

    move v9, v13

    const/4 v8, 0x4

    move v13, v2

    const/4 v7, 0x2

    move v6, v15

    move v15, v3

    move/from16 v17, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v12 .. v19}, Lorg/apache/poi/java/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v26

    goto :goto_5

    :cond_7
    move v10, v12

    move v9, v13

    move v6, v15

    const/4 v7, 0x2

    const/4 v8, 0x4

    :goto_5
    move-object/from16 v12, v26

    invoke-virtual {v12}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v2

    array-length v13, v2

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v13, :cond_9

    aget v4, v2, v3

    move/from16 v14, p4

    if-eq v4, v14, :cond_8

    move v15, v10

    goto :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 p4, v14

    goto :goto_6

    :cond_9
    move/from16 v14, p4

    const/4 v15, 0x0

    :goto_7
    if-eqz v15, :cond_c

    shl-int v3, v10, v14

    sub-int/2addr v3, v10

    div-int/lit8 v4, v3, 0x2

    new-array v5, v13, [[I

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v13, :cond_b

    aget v16, v2, v8

    shl-int v16, v10, v16

    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v7, v3, 0x1

    new-array v7, v7, [I

    aput-object v7, v5, v8

    const/4 v7, 0x0

    :goto_9
    if-gt v7, v3, :cond_a

    aget-object v17, v5, v8

    mul-int v18, v7, v16

    add-int v18, v18, v4

    div-int v18, v18, v3

    aput v18, v17, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x2

    goto :goto_8

    :cond_b
    move-object/from16 v34, v5

    goto :goto_a

    :cond_c
    move-object/from16 v34, v20

    :goto_a
    move/from16 v8, v31

    if-ne v9, v10, :cond_d

    if-ne v8, v10, :cond_d

    if-nez v15, :cond_d

    instance-of v2, v12, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    if-eqz v2, :cond_d

    move/from16 v31, v10

    goto :goto_b

    :cond_d
    const/16 v31, 0x0

    :goto_b
    if-eqz v31, :cond_e

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v28

    move/from16 v19, v24

    invoke-virtual/range {v16 .. v23}, Lorg/apache/poi/java/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    :cond_e
    move-object v7, v1

    move/from16 v2, p7

    move-object/from16 v5, v30

    move-object/from16 v4, v45

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    invoke-direct {v11, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->updateImageProgress(I)V

    iget-object v1, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    :try_start_0
    iget-object v10, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelStream:Ljava/io/DataInputStream;

    move/from16 v0, v29

    const/4 v2, 0x0

    invoke-virtual {v10, v5, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_13

    const/4 v10, 0x1

    if-eq v1, v10, :cond_12

    const/4 v10, 0x2

    if-eq v1, v10, :cond_11

    const/4 v10, 0x3

    if-eq v1, v10, :cond_10

    const/4 v10, 0x4

    if-ne v1, v10, :cond_f

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v5

    move-object/from16 v19, v4

    move/from16 v21, v0

    move/from16 v22, p2

    invoke-static/range {v17 .. v22}, Lcom/sun/imageio/plugins/png/PNGImageReader;->decodePaethFilter([BI[BIII)V

    goto :goto_d

    :cond_f
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown row filter type (= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v10, 0x4

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v5

    move-object/from16 v19, v4

    move/from16 v21, v0

    move/from16 v22, p2

    invoke-static/range {v17 .. v22}, Lcom/sun/imageio/plugins/png/PNGImageReader;->decodeAverageFilter([BI[BIII)V

    goto :goto_d

    :cond_11
    const/4 v10, 0x4

    invoke-static {v5, v2, v4, v2, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->decodeUpFilter([BI[BII)V

    goto :goto_d

    :cond_12
    move/from16 v1, p2

    const/4 v10, 0x4

    invoke-static {v5, v2, v0, v1}, Lcom/sun/imageio/plugins/png/PNGImageReader;->decodeSubFilter([BIII)V

    goto :goto_e

    :cond_13
    :goto_d
    move/from16 v1, p2

    :goto_e
    const/16 v10, 0x10

    if-ge v14, v10, :cond_14

    move-object/from16 v10, v42

    invoke-static {v5, v2, v10, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v29, v0

    move/from16 v20, v27

    :goto_f
    const/4 v0, 0x2

    goto :goto_11

    :cond_14
    move-object/from16 v10, v42

    move/from16 v29, v0

    move/from16 v16, v2

    move/from16 v0, v27

    :goto_10
    if-ge v2, v0, :cond_15

    aget-byte v17, v5, v16

    shl-int/lit8 v17, v17, 0x8

    add-int/lit8 v18, v16, 0x1

    move/from16 v20, v0

    aget-byte v0, v5, v18

    and-int/lit16 v0, v0, 0xff

    or-int v0, v17, v0

    int-to-short v0, v0

    aput-short v0, v41, v2

    const/4 v0, 0x2

    add-int/lit8 v16, v16, 0x2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v20

    goto :goto_10

    :cond_15
    move/from16 v20, v0

    goto :goto_f

    :goto_11
    mul-int v2, v3, p5

    add-int v2, v2, p3

    iget-object v0, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    move/from16 p2, v1

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    if-lt v2, v1, :cond_1c

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v0, v1

    if-ge v2, v0, :cond_1c

    sub-int v0, v2, v1

    move/from16 v16, v3

    iget v3, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceYSubsampling:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_1b

    iget-object v0, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    iget v0, v0, Lorg/apache/poi/java/awt/Point;->y:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v3

    add-int/2addr v0, v2

    move/from16 v3, v44

    if-ge v0, v3, :cond_16

    move/from16 v21, p2

    move-object/from16 v45, v4

    move-object/from16 v30, v5

    move v0, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    move/from16 v33, v9

    move/from16 v46, v16

    move/from16 v22, v32

    move-object/from16 v26, v43

    const/16 v18, 0x2

    const/16 v23, 0x0

    const/16 v32, 0x4

    move/from16 v16, v3

    goto/16 :goto_16

    :cond_16
    move/from16 v2, v32

    if-le v0, v2, :cond_17

    goto/16 :goto_17

    :cond_17
    if-eqz v31, :cond_19

    invoke-virtual {v12, v6, v0, v7}, Lorg/apache/poi/java/awt/image/WritableRaster;->setRect(IILorg/apache/poi/java/awt/image/Raster;)V

    move/from16 v32, v2

    move/from16 v44, v3

    move-object/from16 p4, v4

    :cond_18
    move-object/from16 v3, v43

    goto :goto_14

    :cond_19
    move/from16 v32, v2

    move/from16 v44, v3

    move v1, v6

    move/from16 v2, v28

    :goto_12
    add-int v3, v6, v24

    move-object/from16 p4, v4

    if-ge v1, v3, :cond_18

    move-object/from16 v3, v43

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4, v3}, Lorg/apache/poi/java/awt/image/Raster;->getPixel(II[I)[I

    if-eqz v15, :cond_1a

    :goto_13
    if-ge v4, v13, :cond_1a

    aget-object v18, v34, v4

    aget v21, v3, v4

    aget v18, v18, v21

    aput v18, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1a
    invoke-virtual {v12, v1, v0, v3}, Lorg/apache/poi/java/awt/image/WritableRaster;->setPixel(II[I)V

    add-int/2addr v2, v9

    add-int/2addr v1, v8

    move-object/from16 v4, p4

    move-object/from16 v43, v3

    goto :goto_12

    :goto_14
    iget-object v2, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/16 v18, 0x1

    iget-object v4, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationBands:[I

    move/from16 v21, p2

    move-object/from16 v1, p0

    move/from16 v22, v32

    const/16 v23, 0x0

    move-object/from16 v26, v3

    move/from16 v46, v16

    move/from16 v16, v44

    move v3, v6

    move-object/from16 v45, p4

    move-object/from16 v27, v4

    move v4, v0

    move-object/from16 v30, v5

    move/from16 v5, v24

    move v0, v6

    move/from16 v6, v18

    move-object/from16 v17, v7

    const/16 v18, 0x2

    move v7, v8

    move/from16 v19, v8

    const/16 v32, 0x4

    move/from16 v8, v25

    move/from16 v33, v9

    move-object/from16 v9, v27

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    :cond_1b
    move/from16 v21, p2

    move-object/from16 v45, v4

    move-object/from16 v30, v5

    move v0, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    move/from16 v33, v9

    move/from16 v46, v16

    goto :goto_15

    :cond_1c
    move/from16 v21, p2

    move/from16 v46, v3

    move-object/from16 v45, v4

    move-object/from16 v30, v5

    move v0, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    move/from16 v33, v9

    :goto_15
    move/from16 v22, v32

    move-object/from16 v26, v43

    move/from16 v16, v44

    const/16 v18, 0x2

    const/16 v23, 0x0

    const/16 v32, 0x4

    :cond_1d
    :goto_16
    add-int/lit8 v3, v46, 0x1

    move/from16 v2, p7

    move v6, v0

    move-object/from16 v42, v10

    move/from16 v44, v16

    move-object/from16 v7, v17

    move/from16 v8, v19

    move/from16 v27, v20

    move/from16 p2, v21

    move/from16 v32, v22

    move-object/from16 v43, v26

    move-object/from16 v4, v30

    move/from16 v9, v33

    move-object/from16 v5, v45

    const/4 v10, 0x1

    move/from16 v0, p6

    goto/16 :goto_c

    :catch_0
    move-exception v0

    throw v0

    :cond_1e
    :goto_17
    iget-object v0, v11, Lcom/sun/imageio/plugins/png/PNGImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v11, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processPassComplete(Lorg/apache/poi/java/awt/image/BufferedImage;)V

    :cond_1f
    :goto_18
    return-void
.end method

.method private static decodeSubFilter([BIII)V
    .locals 4

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, v0, p1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    sub-int v3, v1, p3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static decodeUpFilter([BI[BII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, v0, p1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int v3, v0, p3

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static inflate([B)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private static paethPredictor(III)I
    .locals 3

    add-int v0, p0, p1

    sub-int/2addr v0, p2

    sub-int v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, v0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v1, v2, :cond_0

    if-gt v1, v0, :cond_0

    return p0

    :cond_0
    if-gt v2, v0, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method private parse_PLTE_chunk(I)V
    .locals 6

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    if-eqz v1, :cond_0

    const-string p1, "A PNG image may not contain more than one PLTE chunk.\nThe chunk wil be ignored."

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    new-array v0, p1, [B

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    const/4 v2, 0x3

    div-int/2addr p1, v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v4, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v5, 0x1

    if-ne v4, v2, :cond_3

    iget v2, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    shl-int v2, v5, v2

    if-le p1, v2, :cond_2

    const-string p1, "PLTE chunk contains too many entries for bit depth, ignoring extras."

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    move p1, v2

    :cond_2
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_3
    const/4 v2, 0x2

    const/16 v3, 0x10

    if-le p1, v3, :cond_4

    const/16 v1, 0x100

    goto :goto_1

    :cond_4
    if-le p1, v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    if-le p1, v2, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput-boolean v5, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    new-array v3, v1, [B

    iput-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    new-array v3, v1, [B

    iput-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    new-array v1, v1, [B

    iput-object v1, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v1, p1, :cond_7

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v4, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v0, v2

    aput-byte v2, v4, v1

    iget-object v2, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v0, v5

    aput-byte v5, v2, v1

    iget-object v2, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, v0, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    :goto_3
    const-string p1, "A PNG gray or gray alpha image cannot have a PLTE chunk.\nThe chunk wil be ignored."

    goto :goto_0
.end method

.method private parse_bKGD_chunk()V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_index:I

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_red:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_green:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_blue:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_gray:I

    :goto_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    return-void
.end method

.method private parse_cHRM_chunk()V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointX:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointY:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redX:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redY:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenX:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenY:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueX:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueY:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_present:Z

    return-void
.end method

.method private parse_gAMA_chunk()V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v0, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_gamma:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_present:Z

    return-void
.end method

.method private parse_hIST_chunk(I)V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    if-eqz v1, :cond_0

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [C

    iput-object p1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_histogram:[C

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([CII)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_present:Z

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "hIST chunk without prior PLTE chunk!"

    invoke-direct {p1, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parse_iCCP_chunk(I)V
    .locals 3

    const-string v0, "ISO-8859-1"

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readNullTerminatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput-object v0, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_profileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    iput v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressionMethod:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x2

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput-object p1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressedProfile:[B

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_present:Z

    return-void
.end method

.method private parse_iTXt_chunk(I)V
    .locals 10

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    const-string v2, "ISO-8859-1"

    const/16 v3, 0x50

    invoke-direct {p0, v2, v3}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readNullTerminatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v4, v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v4, v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v4

    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v6, v6, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "UTF8"

    invoke-direct {p0, v4, v3}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readNullTerminatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v6, v6, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v0, v8

    sub-long v6, v0, v6

    long-to-int p1, v6

    invoke-direct {p0, v4, p1}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readNullTerminatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v3, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_translatedKeyword:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v6

    sub-long/2addr v0, v6

    long-to-int p1, v0

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    new-instance v0, Ljava/lang/String;

    if-ne v2, v5, :cond_1

    invoke-static {p1}, Lcom/sun/imageio/plugins/png/PNGImageReader;->inflate([B)[B

    move-result-object p1

    invoke-direct {v0, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {v0, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object p1, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parse_pHYs_chunk()V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitXAxis:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitYAxis:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_unitSpecifier:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    return-void
.end method

.method private parse_sBIT_chunk()V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    :cond_3
    :goto_1
    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_alphaBits:I

    :cond_5
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_present:Z

    return-void
.end method

.method private parse_sPLT_chunk(I)V
    .locals 4

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const-string v1, "ISO-8859-1"

    const/16 v2, 0x50

    invoke-direct {p0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readNullTerminatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_paletteName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_paletteName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v0

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v0, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_sampleDepth:I

    div-int/lit8 v3, v0, 0x8

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    div-int/2addr p1, v3

    new-array v3, p1, [I

    iput-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    new-array v3, p1, [I

    iput-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    new-array v3, p1, [I

    iput-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    new-array v3, p1, [I

    iput-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    new-array v3, p1, [I

    iput-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    :goto_0
    if-ge v2, p1, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    :goto_1
    if-ge v2, p1, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput-boolean v1, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_present:Z

    return-void

    :cond_2
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "sPLT sample depth not 8 or 16!"

    invoke-direct {p1, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parse_sRGB_chunk()V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_renderingIntent:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_present:Z

    return-void
.end method

.method private parse_tEXt_chunk(I)V
    .locals 3

    const-string v0, "ISO-8859-1"

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readNullTerminatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parse_tIME_chunk()V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_year:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_month:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_day:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_hour:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_minute:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_second:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_present:Z

    return-void
.end method

.method private parse_tRNS_chunk(I)V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    if-nez v1, :cond_0

    const-string p1, "tRNS chunk without prior PLTE chunk, ignoring it."

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    const-string v1, "tRNS chunk has more entries than prior PLTE chunk, ignoring extras."

    invoke-virtual {p0, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    new-array v4, v0, [B

    iput-object v4, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    iput v3, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v4, v2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-nez v1, :cond_4

    if-eq p1, v3, :cond_3

    const-string v0, "tRNS chunk for gray image must have length 2, ignoring chunk."

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_gray:I

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v2, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5

    const-string v0, "tRNS chunk for RGB image must have length 6, ignoring chunk."

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_red:I

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_green:I

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_blue:I

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v3, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    :goto_1
    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    return-void

    :cond_6
    const-string p1, "Gray+Alpha and RGBS images may not have a tRNS chunk, ignoring it."

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    return-void
.end method

.method private parse_zTXt_chunk(I)V
    .locals 5

    const-string v0, "ISO-8859-1"

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readNullTerminatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v3, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethod:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x2

    new-array p1, p1, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/imageio/plugins/png/PNGImageReader;->inflate([B)[B

    move-result-object p1

    invoke-direct {v2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readHeader()V
    .locals 16

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->gotHeader:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_13

    const/16 v2, 0x8

    :try_start_0
    new-array v3, v2, [B

    invoke-interface {v0, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    const/4 v0, 0x0

    aget-byte v4, v3, v0

    const/16 v5, -0x77

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    aget-byte v5, v3, v4

    const/16 v6, 0x50

    if-ne v5, v6, :cond_12

    const/4 v5, 0x2

    aget-byte v6, v3, v5

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_12

    const/4 v6, 0x3

    aget-byte v7, v3, v6

    const/16 v8, 0x47

    if-ne v7, v8, :cond_12

    const/4 v7, 0x4

    aget-byte v8, v3, v7

    const/16 v9, 0xd

    if-ne v8, v9, :cond_12

    const/4 v8, 0x5

    aget-byte v10, v3, v8

    const/16 v11, 0xa

    if-ne v10, v11, :cond_12

    const/4 v10, 0x6

    aget-byte v12, v3, v10

    const/16 v13, 0x1a

    if-ne v12, v13, :cond_12

    const/4 v12, 0x7

    aget-byte v12, v3, v12

    if-ne v12, v11, :cond_12

    iget-object v11, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v11}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v11

    if-ne v11, v9, :cond_11

    iget-object v9, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v9}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v9

    const v11, 0x49484452

    if-ne v9, v11, :cond_10

    new-instance v9, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-direct {v9}, Lcom/sun/imageio/plugins/png/PNGMetadata;-><init>()V

    iput-object v9, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v9, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v9}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v9

    iget-object v11, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v11}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v11

    iget-object v12, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v12, v3, v0, v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v8, v3, v4

    and-int/lit16 v8, v8, 0xff

    aget-byte v12, v3, v5

    and-int/lit16 v12, v12, 0xff

    aget-byte v13, v3, v6

    and-int/lit16 v13, v13, 0xff

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    iget-object v14, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v14, v7}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v14, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move v15, v3

    invoke-interface {v14}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    invoke-interface {v14, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->flushBefore(J)V

    if-eqz v9, :cond_f

    if-eqz v11, :cond_e

    const/16 v2, 0x10

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v7, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Bit depth must be 1, 2, 4, 8, or 16!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-eqz v8, :cond_4

    if-eq v8, v5, :cond_4

    if-eq v8, v6, :cond_4

    if-eq v8, v7, :cond_4

    if-ne v8, v10, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Color type must be 0, 2, 3, 4, or 6!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    const-string v3, "Bad color type/bit depth combination!"

    if-ne v8, v6, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    invoke-direct {v0, v3}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    if-eq v8, v5, :cond_7

    if-eq v8, v10, :cond_7

    if-ne v8, v7, :cond_9

    :cond_7
    const/16 v5, 0x8

    if-eq v0, v5, :cond_9

    if-ne v0, v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    invoke-direct {v0, v3}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    if-nez v12, :cond_d

    if-nez v13, :cond_c

    move v2, v15

    if-eqz v15, :cond_b

    if-ne v2, v4, :cond_a

    goto :goto_4

    :cond_a
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Unknown interlace method (not 0 or 1)!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_4
    iget-object v3, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput-boolean v4, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_present:Z

    iput v9, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    iput v11, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    iput v0, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    iput v8, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    iput v12, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_compressionMethod:I

    iput v13, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_filterMethod:I

    iput v2, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    iput-boolean v4, v1, Lcom/sun/imageio/plugins/png/PNGImageReader;->gotHeader:Z

    return-void

    :cond_c
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Unknown filter method (not 0)!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Unknown compression method (not 0)!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Image height == 0!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Image width == 0!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Bad type for IHDR chunk!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Bad length for IHDR chunk!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Bad PNG signature!"

    invoke-direct {v0, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v3, "I/O error reading PNG header!"

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Input source not set!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readImage(Lorg/apache/poi/javax/imageio/ImageReadParam;)V
    .locals 9

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readMetadata()V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    iget v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceXSubsampling:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceYSubsampling:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMinProgressivePass:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMaxProgressivePass:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceBands:[I

    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationBands:[I

    new-instance v5, Lorg/apache/poi/java/awt/Point;

    invoke-direct {v5, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    iput-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v5

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceXSubsampling:I

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v5

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceYSubsampling:I

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getSourceMinProgressivePass()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMinProgressivePass:I

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getSourceMaxProgressivePass()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceMaxProgressivePass:I

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceBands:[I

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationBands:[I

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/IIOParam;->getDestinationOffset()Lorg/apache/poi/java/awt/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-wide v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->imageStartPosition:J

    invoke-interface {v1, v5, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance v1, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;

    iget-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-direct {v1, v5}, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V

    new-instance v5, Ljava/io/SequenceInputStream;

    invoke-direct {v5, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    new-instance v7, Ljava/util/zip/Inflater;

    invoke-direct {v7}, Ljava/util/zip/Inflater;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v5, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelStream:Ljava/io/DataInputStream;

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p1, v1, v2, v3}, Lorg/apache/poi/javax/imageio/ImageReader;->getDestination(Lorg/apache/poi/javax/imageio/ImageReadParam;Ljava/util/Iterator;II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    new-instance v8, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v8, v0, v0, v0, v0}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    new-instance v5, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v5, v0, v0, v0, v0}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iput-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    move-object v1, p1

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/javax/imageio/ImageReader;->computeRegions(Lorg/apache/poi/javax/imageio/ImageReadParam;IILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Rectangle;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->destinationOffset:Lorg/apache/poi/java/awt/Point;

    invoke-virtual {v8}, Lorg/apache/poi/java/awt/Rectangle;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Point;->setLocation(Lorg/apache/poi/java/awt/Point;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGImageReader;->inputBandsForColorType:[I

    aget v1, v2, v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/apache/poi/javax/imageio/ImageReader;->checkReadParamBandSettings(Lorg/apache/poi/javax/imageio/ImageReadParam;II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageStarted(I)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->decodeImage()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processReadAborted()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageComplete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v7}, Ljava/util/zip/Inflater;->end()V

    return-void

    :catchall_0
    move-exception p1

    move-object v4, v7

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v4, v7

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "Error reading PNG image data"

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    :cond_2
    throw p1
.end method

.method private readMetadata()V
    .locals 10

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->gotMetadata:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readHeader()V

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    iget-boolean v1, p0, Lorg/apache/poi/javax/imageio/ImageReader;->ignoreMetadata:Z

    const/4 v2, 0x1

    const/4 v3, -0x8

    const/4 v4, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    const v5, 0x49444154    # 803861.25f

    if-ne v1, v5, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->imageStartPosition:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->gotMetadata:Z

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    add-int/2addr v0, v4

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Error skipping PNG metadata"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-ltz v0, :cond_7

    :try_start_3
    iget-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    iget-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    invoke-interface {v5, v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v5

    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    sparse-switch v1, :sswitch_data_0

    :try_start_4
    new-array v0, v0, [B

    goto/16 :goto_3

    :sswitch_0
    iget-boolean v6, p0, Lorg/apache/poi/javax/imageio/ImageReader;->ignoreMetadata:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    :goto_2
    invoke-interface {v6, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto/16 :goto_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_zTXt_chunk(I)V

    goto/16 :goto_4

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_tRNS_chunk(I)V

    goto/16 :goto_4

    :sswitch_2
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_tIME_chunk()V

    goto/16 :goto_4

    :sswitch_3
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_tEXt_chunk(I)V

    goto/16 :goto_4

    :sswitch_4
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_sRGB_chunk()V

    goto/16 :goto_4

    :sswitch_5
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_sPLT_chunk(I)V

    goto/16 :goto_4

    :sswitch_6
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_sBIT_chunk()V

    goto/16 :goto_4

    :sswitch_7
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_pHYs_chunk()V

    goto/16 :goto_4

    :sswitch_8
    iget-boolean v6, p0, Lorg/apache/poi/javax/imageio/ImageReader;->ignoreMetadata:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_iTXt_chunk(I)V

    goto :goto_4

    :sswitch_9
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_iCCP_chunk(I)V

    goto :goto_4

    :sswitch_a
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_hIST_chunk(I)V

    goto :goto_4

    :sswitch_b
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_gAMA_chunk()V

    goto :goto_4

    :sswitch_c
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_cHRM_chunk()V

    goto :goto_4

    :sswitch_d
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_bKGD_chunk()V

    goto :goto_4

    :sswitch_e
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->parse_PLTE_chunk(I)V

    goto :goto_4

    :sswitch_f
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->imageStartPosition:J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    iput-boolean v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->gotMetadata:Z

    return-void

    :goto_3
    :try_start_5
    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v6, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    ushr-int/lit8 v7, v1, 0x18

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v7, v1, 0xff

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v7, v1, 0x1c

    if-nez v7, :cond_5

    const-string v7, "Encountered unknown chunk with critical bit set!"

    invoke-virtual {p0, v7}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_5
    iget-object v7, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v7, v7, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v6, v6, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v0

    if-ne v5, v0, :cond_6

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->flushBefore(J)V

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read a chunk of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid chunk length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid chunk lenght "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "Error reading PNG metadata"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x49444154 -> :sswitch_f
        0x504c5445 -> :sswitch_e
        0x624b4744 -> :sswitch_d
        0x6348524d -> :sswitch_c
        0x67414d41 -> :sswitch_b
        0x68495354 -> :sswitch_a
        0x69434350 -> :sswitch_9
        0x69545874 -> :sswitch_8
        0x70485973 -> :sswitch_7
        0x73424954 -> :sswitch_6
        0x73504c54 -> :sswitch_5
        0x73524742 -> :sswitch_4
        0x74455874 -> :sswitch_3
        0x74494d45 -> :sswitch_2
        0x74524e53 -> :sswitch_1
        0x7a545874 -> :sswitch_0
    .end sparse-switch
.end method

.method private readNullTerminatedString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-le p2, v1, :cond_1

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method private resetStreamSettings()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->gotHeader:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->gotMetadata:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelStream:Ljava/io/DataInputStream;

    return-void
.end method

.method private skipPass(II)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->inputBandsForColorType:[I

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    aget v0, v0, v2

    mul-int/2addr v0, p1

    iget p1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelStream:Ljava/io/DataInputStream;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateImageProgress(I)V
    .locals 1

    iget v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelsDone:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->pixelsDone:I

    int-to-float p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->totalPixels:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

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

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readHeader()V

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p1, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "imageIndex != 0!"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImageMetadata(I)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readMetadata()V

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "imageIndex != 0!"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readHeader()V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v6, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-gt v6, v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-eqz v1, :cond_a

    const/16 v5, 0x3e8

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v1, v7, :cond_8

    const/4 v7, 0x3

    if-eq v1, v9, :cond_6

    if-eq v1, v7, :cond_2

    if-eq v1, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    const/16 v1, 0x3eb

    invoke-static {v1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v1

    new-array v2, v9, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2, v4, v0, v3}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readMetadata()V

    shl-int v1, v0, v6

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    iget-object v4, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    array-length v5, v3

    if-ge v5, v1, :cond_3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v3, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    array-length v4, v3

    array-length v5, v3

    sub-int/2addr v5, v0

    aget-byte v3, v3, v5

    invoke-static {v2, v4, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v3, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v4, v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    array-length v5, v4

    array-length v7, v4

    sub-int/2addr v7, v0

    aget-byte v4, v4, v7

    invoke-static {v3, v5, v1, v4}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v4, v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    iget-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v5, v5, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    array-length v7, v5

    array-length v8, v5

    sub-int/2addr v8, v0

    aget-byte v0, v5, v8

    invoke-static {v4, v7, v1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_1

    :cond_3
    move-object v10, v4

    move-object v4, v2

    move-object v2, v3

    move-object v3, v10

    :goto_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v5, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    if-eqz v5, :cond_5

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    if-eqz v1, :cond_5

    array-length v0, v1

    array-length v5, v2

    if-ne v0, v5, :cond_4

    move-object v5, v1

    goto :goto_2

    :cond_4
    array-length v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    array-length v1, v1

    array-length v5, v2

    const/4 v7, -0x1

    invoke-static {v0, v1, v5, v7}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_5
    move-object v5, v0

    :goto_2
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createIndexed([B[B[B[BII)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-ne v6, v2, :cond_7

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v5}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    new-array v1, v7, [I

    fill-array-data v1, :array_1

    invoke-static {v0, v1, v4, v3, v3}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-ne v6, v2, :cond_9

    invoke-static {v7}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {v5}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v1

    new-array v2, v8, [I

    fill-array-data v2, :array_2

    invoke-static {v1, v2, v4, v0, v3}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    goto :goto_3

    :cond_a
    invoke-static {v6, v4, v3}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "imageIndex != 0!"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public getNumImages(Z)I
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_2

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
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No input source set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRawImageType(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/png/PNGImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public getStreamMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth(I)I
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readHeader()V

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p1, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "imageIndex != 0!"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/png/PNGImageReader;->readImage(Lorg/apache/poi/javax/imageio/ImageReadParam;)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->theImage:Lorg/apache/poi/java/awt/image/BufferedImage;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "imageIndex != 0!"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->reset()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->resetStreamSettings()V

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageReader;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageReader;->resetStreamSettings()V

    return-void
.end method
