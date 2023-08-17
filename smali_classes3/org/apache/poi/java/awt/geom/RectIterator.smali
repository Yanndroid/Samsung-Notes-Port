.class Lorg/apache/poi/java/awt/geom/RectIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/geom/PathIterator;


# instance fields
.field public affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

.field public h:D

.field public index:I

.field public w:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->x:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->y:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->w:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->h:D

    iput-object p2, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    iget-wide p1, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->w:D

    const-wide/16 v2, 0x0

    cmpg-double p1, p1, v2

    if-ltz p1, :cond_0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x6

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->index:I

    :cond_1
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->x:D

    const/4 v3, 0x0

    aput-wide v1, p1, v3

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->y:D

    const/4 v4, 0x1

    aput-wide v1, p1, v4

    const/4 v1, 0x2

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    aget-wide v5, p1, v3

    iget-wide v7, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->w:D

    add-double/2addr v5, v7

    aput-wide v5, p1, v3

    :cond_2
    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    aget-wide v0, p1, v4

    iget-wide v5, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->h:D

    add-double/2addr v0, v5

    aput-wide v0, p1, v4

    :cond_4
    iget-object v5, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v5, :cond_5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, p1

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_5
    iget p1, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->index:I

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v3, v4

    :goto_0
    return v3

    :cond_7
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "rect iterator out of bounds"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public currentSegment([F)I
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->x:D

    double-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p1, v2

    iget-wide v3, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->y:D

    double-to-float v1, v3

    const/4 v3, 0x1

    aput v1, p1, v3

    const/4 v1, 0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    aget v4, p1, v2

    iget-wide v5, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->w:D

    double-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, p1, v2

    :cond_2
    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    aget v0, p1, v3

    iget-wide v4, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->h:D

    double-to-float v1, v4

    add-float/2addr v0, v1

    aput v0, p1, v3

    :cond_4
    iget-object v4, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v4, :cond_5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_5
    iget p1, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->index:I

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v3

    :goto_0
    return v2

    :cond_7
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "rect iterator out of bounds"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWindingRule()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->index:I

    const/4 v1, 0x5

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

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/geom/RectIterator;->index:I

    return-void
.end method
