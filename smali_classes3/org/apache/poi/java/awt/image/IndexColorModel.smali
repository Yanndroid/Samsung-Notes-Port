.class public Lorg/apache/poi/java/awt/image/IndexColorModel;
.super Lorg/apache/poi/java/awt/image/ColorModel;
.source "SourceFile"


# static fields
.field private static final CACHESIZE:I = 0x28

.field private static alphaBits:[I

.field private static opaqueBits:[I


# instance fields
.field private allgrayopaque:Z

.field private colorData:Lorg/apache/poi/sun/awt/image/BufImgSurfaceData$ICMColorData;

.field private lookupcache:[I

.field private map_size:I

.field private pixel_mask:I

.field private rgb:[I

.field private transparent_index:I

.field private validBits:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->opaqueBits:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->alphaBits:[I

    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->loadLibraries()V

    return-void

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor <init>(II[BIZ)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/image/IndexColorModel;-><init>(II[BIZI)V

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    const/16 p2, 0x10

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits must be between 1 and 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II[BIZI)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    sget-object v2, Lorg/apache/poi/java/awt/image/IndexColorModel;->opaqueBits:[I

    const/16 v0, 0x3e8

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getDefaultTransferType(I)I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ColorModel;-><init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    const/4 v0, -0x1

    iput v0, v8, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    const/4 v0, 0x0

    iput-object v0, v8, Lorg/apache/poi/java/awt/image/IndexColorModel;->colorData:Lorg/apache/poi/sun/awt/image/BufImgSurfaceData$ICMColorData;

    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, v8, Lorg/apache/poi/java/awt/image/IndexColorModel;->lookupcache:[I

    const/4 v0, 0x1

    if-lt v9, v0, :cond_8

    const/16 v1, 0x10

    if-gt v9, v1, :cond_8

    if-lt v10, v0, :cond_7

    iput v10, v8, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/java/awt/image/IndexColorModel;->calcRealMapSize(II)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v8, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    const/4 v1, 0x0

    const/16 v2, 0xff

    move/from16 v3, p4

    move v5, v0

    move v6, v5

    move v4, v1

    move v7, v2

    :goto_0
    if-ge v4, v10, :cond_6

    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p3, v3

    and-int/2addr v3, v2

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, p3, v9

    and-int/2addr v9, v2

    add-int/lit8 v12, v11, 0x1

    aget-byte v11, p3, v11

    and-int/2addr v11, v2

    if-eqz v5, :cond_0

    if-ne v3, v9, :cond_0

    if-ne v9, v11, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-eqz p5, :cond_4

    add-int/lit8 v7, v12, 0x1

    aget-byte v12, p3, v12

    and-int/2addr v12, v2

    if-eq v12, v2, :cond_5

    if-nez v12, :cond_2

    if-ne v6, v0, :cond_1

    const/4 v6, 0x2

    :cond_1
    iget v5, v8, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    if-gez v5, :cond_3

    iput v4, v8, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    move v6, v5

    :cond_3
    :goto_2
    move v5, v1

    goto :goto_3

    :cond_4
    move v15, v12

    move v12, v7

    move v7, v15

    :cond_5
    :goto_3
    iget-object v13, v8, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    shl-int/lit8 v14, v12, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v14

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v3, v9

    or-int/2addr v3, v11

    aput v3, v13, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v7

    move v7, v12

    goto :goto_0

    :cond_6
    iput-boolean v5, v8, Lorg/apache/poi/java/awt/image/IndexColorModel;->allgrayopaque:Z

    invoke-direct {v8, v6}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setTransparency(I)V

    move/from16 v0, p6

    invoke-direct {v8, v0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setTransparentPixel(I)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->calculatePixelMask()V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") must be >= 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits must be between 1 and 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(II[B[B[B)V
    .locals 8

    sget-object v2, Lorg/apache/poi/java/awt/image/IndexColorModel;->opaqueBits:[I

    const/16 v0, 0x3e8

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getDefaultTransferType(I)I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ColorModel;-><init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->colorData:Lorg/apache/poi/sun/awt/image/BufImgSurfaceData$ICMColorData;

    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->lookupcache:[I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setRGBs(I[B[B[B[B)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->calculatePixelMask()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits must be between 1 and 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II[B[B[BI)V
    .locals 8

    sget-object v2, Lorg/apache/poi/java/awt/image/IndexColorModel;->opaqueBits:[I

    const/16 v0, 0x3e8

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getDefaultTransferType(I)I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ColorModel;-><init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->colorData:Lorg/apache/poi/sun/awt/image/BufImgSurfaceData$ICMColorData;

    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->lookupcache:[I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setRGBs(I[B[B[B[B)V

    invoke-direct {p0, p6}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setTransparentPixel(I)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->calculatePixelMask()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits must be between 1 and 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II[B[B[B[B)V
    .locals 8

    sget-object v2, Lorg/apache/poi/java/awt/image/IndexColorModel;->alphaBits:[I

    const/16 v0, 0x3e8

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/poi/java/awt/image/ColorModel;->getDefaultTransferType(I)I

    move-result v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ColorModel;-><init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->colorData:Lorg/apache/poi/sun/awt/image/BufImgSurfaceData$ICMColorData;

    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->lookupcache:[I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setRGBs(I[B[B[B[B)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->calculatePixelMask()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits must be between 1 and 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II[IIILjava/math/BigInteger;)V
    .locals 8

    sget-object v2, Lorg/apache/poi/java/awt/image/IndexColorModel;->alphaBits:[I

    const/16 v0, 0x3e8

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move v1, p1

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ColorModel;-><init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->colorData:Lorg/apache/poi/sun/awt/image/BufImgSurfaceData$ICMColorData;

    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->lookupcache:[I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    const/16 v1, 0x10

    if-gt p1, v1, :cond_5

    if-lt p2, v0, :cond_4

    if-eqz p5, :cond_1

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "transferType must be eitherDataBuffer.TYPE_BYTE or DataBuffer.TYPE_USHORT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p6, :cond_3

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_3

    invoke-virtual {p6, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p5

    if-nez p5, :cond_2

    iput-object p6, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->validBits:Ljava/math/BigInteger;

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-direct {p0, p2, p3, p4, v0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setRGBs(I[IIZ)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->calculatePixelMask()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Map size ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be >= 1"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits must be between 1 and 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II[IIZII)V
    .locals 8

    sget-object v2, Lorg/apache/poi/java/awt/image/IndexColorModel;->opaqueBits:[I

    const/16 v0, 0x3e8

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/java/awt/image/ColorModel;-><init>(I[ILorg/apache/poi/java/awt/color/ColorSpace;ZZII)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->colorData:Lorg/apache/poi/sun/awt/image/BufImgSurfaceData$ICMColorData;

    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->lookupcache:[I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0x10

    if-gt p1, v1, :cond_3

    if-lt p2, v0, :cond_2

    if-eqz p7, :cond_1

    if-ne p7, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "transferType must be eitherDataBuffer.TYPE_BYTE or DataBuffer.TYPE_USHORT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setRGBs(I[IIZ)V

    invoke-direct {p0, p6}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setTransparentPixel(I)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->calculatePixelMask()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Map size ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be >= 1"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits must be between 1 and 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calcRealMapSize(II)I
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 p2, 0x100

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private final calculatePixelMask()V
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    if-le v0, v2, :cond_1

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->pixel_mask:I

    return-void
.end method

.method private getAllValid()Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    mul-int/lit8 v0, v0, 0x8

    iget v2, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    sub-int/2addr v0, v2

    const/16 v2, 0xff

    ushr-int v0, v2, v0

    int-to-byte v0, v0

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private installpixel(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    if-nez p1, :cond_0

    new-array p1, v2, [I

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, [I

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_0
    aput p2, p1, v1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This method has not been implemented for transferType "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p1, :cond_3

    new-array p1, v2, [S

    move-object v0, p1

    goto :goto_1

    :cond_3
    move-object v0, p1

    check-cast v0, [S

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_1
    int-to-short p2, p2

    aput-short p2, p1, v1

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    new-array p1, v2, [B

    move-object v0, p1

    goto :goto_2

    :cond_5
    move-object v0, p1

    check-cast v0, [B

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_2
    int-to-byte p2, p2

    aput-byte p2, p1, v1

    :goto_3
    return-object v0
.end method

.method private setRGBs(I[B[B[B[B)V
    .locals 14

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_6

    iput v1, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    iget v3, v0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    invoke-direct {p0, v3, p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->calcRealMapSize(II)I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    const/4 v3, 0x0

    const/16 v4, 0xff

    move v6, v2

    move v7, v6

    move v5, v3

    move v8, v4

    :goto_0
    if-ge v5, v1, :cond_5

    aget-byte v9, p2, v5

    and-int/2addr v9, v4

    aget-byte v10, p3, v5

    and-int/2addr v10, v4

    aget-byte v11, p4, v5

    and-int/2addr v11, v4

    if-eqz v6, :cond_0

    if-ne v9, v10, :cond_0

    if-ne v10, v11, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz p5, :cond_4

    aget-byte v8, p5, v5

    and-int/2addr v8, v4

    if-eq v8, v4, :cond_4

    if-nez v8, :cond_2

    if-ne v7, v2, :cond_1

    const/4 v7, 0x2

    :cond_1
    iget v6, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    if-gez v6, :cond_3

    iput v5, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    goto :goto_2

    :cond_2
    const/4 v6, 0x3

    move v7, v6

    :cond_3
    :goto_2
    move v6, v3

    :cond_4
    iget-object v12, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    shl-int/lit8 v13, v8, 0x18

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v9, v13

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    or-int/2addr v9, v11

    aput v9, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iput-boolean v6, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->allgrayopaque:Z

    invoke-direct {p0, v7}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setTransparency(I)V

    return-void

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Map size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") must be >= 1"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setRGBs(I[IIZ)V
    .locals 11

    iput p1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->calcRealMapSize(II)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->validBits:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v3, p1, :cond_7

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_4

    :cond_0
    aget v6, p2, p3

    shr-int/lit8 v7, v6, 0x10

    const/16 v8, 0xff

    and-int/2addr v7, v8

    shr-int/lit8 v9, v6, 0x8

    and-int/2addr v9, v8

    and-int/lit16 v10, v6, 0xff

    if-eqz v4, :cond_1

    if-ne v7, v9, :cond_1

    if-ne v9, v10, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz p4, :cond_5

    ushr-int/lit8 v7, v6, 0x18

    if-eq v7, v8, :cond_6

    if-nez v7, :cond_3

    if-ne v5, v2, :cond_2

    const/4 v5, 0x2

    :cond_2
    iget v4, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    if-gez v4, :cond_4

    iput v3, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    goto :goto_2

    :cond_3
    const/4 v4, 0x3

    move v5, v4

    :cond_4
    :goto_2
    move v4, v1

    goto :goto_3

    :cond_5
    const/high16 v7, -0x1000000

    or-int/2addr v6, v7

    :cond_6
    :goto_3
    iget-object v7, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    aput v6, v7, v3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_7
    iput-boolean v4, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->allgrayopaque:Z

    invoke-direct {p0, v5}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setTransparency(I)V

    return-void
.end method

.method private setTransparency(I)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/4 p1, 0x3

    iput p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    sget-object p1, Lorg/apache/poi/java/awt/image/IndexColorModel;->opaqueBits:[I

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/4 p1, 0x4

    iput p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    sget-object p1, Lorg/apache/poi/java/awt/image/IndexColorModel;->alphaBits:[I

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    :cond_1
    :goto_0
    return-void
.end method

.method private setTransparentPixel(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    aget v1, v0, p1

    const v2, 0xffffff

    and-int/2addr v1, v2

    aput v1, v0, p1

    iput p1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->allgrayopaque:Z

    iget p1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->setTransparency(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public convertToIntDiscrete(Lorg/apache/poi/java/awt/image/Raster;Z)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->isCompatibleRaster(Lorg/apache/poi/java/awt/image/Raster;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p2, :cond_2

    iget v1, v0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v4, 0x19

    const/high16 v5, 0xff0000

    const v6, 0xff00

    const/16 v7, 0xff

    const/high16 v8, 0x1000000

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIIII)V

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v2, 0x18

    const/high16 v3, 0xff0000

    const v4, 0xff00

    const/16 v5, 0xff

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGBdefault()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Lorg/apache/poi/java/awt/image/ColorModel;->createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v2

    move-object v7, v12

    move v15, v13

    :goto_2
    if-ge v15, v9, :cond_5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move v3, v11

    move v4, v14

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v2, v7, [I

    if-eqz v2, :cond_3

    move-object v2, v7

    check-cast v2, [I

    goto :goto_3

    :cond_3
    invoke-static {v7}, Lorg/apache/poi/java/awt/image/DataBuffer;->toIntArray(Ljava/lang/Object;)[I

    move-result-object v2

    :goto_3
    move-object/from16 v16, v2

    move v2, v13

    :goto_4
    if-ge v2, v8, :cond_4

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    aget v4, v16, v2

    iget v5, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;->pixel_mask:I

    and-int/2addr v4, v5

    aget v3, v3, v4

    aput v3, v16, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v2, v10

    move v4, v15

    move v5, v8

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v17

    goto :goto_2

    :cond_5
    new-instance v2, Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-direct {v2, v1, v10, v13, v12}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v2

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This raster is not compatiblewith this IndexColorModel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createCompatibleSampleModel(II)Lorg/apache/poi/java/awt/image/SampleModel;
    .locals 8

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v1, 0x0

    aput v1, v7, v1

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v5, 0x1

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/ComponentSampleModel;-><init>(IIIII[I)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    iget v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    return-object v0
.end method

.method public createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 6

    iget v4, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    const/4 v0, 0x1

    if-eq v4, v0, :cond_3

    const/4 v1, 0x2

    if-eq v4, v1, :cond_3

    const/4 v1, 0x4

    if-ne v4, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-gt v4, v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    if-gt v4, v1, :cond_2

    invoke-static {v0, p1, p2, v0, v2}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not supported  for pixel bits > 16."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/java/awt/image/Raster;->createPackedRaster(IIIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public finalize()V
    .locals 0

    return-void
.end method

.method public final getAlpha(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->pixel_mask:I

    and-int/2addr p1, v1

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public final getAlphas([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    aget v1, v1, v0

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getBlue(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->pixel_mask:I

    and-int/2addr p1, v1

    aget p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public final getBlues([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    aget v1, v1, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getComponentSize()[I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/16 v1, 0x8

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    aput v1, v0, v4

    aput v1, v0, v3

    aput v1, v0, v2

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->nBits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getComponents(I[II)[I
    .locals 2

    if-nez p2, :cond_0

    iget p2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    add-int/2addr p2, p3

    new-array p2, p2, [I

    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getRed(I)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getGreen(I)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getBlue(I)I

    move-result v1

    aput v1, p2, v0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v0, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    add-int/2addr p3, v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getAlpha(I)I

    move-result p1

    aput p1, p2, p3

    :cond_1
    return-object p2
.end method

.method public getComponents(Ljava/lang/Object;[II)[I
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    check-cast p1, [I

    aget p1, p1, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This method has not been implemented for transferType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, [S

    aget-short p1, p1, v1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    :cond_2
    check-cast p1, [B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getComponents(I[II)[I

    move-result-object p1

    return-object p1
.end method

.method public getDataElement([II)I
    .locals 3

    add-int/lit8 v0, p2, 0x0

    aget v0, p1, v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    add-int/2addr p2, v2

    aget p1, p1, p2

    shl-int/lit8 p1, p1, 0x18

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    or-int/2addr p1, v0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_1

    check-cast p1, [I

    aget p1, p1, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This method has not been implemented for transferType "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, [S

    aget-short p1, p1, v0

    goto :goto_1

    :cond_3
    check-cast p1, [B

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    :goto_1
    return p1
.end method

.method public declared-synchronized getDataElements(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 13

    monitor-enter p0

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p1, 0xff

    ushr-int/lit8 v3, p1, 0x18

    const/16 v4, 0x26

    const/4 v5, 0x0

    move v6, v4

    move v7, v5

    :goto_0
    if-ltz v6, :cond_2

    :try_start_0
    iget-object v7, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->lookupcache:[I

    aget v8, v7, v6

    if-nez v8, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v6, 0x1

    aget v7, v7, v9

    if-ne p1, v7, :cond_1

    not-int p1, v8

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->installpixel(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    add-int/lit8 v6, v6, -0x2

    move v7, v8

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_1
    iget-boolean v6, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->allgrayopaque:Z

    if-eqz v6, :cond_7

    mul-int/lit8 v0, v0, 0x4d

    mul-int/lit16 v1, v1, 0x96

    add-int/2addr v0, v1

    mul-int/lit8 v2, v2, 0x1d

    add-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x80

    const/16 v1, 0x100

    div-int/2addr v0, v1

    move v2, v5

    :goto_2
    iget v3, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge v2, v3, :cond_12

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    aget v6, v3, v2

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    aget v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v0

    if-gez v3, :cond_4

    neg-int v3, v3

    :cond_4
    if-ge v3, v1, :cond_6

    move v7, v2

    if-nez v3, :cond_5

    goto/16 :goto_a

    :cond_5
    move v1, v3

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget v6, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    const v8, 0x7fffffff

    const/4 v9, 0x1

    if-ne v6, v9, :cond_c

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    move v6, v5

    :goto_4
    iget v9, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge v6, v9, :cond_9

    aget v9, v3, v6

    if-ne v9, p1, :cond_8

    if-eqz v9, :cond_8

    move v8, v5

    move v7, v6

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    if-eqz v8, :cond_12

    move v6, v5

    :goto_6
    iget v9, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge v6, v9, :cond_12

    aget v9, v3, v6

    if-nez v9, :cond_a

    goto :goto_7

    :cond_a
    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    sub-int/2addr v10, v0

    mul-int/2addr v10, v10

    if-ge v10, v8, :cond_b

    shr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    sub-int/2addr v11, v1

    mul-int/2addr v11, v11

    add-int/2addr v10, v11

    if-ge v10, v8, :cond_b

    and-int/lit16 v9, v9, 0xff

    sub-int/2addr v9, v2

    mul-int/2addr v9, v9

    add-int/2addr v10, v9

    if-ge v10, v8, :cond_b

    move v7, v6

    move v8, v10

    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    if-nez v3, :cond_d

    iget v6, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    if-ltz v6, :cond_d

    move v7, v6

    goto :goto_a

    :cond_d
    iget-object v6, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    move v9, v8

    move v8, v7

    move v7, v5

    :goto_8
    iget v10, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge v7, v10, :cond_11

    aget v10, v6, v7

    if-ne v10, p1, :cond_e

    iget-object v10, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->validBits:Ljava/math/BigInteger;

    if-eqz v10, :cond_12

    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-nez v10, :cond_12

    goto :goto_9

    :cond_e
    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    sub-int/2addr v11, v0

    mul-int/2addr v11, v11

    if-ge v11, v9, :cond_10

    shr-int/lit8 v12, v10, 0x8

    and-int/lit16 v12, v12, 0xff

    sub-int/2addr v12, v1

    mul-int/2addr v12, v12

    add-int/2addr v11, v12

    if-ge v11, v9, :cond_10

    and-int/lit16 v12, v10, 0xff

    sub-int/2addr v12, v2

    mul-int/2addr v12, v12

    add-int/2addr v11, v12

    if-ge v11, v9, :cond_10

    ushr-int/lit8 v10, v10, 0x18

    sub-int/2addr v10, v3

    mul-int/2addr v10, v10

    add-int/2addr v11, v10

    if-ge v11, v9, :cond_10

    iget-object v10, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->validBits:Ljava/math/BigInteger;

    if-eqz v10, :cond_f

    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    move v8, v7

    move v9, v11

    :cond_10
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_11
    move v7, v8

    :cond_12
    :goto_a
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->lookupcache:[I

    const/4 v1, 0x2

    invoke-static {v0, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->lookupcache:[I

    const/16 v1, 0x27

    aput p1, v0, v1

    not-int p1, v7

    aput p1, v0, v4

    invoke-direct {p0, p2, v7}, Lorg/apache/poi/java/awt/image/IndexColorModel;->installpixel(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDataElements([IILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 v0, p2, 0x0

    aget v0, p1, v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, 0x3

    aget p1, p1, p2

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    and-int/2addr p1, v0

    :goto_0
    invoke-virtual {p0, p1, p3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getGreen(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->pixel_mask:I

    and-int/2addr p1, v1

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public final getGreens([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    aget v1, v1, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getMapSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    return v0
.end method

.method public final getRGB(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->pixel_mask:I

    and-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public final getRGBs([I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final getRed(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->pixel_mask:I

    and-int/2addr p1, v1

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public final getReds([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->rgb:[I

    aget v1, v1, v0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getTransparency()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    return v0
.end method

.method public final getTransparentPixel()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    return v0
.end method

.method public getValidPixels()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->validBits:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getAllValid()Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isCompatibleRaster(Lorg/apache/poi/java/awt/image/Raster;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getTransferType()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result p1

    if-ne p1, v4, :cond_0

    shl-int p1, v4, v0

    iget v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-lt p1, v0, :cond_0

    move v1, v4

    :cond_0
    return v1
.end method

.method public isCompatibleSampleModel(Lorg/apache/poi/java/awt/image/SampleModel;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/java/awt/image/ComponentSampleModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/apache/poi/java/awt/image/MultiPixelPackedSampleModel;

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getTransferType()I

    move-result v0

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transferType:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/SampleModel;->getNumBands()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->validBits:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->map_size:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->validBits:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexColorModel: #pixelBits = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->pixel_bits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " numComponents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->numComponents:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color space = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->colorSpace:Lorg/apache/poi/java/awt/color/ColorSpace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " transparency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->transparency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " transIndex   = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/image/IndexColorModel;->transparent_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->supportsAlpha:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAlphaPre = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
