.class Lorg/apache/poi/java/awt/geom/LineIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/geom/PathIterator;


# instance fields
.field public affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

.field public index:I

.field public line:Lorg/apache/poi/java/awt/geom/Line2D;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Line2D;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->line:Lorg/apache/poi/java/awt/geom/Line2D;

    iput-object p2, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/LineIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->index:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->line:Lorg/apache/poi/java/awt/geom/Line2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Line2D;->getX1()D

    move-result-wide v3

    aput-wide v3, p1, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->line:Lorg/apache/poi/java/awt/geom/Line2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Line2D;->getY1()D

    move-result-wide v3

    aput-wide v3, p1, v1

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->line:Lorg/apache/poi/java/awt/geom/Line2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Line2D;->getX2()D

    move-result-wide v3

    aput-wide v3, p1, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->line:Lorg/apache/poi/java/awt/geom/Line2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Line2D;->getY2()D

    move-result-wide v2

    aput-wide v2, p1, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_1
    return v1

    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "line iterator out of bounds"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public currentSegment([F)I
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/LineIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->index:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->line:Lorg/apache/poi/java/awt/geom/Line2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Line2D;->getX1()D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->line:Lorg/apache/poi/java/awt/geom/Line2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Line2D;->getY1()D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v1

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->line:Lorg/apache/poi/java/awt/geom/Line2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Line2D;->getX2()D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->line:Lorg/apache/poi/java/awt/geom/Line2D;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/geom/Line2D;->getY2()D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_1
    return v1

    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "line iterator out of bounds"

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

    iget v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->index:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/geom/LineIterator;->index:I

    return-void
.end method
