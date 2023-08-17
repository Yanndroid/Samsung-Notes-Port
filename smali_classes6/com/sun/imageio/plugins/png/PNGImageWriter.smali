.class public Lcom/sun/imageio/plugins/png/PNGImageWriter;
.super Lorg/apache/poi/javax/imageio/ImageWriter;
.source "SourceFile"


# static fields
.field private static allowedProgressivePasses:[I


# instance fields
.field public bpp:I

.field public currRow:[B

.field public filteredRows:[[B

.field public metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

.field public numBands:I

.field public periodX:I

.field public periodY:I

.field public pixelsDone:I

.field public prevRow:[B

.field public rowFilter:Lcom/sun/imageio/plugins/png/RowFilter;

.field public sampleSize:[I

.field public scale:[[B

.field public scale0:[B

.field public scaleh:[[B

.field public scalel:[[B

.field public scalingBitDepth:I

.field public sourceBands:[I

.field public sourceHeight:I

.field public sourceWidth:I

.field public sourceXOffset:I

.field public sourceYOffset:I

.field public stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

.field public totalPixels:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->allowedProgressivePasses:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriter;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceBands:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    new-instance v0, Lcom/sun/imageio/plugins/png/RowFilter;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/png/RowFilter;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->rowFilter:Lcom/sun/imageio/plugins/png/RowFilter;

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->filteredRows:[[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sampleSize:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalingBitDepth:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    return-void
.end method

.method private static chunkType(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private deflate([B)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private encodePass(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lorg/apache/poi/java/awt/image/RenderedImage;IIII)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    iget v11, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    iget v12, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    iget v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    mul-int v3, p3, v2

    mul-int v2, v2, p5

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    mul-int v5, p4, v4

    mul-int v14, p6, v4

    sub-int v4, v12, v3

    add-int/2addr v4, v2

    const/4 v15, 0x1

    sub-int/2addr v4, v15

    div-int v16, v4, v2

    sub-int v4, v13, v5

    add-int/2addr v4, v14

    sub-int/2addr v4, v15

    div-int/2addr v4, v14

    if-eqz v16, :cond_13

    if-nez v4, :cond_0

    goto/16 :goto_e

    :cond_0
    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    mul-int v17, v3, v4

    mul-int v18, v2, v4

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    const/16 v9, 0x8

    div-int v19, v9, v3

    mul-int v8, v12, v4

    new-array v7, v8, [I

    mul-int v4, v4, v16

    const/16 v6, 0x10

    if-ge v3, v9, :cond_1

    add-int v4, v4, v19

    sub-int/2addr v4, v15

    div-int v4, v4, v19

    goto :goto_0

    :cond_1
    if-ne v3, v6, :cond_2

    mul-int/lit8 v4, v4, 0x2

    :cond_2
    :goto_0
    const/4 v3, 0x0

    iget v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz v2, :cond_3

    mul-int/lit8 v4, v4, 0x2

    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/java/awt/image/IndexColorModel;

    :cond_3
    move/from16 v32, v4

    move-object v4, v3

    move/from16 v3, v32

    iget v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    add-int v6, v3, v2

    new-array v6, v6, [B

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int v6, v3, v2

    new-array v6, v6, [B

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    add-int/2addr v2, v3

    const/4 v6, 0x2

    new-array v9, v6, [I

    aput v2, v9, v15

    const/4 v2, 0x0

    const/16 v20, 0x5

    aput v20, v9, v2

    const-class v2, B

    invoke-static {v2, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->filteredRows:[[B

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v9, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    add-int/2addr v5, v11

    :goto_1
    add-int v2, v11, v13

    if-ge v5, v2, :cond_13

    new-instance v2, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v2, v10, v5, v12, v15}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    move-object/from16 v15, p2

    invoke-interface {v15, v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getData(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v2

    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceBands:[I

    if-eqz v6, :cond_4

    const/16 v21, 0x1

    move/from16 p5, v3

    move v3, v10

    move-object/from16 v27, v4

    move v4, v5

    move/from16 v28, v5

    move v5, v12

    move-object/from16 v20, v6

    move/from16 v29, v11

    const/4 v11, 0x2

    move/from16 v6, v21

    move-object/from16 v30, v7

    move v7, v10

    move v11, v8

    move/from16 v8, v28

    move/from16 v31, v13

    const/16 v15, 0x8

    move v13, v9

    move-object/from16 v9, v20

    invoke-virtual/range {v2 .. v9}, Lorg/apache/poi/java/awt/image/Raster;->createChild(IIIIII[I)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v2

    goto :goto_2

    :cond_4
    move/from16 p5, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    move-object/from16 v30, v7

    move/from16 v29, v11

    move/from16 v31, v13

    const/16 v15, 0x8

    move v11, v8

    move v13, v9

    :goto_2
    move-object v8, v2

    const/4 v6, 0x1

    move-object v2, v8

    move v3, v10

    move/from16 v4, v28

    move v5, v12

    move-object/from16 v7, v30

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/image/Raster;->getPixels(IIII[I)[I

    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Lorg/apache/poi/java/awt/image/Raster;->createCompatibleWritableRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v21

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v22

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v23

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v24

    move-object/from16 v20, v2

    move-object/from16 v25, v30

    invoke-virtual/range {v20 .. v25}, Lorg/apache/poi/java/awt/image/WritableRaster;->setPixels(IIII[I)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/apache/poi/java/awt/image/ColorModel;->coerceData(Lorg/apache/poi/java/awt/image/WritableRaster;Z)Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v21

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v22

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v23

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v24

    invoke-virtual/range {v20 .. v25}, Lorg/apache/poi/java/awt/image/Raster;->getPixels(IIII[I)[I

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_order:[I

    if-eqz v2, :cond_6

    move v3, v4

    :goto_4
    if-ge v3, v11, :cond_6

    aget v5, v30, v3

    aget v5, v2, v5

    aput v5, v30, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iget v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    const/4 v3, 0x1

    if-eq v13, v3, :cond_e

    const/4 v3, 0x2

    if-eq v13, v3, :cond_e

    const/4 v5, 0x4

    if-eq v13, v5, :cond_e

    const/16 v6, 0x10

    if-eq v13, v15, :cond_a

    if-eq v13, v6, :cond_8

    :cond_7
    move-object/from16 v3, v27

    goto/16 :goto_d

    :cond_8
    move/from16 v7, v17

    :goto_5
    if-ge v7, v11, :cond_7

    move v8, v2

    move v2, v4

    :goto_6
    iget v9, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    if-ge v2, v9, :cond_9

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int/lit8 v20, v8, 0x1

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    aget-object v3, v3, v2

    add-int v21, v7, v2

    aget v22, v30, v21

    aget-byte v3, v3, v22

    aput-byte v3, v9, v8

    add-int/lit8 v8, v20, 0x1

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    aget-object v3, v3, v2

    aget v21, v30, v21

    aget-byte v3, v3, v21

    aput-byte v3, v9, v20

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    goto :goto_6

    :cond_9
    add-int v7, v7, v18

    move v2, v8

    const/4 v3, 0x2

    goto :goto_5

    :cond_a
    iget v3, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_c

    move/from16 v3, v17

    :goto_7
    if-ge v3, v11, :cond_7

    iget-object v7, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int/lit8 v8, v2, 0x1

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    aget v20, v30, v3

    aget-byte v20, v9, v20

    aput-byte v20, v7, v2

    move-object/from16 v2, v27

    if-eqz v2, :cond_b

    add-int/lit8 v20, v8, 0x1

    aget v4, v30, v3

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getAlpha(I)I

    move-result v4

    aget-byte v4, v9, v4

    aput-byte v4, v7, v8

    goto :goto_8

    :cond_b
    move/from16 v20, v8

    :goto_8
    add-int v3, v3, v18

    move-object/from16 v27, v2

    move/from16 v2, v20

    const/4 v4, 0x0

    goto :goto_7

    :cond_c
    move-object/from16 v3, v27

    move/from16 v4, v17

    :goto_9
    if-ge v4, v11, :cond_11

    move v7, v2

    const/4 v2, 0x0

    :goto_a
    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    if-ge v2, v8, :cond_d

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int/lit8 v9, v7, 0x1

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    aget-object v5, v5, v2

    add-int v20, v4, v2

    aget v20, v30, v20

    aget-byte v5, v5, v20

    aput-byte v5, v8, v7

    add-int/lit8 v2, v2, 0x1

    move v7, v9

    const/4 v5, 0x4

    goto :goto_a

    :cond_d
    add-int v4, v4, v18

    move v2, v7

    const/4 v5, 0x4

    goto :goto_9

    :cond_e
    move-object/from16 v3, v27

    const/16 v6, 0x10

    const/4 v4, 0x1

    add-int/lit8 v5, v19, -0x1

    move v8, v2

    move/from16 v9, v17

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_b
    if-ge v9, v11, :cond_10

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    aget v20, v30, v9

    aget-byte v4, v4, v20

    shl-int/2addr v7, v13

    or-int/2addr v4, v7

    add-int/lit8 v7, v2, 0x1

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_f

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int/lit8 v7, v8, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    move v8, v7

    const/4 v2, 0x0

    const/4 v7, 0x0

    goto :goto_c

    :cond_f
    move v2, v7

    move v7, v4

    :goto_c
    add-int v9, v9, v18

    const/4 v4, 0x1

    goto :goto_b

    :cond_10
    and-int v4, v2, v5

    if-eqz v4, :cond_11

    div-int v9, v15, v13

    sub-int/2addr v9, v2

    mul-int/2addr v9, v13

    shl-int v2, v7, v9

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    :cond_11
    :goto_d
    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->rowFilter:Lcom/sun/imageio/plugins/png/RowFilter;

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v4, v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    iget-object v7, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->filteredRows:[[B

    iget v9, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    move-object/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move/from16 v25, p5

    move/from16 v26, v9

    invoke-virtual/range {v20 .. v26}, Lcom/sun/imageio/plugins/png/RowFilter;->filterRow(I[B[B[[BII)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->filteredRows:[[B

    aget-object v2, v4, v2

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    move/from16 v5, p5

    invoke-interface {v1, v2, v4, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    iput-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    iput-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    iget v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->pixelsDone:I

    add-int v2, v2, v16

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->pixelsDone:I

    const/high16 v4, 0x42c80000    # 100.0f

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->totalPixels:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v2

    if-eqz v2, :cond_12

    return-void

    :cond_12
    add-int v2, v28, v14

    move-object v4, v3

    move v3, v5

    move v8, v11

    move v9, v13

    move/from16 v11, v29

    move-object/from16 v7, v30

    move/from16 v13, v31

    const/4 v6, 0x2

    const/4 v15, 0x1

    move v5, v2

    goto/16 :goto_1

    :cond_13
    :goto_e
    return-void
.end method

.method private equals([I[I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method private initializeScaleTables([I)V
    .locals 11

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    iget v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalingBitDepth:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sampleSize:[I

    invoke-direct {p0, p1, v1}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sampleSize:[I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalingBitDepth:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gt v0, v3, :cond_3

    iget v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    move v0, v5

    :goto_0
    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    if-ge v0, v3, :cond_2

    aget v3, p1, v0

    shl-int v3, v1, v3

    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    add-int/lit8 v8, v3, 0x1

    new-array v8, v8, [B

    aput-object v8, v7, v0

    move v7, v5

    :goto_1
    if-gt v7, v3, :cond_1

    iget-object v8, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    aget-object v8, v8, v0

    mul-int v9, v7, v2

    add-int/2addr v9, v6

    div-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    aget-object p1, p1, v5

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    goto :goto_4

    :cond_3
    iget v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    new-array v3, v0, [[B

    iput-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    move v0, v5

    :goto_2
    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    if-ge v0, v3, :cond_5

    aget v3, p1, v0

    shl-int v3, v1, v3

    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    add-int/lit8 v8, v3, 0x1

    new-array v9, v8, [B

    aput-object v9, v7, v0

    iget-object v7, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    new-array v8, v8, [B

    aput-object v8, v7, v0

    move v7, v5

    :goto_3
    if-gt v7, v3, :cond_4

    mul-int v8, v7, v2

    add-int/2addr v8, v6

    div-int/2addr v8, v3

    iget-object v9, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    aget-object v9, v9, v0

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    iget-object v9, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    aget-object v9, v9, v0

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    :goto_4
    return-void
.end method

.method private writeIEND()V
    .locals 3

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const v2, 0x49454e44    # 808164.25f

    invoke-direct {v0, v2, v1}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    return-void
.end method

.method private writeUnknownChunks()V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/sun/imageio/plugins/png/ChunkStream;

    invoke-static {v2}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->chunkType(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v3, v2, v4}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v3}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private write_IDAT(Lorg/apache/poi/java/awt/image/RenderedImage;)V
    .locals 9

    new-instance v7, Lcom/sun/imageio/plugins/png/IDATOutputStream;

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const v1, 0x8000

    invoke-direct {v7, v0, v1}, Lcom/sun/imageio/plugins/png/IDATOutputStream;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;I)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v8, v0, :cond_2

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7XOffset:[I

    aget v3, v0, v8

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7YOffset:[I

    aget v4, v0, v8

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7XSubsampling:[I

    aget v5, v0, v8

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7YSubsampling:[I

    aget v6, v0, v8

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->encodePass(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lorg/apache/poi/java/awt/image/RenderedImage;IIII)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->encodePass(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lorg/apache/poi/java/awt/image/RenderedImage;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-virtual {v7}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->finish()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v7}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->finish()V

    throw p1
.end method

.method private write_IHDR()V
    .locals 3

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const v2, 0x49484452

    invoke-direct {v0, v2, v1}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_compressionMethod:I

    if-nez v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_filterMethod:I

    if-nez v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "Only interlace methods 0 (node) and 1 (adam7) are defined in PNG 1.1"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "Only filter method 0 is defined in PNG 1.1"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "Only compression method 0 is defined in PNG 1.1"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private write_PLTE()V
    .locals 8

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v2, 0x504c5445

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v2, v3}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    array-length v2, v2

    mul-int/lit8 v3, v2, 0x3

    new-array v3, v3, [B

    move v4, v1

    :goto_0
    if-ge v1, v2, :cond_1

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v7, v6, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    aget-byte v7, v7, v1

    aput-byte v7, v3, v4

    add-int/lit8 v4, v5, 0x1

    iget-object v7, v6, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    aget-byte v7, v7, v1

    aput-byte v7, v3, v5

    add-int/lit8 v5, v4, 0x1

    iget-object v6, v6, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    aget-byte v6, v6, v1

    aput-byte v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "A PLTE chunk may not appear in a gray or gray alpha image.\nThe chunk will not be written"

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private write_bKGD()V
    .locals 8

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x624b4744

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v3, 0x3

    and-int/2addr v2, v3

    iget v4, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    iget v5, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_red:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    if-nez v4, :cond_0

    iget v5, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_gray:I

    move v4, v2

    :cond_0
    move v6, v5

    move v7, v6

    if-eq v4, v2, :cond_1

    const/4 v0, 0x0

    const-string v1, "bKGD metadata has incompatible color type.\nThe chunk will not be written."

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    return-void

    :cond_1
    if-ne v2, v3, :cond_2

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    invoke-virtual {v0, v6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    invoke-virtual {v0, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_gray:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_5
    return-void
.end method

.method private write_cHRM()V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x6348524d

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointX:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointY:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redX:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redY:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenX:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenY:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueX:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueY:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_gAMA()V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x67414d41

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_gamma:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_hIST()V
    .locals 4

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_present:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x68495354

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_histogram:[C

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeChars([CII)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "hIST chunk without PLTE chunk!"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private write_iCCP()V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x69434350

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_profileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressionMethod:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressedProfile:[B

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_iTXt()V
    .locals 11

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v3, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v4, v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_translatedKeyword:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v5, v5, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v7, 0x69545874

    iget-object v8, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v6, v7, v8}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "UTF8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v8, :cond_0

    invoke-direct {p0, v7}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->deflate([B)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    :goto_1
    invoke-virtual {v6}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private write_magic()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V

    return-void

    nop

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private write_pHYs()V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x70485973

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitXAxis:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitYAxis:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_unitSpecifier:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_sBIT()V
    .locals 6

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_present:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x73424954

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    iget v3, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    if-eq v3, v2, :cond_0

    const/4 v0, 0x0

    const-string v1, "sBIT metadata has wrong color type.\nThe chunk will not be written."

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_4

    :cond_2
    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    :cond_4
    if-eq v2, v4, :cond_5

    if-ne v2, v3, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_alphaBits:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    :cond_6
    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_7
    return-void
.end method

.method private write_sPLT()V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_present:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x73504c54

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_paletteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_sampleDepth:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    array-length v3, v3

    iget v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_sampleDepth:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_2
    return-void
.end method

.method private write_sRGB()V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x73524742

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_renderingIntent:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_tEXt()V
    .locals 5

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v3, 0x74455874

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v2, v3, v4}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private write_tIME()V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x74494d45

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_year:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_month:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_day:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_hour:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_minute:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_second:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_tRNS()V
    .locals 8

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x74524e53

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    iget v3, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    iget v4, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_red:I

    iget v5, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_green:I

    iget v6, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_blue:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    if-nez v3, :cond_0

    iget v4, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_gray:I

    move v3, v2

    move v5, v4

    move v6, v5

    :cond_0
    if-eq v3, v2, :cond_1

    const/4 v0, 0x0

    const-string v1, "tRNS metadata has incompatible color type.\nThe chunk will not be written."

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-boolean v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "tRNS chunk without PLTE chunk!"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v2, :cond_4

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_gray:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    goto :goto_0

    :cond_4
    if-ne v2, v7, :cond_5

    invoke-virtual {v0, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    invoke-virtual {v0, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    invoke-virtual {v0, v6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_1

    :cond_5
    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "tRNS chunk for color type 4 or 6!"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-void
.end method

.method private write_zTXt()V
    .locals 6

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v4, 0x7a545874

    iget-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-direct {v3, v4, v5}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILorg/apache/poi/javax/imageio/stream/ImageOutputStream;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->deflate([B)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v3}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public convertImageMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 0

    instance-of p2, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/imageio/plugins/png/PNGMetadata;

    return-object p1

    :cond_0
    new-instance p2, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-direct {p2, p1}, Lcom/sun/imageio/plugins/png/PNGMetadata;-><init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    return-object p2
.end method

.method public convertStreamMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultImageMetadata(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 1

    new-instance p2, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-direct {p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/sun/imageio/plugins/png/PNGMetadata;->initialize(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;I)V

    return-object p2
.end method

.method public getDefaultStreamMetadata(Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultWriteParam()Lorg/apache/poi/javax/imageio/ImageWriteParam;
    .locals 2

    new-instance v0, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-object v0
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

    const-string v0, "output not an ImageOutputStream!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 9

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz p1, :cond_b

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOImage;->hasRaster()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOImage;->getRenderedImage()Lorg/apache/poi/java/awt/image/RenderedImage;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getMinX()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getMinY()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceBands:[I

    const/4 v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    iput v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceRegion()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lorg/apache/poi/java/awt/Rectangle;

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getMinX()I

    move-result v5

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getMinY()I

    move-result v6

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getWidth()I

    move-result v7

    invoke-interface {p1}, Lorg/apache/poi/java/awt/image/RenderedImage;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/java/awt/Rectangle;->intersection(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v3

    iget v4, v3, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iput v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    iget v4, v3, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iput v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    iget v4, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iput v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iget v3, v3, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    :cond_0
    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v3

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v4

    iget v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    iget v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    iget v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v3

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v3

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v3

    if-eqz v3, :cond_1

    iput-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceBands:[I

    array-length v3, v3

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    :cond_1
    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iget v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    div-int/2addr v3, v4

    iget v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    iget v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    div-int/2addr v4, v5

    if-lez v3, :cond_8

    if-lez v4, :cond_8

    mul-int v5, v3, v4

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->totalPixels:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->pixelsDone:I

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOImage;->getMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createFromRenderedImage(Lorg/apache/poi/java/awt/image/RenderedImage;)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v6

    invoke-virtual {p0, p2, v6, v1}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->convertImageMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object p2

    check-cast p2, Lcom/sun/imageio/plugins/png/PNGMetadata;

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-direct {p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getProgressiveMode()I

    move-result p2

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v2, p2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v5, p2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    new-instance p3, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {p3, p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    iget v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    invoke-virtual {p2, p3, v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->initialize(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;I)V

    iget-object p2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v3, p2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    iput v4, p2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    iget p3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    iget p2, p2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    const/16 v1, 0x10

    if-ne p2, v1, :cond_6

    const/4 v2, 0x2

    :cond_6
    mul-int/2addr p3, v2

    iput p3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->initializeScaleTables([I)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->clearAbortRequest()V

    invoke-virtual {p0, v5}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageStarted(I)V

    :try_start_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_magic()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_IHDR()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_cHRM()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_gAMA()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_iCCP()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_sBIT()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_sRGB()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_PLTE()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_hIST()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_tRNS()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_bKGD()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_pHYs()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_sPLT()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_tIME()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_tEXt()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_iTXt()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_zTXt()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->writeUnknownChunks()V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_IDAT(Lorg/apache/poi/java/awt/image/RenderedImage;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWriteAborted()V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->writeIEND()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/javax/imageio/IIOException;

    const-string p3, "I/O error writing PNG file!"

    invoke-direct {p2, p3, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty source region!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "image has a Raster!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "image == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "output == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
