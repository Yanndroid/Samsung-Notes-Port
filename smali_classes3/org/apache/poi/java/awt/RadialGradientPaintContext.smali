.class final Lorg/apache/poi/java/awt/RadialGradientPaintContext;
.super Lorg/apache/poi/java/awt/MultipleGradientPaintContext;
.source "SourceFile"


# static fields
.field private static final SCALEBACK:F = 0.99f

.field private static final SQRT_LUT_SIZE:I = 0x800

.field private static sqrtLut:[F


# instance fields
.field private centerX:F

.field private centerY:F

.field private constA:F

.field private constB:F

.field private focusX:F

.field private focusY:F

.field private gDeltaDelta:F

.field private isNonCyclic:Z

.field private isSimpleFocus:Z

.field private radius:F

.field private radiusSq:F

.field private trivial:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x801

    new-array v0, v0, [F

    sput-object v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->sqrtLut:[F

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->sqrtLut:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    int-to-float v2, v0

    const/high16 v3, 0x45000000    # 2048.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/RadialGradientPaint;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;FFFFF[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;)V
    .locals 16

    move-object/from16 v11, p0

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v10, p11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move v14, v10

    move-object/from16 v10, p15

    invoke-direct/range {v0 .. v10}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;-><init>(Lorg/apache/poi/java/awt/MultipleGradientPaint;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/RenderingHints;[F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;)V

    const/4 v0, 0x0

    iput-boolean v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->isSimpleFocus:Z

    iput-boolean v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->isNonCyclic:Z

    iput v12, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerX:F

    iput v13, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerY:F

    iput v15, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusX:F

    iput v14, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusY:F

    move/from16 v1, p9

    iput v1, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->radius:F

    cmpl-float v2, v15, v12

    const/4 v3, 0x1

    if-nez v2, :cond_0

    cmpl-float v2, p11, v13

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->isSimpleFocus:Z

    sget-object v2, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    move-object/from16 v4, p14

    if-ne v4, v2, :cond_1

    move v0, v3

    :cond_1
    iput-boolean v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->isNonCyclic:Z

    mul-float v0, v1, v1

    iput v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->radiusSq:F

    sub-float v1, v15, v12

    sub-float v2, p11, v13

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    const v5, 0x3f7d70a4    # 0.99f

    mul-float v6, v0, v5

    float-to-double v6, v6

    cmpl-double v6, v3, v6

    if-lez v6, :cond_2

    mul-float/2addr v0, v5

    float-to-double v5, v0

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    mul-float/2addr v1, v0

    mul-float/2addr v2, v0

    iget v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerX:F

    add-float/2addr v0, v1

    iput v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusX:F

    iget v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerY:F

    add-float/2addr v0, v2

    iput v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusY:F

    :cond_2
    iget v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->radiusSq:F

    mul-float/2addr v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->trivial:F

    iget v0, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a02:F

    iget v1, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerX:F

    sub-float/2addr v0, v1

    iput v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->constA:F

    iget v0, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a12:F

    iget v1, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerY:F

    sub-float/2addr v0, v1

    iput v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->constB:F

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a00:F

    mul-float/2addr v1, v1

    iget v2, v11, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a10:F

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget v0, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->radiusSq:F

    div-float/2addr v1, v0

    iput v1, v11, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->gDeltaDelta:F

    return-void
.end method

.method private cyclicCircularGradientFillRaster([IIIIIII)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p6

    iget v2, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->radiusSq:F

    neg-float v2, v2

    iget v3, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerX:F

    mul-float v4, v3, v3

    add-float/2addr v2, v4

    iget v4, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerY:F

    mul-float v5, v4, v4

    add-float/2addr v2, v5

    float-to-double v5, v2

    iget v2, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a00:F

    move/from16 v7, p4

    int-to-float v7, v7

    mul-float/2addr v2, v7

    iget v8, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a01:F

    move/from16 v9, p5

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v2, v8

    iget v8, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a02:F

    add-float/2addr v2, v8

    iget v8, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a10:F

    mul-float/2addr v8, v7

    iget v7, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a11:F

    mul-float/2addr v7, v9

    add-float/2addr v8, v7

    iget v7, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a12:F

    add-float/2addr v8, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v4, v7

    const/high16 v7, -0x40000000    # -2.0f

    mul-float/2addr v3, v7

    add-int v7, v1, p3

    move/from16 v10, p2

    move/from16 v11, p7

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_4

    iget v13, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a01:F

    int-to-float v14, v12

    mul-float/2addr v13, v14

    add-float/2addr v13, v2

    iget v15, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a11:F

    mul-float/2addr v15, v14

    add-float/2addr v15, v8

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v1, :cond_3

    iget v9, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusX:F

    cmpl-float v16, v13, v9

    move/from16 p4, v2

    if-nez v16, :cond_1

    float-to-double v1, v9

    iget v9, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerY:F

    move-wide/from16 v17, v1

    float-to-double v1, v9

    iget v9, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusY:F

    cmpl-float v9, v15, v9

    if-lez v9, :cond_0

    iget v9, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->trivial:F

    move/from16 p5, v8

    float-to-double v8, v9

    goto :goto_2

    :cond_0
    move/from16 p5, v8

    iget v8, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->trivial:F

    neg-float v8, v8

    float-to-double v8, v8

    :goto_2
    add-double/2addr v1, v8

    move-wide v8, v1

    move/from16 v20, v3

    move/from16 v16, v12

    move/from16 p2, v15

    move-wide/from16 v1, v17

    move/from16 v17, v14

    goto :goto_3

    :cond_1
    move/from16 p5, v8

    iget v1, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusY:F

    sub-float v1, v15, v1

    sub-float v2, v13, v9

    div-float/2addr v1, v2

    float-to-double v1, v1

    float-to-double v8, v15

    move/from16 v16, v12

    float-to-double v11, v13

    mul-double/2addr v11, v1

    sub-double/2addr v8, v11

    mul-double v11, v1, v1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v11, v11, v17

    move/from16 v17, v14

    move/from16 p2, v15

    float-to-double v14, v3

    const-wide/high16 v18, -0x4000000000000000L    # -2.0

    mul-double v18, v18, v1

    move/from16 v20, v3

    iget v3, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->centerY:F

    move-wide/from16 v21, v1

    float-to-double v1, v3

    sub-double/2addr v1, v8

    mul-double v18, v18, v1

    add-double v14, v14, v18

    float-to-double v1, v4

    sub-double v1, v8, v1

    mul-double/2addr v1, v8

    add-double/2addr v1, v5

    mul-double v18, v14, v14

    const-wide/high16 v23, 0x4010000000000000L    # 4.0

    mul-double v23, v23, v11

    mul-double v23, v23, v1

    sub-double v18, v18, v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    neg-double v2, v14

    iget v14, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusX:F

    cmpg-float v14, v13, v14

    if-gez v14, :cond_2

    neg-float v1, v1

    :cond_2
    float-to-double v14, v1

    add-double/2addr v2, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v14

    div-double v1, v2, v11

    mul-double v11, v21, v1

    add-double/2addr v8, v11

    :goto_3
    iget v3, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusX:F

    sub-float v11, v13, v3

    mul-float/2addr v11, v11

    iget v12, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->focusY:F

    sub-float v15, p2, v12

    mul-float/2addr v15, v15

    add-float/2addr v11, v15

    double-to-float v1, v1

    sub-float/2addr v1, v3

    mul-float/2addr v1, v1

    double-to-float v2, v8

    sub-float/2addr v2, v12

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    div-float/2addr v11, v1

    float-to-double v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-int v14, v10, v17

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->indexIntoGradientsArrays(F)I

    move-result v1

    aput v1, p1, v14

    iget v1, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a00:F

    add-float/2addr v13, v1

    iget v1, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a10:F

    add-float v15, p2, v1

    add-int/lit8 v14, v17, 0x1

    move/from16 v2, p4

    move/from16 v8, p5

    move/from16 v1, p6

    move/from16 v11, p7

    move/from16 v12, v16

    move/from16 v3, v20

    goto/16 :goto_1

    :cond_3
    move/from16 p4, v2

    move/from16 v20, v3

    move/from16 p5, v8

    move/from16 v16, v12

    add-int/2addr v10, v7

    add-int/lit8 v12, v16, 0x1

    move/from16 v1, p6

    move/from16 v11, p7

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private simpleNonCyclicFillRaster([IIIIIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p6

    iget v2, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a00:F

    move/from16 v3, p4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v4, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a01:F

    move/from16 v5, p5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iget v4, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->constA:F

    add-float/2addr v2, v4

    iget v4, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a10:F

    mul-float/2addr v4, v3

    iget v3, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a11:F

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    iget v3, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->constB:F

    add-float/2addr v4, v3

    iget v3, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->gDeltaDelta:F

    add-int v5, p3, v1

    iget-object v6, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    iget v7, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fastGradientArraySize:I

    aget v6, v6, v7

    move/from16 v9, p7

    move v8, v4

    const/4 v10, 0x0

    move v4, v2

    move/from16 v2, p2

    :goto_0
    if-ge v10, v9, :cond_4

    mul-float v11, v4, v4

    mul-float v12, v8, v8

    add-float/2addr v11, v12

    iget v12, v0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->radiusSq:F

    div-float/2addr v11, v12

    iget v13, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a00:F

    mul-float/2addr v13, v4

    iget v14, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a10:F

    mul-float/2addr v14, v8

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    div-float/2addr v13, v12

    div-float v12, v3, v14

    add-float/2addr v13, v12

    const/4 v12, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v12, v1, :cond_0

    cmpl-float v15, v11, v14

    if-ltz v15, :cond_0

    add-int v14, v2, v12

    aput v6, p1, v14

    add-float/2addr v11, v13

    add-float/2addr v13, v3

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    if-ge v12, v1, :cond_2

    cmpg-float v15, v11, v14

    if-gez v15, :cond_2

    const/4 v15, 0x0

    cmpg-float v15, v11, v15

    if-gtz v15, :cond_1

    const/4 v7, 0x0

    goto :goto_3

    :cond_1
    const/high16 v15, 0x45000000    # 2048.0f

    mul-float/2addr v15, v11

    float-to-int v7, v15

    sget-object v16, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->sqrtLut:[F

    aget v17, v16, v7

    add-int/lit8 v18, v7, 0x1

    aget v16, v16, v18

    sub-float v16, v16, v17

    int-to-float v7, v7

    sub-float/2addr v15, v7

    mul-float v15, v15, v16

    add-float v17, v17, v15

    iget v7, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->fastGradientArraySize:I

    int-to-float v7, v7

    mul-float v7, v7, v17

    float-to-int v7, v7

    :goto_3
    add-int v15, v2, v12

    iget-object v14, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->gradient:[I

    aget v7, v14, v7

    aput v7, p1, v15

    add-float/2addr v11, v13

    add-float/2addr v13, v3

    add-int/lit8 v12, v12, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    :goto_4
    if-ge v12, v1, :cond_3

    add-int v7, v2, v12

    aput v6, p1, v7

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_3
    add-int/2addr v2, v5

    iget v7, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a01:F

    add-float/2addr v4, v7

    iget v7, v0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->a11:F

    add-float/2addr v8, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public fillRaster([IIIIIII)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->isSimpleFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->isNonCyclic:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaintContext;->isSimpleLookup:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p7}, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->simpleNonCyclicFillRaster([IIIIIII)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p7}, Lorg/apache/poi/java/awt/RadialGradientPaintContext;->cyclicCircularGradientFillRaster([IIIIIII)V

    :goto_0
    return-void
.end method
