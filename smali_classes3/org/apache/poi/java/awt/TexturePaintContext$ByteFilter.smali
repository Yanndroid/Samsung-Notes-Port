.class Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;
.super Lorg/apache/poi/java/awt/TexturePaintContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/TexturePaintContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteFilter"
.end annotation


# instance fields
.field public inData:[B

.field public inOff:I

.field public inPalette:[I

.field public inSpan:I

.field public outData:[I

.field public outOff:I

.field public outSpan:I

.field public srcRas:Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/geom/AffineTransform;I)V
    .locals 7

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/ColorModel;->getTransparency()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/java/awt/TexturePaintContext;->xrgbmodel:Lorg/apache/poi/java/awt/image/ColorModel;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/TexturePaintContext;->argbmodel:Lorg/apache/poi/java/awt/image/ColorModel;

    :goto_0
    move-object v2, v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v5

    move-object v1, p0

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/java/awt/TexturePaintContext;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/geom/AffineTransform;III)V

    const/16 p3, 0x100

    new-array p3, p3, [I

    iput-object p3, p0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->inPalette:[I

    check-cast p2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {p2, p3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getRGBs([I)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->srcRas:Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getDataStorage()[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->inData:[B

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getScanlineStride()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->inSpan:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getDataOffset(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->inOff:I

    return-void
.end method


# virtual methods
.method public makeRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lorg/apache/poi/java/awt/TexturePaintContext;->makeRaster(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/Raster;II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;->getDataStorage()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->outData:[I

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;->getScanlineStride()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->outSpan:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;->getDataOffset(I)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->outOff:I

    return-object p1
.end method

.method public setRaster(IIIIIIIIIIIIIIII)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    iget-object v3, v0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->inData:[B

    iget-object v4, v0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->outData:[I

    iget v5, v0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->outOff:I

    iget v6, v0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->inSpan:I

    iget v7, v0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->inOff:I

    iget v8, v0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->outSpan:I

    const/4 v9, 0x4

    new-array v9, v9, [I

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v15, p6

    move v14, v5

    const/4 v10, 0x0

    move/from16 v5, p1

    :goto_0
    if-ge v10, v15, :cond_b

    move/from16 v17, v5

    move/from16 v19, v8

    move/from16 p1, v10

    move/from16 v18, v11

    move v10, v12

    move v8, v13

    const/4 v15, 0x0

    :goto_1
    const v20, 0x7fffffff

    move/from16 p2, v11

    move/from16 v11, p5

    if-ge v15, v11, :cond_6

    add-int/lit8 v11, v17, 0x1

    if-lt v11, v1, :cond_0

    const/16 v21, 0x0

    goto :goto_2

    :cond_0
    move/from16 v21, v11

    :goto_2
    move/from16 p3, v11

    add-int/lit8 v11, v18, 0x1

    move/from16 p4, v11

    if-lt v11, v2, :cond_1

    const/16 v22, 0x0

    goto :goto_3

    :cond_1
    move/from16 v22, p4

    :goto_3
    iget-object v11, v0, Lorg/apache/poi/java/awt/TexturePaintContext$ByteFilter;->inPalette:[I

    add-int v23, v7, v17

    mul-int v24, v6, v18

    add-int v25, v23, v24

    aget-byte v0, v3, v25

    and-int/lit16 v0, v0, 0xff

    aget v0, v11, v0

    const/16 v16, 0x0

    aput v0, v9, v16

    add-int v21, v7, v21

    add-int v24, v21, v24

    aget-byte v0, v3, v24

    and-int/lit16 v0, v0, 0xff

    aget v0, v11, v0

    const/16 v24, 0x1

    aput v0, v9, v24

    mul-int v22, v22, v6

    add-int v23, v23, v22

    aget-byte v0, v3, v23

    and-int/lit16 v0, v0, 0xff

    aget v0, v11, v0

    const/16 v23, 0x2

    aput v0, v9, v23

    add-int v21, v21, v22

    aget-byte v0, v3, v21

    and-int/lit16 v0, v0, 0xff

    aget v0, v11, v0

    const/4 v11, 0x3

    aput v0, v9, v11

    add-int v0, v14, v15

    invoke-static {v9, v10, v8}, Lorg/apache/poi/java/awt/TexturePaintContext;->blend([III)I

    move-result v11

    aput v11, v4, v0

    add-int v10, v10, p10

    if-gez v10, :cond_2

    and-int v0, v10, v20

    move/from16 v17, p3

    move v10, v0

    :cond_2
    add-int v0, v17, p9

    if-lt v0, v1, :cond_3

    sub-int/2addr v0, v1

    :cond_3
    move/from16 v17, v0

    add-int v8, v8, p12

    if-gez v8, :cond_4

    and-int v0, v8, v20

    move/from16 v18, p4

    move v8, v0

    :cond_4
    add-int v0, v18, p11

    if-lt v0, v2, :cond_5

    sub-int/2addr v0, v2

    :cond_5
    move/from16 v18, v0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v11, p2

    goto/16 :goto_1

    :cond_6
    const/16 v16, 0x0

    add-int v12, v12, p14

    if-gez v12, :cond_7

    and-int v0, v12, v20

    add-int/lit8 v5, v5, 0x1

    move v12, v0

    :cond_7
    add-int v5, v5, p13

    if-lt v5, v1, :cond_8

    sub-int/2addr v5, v1

    :cond_8
    add-int v13, v13, p16

    if-gez v13, :cond_9

    and-int v0, v13, v20

    add-int/lit8 v11, p2, 0x1

    move v13, v0

    goto :goto_4

    :cond_9
    move/from16 v11, p2

    :goto_4
    add-int v11, v11, p15

    if-lt v11, v2, :cond_a

    sub-int/2addr v11, v2

    :cond_a
    add-int v14, v14, v19

    add-int/lit8 v10, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v15, p6

    move/from16 v8, v19

    goto/16 :goto_0

    :cond_b
    return-void
.end method
