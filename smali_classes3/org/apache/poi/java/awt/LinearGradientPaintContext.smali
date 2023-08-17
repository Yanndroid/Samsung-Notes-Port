.class final Lorg/apache/poi/java/awt/LinearGradientPaintContext;
.super Lorg/apache/poi/java/awt/MultipleGradientPaintContext;
.source "SourceFile"


# instance fields
.field private dgdX:F

.field private dgdY:F

.field private gc:F


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/LinearGradientPaint;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;)V
    .locals 12

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;-><init>(Lorg/apache/poi/java/awt/MultipleGradientPaint;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;)V

    invoke-virtual/range {p7 .. p7}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual/range {p7 .. p7}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual/range {p8 .. p8}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual/range {p8 .. p8}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v0

    sub-float/2addr v3, v1

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    iget v4, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a00:F

    mul-float/2addr v4, v2

    iget v5, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a10:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, v11, Lorg/apache/poi/java/awt/LinearGradientPaintContext;->dgdX:F

    iget v4, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a01:F

    mul-float/2addr v4, v2

    iget v5, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a11:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, v11, Lorg/apache/poi/java/awt/LinearGradientPaintContext;->dgdY:F

    iget v4, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a02:F

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    iget v0, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a12:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    iput v4, v11, Lorg/apache/poi/java/awt/LinearGradientPaintContext;->gc:F

    return-void
.end method


# virtual methods
.method public fillRaster([IIIIIII)V
    .locals 5

    add-int v0, p2, p6

    iget v1, p0, Lorg/apache/poi/java/awt/LinearGradientPaintContext;->dgdX:F

    int-to-float p4, p4

    mul-float/2addr v1, p4

    iget p4, p0, Lorg/apache/poi/java/awt/LinearGradientPaintContext;->gc:F

    add-float/2addr v1, p4

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p7, :cond_1

    iget v2, p0, Lorg/apache/poi/java/awt/LinearGradientPaintContext;->dgdY:F

    add-int v3, p5, p4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    :goto_1
    if-ge p2, v0, :cond_0

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->indexIntoGradientsArrays(F)I

    move-result v4

    aput v4, p1, p2

    iget p2, p0, Lorg/apache/poi/java/awt/LinearGradientPaintContext;->dgdX:F

    add-float/2addr v2, p2

    move p2, v3

    goto :goto_1

    :cond_0
    add-int/2addr p2, p3

    add-int v0, p2, p6

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
