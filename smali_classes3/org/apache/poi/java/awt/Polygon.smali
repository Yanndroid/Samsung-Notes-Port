.class public Lorg/apache/poi/java/awt/Polygon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Shape;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;
    }
.end annotation


# static fields
.field private static final MIN_LENGTH:I = 0x4

.field private static final serialVersionUID:J = -0x59a6bfa6a13b9c51L


# instance fields
.field public bounds:Lorg/apache/poi/java/awt/Rectangle;

.field public npoints:I

.field public xpoints:[I

.field public ypoints:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    return-void
.end method

.method public constructor <init>([I[II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    if-gt p3, v0, :cond_1

    array-length v0, p2

    if-gt p3, v0, :cond_1

    if-ltz p3, :cond_0

    iput p3, p0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NegativeArraySizeException;

    const-string p2, "npoints < 0"

    invoke-direct {p1, p2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "npoints > xpoints.length || npoints > ypoints.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCrossings(DDDD)Lorg/apache/poi/sun/awt/geom/Crossings;
    .locals 16

    move-object/from16 v0, p0

    new-instance v10, Lorg/apache/poi/sun/awt/geom/Crossings$EvenOdd;

    move-object v1, v10

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lorg/apache/poi/sun/awt/geom/Crossings$EvenOdd;-><init>(DDDD)V

    iget-object v1, v0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    iget v2, v0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    add-int/lit8 v3, v2, -0x1

    aget v1, v1, v3

    iget-object v3, v0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    const/4 v3, 0x0

    move v11, v3

    :goto_0
    iget v3, v0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    if-ge v11, v3, :cond_1

    iget-object v3, v0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    aget v12, v3, v11

    iget-object v3, v0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    aget v13, v3, v11

    int-to-double v3, v1

    int-to-double v5, v2

    int-to-double v7, v12

    int-to-double v14, v13

    move-object v1, v10

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v14

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/sun/awt/geom/Crossings;->accumulateLine(DDDD)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    move v1, v12

    move v2, v13

    goto :goto_0

    :cond_1
    return-object v10
.end method


# virtual methods
.method public addPoint(II)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    iget v1, p0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    aput p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    iget-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Polygon;->updateBounds(II)V

    :cond_4
    return-void
.end method

.method public calculateBounds([I[II)V
    .locals 6

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v3

    :goto_0
    if-ge v4, p3, :cond_0

    aget v5, p1, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v5, p2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/Rectangle;

    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    invoke-direct {p1, v2, v3, v0, v1}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Polygon;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    return-void
.end method

.method public contains(DD)Z
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget v5, v0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    const/4 v7, 0x2

    if-le v5, v7, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Polygon;->getBoundingBox()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->contains(DD)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v5, v0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    iget v7, v0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    add-int/lit8 v8, v7, -0x1

    aget v5, v5, v8

    iget-object v8, v0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    aget v7, v8, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v11, v0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    if-ge v8, v11, :cond_c

    iget-object v11, v0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    aget v11, v11, v8

    iget-object v12, v0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    aget v12, v12, v8

    if-ne v12, v7, :cond_2

    :cond_1
    :goto_1
    move/from16 v17, v10

    goto/16 :goto_5

    :cond_2
    if-ge v11, v5, :cond_4

    int-to-double v13, v5

    cmpl-double v13, v1, v13

    if-ltz v13, :cond_3

    goto :goto_1

    :cond_3
    move v13, v11

    goto :goto_2

    :cond_4
    int-to-double v13, v11

    cmpl-double v13, v1, v13

    if-ltz v13, :cond_5

    goto :goto_1

    :cond_5
    move v13, v5

    :goto_2
    if-ge v12, v7, :cond_8

    int-to-double v14, v12

    cmpg-double v16, v3, v14

    if-ltz v16, :cond_1

    move/from16 v17, v10

    int-to-double v9, v7

    cmpl-double v9, v3, v9

    if-ltz v9, :cond_6

    goto :goto_5

    :cond_6
    int-to-double v9, v13

    cmpg-double v9, v1, v9

    if-gez v9, :cond_7

    goto :goto_3

    :cond_7
    int-to-double v9, v11

    sub-double v9, v1, v9

    sub-double v13, v3, v14

    goto :goto_4

    :cond_8
    move/from16 v17, v10

    int-to-double v9, v7

    cmpg-double v14, v3, v9

    if-ltz v14, :cond_b

    int-to-double v14, v12

    cmpl-double v14, v3, v14

    if-ltz v14, :cond_9

    goto :goto_5

    :cond_9
    int-to-double v13, v13

    cmpg-double v13, v1, v13

    if-gez v13, :cond_a

    :goto_3
    add-int/lit8 v10, v17, 0x1

    goto :goto_6

    :cond_a
    int-to-double v13, v5

    sub-double v13, v1, v13

    sub-double v9, v3, v9

    move-wide/from16 v18, v9

    move-wide v9, v13

    move-wide/from16 v13, v18

    :goto_4
    sub-int/2addr v7, v12

    int-to-double v6, v7

    div-double/2addr v13, v6

    sub-int/2addr v5, v11

    int-to-double v5, v5

    mul-double/2addr v13, v5

    cmpg-double v5, v9, v13

    if-gez v5, :cond_b

    goto :goto_3

    :cond_b
    :goto_5
    move/from16 v10, v17

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move v5, v11

    move v7, v12

    const/4 v9, 0x1

    goto :goto_0

    :cond_c
    move v5, v9

    move/from16 v17, v10

    and-int/lit8 v1, v17, 0x1

    if-eqz v1, :cond_d

    move v6, v5

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    :goto_7
    return v6

    :cond_e
    :goto_8
    const/4 v1, 0x0

    return v1
.end method

.method public contains(DDDD)Z
    .locals 15

    move-wide/from16 v9, p3

    move-object v11, p0

    iget v0, v11, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    const/4 v12, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Polygon;->getBoundingBox()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->intersects(DDDD)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-double v5, p1, p5

    add-double v13, v9, p7

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide v7, v13

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/Polygon;->getCrossings(DDDD)Lorg/apache/poi/sun/awt/geom/Crossings;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v9, v10, v13, v14}, Lorg/apache/poi/sun/awt/geom/Crossings;->covers(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x1

    :cond_1
    :goto_0
    return v12
.end method

.method public contains(II)Z
    .locals 2

    int-to-double v0, p1

    int-to-double p1, p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/poi/java/awt/Polygon;->contains(DD)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/apache/poi/java/awt/Point;)Z
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Polygon;->contains(II)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/apache/poi/java/awt/geom/Point2D;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/java/awt/Polygon;->contains(DD)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/apache/poi/java/awt/geom/Rectangle2D;)Z
    .locals 9

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/java/awt/Polygon;->contains(DDDD)Z

    move-result p1

    return p1
.end method

.method public getBoundingBox()Lorg/apache/poi/java/awt/Rectangle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Rectangle;-><init>()V

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    iget-object v2, p0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/java/awt/Polygon;->calculateBounds([I[II)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Rectangle;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Polygon;->getBoundingBox()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Polygon;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getPathIterator(Lorg/apache/poi/java/awt/geom/AffineTransform;)Lorg/apache/poi/java/awt/geom/PathIterator;
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;

    invoke-direct {v0, p0, p0, p1}, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;-><init>(Lorg/apache/poi/java/awt/Polygon;Lorg/apache/poi/java/awt/Polygon;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lorg/apache/poi/java/awt/geom/AffineTransform;D)Lorg/apache/poi/java/awt/geom/PathIterator;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Polygon;->getPathIterator(Lorg/apache/poi/java/awt/geom/AffineTransform;)Lorg/apache/poi/java/awt/geom/PathIterator;

    move-result-object p1

    return-object p1
.end method

.method public inside(II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-double v0, p1

    int-to-double p1, p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/poi/java/awt/Polygon;->contains(DD)Z

    move-result p1

    return p1
.end method

.method public intersects(DDDD)Z
    .locals 20

    move-object/from16 v9, p0

    iget v0, v9, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    const/4 v10, 0x0

    if-lez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/Polygon;->getBoundingBox()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v11

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    move-wide/from16 v16, p5

    move-wide/from16 v18, p7

    invoke-virtual/range {v11 .. v19}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->intersects(DDDD)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-double v5, p1, p5

    add-double v7, p3, p7

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/Polygon;->getCrossings(DDDD)Lorg/apache/poi/sun/awt/geom/Crossings;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/geom/Crossings;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v10, 0x1

    :cond_2
    :goto_0
    return v10
.end method

.method public intersects(Lorg/apache/poi/java/awt/geom/Rectangle2D;)Z
    .locals 9

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/java/awt/Polygon;->intersects(DDDD)Z

    move-result p1

    return p1
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    return-void
.end method

.method public translate(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    aget v2, v1, v0

    add-int/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    aget v2, v1, v0

    add-int/2addr v2, p2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/Rectangle;->translate(II)V

    :cond_1
    return-void
.end method

.method public updateBounds(II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Polygon;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-ge p1, v1, :cond_0

    sub-int/2addr v1, p1

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iput p1, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    :goto_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/Polygon;->bounds:Lorg/apache/poi/java/awt/Rectangle;

    iget v0, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-ge p2, v0, :cond_1

    sub-int/2addr v0, p2

    add-int/2addr v1, v0

    iput v1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iput p2, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    goto :goto_1

    :cond_1
    sub-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    :goto_1
    return-void
.end method
