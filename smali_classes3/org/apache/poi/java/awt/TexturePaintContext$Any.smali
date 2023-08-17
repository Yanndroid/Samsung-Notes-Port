.class Lorg/apache/poi/java/awt/TexturePaintContext$Any;
.super Lorg/apache/poi/java/awt/TexturePaintContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/TexturePaintContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Any"
.end annotation


# instance fields
.field public filter:Z

.field public srcRas:Lorg/apache/poi/java/awt/image/WritableRaster;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/image/WritableRaster;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/geom/AffineTransform;IZ)V
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

    iput-object p1, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Any;->srcRas:Lorg/apache/poi/java/awt/image/WritableRaster;

    iput-boolean p5, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Any;->filter:Z

    return-void
.end method


# virtual methods
.method public makeRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/TexturePaintContext;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    iget-object v1, p0, Lorg/apache/poi/java/awt/TexturePaintContext$Any;->srcRas:Lorg/apache/poi/java/awt/image/WritableRaster;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/poi/java/awt/TexturePaintContext;->makeRaster(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/Raster;II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    return-object p1
.end method

.method public setRaster(IIIIIIIIIIIIIIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    iget-object v3, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Any;->srcRas:Lorg/apache/poi/java/awt/image/WritableRaster;

    iget-object v4, v0, Lorg/apache/poi/java/awt/TexturePaintContext;->outRas:Lorg/apache/poi/java/awt/image/WritableRaster;

    iget-boolean v5, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Any;->filter:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    new-array v5, v5, [I

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v12, p6

    move-object v11, v6

    const/4 v13, 0x0

    move/from16 v6, p1

    :goto_1
    if-ge v13, v12, :cond_d

    move v15, v6

    move/from16 p1, v8

    move/from16 v7, p1

    move v12, v9

    move v8, v10

    const/4 v14, 0x0

    :goto_2
    const v17, 0x7fffffff

    move/from16 p2, v10

    move/from16 v10, p5

    if-ge v14, v10, :cond_8

    invoke-virtual {v3, v15, v7, v11}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iget-boolean v10, v0, Lorg/apache/poi/java/awt/TexturePaintContext$Any;->filter:Z

    if-eqz v10, :cond_3

    add-int/lit8 v10, v15, 0x1

    if-lt v10, v1, :cond_1

    const/4 v10, 0x0

    :cond_1
    move/from16 p3, v6

    add-int/lit8 v6, v7, 0x1

    move/from16 p4, v9

    if-lt v6, v2, :cond_2

    const/4 v6, 0x0

    :cond_2
    iget-object v9, v0, Lorg/apache/poi/java/awt/TexturePaintContext;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v9, v11}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result v9

    const/16 v16, 0x0

    aput v9, v5, v16

    invoke-virtual {v3, v10, v7, v11}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iget-object v11, v0, Lorg/apache/poi/java/awt/TexturePaintContext;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v11, v9}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result v11

    const/16 v18, 0x1

    aput v11, v5, v18

    invoke-virtual {v3, v15, v6, v9}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v11, 0x2

    iget-object v2, v0, Lorg/apache/poi/java/awt/TexturePaintContext;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v2, v9}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result v2

    aput v2, v5, v11

    invoke-virtual {v3, v10, v6, v9}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x3

    iget-object v9, v0, Lorg/apache/poi/java/awt/TexturePaintContext;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v9, v2}, Lorg/apache/poi/java/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result v9

    aput v9, v5, v6

    invoke-static {v5, v12, v8}, Lorg/apache/poi/java/awt/TexturePaintContext;->blend([III)I

    move-result v6

    iget-object v9, v0, Lorg/apache/poi/java/awt/TexturePaintContext;->colorModel:Lorg/apache/poi/java/awt/image/ColorModel;

    invoke-virtual {v9, v6, v2}, Lorg/apache/poi/java/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :cond_3
    move/from16 p3, v6

    move/from16 p4, v9

    const/16 v16, 0x0

    :goto_3
    invoke-virtual {v4, v14, v13, v11}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int v12, v12, p10

    if-gez v12, :cond_4

    and-int v2, v12, v17

    add-int/lit8 v15, v15, 0x1

    move v12, v2

    :cond_4
    add-int v15, v15, p9

    if-lt v15, v1, :cond_5

    sub-int/2addr v15, v1

    :cond_5
    add-int v8, v8, p12

    if-gez v8, :cond_6

    and-int v2, v8, v17

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    :cond_6
    add-int v7, v7, p11

    move/from16 v2, p8

    if-lt v7, v2, :cond_7

    sub-int/2addr v7, v2

    :cond_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, p2

    move/from16 v6, p3

    move/from16 v9, p4

    goto/16 :goto_2

    :cond_8
    move/from16 p3, v6

    move/from16 p4, v9

    const/16 v16, 0x0

    add-int v9, p4, p14

    if-gez v9, :cond_9

    and-int v6, v9, v17

    add-int/lit8 v7, p3, 0x1

    move v9, v6

    move v6, v7

    goto :goto_4

    :cond_9
    move/from16 v6, p3

    :goto_4
    add-int v6, v6, p13

    if-lt v6, v1, :cond_a

    sub-int/2addr v6, v1

    :cond_a
    add-int v10, p2, p16

    if-gez v10, :cond_b

    and-int v7, v10, v17

    add-int/lit8 v8, p1, 0x1

    move v10, v7

    goto :goto_5

    :cond_b
    move/from16 v8, p1

    :goto_5
    add-int v8, v8, p15

    if-lt v8, v2, :cond_c

    sub-int/2addr v8, v2

    :cond_c
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, p6

    goto/16 :goto_1

    :cond_d
    return-void
.end method
