.class Lorg/apache/poi/java/awt/geom/AreaIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/geom/PathIterator;


# instance fields
.field private curves:Ljava/util/Vector;

.field private index:I

.field private prevcurve:Lorg/apache/poi/sun/awt/geom/Curve;

.field private thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

.field private transform:Lorg/apache/poi/java/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->curves:Ljava/util/Vector;

    iput-object p2, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->transform:Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/sun/awt/geom/Curve;

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    :cond_0
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->prevcurve:Lorg/apache/poi/sun/awt/geom/Curve;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/geom/Curve;->getOrder()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    invoke-virtual {v2}, Lorg/apache/poi/sun/awt/geom/Curve;->getX0()D

    move-result-wide v2

    aput-wide v2, p1, v0

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/geom/Curve;->getY0()D

    move-result-wide v2

    aput-wide v2, p1, v1

    move v8, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    return p1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/awt/geom/Curve;->getSegment([D)I

    move-result v0

    iget-object v2, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    invoke-virtual {v2}, Lorg/apache/poi/sun/awt/geom/Curve;->getOrder()I

    move-result v2

    if-nez v2, :cond_3

    move v8, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    move v8, v2

    :goto_1
    iget-object v3, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->transform:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_4
    return v1

    :cond_5
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "area iterator out of bounds"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public currentSegment([F)I
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [D

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/geom/AreaIterator;->currentSegment([D)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    mul-int/lit8 v5, v2, 0x2

    if-ge v3, v5, :cond_3

    aget-wide v5, v0, v3

    double-to-float v5, v5

    aput v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getWindingRule()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->prevcurve:Lorg/apache/poi/sun/awt/geom/Curve;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->prevcurve:Lorg/apache/poi/sun/awt/geom/Curve;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->prevcurve:Lorg/apache/poi/sun/awt/geom/Curve;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    iput-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->prevcurve:Lorg/apache/poi/sun/awt/geom/Curve;

    iget v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->index:I

    iget-object v2, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->curves:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->curves:Ljava/util/Vector;

    iget v2, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->index:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/awt/geom/Curve;

    iput-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/geom/Curve;->getOrder()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->prevcurve:Lorg/apache/poi/sun/awt/geom/Curve;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/geom/Curve;->getX1()D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/geom/Curve;->getX0()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->prevcurve:Lorg/apache/poi/sun/awt/geom/Curve;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/geom/Curve;->getY1()D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/geom/Curve;->getY0()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/apache/poi/java/awt/geom/AreaIterator;->thiscurve:Lorg/apache/poi/sun/awt/geom/Curve;

    :cond_2
    :goto_1
    return-void
.end method
