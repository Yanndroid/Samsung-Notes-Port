.class Lorg/apache/poi/java/awt/TexturePaintContext$Int;
.super Lorg/apache/poi/java/awt/TexturePaintContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/TexturePaintContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Int"
.end annotation


# instance fields
.field public filter:Z

.field public inData:[I

.field public inOff:I

.field public inSpan:I

.field public outData:[I

.field public outOff:I

.field public outSpan:I

.field public srcRas:Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/geom/AffineTransform;IZ)V
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

    iput-object p1, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->srcRas:Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;->getDataStorage()[I

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->inData:[I

    invoke-virtual {p1}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;->getScanlineStride()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->inSpan:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;->getDataOffset(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->inOff:I

    iput-boolean p5, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->filter:Z

    return-void
.end method


# virtual methods
.method public makeRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v1, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->srcRas:Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/poi/java/awt/TexturePaintContext;->makeRaster(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/Raster;II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;->getDataStorage()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->outData:[I

    invoke-virtual {p2}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;->getScanlineStride()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->outSpan:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/apache/poi/sun/awt/image/IntegerInterleavedRaster;->getDataOffset(I)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->outOff:I

    return-object p1
.end method

.method public setRaster(IIIIIIIIIIIIIIII)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    iget-object v5, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->inData:[I

    iget-object v6, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->outData:[I

    iget v7, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->outOff:I

    iget v8, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->inSpan:I

    iget v9, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->inOff:I

    iget v10, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->outSpan:I

    iget-boolean v11, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Int;->filter:Z

    const/4 v13, 0x1

    if-ne v4, v13, :cond_0

    if-nez p10, :cond_0

    if-nez p11, :cond_0

    if-nez p12, :cond_0

    if-nez v11, :cond_0

    move v14, v13

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_1

    sub-int/2addr v10, v1

    :cond_1
    if-eqz v11, :cond_2

    const/4 v15, 0x4

    new-array v15, v15, [I

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v13, p6

    move/from16 v19, v7

    const/4 v12, 0x0

    move/from16 v7, p1

    :goto_2
    if-ge v12, v13, :cond_15

    const v22, 0x7fffffff

    if-eqz v14, :cond_8

    mul-int v23, v16, v8

    add-int v23, v9, v23

    add-int v23, v23, v2

    sub-int v24, v2, v7

    add-int v19, v19, v1

    const/16 v0, 0x20

    if-lt v2, v0, :cond_6

    move v13, v1

    move/from16 v0, v24

    :goto_3
    if-lez v13, :cond_5

    move/from16 p1, v12

    move/from16 v25, v14

    if-ge v13, v0, :cond_3

    move v14, v13

    goto :goto_4

    :cond_3
    move v14, v0

    :goto_4
    sub-int v12, v23, v0

    move/from16 v26, v10

    sub-int v10, v19, v13

    invoke-static {v5, v12, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v13, v14

    sub-int/2addr v0, v14

    if-nez v0, :cond_4

    move v0, v2

    :cond_4
    move/from16 v12, p1

    move/from16 v14, v25

    move/from16 v10, v26

    goto :goto_3

    :cond_5
    move/from16 v26, v10

    move/from16 p1, v12

    move/from16 v25, v14

    goto/16 :goto_8

    :cond_6
    move/from16 v26, v10

    move/from16 p1, v12

    move/from16 v25, v14

    move v0, v1

    :goto_5
    if-lez v0, :cond_10

    sub-int v10, v19, v0

    sub-int v12, v23, v24

    aget v12, v5, v12

    aput v12, v6, v10

    add-int/lit8 v24, v24, -0x1

    if-nez v24, :cond_7

    move/from16 v24, v2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_8
    move/from16 v26, v10

    move/from16 p1, v12

    move/from16 v25, v14

    move v12, v7

    move/from16 v10, v16

    move/from16 v13, v17

    move/from16 v14, v18

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_10

    if-eqz v11, :cond_b

    add-int/lit8 v1, v12, 0x1

    if-lt v1, v2, :cond_9

    const/4 v1, 0x0

    :cond_9
    move/from16 v23, v11

    add-int/lit8 v11, v10, 0x1

    if-lt v11, v3, :cond_a

    const/4 v11, 0x0

    :cond_a
    mul-int v24, v10, v8

    add-int v24, v9, v24

    add-int v27, v24, v12

    aget v27, v5, v27

    const/16 v21, 0x0

    aput v27, v15, v21

    add-int v24, v24, v1

    aget v24, v5, v24

    const/16 v20, 0x1

    aput v24, v15, v20

    const/16 v24, 0x2

    mul-int/2addr v11, v8

    add-int/2addr v11, v9

    add-int v27, v11, v12

    aget v27, v5, v27

    aput v27, v15, v24

    const/16 v24, 0x3

    add-int/2addr v11, v1

    aget v1, v5, v11

    aput v1, v15, v24

    add-int v1, v19, v0

    invoke-static {v15, v13, v14}, Lorg/apache/poi/java/awt/TexturePaintContext;->blend([III)I

    move-result v11

    aput v11, v6, v1

    goto :goto_7

    :cond_b
    move/from16 v23, v11

    const/16 v20, 0x1

    const/16 v21, 0x0

    add-int v1, v19, v0

    mul-int v11, v10, v8

    add-int/2addr v11, v9

    add-int/2addr v11, v12

    aget v11, v5, v11

    aput v11, v6, v1

    :goto_7
    add-int v13, v13, p10

    if-gez v13, :cond_c

    and-int v1, v13, v22

    add-int/lit8 v12, v12, 0x1

    move v13, v1

    :cond_c
    add-int/2addr v12, v4

    if-lt v12, v2, :cond_d

    sub-int/2addr v12, v2

    :cond_d
    add-int v14, v14, p12

    if-gez v14, :cond_e

    and-int v1, v14, v22

    add-int/lit8 v10, v10, 0x1

    move v14, v1

    :cond_e
    add-int v10, v10, p11

    if-lt v10, v3, :cond_f

    sub-int/2addr v10, v3

    :cond_f
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, p5

    move/from16 v11, v23

    goto :goto_6

    :cond_10
    :goto_8
    move/from16 v23, v11

    const/16 v20, 0x1

    const/16 v21, 0x0

    add-int v17, v17, p14

    if-gez v17, :cond_11

    and-int v0, v17, v22

    add-int/lit8 v7, v7, 0x1

    move/from16 v17, v0

    :cond_11
    add-int v7, v7, p13

    if-lt v7, v2, :cond_12

    sub-int/2addr v7, v2

    :cond_12
    add-int v18, v18, p16

    if-gez v18, :cond_13

    and-int v0, v18, v22

    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v0

    :cond_13
    add-int v0, v16, p15

    if-lt v0, v3, :cond_14

    sub-int/2addr v0, v3

    :cond_14
    move/from16 v16, v0

    add-int v19, v19, v26

    add-int/lit8 v12, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v13, p6

    move/from16 v11, v23

    move/from16 v14, v25

    move/from16 v10, v26

    goto/16 :goto_2

    :cond_15
    return-void
.end method
