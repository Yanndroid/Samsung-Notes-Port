.class public Lcom/sun/imageio/plugins/bmp/BMPImageWriter;
.super Lorg/apache/poi/javax/imageio/ImageWriter;
.source "SourceFile"

# interfaces
.implements Lcom/sun/imageio/plugins/bmp/BMPConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/bmp/BMPImageWriter$IIOWriteProgressAdapter;
    }
.end annotation


# instance fields
.field private bitMasks:[I

.field private bitPos:[I

.field private bpixels:[B

.field private compImageSize:I

.field private compressionType:I

.field private embedded_stream:Ljava/io/ByteArrayOutputStream;

.field private h:I

.field private ipixels:[I

.field private isTopDown:Z

.field private spixels:[S

.field private stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

.field private version:I

.field private w:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriter;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->embedded_stream:Ljava/io/ByteArrayOutputStream;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compImageSize:I

    return-void
.end method

.method public static synthetic access$100(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageProgress(F)V

    return-void
.end method

.method public static synthetic access$200(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    return-void
.end method

.method private encodeRLE4([BI)V
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x100

    new-array v2, v1, [B

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    aget-byte v6, p1, v5

    const/4 v8, 0x2

    move v9, v5

    move v10, v8

    const/4 v11, -0x1

    :goto_0
    add-int/lit8 v12, p2, -0x2

    if-ge v9, v12, :cond_19

    add-int/lit8 v9, v9, 0x1

    aget-byte v13, p1, v9

    add-int/2addr v9, v5

    aget-byte v14, p1, v9

    const/4 v15, 0x4

    if-ne v13, v4, :cond_8

    if-lt v11, v15, :cond_2

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v13, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    add-int/lit8 v1, v11, -0x1

    invoke-interface {v13, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v8}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v13, v3

    :goto_1
    add-int/lit8 v8, v11, -0x2

    if-ge v13, v8, :cond_0

    aget-byte v8, v2, v13

    shl-int/2addr v8, v15

    add-int/lit8 v16, v13, 0x1

    aget-byte v16, v2, v16

    or-int v8, v8, v16

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v13, v13, 0x2

    const/4 v8, 0x2

    goto :goto_1

    :cond_0
    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->isEven(I)Z

    move-result v7

    if-nez v7, :cond_1

    aget-byte v7, v2, v8

    shl-int/2addr v7, v15

    or-int/2addr v7, v3

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    :cond_1
    div-int/lit8 v1, v1, 0x2

    int-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v1, v7

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->isEven(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v1, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    if-le v11, v1, :cond_3

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    aget-byte v1, v2, v3

    shl-int/2addr v1, v15

    aget-byte v8, v2, v5

    or-int/2addr v1, v8

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v7}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    :cond_3
    :goto_2
    if-ne v14, v6, :cond_6

    add-int/lit8 v10, v10, 0x2

    const/16 v1, 0x100

    if-ne v10, v1, :cond_5

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v7, v10}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    shl-int/lit8 v7, v4, 0x4

    or-int/2addr v7, v6

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    const/4 v7, 0x2

    invoke-direct {v0, v7}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v7, p2, -0x1

    if-ge v9, v7, :cond_4

    add-int/lit8 v9, v9, 0x1

    aget-byte v4, p1, v9

    const/4 v10, 0x2

    const/4 v11, -0x1

    move/from16 v17, v6

    move v6, v4

    move/from16 v4, v17

    goto/16 :goto_7

    :cond_4
    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v7, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    shl-int/lit8 v7, v6, 0x4

    or-int/2addr v7, v3

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    const/4 v7, 0x2

    invoke-direct {v0, v7}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v11, -0x1

    goto/16 :goto_7

    :cond_6
    const/16 v1, 0x100

    add-int/lit8 v10, v10, 0x1

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v6

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v7, v10}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v7, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v4, p2, -0x1

    if-ge v9, v4, :cond_7

    add-int/lit8 v9, v9, 0x1

    aget-byte v4, p1, v9

    move v6, v4

    move v4, v14

    const/4 v10, 0x2

    goto :goto_3

    :cond_7
    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v4, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    shl-int/lit8 v4, v14, 0x4

    or-int/2addr v4, v3

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v7, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    const/4 v7, 0x2

    invoke-direct {v0, v7}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v4, v14

    :goto_4
    const/4 v10, -0x1

    goto :goto_3

    :cond_8
    move v7, v8

    if-le v10, v7, :cond_9

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v6

    iget-object v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v6, v10}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v6, v4}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v7}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    goto :goto_6

    :cond_9
    if-gez v11, :cond_a

    add-int/lit8 v11, v11, 0x1

    aput-byte v4, v2, v11

    add-int/2addr v11, v5

    aput-byte v6, v2, v11

    add-int/2addr v11, v5

    aput-byte v13, v2, v11

    add-int/2addr v11, v5

    aput-byte v14, v2, v11

    goto :goto_6

    :cond_a
    const/16 v4, 0xfd

    if-ge v11, v4, :cond_b

    add-int/lit8 v11, v11, 0x1

    aput-byte v13, v2, v11

    add-int/2addr v11, v5

    aput-byte v14, v2, v11

    goto :goto_6

    :cond_b
    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v4, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    add-int/lit8 v6, v11, 0x1

    invoke-interface {v4, v6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v4, v3

    :goto_5
    if-ge v4, v11, :cond_c

    aget-byte v6, v2, v4

    shl-int/2addr v6, v15

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v2, v7

    or-int/2addr v6, v7

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-byte v6, v6

    invoke-interface {v7, v6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    :cond_c
    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v4, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    const/4 v11, -0x1

    :goto_6
    move v4, v13

    move v6, v14

    const/4 v10, 0x2

    :goto_7
    if-lt v9, v12, :cond_18

    const/4 v7, -0x1

    if-ne v11, v7, :cond_11

    const/4 v7, 0x2

    if-lt v10, v7, :cond_10

    if-ne v9, v12, :cond_f

    add-int/lit8 v9, v9, 0x1

    aget-byte v7, p1, v9

    if-ne v7, v4, :cond_d

    add-int/lit8 v10, v10, 0x1

    shl-int/lit8 v7, v4, 0x4

    or-int/2addr v7, v6

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v10}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    :goto_8
    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    const/4 v7, 0x2

    invoke-direct {v0, v7}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v12, v7

    const/4 v7, -0x1

    goto/16 :goto_c

    :cond_d
    shl-int/lit8 v7, v4, 0x4

    or-int/2addr v7, v6

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v10}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v7, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    aget-byte v7, p1, v9

    shl-int/2addr v7, v15

    or-int/2addr v7, v3

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    aget-byte v7, p1, v9

    invoke-direct {v0, v15}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    const/4 v7, -0x1

    :cond_e
    :goto_9
    const/4 v12, 0x2

    goto/16 :goto_c

    :cond_f
    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v7, v10}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    shl-int/lit8 v7, v4, 0x4

    or-int/2addr v7, v6

    goto :goto_8

    :cond_10
    const/4 v7, -0x1

    :cond_11
    if-le v11, v7, :cond_e

    if-ne v9, v12, :cond_12

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, p1, v9

    aput-byte v8, v2, v11

    :cond_12
    const/4 v8, 0x2

    if-lt v11, v8, :cond_15

    iget-object v12, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v12, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    add-int/lit8 v13, v11, 0x1

    invoke-interface {v12, v13}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v8}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v8, v3

    :goto_a
    if-ge v8, v11, :cond_13

    aget-byte v12, v2, v8

    shl-int/2addr v12, v15

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, v2, v14

    or-int/2addr v12, v14

    iget-object v14, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    int-to-byte v12, v12

    invoke-interface {v14, v12}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_a

    :cond_13
    invoke-direct {v0, v13}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->isEven(I)Z

    move-result v8

    if-nez v8, :cond_14

    aget-byte v8, v2, v11

    shl-int/2addr v8, v15

    or-int/2addr v8, v3

    iget-object v12, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v12, v8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    :cond_14
    div-int/lit8 v13, v13, 0x2

    int-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v8, v12

    invoke-direct {v0, v8}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->isEven(I)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    goto :goto_9

    :cond_15
    if-eqz v11, :cond_17

    if-eq v11, v5, :cond_16

    goto :goto_9

    :cond_16
    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v12, 0x2

    invoke-interface {v8, v12}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    aget-byte v8, v2, v3

    shl-int/2addr v8, v15

    aget-byte v13, v2, v5

    or-int/2addr v8, v13

    goto :goto_b

    :cond_17
    const/4 v12, 0x2

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    aget-byte v8, v2, v3

    shl-int/2addr v8, v15

    or-int/2addr v8, v3

    :goto_b
    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v13, v8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    :goto_c
    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v8, v12

    goto/16 :goto_0

    :cond_18
    const/4 v8, 0x2

    goto/16 :goto_0

    :cond_19
    return-void
.end method

.method private encodeRLE8([BI)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/16 v3, 0x100

    new-array v4, v3, [B

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v7, v1

    move v9, v5

    move v8, v6

    :cond_0
    :goto_0
    add-int/lit8 v10, p2, -0x1

    if-ge v7, v10, :cond_e

    add-int/lit8 v7, v7, 0x1

    aget-byte v11, p1, v7

    const/4 v12, 0x2

    if-ne v11, v2, :cond_5

    const/4 v11, 0x3

    if-lt v9, v11, :cond_2

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v11, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v11, v9}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v11, v1

    :goto_1
    if-ge v11, v9, :cond_1

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aget-byte v14, v4, v11

    invoke-interface {v13, v14}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v9}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->isEven(I)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v9, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    goto :goto_3

    :cond_2
    if-le v9, v5, :cond_3

    move v11, v1

    :goto_2
    if-ge v11, v9, :cond_3

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v13, v6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aget-byte v14, v4, v11

    invoke-interface {v13, v14}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_4

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v9, v8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v9, v5

    move v8, v6

    goto :goto_6

    :cond_4
    move v9, v5

    goto :goto_6

    :cond_5
    if-le v8, v6, :cond_6

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v13, v8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    goto :goto_5

    :cond_6
    if-gez v9, :cond_7

    add-int/lit8 v9, v9, 0x1

    aput-byte v2, v4, v9

    add-int/2addr v9, v6

    aput-byte v11, v4, v9

    goto :goto_5

    :cond_7
    const/16 v2, 0xfe

    if-ge v9, v2, :cond_8

    add-int/lit8 v9, v9, 0x1

    aput-byte v11, v4, v9

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    add-int/lit8 v8, v9, 0x1

    invoke-interface {v2, v8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v2, v1

    :goto_4
    if-gt v2, v9, :cond_9

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aget-byte v13, v4, v2

    invoke-interface {v8, v13}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v9, v5

    :goto_5
    move v8, v6

    move v2, v11

    :goto_6
    if-ne v7, v10, :cond_0

    if-ne v9, v5, :cond_a

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v10, v8}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v8, v6

    goto :goto_9

    :cond_a
    if-lt v9, v12, :cond_c

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v10, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    add-int/lit8 v11, v9, 0x1

    invoke-interface {v10, v11}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    move v10, v1

    :goto_7
    if-gt v10, v9, :cond_b

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aget-byte v14, v4, v10

    invoke-interface {v13, v14}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    invoke-direct {p0, v11}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->isEven(I)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v10, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    goto :goto_9

    :cond_c
    if-le v9, v5, :cond_d

    move v10, v1

    :goto_8
    if-gt v10, v9, :cond_d

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v11, v6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aget-byte v13, v4, v10

    invoke-interface {v11, v13}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v10, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v10, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {p0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private firstLowBit(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private declared-synchronized incCompImageSize(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compImageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compImageSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isEven(I)Z
    .locals 0

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private roundBpp(I)I
    .locals 1

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x10

    if-gt p1, v0, :cond_1

    return v0

    :cond_1
    const/16 v0, 0x18

    if-gt p1, v0, :cond_2

    return v0

    :cond_2
    const/16 p1, 0x20

    return p1
.end method

.method private writeEmbedded(Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 6

    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "jpeg"

    goto :goto_0

    :cond_0
    const-string v0, "png"

    :goto_0
    invoke-static {v0}, Lorg/apache/poi/javax/imageio/ImageIO;->getImageWritersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/javax/imageio/ImageWriter;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->embedded_stream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$1;

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$1;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->addIIOWriteProgressListener(Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;)V

    new-instance v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$2;

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$2;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->addIIOWriteWarningListener(Lorg/apache/poi/javax/imageio/event/IIOWriteWarningListener;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->embedded_stream:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lorg/apache/poi/javax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/apache/poi/javax/imageio/ImageWriter;->getDefaultWriteParam()Lorg/apache/poi/javax/imageio/ImageWriteParam;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getDestinationOffset()Lorg/apache/poi/java/awt/Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/IIOParam;->setDestinationOffset(Lorg/apache/poi/java/awt/Point;)V

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/IIOParam;->setSourceBands([I)V

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceRegion()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/IIOParam;->setSourceRegion(Lorg/apache/poi/java/awt/Rectangle;)V

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result p2

    invoke-virtual {v0, v2, v4, v5, p2}, Lorg/apache/poi/javax/imageio/IIOParam;->setSourceSubsampling(IIII)V

    invoke-virtual {v1, v3, p1, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->write(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No stream for writing embedded image!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BMPImageWrite5"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeFileHeader(II)V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x4d

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeInfoHeader(II)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->isTopDown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->h:I

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->h:I

    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShort(I)V

    return-void
.end method

.method private writePixels(III[IIILorg/apache/poi/java/awt/image/IndexColorModel;)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p6

    move-object/from16 v4, p7

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v10, :cond_19

    if-eq v2, v5, :cond_14

    if-eq v2, v6, :cond_10

    const/16 v5, 0x10

    if-eq v2, v5, :cond_b

    const/16 v7, 0x18

    if-eq v2, v7, :cond_7

    const/16 v7, 0x20

    if-eq v2, v7, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->ipixels:[I

    if-nez v2, :cond_1

    div-int v2, v1, v3

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->ipixels:[I

    :cond_1
    move v2, v9

    if-ne v3, v8, :cond_4

    move v4, v2

    :goto_0
    if-ge v2, v1, :cond_6

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->ipixels:[I

    aput v9, v7, v4

    iget v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    if-nez v10, :cond_2

    add-int/lit8 v10, v2, 0x2

    aget v10, p4, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v5

    add-int/lit8 v11, v2, 0x1

    aget v11, p4, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v6

    or-int/2addr v10, v11

    aget v11, p4, v2

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    aput v10, v7, v4

    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    :cond_2
    move v7, v9

    :goto_1
    if-ge v7, v3, :cond_3

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->ipixels:[I

    aget v11, v10, v4

    aget v12, p4, v2

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bitPos:[I

    aget v13, v13, v7

    shl-int/2addr v12, v13

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bitMasks:[I

    aget v13, v13, v7

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    aput v11, v10, v4

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-ge v2, v1, :cond_6

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->ipixels:[I

    if-eqz v4, :cond_5

    aget v7, p4, v2

    invoke-virtual {v4, v7}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getRGB(I)I

    move-result v7

    aput v7, v3, v2

    goto :goto_4

    :cond_5
    aget v7, p4, v2

    shl-int/2addr v7, v5

    aget v10, p4, v2

    shl-int/2addr v10, v6

    or-int/2addr v7, v10

    aget v10, p4, v2

    or-int/2addr v7, v10

    aput v7, v3, v2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->ipixels:[I

    array-length v3, v2

    invoke-interface {v1, v2, v9, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInts([III)V

    goto/16 :goto_10

    :cond_7
    if-ne v3, v8, :cond_9

    move/from16 v2, p1

    move v3, v9

    move v4, v3

    :goto_5
    if-ge v3, v1, :cond_8

    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v2, 0x2

    aget v7, p4, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v4

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v7, v2, 0x1

    aget v7, p4, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v6, v4, 0x1

    aget v7, p4, v2

    int-to-byte v7, v7

    aput-byte v7, v5, v4

    add-int/2addr v2, v8

    add-int/lit8 v3, v3, 0x3

    move v4, v6

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    invoke-interface {v2, v3, v9, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    goto/16 :goto_10

    :cond_9
    invoke-virtual/range {p7 .. p7}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getMapSize()I

    move-result v2

    new-array v3, v2, [B

    new-array v5, v2, [B

    new-array v2, v2, [B

    invoke-virtual {v4, v3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getReds([B)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getGreens([B)V

    invoke-virtual {v4, v2}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getBlues([B)V

    move/from16 v3, p1

    move v4, v9

    move v6, v4

    :goto_6
    if-ge v4, v1, :cond_a

    aget v7, p4, v3

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    add-int/lit8 v12, v6, 0x1

    aget-byte v13, v2, v7

    aput-byte v13, v11, v6

    add-int/lit8 v6, v12, 0x1

    aget-byte v13, v5, v7

    aput-byte v13, v11, v12

    add-int/lit8 v12, v6, 0x1

    aget-byte v7, v2, v7

    aput-byte v7, v11, v6

    add-int/2addr v3, v10

    add-int/lit8 v4, v4, 0x1

    move v6, v12

    goto :goto_6

    :cond_a
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    mul-int/2addr v1, v8

    invoke-interface {v2, v3, v9, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    goto/16 :goto_10

    :cond_b
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->spixels:[S

    if-nez v2, :cond_c

    div-int v2, v1, v3

    new-array v2, v2, [S

    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->spixels:[S

    :cond_c
    move v2, v9

    move v4, v2

    :goto_7
    if-ge v2, v1, :cond_f

    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->spixels:[S

    aput-short v9, v5, v4

    iget v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    if-nez v6, :cond_d

    aget v6, p4, v2

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0xa

    add-int/lit8 v7, v2, 0x1

    aget v7, p4, v7

    and-int/lit8 v7, v7, 0x1f

    shl-int/lit8 v7, v7, 0x5

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x2

    aget v7, p4, v7

    and-int/lit8 v7, v7, 0x1f

    or-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v2, v2, 0x3

    goto :goto_9

    :cond_d
    move v5, v9

    :goto_8
    if-ge v5, v3, :cond_e

    iget-object v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->spixels:[S

    aget-short v7, v6, v4

    aget v10, p4, v2

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bitPos:[I

    aget v11, v11, v5

    shl-int/2addr v10, v11

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bitMasks:[I

    aget v11, v11, v5

    and-int/2addr v10, v11

    or-int/2addr v7, v10

    int-to-short v7, v7

    aput-short v7, v6, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->spixels:[S

    array-length v3, v2

    invoke-interface {v1, v2, v9, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShorts([SII)V

    goto/16 :goto_10

    :cond_10
    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    if-ne v2, v10, :cond_12

    move/from16 v2, p1

    move v3, v9

    :goto_a
    if-ge v3, v1, :cond_11

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    add-int/lit8 v5, v2, 0x1

    aget v2, p4, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_a

    :cond_11
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    invoke-direct {p0, v2, v1}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->encodeRLE8([BI)V

    goto/16 :goto_10

    :cond_12
    move/from16 v2, p1

    move v3, v9

    :goto_b
    if-ge v3, v1, :cond_13

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    add-int/lit8 v5, v2, 0x1

    aget v2, p4, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_b

    :cond_13
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    invoke-interface {v2, v3, v9, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    goto/16 :goto_10

    :cond_14
    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    if-ne v2, v7, :cond_16

    new-array v2, v1, [B

    move/from16 v3, p1

    move v4, v9

    :goto_c
    if-ge v4, v1, :cond_15

    add-int/lit8 v5, v3, 0x1

    aget v3, p4, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_c

    :cond_15
    invoke-direct {p0, v2, v1}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->encodeRLE4([BI)V

    goto/16 :goto_10

    :cond_16
    move/from16 v2, p1

    move v3, v9

    move v4, v3

    :goto_d
    div-int/lit8 v6, v1, 0x2

    if-ge v3, v6, :cond_17

    add-int/lit8 v6, v2, 0x1

    aget v2, p4, v2

    shl-int/2addr v2, v5

    add-int/lit8 v11, v6, 0x1

    aget v6, p4, v6

    or-int/2addr v2, v6

    iget-object v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    add-int/lit8 v12, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, v6, v4

    add-int/lit8 v3, v3, 0x1

    move v2, v11

    move v4, v12

    goto :goto_d

    :cond_17
    rem-int/lit8 v3, v1, 0x2

    if-ne v3, v10, :cond_18

    aget v2, p4, v2

    shl-int/2addr v2, v5

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    :cond_18
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    add-int/2addr v1, v10

    div-int/2addr v1, v7

    invoke-interface {v2, v3, v9, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    goto/16 :goto_10

    :cond_19
    move/from16 v2, p1

    move v3, v9

    move v4, v3

    :goto_e
    div-int/lit8 v11, v1, 0x8

    if-ge v3, v11, :cond_1a

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    add-int/lit8 v12, v4, 0x1

    add-int/lit8 v13, v2, 0x1

    aget v2, p4, v2

    shl-int/lit8 v2, v2, 0x7

    add-int/lit8 v14, v13, 0x1

    aget v13, p4, v13

    shl-int/lit8 v13, v13, 0x6

    or-int/2addr v2, v13

    add-int/lit8 v13, v14, 0x1

    aget v14, p4, v14

    shl-int/lit8 v14, v14, 0x5

    or-int/2addr v2, v14

    add-int/lit8 v14, v13, 0x1

    aget v13, p4, v13

    shl-int/2addr v13, v5

    or-int/2addr v2, v13

    add-int/lit8 v13, v14, 0x1

    aget v14, p4, v14

    shl-int/2addr v14, v8

    or-int/2addr v2, v14

    add-int/lit8 v14, v13, 0x1

    aget v13, p4, v13

    shl-int/2addr v13, v7

    or-int/2addr v2, v13

    add-int/lit8 v13, v14, 0x1

    aget v14, p4, v14

    shl-int/2addr v14, v10

    or-int/2addr v2, v14

    add-int/lit8 v14, v13, 0x1

    aget v13, p4, v13

    or-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v11, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v12

    move v2, v14

    goto :goto_e

    :cond_1a
    rem-int/lit8 v3, v1, 0x8

    if-lez v3, :cond_1c

    move v5, v9

    move v7, v5

    :goto_f
    if-ge v5, v3, :cond_1b

    add-int/lit8 v10, v2, 0x1

    aget v2, p4, v2

    rsub-int/lit8 v11, v5, 0x7

    shl-int/2addr v2, v11

    or-int/2addr v7, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v10

    goto :goto_f

    :cond_1b
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    int-to-byte v3, v7

    aput-byte v3, v2, v4

    :cond_1c
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v6

    invoke-interface {v2, v3, v9, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    :goto_10
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    if-eqz v1, :cond_1d

    if-ne v1, v8, :cond_1e

    :cond_1d
    move/from16 v1, p5

    move v2, v9

    :goto_11
    if-ge v2, v1, :cond_1e

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v3, v9}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1e
    return-void
.end method

.method private writeSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object p2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {p2, p1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public canEncodeImage(ILorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)Z
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {v0, p2, p3}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->canEncodeImage(ILorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z

    move-result p1

    return p1
.end method

.method public canEncodeImage(ILorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOriginatingProvider()Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->canEncodeImage(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getBufferedImageType()I

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getPixelSize()I

    move-result p1

    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    return v0

    :cond_2
    const/16 v1, 0x10

    if-ne p1, v1, :cond_b

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz p2, :cond_6

    check-cast p1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getSampleSize()[I

    move-result-object p1

    move p2, v0

    move v1, v2

    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge p2, v4, :cond_7

    aget v4, p1, p2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    and-int/2addr v1, v4

    aget v4, p1, p2

    if-eq v4, v5, :cond_5

    if-ne p2, v2, :cond_4

    aget v4, p1, p2

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v4, v0

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v2

    :goto_3
    and-int/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    move v1, v0

    move v3, v1

    :cond_7
    iget p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    if-nez p1, :cond_8

    if-nez v1, :cond_9

    :cond_8
    const/4 p2, 0x3

    if-ne p1, p2, :cond_a

    if-eqz v3, :cond_a

    :cond_9
    move v0, v2

    :cond_a
    return v0

    :cond_b
    return v2
.end method

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
    .locals 3

    new-instance v0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;-><init>()V

    const-string v1, "BMP v. 3.x"

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->getPreferredCompressionType(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->compression:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->getType(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->compression:I

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getPixelSize()I

    move-result p1

    int-to-short p1, p1

    iput-short p1, v0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bitsPerPixel:S

    return-object v0
.end method

.method public getDefaultStreamMetadata(Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultWriteParam()Lorg/apache/poi/javax/imageio/ImageWriteParam;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/plugins/bmp/BMPImageWriteParam;

    invoke-direct {v0}, Lorg/apache/poi/javax/imageio/plugins/bmp/BMPImageWriteParam;-><init>()V

    return-object v0
.end method

.method public getPreferredCompressionType(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)I
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)V

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->getPreferredCompressionType(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)I

    move-result p1

    return p1
.end method

.method public getPreferredCompressionType(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)I
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getBufferedImageType()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/javax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BMPImageWriter0"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    :goto_0
    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 46

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_4f

    if-eqz v7, :cond_4e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->clearAbortRequest()V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageStarted(I)V

    if-nez p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->getDefaultWriteParam()Lorg/apache/poi/javax/imageio/ImageWriteParam;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    :goto_0
    move-object v10, v0

    check-cast v10, Lorg/apache/poi/javax/imageio/plugins/bmp/BMPImageWriteParam;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/javax/imageio/IIOImage;->hasRaster()Z

    move-result v11

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceRegion()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    iput v9, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compImageSize:I

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/javax/imageio/IIOImage;->getRaster()Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/sun/imageio/plugins/common/ImageUtil;->createColorModel(Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/image/SampleModel;)Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v4

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/poi/java/awt/Rectangle;->intersection(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    :goto_1
    move-object v14, v2

    move-object v13, v12

    goto :goto_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/javax/imageio/IIOImage;->getRenderedImage()Lorg/apache/poi/java/awt/image/RenderedImage;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/java/awt/Rectangle;

    invoke-interface {v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getMinX()I

    move-result v6

    invoke-interface {v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getMinY()I

    move-result v13

    invoke-interface {v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getWidth()I

    move-result v14

    invoke-interface {v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getHeight()I

    move-result v15

    invoke-direct {v5, v6, v13, v14, v15}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    if-nez v1, :cond_3

    move-object v13, v2

    move-object v1, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v5}, Lorg/apache/poi/java/awt/Rectangle;->intersection(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    move-object v13, v2

    :goto_2
    move-object v14, v12

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/javax/imageio/IIOImage;->getMetadata()Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v5, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    new-instance v2, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)V

    invoke-virtual {v8, v2, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->getDefaultImageMetadata(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;

    move-result-object v2

    :goto_4
    check-cast v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Rectangle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4d

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v15

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v16

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v6

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v12

    invoke-virtual {v1, v5, v6}, Lorg/apache/poi/java/awt/Rectangle;->translate(II)V

    iget v9, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    sub-int/2addr v9, v5

    iput v9, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v5, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v5, v6

    iput v5, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget v6, v1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    move-object/from16 p3, v14

    div-int v14, v6, v15

    move-object/from16 v17, v4

    iget v4, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    div-int v7, v4, v16

    add-int/2addr v9, v15

    move-object/from16 v18, v13

    const/4 v13, 0x1

    sub-int/2addr v9, v13

    div-int/2addr v9, v15

    iput v9, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    add-int v5, v5, v16

    sub-int/2addr v5, v13

    div-int v5, v5, v16

    iput v5, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->h:I

    rem-int v9, v6, v15

    rem-int v19, v4, v16

    new-instance v4, Lorg/apache/poi/java/awt/Rectangle;

    iget v5, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    iget v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->h:I

    invoke-direct {v4, v14, v7, v5, v6}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lorg/apache/poi/java/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v4

    if-eqz v0, :cond_5

    invoke-virtual {v3, v0}, Lorg/apache/poi/java/awt/image/SampleModel;->createSubsetSampleModel([I)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v4

    move-object/from16 v17, v0

    move v6, v4

    const/4 v5, 0x0

    const/16 v20, 0x0

    goto :goto_6

    :cond_5
    new-array v0, v4, [I

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_6

    aput v5, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    move v6, v4

    move/from16 v20, v13

    move-object/from16 v5, v17

    move-object/from16 v17, v0

    :goto_6
    instance-of v0, v3, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-eqz v0, :cond_a

    move-object v0, v3

    check-cast v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object v0

    instance-of v4, v3, Lorg/apache/poi/java/awt/image/BandedSampleModel;

    if-eqz v4, :cond_7

    move/from16 v21, v9

    move/from16 v23, v11

    const/4 v11, 0x0

    goto :goto_b

    :cond_7
    move/from16 v21, v13

    const/4 v4, 0x0

    :goto_7
    array-length v13, v0

    if-ge v4, v13, :cond_9

    aget v13, v0, v4

    move/from16 v23, v11

    array-length v11, v0

    sub-int/2addr v11, v4

    const/16 v22, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ne v13, v11, :cond_8

    const/4 v11, 0x1

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    and-int v21, v21, v11

    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v23

    goto :goto_7

    :cond_9
    move/from16 v23, v11

    move/from16 v11, v21

    move/from16 v21, v9

    goto :goto_b

    :cond_a
    move/from16 v23, v11

    instance-of v0, v3, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v0, :cond_d

    move-object v0, v3

    check-cast v0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getBitOffsets()[I

    move-result-object v0

    const/4 v4, 0x0

    const/4 v11, 0x1

    :goto_9
    array-length v13, v0

    const/16 v21, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v4, v13, :cond_c

    aget v13, v0, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v21, v9

    aget v9, v0, v4

    if-le v13, v9, :cond_b

    const/4 v9, 0x1

    goto :goto_a

    :cond_b
    const/4 v9, 0x0

    :goto_a
    and-int/2addr v11, v9

    move/from16 v9, v21

    goto :goto_9

    :cond_c
    move/from16 v21, v9

    const/4 v0, 0x0

    goto :goto_b

    :cond_d
    move/from16 v21, v9

    const/4 v0, 0x0

    const/4 v11, 0x1

    :goto_b
    if-nez v0, :cond_e

    new-array v0, v6, [I

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v6, :cond_e

    aput v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_e
    move-object v9, v0

    and-int v0, v1, v11

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v1

    iget v4, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    mul-int/2addr v4, v6

    invoke-virtual {v10}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v11

    const/4 v13, 0x2

    move/from16 v24, v14

    const/4 v14, 0x1

    if-eq v11, v14, :cond_11

    if-eq v11, v13, :cond_10

    const/4 v14, 0x3

    if-eq v11, v14, :cond_f

    const/4 v11, 0x0

    iput v11, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    goto :goto_e

    :cond_f
    iget v2, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->compression:I

    goto :goto_d

    :cond_10
    invoke-virtual {v10}, Lorg/apache/poi/javax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->getType(Ljava/lang/String;)I

    move-result v2

    goto :goto_d

    :cond_11
    invoke-virtual {v8, v5, v3}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->getPreferredCompressionType(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)I

    move-result v2

    :goto_d
    iput v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    :goto_e
    iget v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    invoke-virtual {v8, v2, v5, v3}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->canEncodeImage(ILorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)Z

    move-result v2

    const-string v11, "Image can not be encoded with compression type "

    if-eqz v2, :cond_4c

    iget v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    const/16 v14, 0x10

    const/4 v13, 0x3

    if-ne v2, v13, :cond_17

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v14, :cond_12

    if-eq v1, v2, :cond_12

    move v13, v2

    const/16 v26, 0x0

    goto :goto_f

    :cond_12
    move/from16 v26, v0

    move v13, v1

    :goto_f
    iget v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    mul-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    shr-int/lit8 v30, v0, 0x3

    new-array v4, v1, [B

    new-array v3, v1, [B

    new-array v2, v1, [B

    new-array v0, v1, [B

    const/high16 v1, 0xff0000

    const v31, 0xff00

    if-ne v13, v14, :cond_14

    instance-of v1, v5, Lorg/apache/poi/java/awt/image/DirectColorModel;

    if-eqz v1, :cond_13

    move-object v1, v5

    check-cast v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getRedMask()I

    move-result v11

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getGreenMask()I

    move-result v31

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getBlueMask()I

    move-result v1

    move v14, v1

    move/from16 v1, v31

    goto :goto_10

    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    invoke-static {v2}, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move v11, v1

    move/from16 v1, v31

    const/16 v14, 0xff

    :goto_10
    const/16 v31, 0x0

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v33, v1

    move v1, v11

    move-object/from16 v34, v2

    move/from16 v2, v31

    move-object/from16 v31, v3

    move-object v3, v4

    move-object/from16 v35, v4

    move-object/from16 v4, v31

    move-object/from16 v36, v5

    move-object/from16 v5, v34

    move/from16 v37, v13

    move v13, v6

    move-object/from16 v6, v32

    invoke-virtual/range {v0 .. v6}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeMaskToPalette(II[B[B[B[B)V

    const/4 v2, 0x1

    move/from16 v1, v33

    move-object/from16 v3, v35

    invoke-virtual/range {v0 .. v6}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeMaskToPalette(II[B[B[B[B)V

    const/4 v2, 0x2

    move v1, v14

    invoke-virtual/range {v0 .. v6}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeMaskToPalette(II[B[B[B[B)V

    if-nez v26, :cond_15

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bitMasks:[I

    const/4 v2, 0x0

    aput v11, v1, v2

    move/from16 v3, v33

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v5, 0x2

    aput v14, v1, v5

    new-array v1, v0, [I

    iput-object v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bitPos:[I

    invoke-direct {v8, v11}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->firstLowBit(I)I

    move-result v0

    aput v0, v1, v2

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bitPos:[I

    invoke-direct {v8, v3}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->firstLowBit(I)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bitPos:[I

    invoke-direct {v8, v14}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->firstLowBit(I)I

    move-result v1

    aput v1, v0, v5

    :cond_15
    move-object/from16 v2, v36

    instance-of v0, v2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz v0, :cond_16

    move-object v5, v2

    check-cast v5, Lorg/apache/poi/java/awt/image/IndexColorModel;

    goto :goto_11

    :cond_16
    const/4 v5, 0x0

    :goto_11
    move-object v11, v5

    move/from16 v4, v30

    move-object/from16 v3, v31

    move-object/from16 v0, v32

    move-object/from16 v2, v34

    move/from16 v14, v37

    const/4 v1, 0x3

    const/4 v5, 0x1

    goto/16 :goto_16

    :cond_17
    move-object v2, v5

    move v13, v6

    instance-of v5, v2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz v5, :cond_1c

    move-object v5, v2

    check-cast v5, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getMapSize()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_18

    iget v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    add-int/lit8 v2, v2, 0x7

    const/4 v3, 0x3

    shr-int/lit8 v4, v2, 0x3

    move v2, v1

    const/4 v1, 0x1

    const/4 v6, 0x1

    const/16 v22, 0x1

    goto :goto_12

    :cond_18
    const/4 v3, 0x3

    if-gt v1, v14, :cond_19

    iget v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    const/4 v6, 0x1

    add-int/2addr v2, v6

    shr-int/lit8 v4, v2, 0x1

    move v2, v1

    move v1, v6

    const/16 v22, 0x4

    goto :goto_12

    :cond_19
    const/16 v2, 0x100

    const/4 v6, 0x1

    if-gt v1, v2, :cond_1a

    const/16 v22, 0x8

    move v2, v1

    move v1, v6

    goto :goto_12

    :cond_1a
    iget v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    mul-int/lit8 v4, v1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v22, 0x18

    :goto_12
    if-ne v1, v6, :cond_1b

    new-array v3, v2, [B

    new-array v11, v2, [B

    new-array v14, v2, [B

    new-array v6, v2, [B

    invoke-virtual {v5, v6}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getAlphas([B)V

    invoke-virtual {v5, v3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getReds([B)V

    invoke-virtual {v5, v11}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getGreens([B)V

    invoke-virtual {v5, v14}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getBlues([B)V

    move/from16 v26, v0

    move-object/from16 v35, v3

    move-object v0, v6

    move-object v3, v11

    move-object v11, v5

    move v5, v1

    move v1, v2

    move-object v2, v14

    move/from16 v14, v22

    goto/16 :goto_16

    :cond_1b
    move/from16 v26, v0

    move-object v11, v5

    move/from16 v14, v22

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/16 v35, 0x0

    move v5, v1

    move v1, v2

    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_1c
    const/4 v2, 0x1

    if-ne v13, v2, :cond_1e

    const/4 v2, 0x0

    aget v14, v1, v2

    iget v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    mul-int/2addr v1, v14

    add-int/lit8 v1, v1, 0x7

    const/4 v2, 0x3

    shr-int/lit8 v4, v1, 0x3

    const/16 v1, 0x100

    new-array v2, v1, [B

    new-array v3, v1, [B

    new-array v5, v1, [B

    new-array v6, v1, [B

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v1, :cond_1d

    int-to-byte v1, v11

    aput-byte v1, v2, v11

    aput-byte v1, v3, v11

    aput-byte v1, v5, v11

    const/4 v1, -0x1

    aput-byte v1, v6, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x100

    goto :goto_13

    :cond_1d
    move/from16 v26, v0

    move-object/from16 v35, v2

    move-object v2, v5

    move-object v0, v6

    const/16 v1, 0x100

    const/4 v5, 0x1

    const/4 v11, 0x0

    goto :goto_16

    :cond_1e
    instance-of v1, v3, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v1, :cond_21

    if-eqz v20, :cond_21

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    if-ge v4, v2, :cond_1f

    aget v6, v1, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_1f
    invoke-direct {v8, v5}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->roundBpp(I)I

    move-result v14

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v1

    if-eq v14, v1, :cond_20

    const/4 v0, 0x0

    :cond_20
    iget v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    mul-int/2addr v1, v14

    add-int/lit8 v1, v1, 0x7

    const/4 v2, 0x3

    shr-int/lit8 v4, v1, 0x3

    move/from16 v26, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    goto :goto_15

    :cond_21
    move/from16 v26, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x18

    :goto_15
    const/16 v35, 0x0

    :goto_16
    rem-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_22

    rsub-int/lit8 v6, v6, 0x4

    :cond_22
    mul-int/lit8 v30, v1, 0x4

    move-object/from16 v31, v11

    add-int/lit8 v11, v30, 0x36

    add-int v30, v4, v6

    move/from16 v32, v6

    iget v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->h:I

    mul-int v6, v6, v30

    move/from16 v30, v7

    add-int v7, v6, v11

    move/from16 v33, v12

    iget-object v12, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    move/from16 v36, v13

    invoke-interface {v12}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v12

    invoke-direct {v8, v7, v11}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeFileHeader(II)V

    iget v7, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    move-wide/from16 v37, v12

    if-eqz v7, :cond_24

    const/4 v12, 0x3

    if-ne v7, v12, :cond_23

    goto :goto_17

    :cond_23
    const/4 v7, 0x0

    goto :goto_18

    :cond_24
    :goto_17
    invoke-virtual {v10}, Lorg/apache/poi/javax/imageio/plugins/bmp/BMPImageWriteParam;->isTopDown()Z

    move-result v7

    :goto_18
    iput-boolean v7, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->isTopDown:Z

    const/16 v7, 0x28

    invoke-direct {v8, v7, v14}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeInfoHeader(II)V

    iget-object v7, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget v12, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    invoke-interface {v7, v12}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v7, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v7, v6}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v6, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    const/4 v6, 0x1

    if-ne v5, v6, :cond_26

    iget v5, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v6, :cond_26

    aget-byte v5, v0, v1

    const/16 v6, 0xff

    and-int/2addr v5, v6

    aget-byte v7, v35, v1

    and-int/2addr v7, v6

    const/16 v12, 0x100

    mul-int/2addr v7, v12

    add-int/2addr v5, v7

    aget-byte v7, v3, v1

    and-int/2addr v7, v6

    const/high16 v13, 0x10000

    mul-int/2addr v7, v13

    add-int/2addr v5, v7

    aget-byte v7, v2, v1

    and-int/2addr v7, v6

    const/high16 v13, 0x1000000

    mul-int/2addr v7, v13

    add-int/2addr v5, v7

    iget-object v7, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v7, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x3

    goto :goto_19

    :cond_25
    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v1, :cond_26

    iget-object v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aget-byte v7, v2, v5

    invoke-interface {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aget-byte v7, v3, v5

    invoke-interface {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aget-byte v7, v35, v5

    invoke-interface {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v6, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aget-byte v7, v0, v5

    invoke-interface {v6, v7}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_26
    iget v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    mul-int v12, v0, v36

    mul-int v0, v12, v15

    new-array v13, v0, [I

    new-array v0, v4, [B

    iput-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    iget v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_27

    goto/16 :goto_2f

    :cond_27
    const/4 v0, 0x0

    aget v1, v9, v0

    move v10, v1

    const/4 v0, 0x1

    :goto_1b
    array-length v1, v9

    if-ge v0, v1, :cond_29

    aget v1, v9, v0

    if-le v1, v10, :cond_28

    aget v1, v9, v0

    move v10, v1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_29
    add-int/lit8 v9, v10, 0x1

    new-array v6, v9, [I

    if-eqz v26, :cond_2a

    if-eqz v20, :cond_2a

    invoke-static/range {v33 .. v33}, Lorg/apache/poi/java/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v0

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    div-int/2addr v4, v0

    :cond_2a
    move v5, v4

    const/4 v4, 0x0

    :goto_1c
    iget v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->h:I

    if-ge v4, v0, :cond_46

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_2d

    :cond_2b
    add-int v0, v30, v4

    iget-boolean v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->isTopDown:Z

    if-nez v1, :cond_2c

    iget v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->h:I

    add-int v0, v30, v0

    sub-int/2addr v0, v4

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_1d

    :cond_2c
    const/4 v1, 0x1

    :goto_1d
    new-instance v2, Lorg/apache/poi/java/awt/Rectangle;

    mul-int v3, v24, v15

    add-int v3, v3, v21

    mul-int v0, v0, v16

    add-int v0, v0, v19

    iget v7, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    sub-int/2addr v7, v1

    mul-int/2addr v7, v15

    add-int/2addr v7, v1

    invoke-direct {v2, v3, v0, v7, v1}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    move-object/from16 v7, v18

    if-nez v23, :cond_2d

    invoke-interface {v7, v2}, Lorg/apache/poi/java/awt/image/RenderedImage;->getData(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/image/Raster;

    move-result-object v0

    move-object/from16 v39, v0

    goto :goto_1e

    :cond_2d
    move-object/from16 v39, p3

    :goto_1e
    if-eqz v26, :cond_42

    if-eqz v20, :cond_42

    invoke-virtual/range {v39 .. v39}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    iget v1, v2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    invoke-virtual/range {v39 .. v39}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    invoke-virtual/range {v39 .. v39}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v18

    sub-int v3, v3, v18

    move/from16 v18, v4

    instance-of v4, v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    if-eqz v4, :cond_30

    check-cast v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getOffset(III)I

    move-result v28

    move/from16 v29, v11

    move/from16 v4, v28

    move-object/from16 v28, v7

    const/4 v7, 0x1

    :goto_1f
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result v11

    if-ge v7, v11, :cond_2f

    invoke-virtual {v0, v1, v3, v7}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getOffset(III)I

    move-result v11

    if-le v4, v11, :cond_2e

    invoke-virtual {v0, v1, v3, v7}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getOffset(III)I

    move-result v4

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_2f
    move v0, v4

    goto :goto_20

    :cond_30
    move-object/from16 v28, v7

    move/from16 v29, v11

    instance-of v4, v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    if-eqz v4, :cond_31

    check-cast v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getOffset(II)I

    move-result v0

    goto :goto_20

    :cond_31
    instance-of v4, v0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v4, :cond_32

    check-cast v0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getOffset(II)I

    move-result v0

    goto :goto_20

    :cond_32
    const/4 v0, 0x0

    :goto_20
    iget v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    if-eqz v1, :cond_3c

    const/4 v3, 0x3

    if-ne v1, v3, :cond_33

    goto/16 :goto_24

    :cond_33
    const/4 v3, 0x2

    if-ne v1, v3, :cond_37

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    if-eqz v0, :cond_34

    array-length v0, v0

    if-ge v0, v12, :cond_35

    :cond_34
    new-array v0, v12, [B

    iput-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    :cond_35
    iget v0, v2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v1, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v3, v2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    move/from16 v40, v0

    move/from16 v41, v1

    move/from16 v42, v3

    move/from16 v43, v2

    move-object/from16 v44, v13

    invoke-virtual/range {v39 .. v44}, Lorg/apache/poi/java/awt/image/Raster;->getPixels(IIII[I)[I

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v12, :cond_36

    iget-object v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    aget v2, v13, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_36
    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    invoke-direct {v8, v0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->encodeRLE4([BI)V

    goto :goto_23

    :cond_37
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3b

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    if-eqz v0, :cond_38

    array-length v0, v0

    if-ge v0, v12, :cond_39

    :cond_38
    new-array v0, v12, [B

    iput-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    :cond_39
    iget v0, v2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v1, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v3, v2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    move/from16 v40, v0

    move/from16 v41, v1

    move/from16 v42, v3

    move/from16 v43, v2

    move-object/from16 v44, v13

    invoke-virtual/range {v39 .. v44}, Lorg/apache/poi/java/awt/image/Raster;->getPixels(IIII[I)[I

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v12, :cond_3a

    iget-object v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    aget v2, v13, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3a
    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->bpixels:[B

    invoke-direct {v8, v0, v12}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->encodeRLE8([BI)V

    :cond_3b
    :goto_23
    move/from16 v4, v32

    move/from16 v11, v33

    const/4 v7, 0x3

    goto :goto_27

    :cond_3c
    :goto_24
    move/from16 v11, v33

    if-eqz v33, :cond_40

    const/4 v1, 0x1

    if-eq v11, v1, :cond_3f

    const/4 v1, 0x2

    const/4 v7, 0x3

    if-eq v11, v1, :cond_3e

    if-eq v11, v7, :cond_3d

    goto :goto_25

    :cond_3d
    invoke-virtual/range {v39 .. v39}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferInt;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData()[I

    move-result-object v1

    iget-object v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v1, v0, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeInts([III)V

    goto :goto_25

    :cond_3e
    invoke-virtual/range {v39 .. v39}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferShort;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBufferShort;->getData()[S

    move-result-object v1

    iget-object v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v1, v0, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShorts([SII)V

    goto :goto_25

    :cond_3f
    const/4 v7, 0x3

    invoke-virtual/range {v39 .. v39}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBufferUShort;->getData()[S

    move-result-object v1

    iget-object v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v1, v0, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeShorts([SII)V

    goto :goto_25

    :cond_40
    const/4 v7, 0x3

    invoke-virtual/range {v39 .. v39}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object v1

    iget-object v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v1, v0, v5}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([BII)V

    :goto_25
    move/from16 v4, v32

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v4, :cond_41

    iget-object v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_41
    :goto_27
    move/from16 v25, v5

    move-object/from16 v32, v6

    move/from16 p1, v9

    move/from16 v45, v18

    move/from16 v27, v30

    const/16 v9, 0x22

    move/from16 v18, v4

    move/from16 v30, v7

    goto/16 :goto_2c

    :cond_42
    move/from16 v18, v4

    move-object/from16 v28, v7

    move/from16 v29, v11

    move/from16 v4, v32

    move/from16 v11, v33

    const/4 v7, 0x3

    iget v0, v2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v1, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v3, v2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    move/from16 v40, v0

    move/from16 v41, v1

    move/from16 v42, v3

    move/from16 v43, v2

    move-object/from16 v44, v13

    invoke-virtual/range {v39 .. v44}, Lorg/apache/poi/java/awt/image/Raster;->getPixels(IIII[I)[I

    const/4 v0, 0x1

    if-ne v15, v0, :cond_44

    add-int/lit8 v0, v36, -0x1

    if-eq v10, v0, :cond_43

    goto :goto_28

    :cond_43
    move/from16 p1, v9

    move/from16 v9, v36

    goto :goto_2b

    :cond_44
    :goto_28
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_29
    iget v3, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->w:I

    if-ge v0, v3, :cond_43

    const/4 v3, 0x0

    invoke-static {v13, v1, v6, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 p1, v9

    move/from16 v9, v36

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v9, :cond_45

    add-int v25, v2, v3

    aget v32, v17, v3

    aget v32, v6, v32

    aput v32, v13, v25

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_45
    add-int/lit8 v0, v0, 0x1

    mul-int v3, v15, v9

    add-int/2addr v1, v3

    add-int/2addr v2, v9

    move/from16 v36, v9

    move/from16 v9, p1

    goto :goto_29

    :goto_2b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move v2, v12

    move v3, v14

    move/from16 v45, v18

    move/from16 v18, v4

    move-object v4, v13

    move/from16 v25, v5

    move/from16 v5, v18

    move-object/from16 v32, v6

    move v6, v9

    move/from16 v36, v9

    move/from16 v27, v30

    const/16 v9, 0x22

    move/from16 v30, v7

    move-object/from16 v7, v31

    invoke-direct/range {v0 .. v7}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writePixels(III[IIILorg/apache/poi/java/awt/image/IndexColorModel;)V

    :goto_2c
    const/high16 v0, 0x42c80000    # 100.0f

    move/from16 v1, v45

    int-to-float v2, v1

    iget v3, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->h:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    invoke-virtual {v8, v2}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageProgress(F)V

    add-int/lit8 v4, v1, 0x1

    move/from16 v9, p1

    move/from16 v33, v11

    move/from16 v5, v25

    move/from16 v30, v27

    move/from16 v11, v29

    move-object/from16 v6, v32

    move/from16 v32, v18

    move-object/from16 v18, v28

    goto/16 :goto_1c

    :cond_46
    :goto_2d
    move/from16 v29, v11

    const/16 v9, 0x22

    iget v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_47

    if-ne v0, v2, :cond_48

    :cond_47
    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->writeByte(I)V

    invoke-direct {v8, v1}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->incCompImageSize(I)V

    iget v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compImageSize:I

    add-int v11, v0, v29

    iget-object v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    iget-object v4, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    move-wide/from16 v5, v37

    invoke-interface {v4, v5, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-direct {v8, v11, v1}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeSize(II)V

    iget-object v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v1, v5, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-direct {v8, v0, v9}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeSize(II)V

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWriteAborted()V

    goto :goto_2e

    :cond_49
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageComplete()V

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->flushBefore(J)V

    :goto_2e
    return-void

    :cond_4a
    :goto_2f
    move/from16 v29, v11

    move-wide/from16 v5, v37

    const/16 v9, 0x22

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->embedded_stream:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v10}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeEmbedded(Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->embedded_stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->embedded_stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    add-int v11, v29, v0

    iget-object v3, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v3, v5, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    const/4 v3, 0x2

    invoke-direct {v8, v11, v3}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeSize(II)V

    iget-object v3, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v3, v5, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-direct {v8, v0, v9}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeSize(II)V

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    iget-object v1, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->embedded_stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->write([B)V

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->embedded_stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processWriteAborted()V

    goto :goto_30

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->processImageComplete()V

    iget-object v0, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;->flushBefore(J)V

    :goto_30
    return-void

    :cond_4c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->compressionType:I

    invoke-static {v2}, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BMPImageWrite0"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BMPImageWriter8"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BMPImageWriter7"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeMaskToPalette(II[B[B[B[B)V
    .locals 1

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p5, p2

    shr-int/lit8 p5, p1, 0x10

    and-int/lit16 p5, p5, 0xff

    int-to-byte p5, p5

    aput-byte p5, p4, p2

    shr-int/lit8 p4, p1, 0x8

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    aput-byte p4, p3, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p6, p2

    return-void
.end method
