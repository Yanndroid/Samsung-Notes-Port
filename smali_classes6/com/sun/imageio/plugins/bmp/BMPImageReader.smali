.class public Lcom/sun/imageio/plugins/bmp/BMPImageReader;
.super Lorg/apache/poi/javax/imageio/ImageReader;
.source "SourceFile"

# interfaces
.implements Lcom/sun/imageio/plugins/bmp/BMPConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;
    }
.end annotation


# static fields
.field private static final VERSION_2_1_BIT:I = 0x0

.field private static final VERSION_2_24_BIT:I = 0x3

.field private static final VERSION_2_4_BIT:I = 0x1

.field private static final VERSION_2_8_BIT:I = 0x2

.field private static final VERSION_3_1_BIT:I = 0x4

.field private static final VERSION_3_24_BIT:I = 0x7

.field private static final VERSION_3_4_BIT:I = 0x5

.field private static final VERSION_3_8_BIT:I = 0x6

.field private static final VERSION_3_NT_16_BIT:I = 0x8

.field private static final VERSION_3_NT_32_BIT:I = 0x9

.field private static final VERSION_3_XP_EMBEDDED:I = 0x10

.field private static final VERSION_4_16_BIT:I = 0xd

.field private static final VERSION_4_1_BIT:I = 0xa

.field private static final VERSION_4_24_BIT:I = 0xe

.field private static final VERSION_4_32_BIT:I = 0xf

.field private static final VERSION_4_4_BIT:I = 0xb

.field private static final VERSION_4_8_BIT:I = 0xc

.field private static final VERSION_4_XP_EMBEDDED:I = 0x11

.field private static final VERSION_5_XP_EMBEDDED:I = 0x12

.field private static isLinkedProfileDisabled:Ljava/lang/Boolean;

.field private static isWindowsPlatform:Ljava/lang/Boolean;


# instance fields
.field private alphaMask:I

.field private bi:Lorg/apache/poi/java/awt/image/BufferedImage;

.field private bitmapFileSize:J

.field private bitmapOffset:J

.field private bitsPerPixel:I

.field private blueMask:I

.field private colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

.field private compression:J

.field private destBands:[I

.field private destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

.field private gotHeader:Z

.field private greenMask:I

.field private height:I

.field private iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

.field private imageSize:J

.field private imageType:I

.field private isBottomUp:Z

.field private metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

.field private noTransform:Z

.field private numBands:I

.field private originalColorModel:Lorg/apache/poi/java/awt/image/ColorModel;

.field private originalSampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

.field private palette:[B

.field private redMask:I

.field private sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

.field private scaleX:I

.field private scaleY:I

.field private seleBand:Z

.field private sourceBands:[I

.field private sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->gotHeader:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    return-void
.end method

.method public static synthetic access$100(Lcom/sun/imageio/plugins/bmp/BMPImageReader;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    return-void
.end method

.method public static synthetic access$200(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processPassComplete(Lorg/apache/poi/java/awt/image/BufferedImage;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Lorg/apache/poi/javax/imageio/ImageReader;->processPassStarted(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    return-void
.end method

.method private checkIndex(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "BMPImageReader0"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decodeRLE4(II[B[B)V
    .locals 20

    move-object/from16 v9, p0

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    new-array v10, v0, [B

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    check-cast v1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v13

    move/from16 v15, p1

    move v14, v0

    move v0, v11

    move v1, v0

    move/from16 v16, v1

    move/from16 v17, v16

    :cond_1
    if-eq v0, v15, :cond_13

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v0, :cond_11

    add-int/lit8 v18, v2, 0x1

    aget-byte v0, p3, v2

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_7

    if-eq v0, v12, :cond_6

    if-eq v0, v3, :cond_5

    add-int/lit8 v0, v18, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    move v2, v11

    :goto_1
    if-ge v2, v0, :cond_3

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_2

    aget-byte v5, p3, v18

    and-int/lit16 v5, v5, 0xf0

    shr-int/2addr v5, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v18, 0x1

    aget-byte v6, p3, v18

    and-int/lit8 v6, v6, 0xf

    move/from16 v18, v5

    move v5, v6

    :goto_2
    int-to-byte v5, v5

    aput-byte v5, v10, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_1

    :cond_3
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v12, :cond_4

    add-int/lit8 v18, v18, 0x1

    :cond_4
    div-int/lit8 v0, v0, 0x2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_10

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v0, v18, 0x1

    aget-byte v2, p3, v18

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    iget v4, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move/from16 v18, v0

    goto/16 :goto_8

    :cond_6
    :goto_3
    move/from16 v16, v12

    goto/16 :goto_8

    :cond_7
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    if-lt v14, v1, :cond_d

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v2, v1

    if-ge v14, v2, :cond_d

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    if-eqz v2, :cond_a

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    add-int/2addr v0, v12

    shr-int/2addr v0, v12

    mul-int/2addr v0, v14

    move v1, v11

    move v2, v1

    :goto_4
    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    shr-int/lit8 v5, v3, 0x1

    if-ge v1, v5, :cond_8

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v10, v2

    shl-int/2addr v2, v4

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v10, v5

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    move v2, v6

    goto :goto_4

    :cond_8
    and-int/lit8 v1, v3, 0x1

    if-ne v1, v12, :cond_9

    aget-byte v1, p4, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v10, v3

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    :cond_9
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v8, v12, [I

    aput v11, v8, v11

    move-object/from16 v0, p0

    move v3, v14

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    goto :goto_6

    :cond_a
    sub-int v2, v14, v1

    iget v5, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    rem-int/2addr v2, v5

    if-nez v2, :cond_d

    sub-int v1, v14, v1

    div-int/2addr v1, v5

    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v5, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    add-int/2addr v5, v1

    mul-int v1, v5, v13

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    shr-int/lit8 v6, v2, 0x1

    add-int/2addr v1, v6

    and-int/2addr v2, v12

    rsub-int/lit8 v2, v2, 0x1

    shl-int/2addr v2, v3

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    :goto_5
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v6, v3, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v3, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v6, v3

    if-ge v0, v6, :cond_c

    aget-byte v3, p4, v1

    aget-byte v6, v10, v0

    shl-int/2addr v6, v2

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    add-int/2addr v2, v4

    if-ne v2, v4, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    and-int/lit8 v2, v2, 0x7

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v0, v3

    goto :goto_5

    :cond_c
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v3, v12, [I

    aput v11, v3, v11

    move-object/from16 v0, p0

    move-object/from16 v19, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    :goto_6
    add-int/lit8 v17, v17, 0x1

    :cond_d
    move/from16 v0, v17

    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v2, v0

    mul-float/2addr v2, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v9, v2}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_e

    const/4 v1, -0x1

    goto :goto_7

    :cond_e
    move v1, v12

    :goto_7
    add-int/2addr v14, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    move/from16 v17, v0

    if-eqz v1, :cond_f

    move v1, v11

    goto/16 :goto_3

    :cond_f
    move v1, v11

    :cond_10
    :goto_8
    move/from16 v0, v18

    goto :goto_a

    :cond_11
    new-array v3, v3, [I

    aget-byte v5, p3, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v4, v5, 0x4

    aput v4, v3, v11

    aget-byte v4, p3, v2

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v12

    move v4, v11

    :goto_9
    if-ge v4, v0, :cond_12

    iget v5, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    if-ge v1, v5, :cond_12

    add-int/lit8 v5, v1, 0x1

    and-int/lit8 v6, v4, 0x1

    aget v6, v3, v6

    int-to-byte v6, v6

    aput-byte v6, v10, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_9

    :cond_12
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_a
    if-eqz v16, :cond_1

    :cond_13
    return-void
.end method

.method private decodeRLE8(II[B[B)V
    .locals 19

    move-object/from16 v9, p0

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    mul-int/2addr v0, v1

    new-array v10, v0, [B

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    sub-int/2addr v1, v12

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    check-cast v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v13

    move/from16 v15, p1

    move v14, v1

    move v0, v11

    move v1, v0

    move/from16 v16, v1

    move/from16 v17, v16

    :cond_1
    if-eq v0, v15, :cond_f

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_d

    add-int/lit8 v18, v2, 0x1

    aget-byte v0, p3, v2

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_5

    if-eq v0, v12, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    add-int/lit8 v0, v18, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    move v2, v11

    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v18, 0x1

    aget-byte v5, p3, v18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v10, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    move/from16 v18, v4

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v12, :cond_c

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v0, v18, 0x1

    aget-byte v2, p3, v18

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    iget v4, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move/from16 v18, v0

    goto/16 :goto_8

    :cond_4
    :goto_2
    move/from16 v16, v12

    goto/16 :goto_8

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    if-lt v14, v1, :cond_9

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v2, v1

    if-ge v14, v2, :cond_9

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    if-eqz v2, :cond_7

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/2addr v0, v14

    move v1, v11

    :goto_3
    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, v10, v1

    aput-byte v3, p4, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_3

    :cond_6
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v8, v12, [I

    aput v11, v8, v11

    move-object/from16 v0, p0

    move v3, v14

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_7
    sub-int v2, v14, v1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_9

    sub-int v1, v14, v1

    div-int/2addr v1, v3

    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    add-int/2addr v3, v1

    mul-int v1, v3, v13

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr v1, v2

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    :goto_5
    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v4, v2

    if-ge v0, v4, :cond_8

    add-int/lit8 v2, v1, 0x1

    aget-byte v4, v10, v0

    aput-byte v4, p4, v1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_5

    :cond_8
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v8, v12, [I

    aput v11, v8, v11

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    goto :goto_4

    :cond_9
    :goto_6
    move/from16 v0, v17

    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v2, v0

    mul-float/2addr v2, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v9, v2}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_a

    const/4 v1, -0x1

    goto :goto_7

    :cond_a
    move v1, v12

    :goto_7
    add-int/2addr v14, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    move/from16 v17, v0

    if-eqz v1, :cond_b

    move v1, v11

    goto/16 :goto_2

    :cond_b
    move v1, v11

    :cond_c
    :goto_8
    move/from16 v0, v18

    goto :goto_a

    :cond_d
    move v3, v11

    :goto_9
    if-ge v3, v0, :cond_e

    add-int/lit8 v4, v1, 0x1

    aget-byte v5, p3, v2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v10, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_a
    if-eqz v16, :cond_1

    :cond_f
    return-void
.end method

.method private static isLinkedProfileAllowed()Z
    .locals 1

    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isLinkedProfileDisabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$4;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$4;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isLinkedProfileDisabled:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isLinkedProfileDisabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isUncOrDevicePath([B)Z
    .locals 6

    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isWindowsPlatform:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$5;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$5;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isWindowsPlatform:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isWindowsPlatform:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    aget-byte v0, p0, v1

    const/16 v2, 0x2f

    const/16 v3, 0x5c

    if-ne v0, v2, :cond_2

    aput-byte v3, p0, v1

    :cond_2
    const/4 v0, 0x1

    aget-byte v4, p0, v0

    if-ne v4, v2, :cond_3

    aput-byte v3, p0, v0

    :cond_3
    const/4 v4, 0x3

    aget-byte v5, p0, v4

    if-ne v5, v2, :cond_4

    aput-byte v3, p0, v4

    :cond_4
    aget-byte v2, p0, v1

    if-ne v2, v3, :cond_a

    aget-byte v2, p0, v0

    if-ne v2, v3, :cond_a

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v5, 0x3f

    if-ne v2, v5, :cond_9

    aget-byte v2, p0, v4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x4

    aget-byte v3, p0, v2

    const/16 v4, 0x55

    if-eq v3, v4, :cond_5

    aget-byte v2, p0, v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_8

    :cond_5
    const/4 v2, 0x5

    aget-byte v3, p0, v2

    const/16 v4, 0x4e

    if-eq v3, v4, :cond_6

    aget-byte v2, p0, v2

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_8

    :cond_6
    const/4 v2, 0x6

    aget-byte v3, p0, v2

    const/16 v4, 0x43

    if-eq v3, v4, :cond_7

    aget-byte p0, p0, v2

    const/16 v2, 0x63

    if-ne p0, v2, :cond_8

    :cond_7
    move v1, v0

    :cond_8
    return v1

    :cond_9
    return v0

    :cond_a
    return v1
.end method

.method private read16Bit([S)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/lit8 v1, v0, 0x2

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x4

    :cond_0
    move v11, v1

    div-int/lit8 v1, v11, 0x2

    add-int v12, v0, v1

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_4

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v1, v15

    mul-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v14

    :goto_0
    move v12, v14

    :goto_1
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v12, v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    invoke-interface {v0, v10, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([SII)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_3

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    neg-int v0, v0

    goto :goto_2

    :cond_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    :goto_2
    add-int v16, v1, v0

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v8, v15, [I

    aput v14, v8, v14

    move-object/from16 v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v12

    mul-float/2addr v0, v13

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    goto :goto_1

    :cond_4
    new-array v11, v12, [S

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    check-cast v0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v8

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v1, v15

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v0

    mul-int/2addr v2, v12

    shl-int/lit8 v0, v2, 0x1

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v12

    shl-int/2addr v1, v15

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    sub-int/2addr v0, v15

    mul-int/2addr v0, v12

    shl-int/lit8 v7, v0, 0x1

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v8

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v2, :cond_6

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v2, v15

    mul-int/2addr v2, v8

    add-int/2addr v1, v2

    :cond_6
    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    move v6, v14

    :goto_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-ge v6, v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11, v14, v12}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([SII)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    move v2, v14

    :goto_5
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-ge v2, v3, :cond_8

    add-int v3, v1, v2

    aget-short v4, v11, v0

    aput-short v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v0, v3

    goto :goto_5

    :cond_8
    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_9

    neg-int v0, v8

    goto :goto_6

    :cond_9
    move v0, v8

    :goto_6
    add-int v16, v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v7}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    new-array v3, v15, [I

    aput v14, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v19, v3

    move v3, v6

    move v14, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v14

    mul-float/2addr v0, v13

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v6, v14, 0x1

    move/from16 v1, v16

    move/from16 v7, v17

    move/from16 v8, v18

    const/4 v14, 0x0

    goto :goto_4

    :cond_a
    :goto_7
    return-void
.end method

.method private read1Bit([B)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v11, v0, 0x8

    rem-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_0

    rsub-int/lit8 v0, v0, 0x4

    :cond_0
    move v12, v0

    add-int v13, v11, v12

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v0, v8

    mul-int/2addr v0, v11

    goto :goto_0

    :cond_1
    move v0, v15

    :goto_0
    move v13, v15

    :goto_1
    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v13, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v10, v0, v11}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v12}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_3

    neg-int v1, v11

    goto :goto_2

    :cond_3
    move v1, v11

    :goto_2
    add-int v16, v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v3, v8, [I

    aput v15, v3, v15

    move-object/from16 v0, p0

    move-object/from16 v17, v3

    move v3, v13

    move v15, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v13

    mul-float/2addr v0, v14

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v13, v13, 0x1

    move v8, v15

    move/from16 v0, v16

    const/4 v15, 0x0

    goto :goto_1

    :cond_4
    move v15, v8

    new-array v11, v13, [B

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    check-cast v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v12

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v1, v15

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v0

    mul-int/2addr v2, v13

    invoke-interface {v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v13

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    sub-int/2addr v0, v15

    mul-int v8, v13, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    new-array v7, v1, [I

    new-array v6, v1, [I

    new-array v5, v1, [I

    new-array v4, v1, [I

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    const/4 v2, 0x0

    :goto_4
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v14, v3, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v15, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v14, v15

    if-ge v0, v14, :cond_6

    shr-int/lit8 v3, v1, 0x3

    aput v3, v5, v2

    and-int/lit8 v3, v1, 0x7

    rsub-int/lit8 v3, v3, 0x7

    aput v3, v7, v2

    shr-int/lit8 v3, v0, 0x3

    aput v3, v4, v2

    and-int/lit8 v3, v0, 0x7

    rsub-int/lit8 v3, v3, 0x7

    aput v3, v6, v2

    add-int/lit8 v0, v0, 0x1

    const/4 v14, 0x1

    add-int/2addr v2, v14

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v1, v3

    move v15, v14

    const/high16 v14, 0x42c80000    # 100.0f

    goto :goto_4

    :cond_6
    const/4 v14, 0x1

    iget v0, v3, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v0, v12

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_7

    iget v1, v3, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v1, v14

    mul-int/2addr v1, v12

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    const/4 v14, 0x0

    :goto_5
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-ge v14, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v2, 0x0

    invoke-interface {v1, v11, v2, v13}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    const/4 v2, 0x0

    :goto_6
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-ge v2, v1, :cond_9

    aget v1, v5, v2

    aget-byte v1, v11, v1

    aget v3, v7, v2

    shr-int/2addr v1, v3

    const/4 v3, 0x1

    and-int/2addr v1, v3

    aget v3, v4, v2

    add-int/2addr v3, v0

    aget-byte v15, v10, v3

    aget v19, v6, v2

    shl-int v1, v1, v19

    or-int/2addr v1, v15

    int-to-byte v1, v1

    aput-byte v1, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_a

    neg-int v1, v12

    goto :goto_7

    :cond_a
    move v1, v12

    :goto_7
    add-int v15, v0, v1

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v17, v7

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/16 v18, 0x0

    aput v18, v7, v18

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v23, v3

    move v3, v14

    move-object/from16 v24, v4

    move/from16 v4, v23

    move-object/from16 v23, v5

    move/from16 v5, v19

    move-object/from16 v19, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v21

    move/from16 v21, v8

    move-object/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v14

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v14, v14, 0x1

    move v0, v15

    move-object/from16 v7, v17

    move-object/from16 v6, v19

    move/from16 v8, v21

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    goto/16 :goto_5

    :cond_b
    :goto_8
    return-void
.end method

.method private read24Bit([B)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/lit8 v1, v0, 0x3

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x4

    :cond_0
    move v11, v1

    mul-int/lit8 v12, v0, 0x3

    add-int v13, v12, v11

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v1, v8

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v15

    :goto_0
    move v13, v15

    :goto_1
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v13, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v10, v1, v12}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_3

    neg-int v0, v12

    goto :goto_2

    :cond_3
    move v0, v12

    :goto_2
    add-int v16, v1, v0

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v3, v8, [I

    aput v15, v3, v15

    move-object/from16 v0, p0

    move-object/from16 v17, v3

    move v3, v13

    move v15, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v13

    mul-float/2addr v0, v14

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v13, v13, 0x1

    move v8, v15

    move/from16 v1, v16

    const/4 v15, 0x0

    goto :goto_1

    :cond_4
    move v15, v8

    new-array v11, v13, [B

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    check-cast v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v12

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v1, v15

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v0

    mul-int/2addr v2, v13

    invoke-interface {v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v13

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    sub-int/2addr v0, v15

    mul-int v8, v13, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v12

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v2, :cond_6

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v2, v15

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    :cond_6
    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    const/4 v7, 0x0

    :goto_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-ge v7, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_8

    :cond_7
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v13}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    mul-int/lit8 v0, v0, 0x3

    const/4 v2, 0x0

    :goto_5
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-ge v2, v3, :cond_9

    mul-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    :goto_6
    iget-object v5, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destBands:[I

    array-length v6, v5

    if-ge v4, v6, :cond_8

    aget v5, v5, v4

    add-int/2addr v5, v3

    iget-object v6, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    aget v6, v6, v4

    add-int/2addr v6, v0

    aget-byte v6, v11, v6

    aput-byte v6, v10, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    goto :goto_5

    :cond_9
    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_a

    neg-int v0, v12

    goto :goto_7

    :cond_a
    move v0, v12

    :goto_7
    add-int v16, v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v17, 0x1

    new-array v3, v15, [I

    const/16 v18, 0x0

    aput v18, v3, v18

    move-object/from16 v0, p0

    move-object/from16 v19, v3

    move v3, v7

    move v15, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v15

    mul-float/2addr v0, v14

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v7, v15, 0x1

    move/from16 v1, v16

    move/from16 v8, v17

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_b
    :goto_8
    return-void
.end method

.method private read32Bit([I)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v0, v13

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v14, v12

    :goto_1
    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v14, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    invoke-interface {v1, v10, v0, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([III)V

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_2

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    neg-int v1, v1

    goto :goto_2

    :cond_2
    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    :goto_2
    add-int v15, v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v8, v13, [I

    aput v12, v8, v12

    move-object/from16 v0, p0

    move v3, v14

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v14

    mul-float/2addr v0, v11

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v14, v14, 0x1

    move v0, v15

    goto :goto_1

    :cond_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    new-array v14, v0, [I

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    check-cast v0, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v15

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v1, v13

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v3, v13

    sub-int/2addr v3, v0

    mul-int/2addr v2, v3

    shl-int/lit8 v0, v2, 0x2

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    sub-int/2addr v1, v13

    mul-int/2addr v0, v1

    shl-int/lit8 v8, v0, 0x2

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v15

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v2, :cond_5

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v2, v13

    mul-int/2addr v2, v15

    add-int/2addr v1, v2

    :cond_5
    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    move v7, v12

    :goto_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-ge v7, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    invoke-interface {v0, v14, v12, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([III)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    move v2, v12

    :goto_5
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-ge v2, v3, :cond_7

    add-int v3, v1, v2

    aget v4, v14, v0

    aput v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v0, v3

    goto :goto_5

    :cond_7
    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_8

    neg-int v0, v15

    goto :goto_6

    :cond_8
    move v0, v15

    :goto_6
    add-int v16, v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v17, 0x1

    new-array v3, v13, [I

    aput v12, v3, v12

    move-object/from16 v0, p0

    move-object/from16 v18, v3

    move v3, v7

    move v12, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v12

    mul-float/2addr v0, v11

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v7, v12, 0x1

    move/from16 v1, v16

    move/from16 v8, v17

    const/4 v12, 0x0

    goto :goto_4

    :cond_9
    :goto_7
    return-void
.end method

.method private read4Bit([B)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    const/4 v11, 0x1

    add-int/2addr v0, v11

    div-int/lit8 v12, v0, 0x2

    rem-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_0

    rsub-int/lit8 v0, v0, 0x4

    :cond_0
    move v13, v0

    add-int v14, v12, v13

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v15, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v0, v11

    mul-int/2addr v0, v12

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    move v14, v8

    :goto_1
    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v14, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v10, v0, v12}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v13}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_3

    neg-int v1, v12

    goto :goto_2

    :cond_3
    move v1, v12

    :goto_2
    add-int v16, v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v3, v11, [I

    aput v8, v3, v8

    move-object/from16 v0, p0

    move-object/from16 v17, v3

    move v3, v14

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v14

    mul-float/2addr v0, v15

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    new-array v12, v14, [B

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    check-cast v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v13

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v1, v11

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v2, v11

    sub-int/2addr v2, v0

    mul-int/2addr v2, v14

    invoke-interface {v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v14

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    sub-int/2addr v0, v11

    mul-int v8, v14, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    new-array v7, v1, [I

    new-array v6, v1, [I

    new-array v5, v1, [I

    new-array v4, v1, [I

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    const/4 v2, 0x0

    :goto_4
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v15, v3, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v11, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v15, v11

    if-ge v0, v15, :cond_6

    shr-int/lit8 v3, v1, 0x1

    aput v3, v5, v2

    and-int/lit8 v3, v1, 0x1

    const/4 v11, 0x1

    rsub-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x2

    aput v3, v7, v2

    shr-int/lit8 v3, v0, 0x1

    aput v3, v4, v2

    and-int/lit8 v3, v0, 0x1

    rsub-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x2

    aput v3, v6, v2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v11

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v1, v3

    const/high16 v15, 0x42c80000    # 100.0f

    goto :goto_4

    :cond_6
    const/4 v11, 0x1

    iget v0, v3, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v0, v13

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_7

    iget v1, v3, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v1, v11

    mul-int/2addr v1, v13

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    const/4 v11, 0x0

    :goto_5
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-ge v11, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_8

    :cond_8
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v15, 0x0

    invoke-interface {v1, v12, v15, v14}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    move v1, v15

    :goto_6
    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-ge v1, v2, :cond_9

    aget v2, v5, v1

    aget-byte v2, v12, v2

    aget v3, v7, v1

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    aget v3, v4, v1

    add-int/2addr v3, v0

    aget-byte v18, v10, v3

    aget v19, v6, v1

    shl-int v2, v2, v19

    or-int v2, v18, v2

    int-to-byte v2, v2

    aput-byte v2, v10, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_a

    neg-int v1, v13

    goto :goto_7

    :cond_a
    move v1, v13

    :goto_7
    add-int v18, v0, v1

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v17, v7

    const/4 v0, 0x1

    new-array v7, v0, [I

    aput v15, v7, v15

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v23, v3

    move v3, v11

    move-object/from16 v24, v4

    move/from16 v4, v23

    move-object/from16 v23, v5

    move/from16 v5, v19

    move-object/from16 v19, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v21

    move/from16 v21, v8

    move-object/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v11

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v17

    move/from16 v0, v18

    move-object/from16 v6, v19

    move/from16 v8, v21

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    goto/16 :goto_5

    :cond_b
    :goto_8
    return-void
.end method

.method private read8Bit([B)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x4

    :cond_0
    move v11, v1

    add-int v12, v0, v11

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_4

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v1, v15

    mul-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v14

    :goto_0
    move v12, v14

    :goto_1
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v12, v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    invoke-interface {v0, v10, v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_3

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    neg-int v0, v0

    goto :goto_2

    :cond_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    :goto_2
    add-int v16, v1, v0

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v8, v15, [I

    aput v14, v8, v14

    move-object/from16 v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v12

    mul-float/2addr v0, v13

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    goto :goto_1

    :cond_4
    new-array v11, v12, [B

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    check-cast v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v8

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v1, v15

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v0

    mul-int/2addr v2, v12

    invoke-interface {v1, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v12

    invoke-interface {v0, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    sub-int/2addr v0, v15

    mul-int v7, v12, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    mul-int/2addr v1, v8

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v2, :cond_6

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v2, v15

    mul-int/2addr v2, v8

    add-int/2addr v1, v2

    :cond_6
    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    move v6, v14

    :goto_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-ge v6, v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11, v14, v12}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    move v2, v14

    :goto_5
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-ge v2, v3, :cond_8

    add-int v3, v1, v2

    aget-byte v4, v11, v0

    aput-byte v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v0, v3

    goto :goto_5

    :cond_8
    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_9

    neg-int v0, v8

    goto :goto_6

    :cond_9
    move v0, v8

    :goto_6
    add-int v16, v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v7}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    new-array v3, v15, [I

    aput v14, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v19, v3

    move v3, v6

    move v14, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageUpdate(Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v14

    mul-float/2addr v0, v13

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageProgress(F)V

    add-int/lit8 v6, v14, 0x1

    move/from16 v1, v16

    move/from16 v7, v17

    move/from16 v8, v18

    const/4 v14, 0x0

    goto :goto_4

    :cond_a
    :goto_7
    return-void
.end method

.method private readEmbedded(ILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "PNG"

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected compression type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "JPEG"

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/javax/imageio/ImageIO;->getImageReadersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/ImageReader;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageSize:J

    long-to-int p1, v1

    new-array p1, p1, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1, p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([B)I

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lorg/apache/poi/javax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    iget-object v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v2, v1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v3, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v2, v3

    iget v3, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v2, v3}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p2

    :cond_2
    new-instance v1, Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;

    invoke-direct {v1, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->addIIOReadProgressListener(Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;)V

    new-instance v1, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;

    invoke-direct {v1, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->addIIOReadUpdateListener(Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;)V

    new-instance v1, Lcom/sun/imageio/plugins/bmp/BMPImageReader$3;

    invoke-direct {v1, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$3;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->addIIOReadWarningListener(Lorg/apache/poi/javax/imageio/event/IIOReadWarningListener;)V

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageReader;->getDefaultReadParam()Lorg/apache/poi/javax/imageio/ImageReadParam;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/poi/javax/imageio/ImageReadParam;->setDestination(Lorg/apache/poi/java/awt/image/BufferedImage;)V

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/ImageReadParam;->setDestinationBands([I)V

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getDestinationOffset()Lorg/apache/poi/java/awt/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/IIOParam;->setDestinationOffset(Lorg/apache/poi/java/awt/Point;)V

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/IIOParam;->setSourceBands([I)V

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceRegion()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/IIOParam;->setSourceRegion(Lorg/apache/poi/java/awt/Rectangle;)V

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v2

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v3

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v4

    invoke-virtual {p3}, Lorg/apache/poi/javax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result p3

    invoke-virtual {v1, v2, v3, v4, p3}, Lorg/apache/poi/javax/imageio/IIOParam;->setSourceSubsampling(IIII)V

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    return-object p2

    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BMPImageReader4"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private readRLE4([B)V
    .locals 5

    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageSize:J

    long-to-int v0, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapFileSize:J

    iget-wide v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    new-array v3, v0, [B

    iget-object v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v4, v3, v2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->decodeRLE4(II[B[B)V

    return-void
.end method

.method private readRLE8([B)V
    .locals 5

    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageSize:J

    long-to-int v0, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapFileSize:J

    iget-wide v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    new-array v3, v0, [B

    iget-object v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v4, v3, v2, v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->decodeRLE8(II[B[B)V

    return-void
.end method

.method private resetHeaderInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->gotHeader:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalSampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalColorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    return-void
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
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "BMPImageReader6"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getImageMetadata(I)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "BMPImageReader6"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    return-object p1
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 3

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    iget-object v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalColorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalSampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/SampleModel;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "BMPImageReader6"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getNumImages(Z)I
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

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
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "BMPImageReader6"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isRandomAccessEasy(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget p1, p1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->compression:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "BMPImageReader6"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 7

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->clearAbortRequest()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageStarted(I)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->getDefaultReadParam()Lorg/apache/poi/javax/imageio/ImageReadParam;

    move-result-object p2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/apache/poi/java/awt/Rectangle;

    const/4 v6, 0x0

    invoke-direct {p1, v6, v6, v6, v6}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    new-instance p1, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {p1, v6, v6, v6, v6}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getDestination()Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget-object v5, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/ImageReader;->computeRegions(Lorg/apache/poi/javax/imageio/ImageReadParam;IILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Rectangle;)V

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/IIOParam;->getSourceBands()[I

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destBands:[I

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v6

    :goto_0
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    iget v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v3, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    invoke-direct {v0, v6, v6, v2, v3}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v6

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destBands:[I

    move p1, v6

    :goto_3
    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destBands:[I

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    aput p1, v2, p1

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lorg/apache/poi/javax/imageio/ImageReadParam;->getDestination()Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    iget v3, v2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v4, v2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v3, v4

    iget v4, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Lorg/apache/poi/java/awt/image/SampleModel;->createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/image/SampleModel;->createSubsetSampleModel([I)Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    :cond_5
    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    new-instance v2, Lorg/apache/poi/java/awt/Point;

    invoke-direct {v2}, Lorg/apache/poi/java/awt/Point;-><init>()V

    invoke-static {p1, v2}, Lorg/apache/poi/java/awt/image/Raster;->createWritableRaster(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    new-instance v2, Lorg/apache/poi/java/awt/image/BufferedImage;

    iget-object v3, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-direct {v2, v3, p1, v6, v0}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iput-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    goto :goto_4

    :cond_6
    move-object p1, v0

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v6, v6}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWritableTile(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    iget-object v3, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Lorg/apache/poi/java/awt/Rectangle;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/java/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    :goto_4
    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/image/DataBufferByte;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DataBufferByte;->getData()[B

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v2

    if-ne v2, v1, :cond_9

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/image/DataBufferUShort;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DataBufferUShort;->getData()[S

    move-result-object p1

    move-object v2, v0

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/SampleModel;->getDataType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/image/DataBufferInt;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DataBufferInt;->getData()[I

    move-result-object p1

    move-object v2, p1

    move-object p1, v0

    goto :goto_5

    :cond_a
    move-object p1, v0

    move-object v2, p1

    :goto_5
    iget v3, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    const/4 v4, 0x2

    const-string v5, "BMPImageReader1"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, v0

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readEmbedded(ILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    goto/16 :goto_8

    :pswitch_1
    iget-wide p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, p1

    if-eqz p1, :cond_c

    if-ne p1, v4, :cond_b

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readRLE4([B)V

    goto :goto_6

    :cond_b
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    invoke-static {v5}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read4Bit([B)V

    :goto_6
    :pswitch_2
    iget-wide p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, p1

    if-eqz p1, :cond_10

    if-ne p1, v1, :cond_d

    :goto_7
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readRLE8([B)V

    goto :goto_8

    :cond_d
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    invoke-static {v5}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read32Bit([I)V

    goto :goto_8

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read16Bit([S)V

    goto :goto_8

    :pswitch_5
    iget-wide p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, p1

    if-eqz p1, :cond_10

    if-ne p1, v1, :cond_e

    goto :goto_7

    :cond_e
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    invoke-static {v5}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    iget-wide p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, p1

    if-eqz p1, :cond_11

    if-ne p1, v4, :cond_f

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readRLE4([B)V

    goto :goto_8

    :cond_f
    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    invoke-static {v5}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_7
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read24Bit([B)V

    goto :goto_8

    :cond_10
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read8Bit([B)V

    goto :goto_8

    :cond_11
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read4Bit([B)V

    goto :goto_8

    :pswitch_a
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read1Bit([B)V

    :goto_8
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->abortRequested()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processReadAborted()V

    goto :goto_9

    :cond_12
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->processImageComplete()V

    :goto_9
    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Lorg/apache/poi/java/awt/image/BufferedImage;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "BMPImageReader6"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BMPImageReader5"

    invoke-static {p2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public readHeader()V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->gotHeader:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v1, :cond_3d

    new-instance v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;-><init>()V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    const/4 v1, 0x2

    new-array v2, v1, [B

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([B)I

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    const/16 v5, 0x42

    if-ne v4, v5, :cond_3c

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    const/16 v5, 0x4d

    if-ne v2, v5, :cond_3c

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapFileSize:J

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v5, 0x4

    invoke-interface {v2, v5}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v6

    const-wide/16 v8, 0xc

    cmp-long v2, v6, v8

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-nez v2, :cond_1

    invoke-interface {v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readShort()S

    move-result v8

    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readShort()S

    move-result v8

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v8

    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v8

    :goto_0
    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iput v9, v8, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->width:I

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iput v9, v8, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->height:I

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    int-to-short v10, v8

    iput-short v10, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bitsPerPixel:S

    const/4 v10, 0x3

    iput v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    const/16 v11, 0x18

    const-wide/16 v15, 0xe

    const/16 v13, 0x8

    if-nez v2, :cond_6

    const-string v2, "BMP v. 2.x"

    iput-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    if-ne v8, v4, :cond_2

    iput v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_1

    :cond_2
    if-ne v8, v5, :cond_3

    iput v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_1

    :cond_3
    if-ne v8, v13, :cond_4

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_1

    :cond_4
    if-ne v8, v11, :cond_5

    iput v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    :cond_5
    :goto_1
    iget-wide v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    sub-long/2addr v8, v15

    sub-long/2addr v8, v6

    const-wide/16 v15, 0x3

    div-long/2addr v8, v15

    long-to-int v2, v8

    mul-int/lit8 v8, v2, 0x3

    new-array v9, v8, [B

    iput-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v11, v9, v3, v8}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iput-object v9, v8, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput v2, v8, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    goto/16 :goto_6

    :cond_6
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageSize:J

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v2

    int-to-long v8, v2

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v2

    int-to-long v14, v2

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v11

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v1

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-wide v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int v13, v4

    iput v13, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->compression:I

    long-to-int v8, v8

    iput v8, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->xPixelsPerMeter:I

    long-to-int v8, v14

    iput v8, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->yPixelsPerMeter:I

    long-to-int v8, v11

    iput v8, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorsUsed:I

    long-to-int v1, v1

    iput v1, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorsImportant:I

    const-wide/16 v1, 0x28

    cmp-long v1, v6, v1

    const/16 v13, 0x7c00

    const-wide/16 v14, 0x0

    const/4 v2, 0x5

    if-nez v1, :cond_15

    long-to-int v1, v4

    const/16 v4, 0x9

    const-string v5, "BMP v. 3.x"

    if-eqz v1, :cond_d

    const/4 v9, 0x1

    if-eq v1, v9, :cond_d

    const/4 v9, 0x2

    if-eq v1, v9, :cond_d

    if-eq v1, v10, :cond_9

    const/4 v9, 0x4

    if-eq v1, v9, :cond_8

    if-ne v1, v2, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "BMPImageReader2"

    invoke-static {v2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_2
    iput-object v5, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    const/16 v1, 0x10

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto/16 :goto_6

    :cond_9
    const/16 v1, 0x10

    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    if-ne v2, v1, :cond_a

    const/16 v1, 0x8

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_3

    :cond_a
    const/16 v1, 0x20

    if-ne v2, v1, :cond_b

    iput v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    :cond_b
    :goto_3
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iput v3, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iput v3, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    cmp-long v1, v11, v14

    if-eqz v1, :cond_c

    mul-int/lit8 v1, v8, 0x4

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iput-object v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput v8, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    :cond_c
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    const-string v2, "BMP v. 3.x NT"

    iput-object v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    goto/16 :goto_6

    :cond_d
    iget-wide v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    const-wide/16 v11, 0xe

    add-long v14, v6, v11

    cmp-long v1, v8, v14

    if-ltz v1, :cond_14

    sub-long/2addr v8, v11

    sub-long/2addr v8, v6

    const-wide/16 v11, 0x4

    div-long/2addr v8, v11

    long-to-int v1, v8

    mul-int/lit8 v3, v1, 0x4

    new-array v8, v3, [B

    iput-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v11, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iput-object v8, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput v1, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_e

    const/4 v8, 0x4

    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_5

    :cond_e
    const/4 v8, 0x4

    if-ne v1, v8, :cond_f

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_5

    :cond_f
    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    const/4 v1, 0x6

    :goto_4
    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_5

    :cond_10
    const/16 v8, 0x18

    if-ne v1, v8, :cond_11

    const/4 v1, 0x7

    goto :goto_4

    :cond_11
    const/16 v8, 0x10

    if-ne v1, v8, :cond_12

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    iput v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const/16 v1, 0x3e0

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/16 v2, 0x1f

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iput v13, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    iput v1, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    iput v2, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    goto :goto_5

    :cond_12
    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    iput v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    const/high16 v1, 0xff0000

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const v2, 0xff00

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/16 v4, 0xff

    iput v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iput v1, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    iput v2, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    iput v4, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    :cond_13
    :goto_5
    iput-object v5, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    :goto_6
    move-wide/from16 v28, v6

    const/4 v1, 0x0

    const/4 v6, 0x0

    goto/16 :goto_10

    :cond_14
    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "BMPImageReader7"

    invoke-static {v2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    const-wide/16 v4, 0x6c

    cmp-long v1, v6, v4

    const-wide/16 v4, 0x7c

    if-eqz v1, :cond_17

    cmp-long v8, v6, v4

    if-nez v8, :cond_16

    goto :goto_7

    :cond_16
    new-instance v1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v2, "BMPImageReader3"

    invoke-static {v2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    :goto_7
    if-nez v1, :cond_18

    const-string v8, "BMP v. 4.x"

    :goto_8
    iput-object v8, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    goto :goto_9

    :cond_18
    cmp-long v8, v6, v4

    if-nez v8, :cond_19

    const-string v8, "BMP v. 5.x"

    goto :goto_8

    :cond_19
    :goto_9
    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v8

    long-to-int v3, v8

    iput v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v8

    long-to-int v3, v8

    iput v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v8

    long-to-int v3, v8

    iput v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v8

    long-to-int v3, v8

    iput v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v8

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v3

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v11}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v11

    iget-object v12, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v12}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v12

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v10}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v10

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v13}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v13

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v2

    iget-object v14, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v14}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v14

    iget-object v15, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v15}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v15

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v4

    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move/from16 v22, v4

    invoke-interface {v5}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v4

    move/from16 v23, v1

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move-wide/from16 v24, v4

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v4

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move-wide/from16 v26, v4

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v20, 0x7c

    cmp-long v1, v6, v20

    move/from16 v20, v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    move-wide/from16 v28, v6

    iget-object v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v6

    iput v6, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->intent:I

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iget-object v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v6

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move/from16 v21, v1

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_a

    :cond_1a
    move-wide/from16 v28, v6

    const/4 v6, 0x0

    const/16 v21, 0x0

    :goto_a
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    long-to-int v7, v8

    iput v7, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorSpace:I

    const-wide/16 v18, 0x0

    cmp-long v7, v8, v18

    if-nez v7, :cond_1b

    int-to-double v7, v3

    iput-wide v7, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redX:D

    int-to-double v7, v11

    iput-wide v7, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redY:D

    int-to-double v7, v12

    iput-wide v7, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redZ:D

    int-to-double v7, v10

    iput-wide v7, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenX:D

    int-to-double v7, v13

    iput-wide v7, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenY:D

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenZ:D

    int-to-double v2, v14

    iput-wide v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueX:D

    int-to-double v2, v15

    iput-wide v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueY:D

    move/from16 v2, v22

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueZ:D

    move-wide/from16 v2, v24

    long-to-int v2, v2

    iput v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->gammaRed:I

    move-wide/from16 v2, v26

    long-to-int v2, v2

    iput v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->gammaGreen:I

    long-to-int v2, v4

    iput v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->gammaBlue:I

    :cond_1b
    iget-wide v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    const-wide/16 v3, 0xe

    sub-long/2addr v1, v3

    sub-long v1, v1, v28

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit8 v2, v1, 0x4

    new-array v3, v2, [B

    iput-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5, v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iput-object v3, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    iget-wide v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int v1, v3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_22

    const/4 v7, 0x5

    if-eq v1, v7, :cond_22

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1c

    const/16 v1, 0xa

    :goto_b
    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_d

    :cond_1c
    if-ne v1, v5, :cond_1d

    const/16 v1, 0xb

    goto :goto_b

    :cond_1d
    const/16 v5, 0x8

    if-ne v1, v5, :cond_1e

    const/16 v1, 0xc

    goto :goto_b

    :cond_1e
    const/16 v5, 0x10

    if-ne v1, v5, :cond_1f

    const/16 v1, 0xd

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    long-to-int v1, v3

    if-nez v1, :cond_21

    const/16 v1, 0x7c00

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const/16 v1, 0x3e0

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/16 v1, 0x1f

    :goto_c
    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    goto :goto_d

    :cond_1f
    const/16 v5, 0x18

    if-ne v1, v5, :cond_20

    const/16 v1, 0xe

    goto :goto_b

    :cond_20
    const/16 v5, 0x20

    if-ne v1, v5, :cond_21

    const/16 v1, 0xf

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    long-to-int v1, v3

    if-nez v1, :cond_21

    const/high16 v1, 0xff0000

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const v1, 0xff00

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/16 v1, 0xff

    goto :goto_c

    :cond_21
    :goto_d
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->alphaMask:I

    goto :goto_f

    :cond_22
    if-nez v23, :cond_23

    const/16 v1, 0x11

    :goto_e
    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_f

    :cond_23
    if-nez v20, :cond_24

    const/16 v1, 0x12

    goto :goto_e

    :cond_24
    :goto_f
    move/from16 v1, v21

    :goto_10
    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-lez v2, :cond_25

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    goto :goto_11

    :cond_25
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    :goto_11
    const/16 v2, 0x3e8

    invoke-static {v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget v4, v4, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorSpace:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_27

    const/4 v5, 0x4

    if-ne v4, v5, :cond_26

    goto :goto_13

    :cond_26
    :goto_12
    move-object v5, v3

    goto :goto_14

    :cond_27
    :goto_13
    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    int-to-long v4, v1

    sub-long v4, v4, v28

    invoke-interface {v3, v4, v5}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(J)J

    new-array v1, v6, [B

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, v6}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    :try_start_0
    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget v3, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorSpace:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_28

    invoke-static {}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isLinkedProfileAllowed()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {v1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isUncOrDevicePath([B)Z

    move-result v3

    if-nez v3, :cond_28

    new-instance v3, Ljava/lang/String;

    const-string v4, "windows-1252"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance(Ljava/lang/String;)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    move-object v3, v1

    goto :goto_12

    :cond_28
    new-instance v3, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-static {v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance([B)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :catch_0
    invoke-static {v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    goto :goto_12

    :goto_14
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    iget-wide v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    const-wide/16 v6, 0x4

    cmp-long v6, v3, v6

    if-eqz v6, :cond_3b

    const-wide/16 v6, 0x5

    cmp-long v3, v3, v6

    if-nez v3, :cond_29

    goto/16 :goto_22

    :cond_29
    const/4 v3, 0x1

    if-eq v1, v3, :cond_31

    const/4 v3, 0x4

    if-eq v1, v3, :cond_30

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2a

    goto/16 :goto_19

    :cond_2a
    const/16 v3, 0x10

    if-ne v1, v3, :cond_2b

    const/4 v2, 0x3

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    new-instance v1, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    new-array v2, v2, [I

    iget v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const/4 v7, 0x0

    aput v6, v2, v7

    iget v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/4 v7, 0x1

    aput v6, v2, v7

    iget v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    const/4 v8, 0x2

    aput v6, v2, v8

    invoke-direct {v1, v7, v3, v4, v2}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;-><init>(III[I)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    new-instance v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v6, 0x10

    iget v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZI)V

    :goto_15
    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    goto/16 :goto_23

    :cond_2b
    const/16 v2, 0x20

    if-ne v1, v2, :cond_2e

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    if-nez v1, :cond_2c

    const/4 v2, 0x3

    goto :goto_16

    :cond_2c
    const/4 v2, 0x4

    :goto_16
    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    new-array v1, v3, [I

    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    const/4 v6, 0x2

    aput v2, v1, v6

    const/4 v3, 0x3

    goto :goto_17

    :cond_2d
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    new-array v2, v2, [I

    iget v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    aput v7, v2, v3

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    aput v3, v2, v4

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    aput v3, v2, v6

    const/4 v3, 0x3

    aput v1, v2, v3

    move-object v1, v2

    :goto_17
    new-instance v2, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    iget v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    invoke-direct {v2, v3, v4, v6, v1}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;-><init>(III[I)V

    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    new-instance v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v6, 0x20

    iget v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iget v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZI)V

    goto :goto_15

    :cond_2e
    const/4 v1, 0x3

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    new-array v12, v1, [I

    const/4 v3, 0x0

    :goto_18
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    if-ge v3, v1, :cond_2f

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v3

    aput v1, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2f
    new-instance v1, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    const/4 v7, 0x0

    iget v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iget v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    mul-int v11, v10, v8

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-static {v5, v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->createColorModel(Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/image/SampleModel;)Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    goto/16 :goto_15

    :cond_30
    :goto_19
    const/4 v3, 0x1

    :cond_31
    iput v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    new-array v11, v3, [I

    const/4 v4, 0x0

    :goto_1a
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    if-ge v4, v1, :cond_32

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v4

    aput v1, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_32
    new-instance v1, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;

    const/4 v6, 0x0

    iget v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    mul-int v10, v9, v7

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lorg/apache/poi/java/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    const/4 v6, 0x0

    goto :goto_1b

    :cond_33
    new-instance v1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iget v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3, v4, v5}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    :goto_1b
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    const-wide/16 v3, 0x100

    if-eqz v1, :cond_37

    const/4 v5, 0x1

    if-eq v1, v5, :cond_37

    const/4 v5, 0x2

    if-ne v1, v5, :cond_34

    goto :goto_1e

    :cond_34
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    array-length v1, v1

    const/4 v5, 0x4

    div-int/2addr v1, v5

    int-to-long v7, v1

    cmp-long v1, v7, v3

    if-lez v1, :cond_35

    goto :goto_1c

    :cond_35
    move-wide v3, v7

    :goto_1c
    long-to-int v1, v3

    new-array v5, v1, [B

    new-array v7, v1, [B

    new-array v1, v1, [B

    :goto_1d
    int-to-long v8, v6

    cmp-long v8, v8, v3

    if-gez v8, :cond_36

    mul-int/lit8 v8, v6, 0x4

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    aget-byte v10, v9, v8

    aput-byte v10, v1, v6

    add-int/lit8 v10, v8, 0x1

    aget-byte v10, v9, v10

    aput-byte v10, v7, v6

    const/4 v10, 0x2

    add-int/2addr v8, v10

    aget-byte v8, v9, v8

    aput-byte v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_36
    move-object v15, v5

    goto :goto_21

    :cond_37
    :goto_1e
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    array-length v1, v1

    const/4 v5, 0x3

    div-int/2addr v1, v5

    int-to-long v7, v1

    cmp-long v1, v7, v3

    if-lez v1, :cond_38

    goto :goto_1f

    :cond_38
    move-wide v3, v7

    :goto_1f
    long-to-int v1, v3

    new-array v5, v1, [B

    new-array v7, v1, [B

    new-array v8, v1, [B

    :goto_20
    if-ge v6, v1, :cond_39

    mul-int/lit8 v9, v6, 0x3

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    aget-byte v11, v10, v9

    aput-byte v11, v8, v6

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v10, v11

    aput-byte v11, v7, v6

    const/4 v11, 0x2

    add-int/2addr v9, v11

    aget-byte v9, v10, v9

    aput-byte v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_39
    move-object v15, v5

    move-object v1, v8

    :goto_21
    invoke-static {v15, v7, v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->isIndicesForGrayscale([B[B[B)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    invoke-static {v2, v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->createColorModel(Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/image/SampleModel;)Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    goto/16 :goto_15

    :cond_3a
    new-instance v2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    iget v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    long-to-int v14, v3

    move-object v12, v2

    move-object/from16 v16, v7

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    goto :goto_23

    :cond_3b
    :goto_22
    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    :goto_23
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalSampleModel:Lorg/apache/poi/java/awt/image/SampleModel;

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalColorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget-wide v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    invoke-interface {v1, v2, v3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->skipBytes(J)J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->gotHeader:Z

    return-void

    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "BMPImageReader1"

    invoke-static {v2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Input source not set!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readRaster(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/Raster;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getData()Lorg/apache/poi/java/awt/image/Raster;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->resetHeaderInfo()V

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    check-cast p1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz p1, :cond_0

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->resetHeaderInfo()V

    return-void
.end method
