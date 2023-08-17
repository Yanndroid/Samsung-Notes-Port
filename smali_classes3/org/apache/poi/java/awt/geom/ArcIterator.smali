.class Lorg/apache/poi/java/awt/geom/ArcIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/geom/PathIterator;


# instance fields
.field public affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

.field public angStRad:D

.field public arcSegs:I

.field public cv:D

.field public h:D

.field public increment:D

.field public index:I

.field public lineSegs:I

.field public w:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Arc2D;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->w:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->h:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->w:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->x:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->h:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->y:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Arc2D;->getAngleStart()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->angStRad:D

    iput-object p2, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Arc2D;->getAngleExtent()D

    move-result-wide v0

    neg-double v0, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double p2, v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-gez p2, :cond_1

    const-wide v5, -0x3f89800000000000L    # -360.0

    cmpg-double p2, v0, v5

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x4056800000000000L    # 90.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p2, v5

    iput p2, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->arcSegs:I

    int-to-double v5, p2

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->increment:D

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/geom/ArcIterator;->btan(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->cv:D

    cmpl-double p2, v0, v3

    if-nez p2, :cond_2

    iput v2, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->arcSegs:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x4

    iput p2, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->arcSegs:I

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v5, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->increment:D

    const-wide v7, 0x3fe1ac5111534a21L    # 0.5522847498307933

    iput-wide v7, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->cv:D

    cmpg-double p2, v0, v3

    if-gez p2, :cond_2

    neg-double v0, v5

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->increment:D

    neg-double v0, v7

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->cv:D

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Arc2D;->getArcType()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    goto :goto_2

    :cond_3
    iput p2, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->lineSegs:I

    goto :goto_2

    :cond_4
    iput v2, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->lineSegs:I

    :goto_2
    iget-wide p1, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->w:D

    cmpg-double p1, p1, v3

    if-ltz p1, :cond_5

    iget-wide p1, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->h:D

    cmpg-double p1, p1, v3

    if-gez p1, :cond_6

    :cond_5
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->lineSegs:I

    iput p1, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->arcSegs:I

    :cond_6
    return-void
.end method

.method private static btan(D)D
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/ArcIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    iget-wide v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->angStRad:D

    iget v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->index:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_1

    iget-wide v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->x:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-wide v9, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->w:D

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    aput-wide v3, p1, v7

    iget-wide v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-wide v5, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->h:D

    mul-double/2addr v1, v5

    add-double/2addr v3, v1

    aput-wide v3, p1, v8

    iget-object v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_0
    return v7

    :cond_1
    iget v4, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->arcSegs:I

    const/4 v5, 0x4

    if-le v3, v4, :cond_4

    iget v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->lineSegs:I

    add-int/2addr v4, v1

    if-ne v3, v4, :cond_2

    return v5

    :cond_2
    iget-wide v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->x:D

    aput-wide v1, p1, v7

    iget-wide v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->y:D

    aput-wide v1, p1, v8

    iget-object v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_3
    return v8

    :cond_4
    iget-wide v9, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->increment:D

    sub-int/2addr v3, v8

    int-to-double v3, v3

    mul-double/2addr v9, v3

    add-double/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iget-wide v11, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->x:D

    iget-wide v13, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->cv:D

    mul-double v15, v13, v9

    sub-double v15, v3, v15

    iget-wide v5, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->w:D

    mul-double/2addr v15, v5

    add-double/2addr v11, v15

    aput-wide v11, p1, v7

    iget-wide v5, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->y:D

    mul-double/2addr v13, v3

    add-double/2addr v9, v13

    iget-wide v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->h:D

    mul-double/2addr v9, v3

    add-double/2addr v5, v9

    aput-wide v5, p1, v8

    iget-wide v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->increment:D

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const/4 v5, 0x2

    iget-wide v6, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->x:D

    iget-wide v8, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->cv:D

    mul-double v10, v8, v1

    add-double/2addr v10, v3

    iget-wide v12, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->w:D

    mul-double/2addr v10, v12

    add-double/2addr v10, v6

    aput-wide v10, p1, v5

    iget-wide v10, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->y:D

    mul-double/2addr v8, v3

    sub-double v8, v1, v8

    iget-wide v14, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->h:D

    mul-double/2addr v8, v14

    add-double/2addr v8, v10

    const/16 v16, 0x3

    aput-wide v8, p1, v16

    mul-double/2addr v3, v12

    add-double/2addr v6, v3

    const/4 v3, 0x4

    aput-wide v6, p1, v3

    const/4 v3, 0x5

    mul-double/2addr v1, v14

    add-double/2addr v10, v1

    aput-wide v10, p1, v3

    iget-object v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v2, p1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_5
    return v16

    :cond_6
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "arc iterator out of bounds"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public currentSegment([F)I
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/ArcIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    iget-wide v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->angStRad:D

    iget v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->index:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_1

    iget-wide v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->x:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-wide v9, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->w:D

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, p1, v7

    iget-wide v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-wide v5, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->h:D

    mul-double/2addr v1, v5

    add-double/2addr v3, v1

    double-to-float v1, v3

    aput v1, p1, v8

    iget-object v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_0
    return v7

    :cond_1
    iget v4, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->arcSegs:I

    const/4 v5, 0x4

    if-le v3, v4, :cond_4

    iget v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->lineSegs:I

    add-int/2addr v4, v1

    if-ne v3, v4, :cond_2

    return v5

    :cond_2
    iget-wide v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->x:D

    double-to-float v1, v1

    aput v1, p1, v7

    iget-wide v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->y:D

    double-to-float v1, v1

    aput v1, p1, v8

    iget-object v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_3
    return v8

    :cond_4
    iget-wide v9, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->increment:D

    sub-int/2addr v3, v8

    int-to-double v3, v3

    mul-double/2addr v9, v3

    add-double/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iget-wide v11, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->x:D

    iget-wide v13, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->cv:D

    mul-double v15, v13, v9

    sub-double v15, v3, v15

    iget-wide v5, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->w:D

    mul-double/2addr v15, v5

    add-double/2addr v11, v15

    double-to-float v5, v11

    aput v5, p1, v7

    iget-wide v5, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->y:D

    mul-double/2addr v13, v3

    add-double/2addr v9, v13

    iget-wide v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->h:D

    mul-double/2addr v9, v3

    add-double/2addr v5, v9

    double-to-float v3, v5

    aput v3, p1, v8

    iget-wide v3, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->increment:D

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const/4 v5, 0x2

    iget-wide v6, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->x:D

    iget-wide v8, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->cv:D

    mul-double v10, v8, v1

    add-double/2addr v10, v3

    iget-wide v12, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->w:D

    mul-double/2addr v10, v12

    add-double/2addr v10, v6

    double-to-float v10, v10

    aput v10, p1, v5

    iget-wide v10, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->y:D

    mul-double/2addr v8, v3

    sub-double v8, v1, v8

    iget-wide v14, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->h:D

    mul-double/2addr v8, v14

    add-double/2addr v8, v10

    double-to-float v5, v8

    const/4 v8, 0x3

    aput v5, p1, v8

    mul-double/2addr v3, v12

    add-double/2addr v6, v3

    double-to-float v3, v6

    const/4 v4, 0x4

    aput v3, p1, v4

    const/4 v3, 0x5

    mul-double/2addr v1, v14

    add-double/2addr v10, v1

    double-to-float v1, v10

    aput v1, p1, v3

    iget-object v1, v0, Lorg/apache/poi/java/awt/geom/ArcIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v2, p1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_5
    return v8

    :cond_6
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "arc iterator out of bounds"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getWindingRule()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->index:I

    iget v1, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->arcSegs:I

    iget v2, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->lineSegs:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/geom/ArcIterator;->index:I

    return-void
.end method
