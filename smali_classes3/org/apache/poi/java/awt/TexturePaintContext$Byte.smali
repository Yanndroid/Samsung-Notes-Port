.class Lorg/apache/poi/java/awt/TexturePaintContext$Byte;
.super Lorg/apache/poi/java/awt/TexturePaintContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/TexturePaintContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Byte"
.end annotation


# instance fields
.field public inData:[B

.field public inOff:I

.field public inSpan:I

.field public outData:[B

.field public outOff:I

.field public outSpan:I

.field public srcRas:Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/geom/AffineTransform;I)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/java/awt/TexturePaintContext;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/geom/AffineTransform;III)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->srcRas:Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getDataStorage()[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->inData:[B

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getScanlineStride()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->inSpan:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getDataOffset(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->inOff:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext;->outRas:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-static {v0}, Lorg/apache/poi/java/awt/TexturePaintContext;->dropByteRaster(Lorg/apache/poi/java/awt/image/Raster;)V

    return-void
.end method

.method public makeRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->srcRas:Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-static {v0, p1, p2}, Lorg/apache/poi/java/awt/TexturePaintContext;->makeByteRaster(Lorg/apache/poi/java/awt/image/Raster;II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getDataStorage()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->outData:[B

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getScanlineStride()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->outSpan:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/apache/poi/sun/awt/image/ByteInterleavedRaster;->getDataOffset(I)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->outOff:I

    return-object p1
.end method

.method public setRaster(IIIIIIIIIIIIIIII)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    iget-object v5, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->inData:[B

    iget-object v6, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->outData:[B

    iget v7, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->outOff:I

    iget v8, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->inSpan:I

    iget v9, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->inOff:I

    iget v10, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Byte;->outSpan:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    if-nez p10, :cond_0

    if-nez p11, :cond_0

    if-nez p12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    sub-int/2addr v10, v1

    :cond_1
    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v11, p6

    move/from16 v16, v7

    const/4 v0, 0x0

    move/from16 v7, p1

    :goto_1
    if-ge v0, v11, :cond_11

    const v17, 0x7fffffff

    if-eqz v12, :cond_7

    mul-int v18, v13, v8

    add-int v18, v9, v18

    add-int v18, v18, v2

    sub-int v19, v2, v7

    add-int v16, v16, v1

    const/16 v11, 0x20

    if-lt v2, v11, :cond_5

    move/from16 v20, v12

    move/from16 v11, v19

    move v12, v1

    :goto_2
    move/from16 p1, v0

    move/from16 v21, v10

    if-lez v12, :cond_4

    if-ge v12, v11, :cond_2

    move v0, v12

    goto :goto_3

    :cond_2
    move v0, v11

    :goto_3
    sub-int v10, v18, v11

    move/from16 p2, v13

    sub-int v13, v16, v12

    invoke-static {v5, v10, v6, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v12, v0

    sub-int/2addr v11, v0

    if-nez v11, :cond_3

    move v11, v2

    :cond_3
    move/from16 v0, p1

    move/from16 v13, p2

    move/from16 v10, v21

    goto :goto_2

    :cond_4
    move/from16 p2, v13

    goto :goto_6

    :cond_5
    move/from16 p1, v0

    move/from16 v21, v10

    move/from16 v20, v12

    move/from16 p2, v13

    move v0, v1

    :goto_4
    if-lez v0, :cond_c

    sub-int v10, v16, v0

    sub-int v11, v18, v19

    aget-byte v11, v5, v11

    aput-byte v11, v6, v10

    add-int/lit8 v19, v19, -0x1

    if-nez v19, :cond_6

    move/from16 v19, v2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    move/from16 p1, v0

    move/from16 v21, v10

    move/from16 v20, v12

    move/from16 p2, v13

    move/from16 v10, p2

    move v11, v7

    move v12, v14

    move v13, v15

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_c

    add-int v18, v16, v0

    mul-int v19, v10, v8

    add-int v19, v9, v19

    add-int v19, v19, v11

    aget-byte v19, v5, v19

    aput-byte v19, v6, v18

    add-int v12, v12, p10

    if-gez v12, :cond_8

    and-int v12, v12, v17

    add-int/lit8 v11, v11, 0x1

    :cond_8
    add-int/2addr v11, v4

    if-lt v11, v2, :cond_9

    sub-int/2addr v11, v2

    :cond_9
    add-int v13, v13, p12

    if-gez v13, :cond_a

    and-int v13, v13, v17

    add-int/lit8 v10, v10, 0x1

    :cond_a
    add-int v10, v10, p11

    if-lt v10, v3, :cond_b

    sub-int/2addr v10, v3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    add-int v14, v14, p14

    if-gez v14, :cond_d

    and-int v0, v14, v17

    add-int/lit8 v7, v7, 0x1

    move v14, v0

    :cond_d
    add-int v7, v7, p13

    if-lt v7, v2, :cond_e

    sub-int/2addr v7, v2

    :cond_e
    add-int v15, v15, p16

    if-gez v15, :cond_f

    and-int v0, v15, v17

    add-int/lit8 v13, p2, 0x1

    move v15, v0

    goto :goto_7

    :cond_f
    move/from16 v13, p2

    :goto_7
    add-int v13, v13, p15

    if-lt v13, v3, :cond_10

    sub-int/2addr v13, v3

    :cond_10
    add-int v16, v16, v21

    add-int/lit8 v0, p1, 0x1

    move/from16 v11, p6

    move/from16 v12, v20

    move/from16 v10, v21

    goto/16 :goto_1

    :cond_11
    return-void
.end method
