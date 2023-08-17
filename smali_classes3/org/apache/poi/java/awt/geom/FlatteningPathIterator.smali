.class public Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/geom/PathIterator;


# static fields
.field public static final GROW_SIZE:I = 0x18


# instance fields
.field public curx:D

.field public cury:D

.field public done:Z

.field public hold:[D

.field public holdEnd:I

.field public holdIndex:I

.field public holdType:I

.field public levelIndex:I

.field public levels:[I

.field public limit:I

.field public movx:D

.field public movy:D

.field public squareflat:D

.field public src:Lorg/apache/poi/java/awt/geom/PathIterator;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/geom/PathIterator;D)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;-><init>(Lorg/apache/poi/java/awt/geom/PathIterator;DI)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/PathIterator;DI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_1

    if-ltz p4, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->src:Lorg/apache/poi/java/awt/geom/PathIterator;

    mul-double/2addr p2, p2

    iput-wide p2, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->squareflat:D

    iput p4, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->limit:I

    add-int/lit8 p4, p4, 0x1

    new-array p1, p4, [I

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levels:[I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->next(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "limit must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "flatness must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private next(Z)V
    .locals 13

    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    iget v1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdEnd:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->src:Lorg/apache/poi/java/awt/geom/PathIterator;

    invoke-interface {p1}, Lorg/apache/poi/java/awt/geom/PathIterator;->next()V

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->src:Lorg/apache/poi/java/awt/geom/PathIterator;

    invoke-interface {p1}, Lorg/apache/poi/java/awt/geom/PathIterator;->isDone()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->done:Z

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->src:Lorg/apache/poi/java/awt/geom/PathIterator;

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    invoke-interface {p1, v0}, Lorg/apache/poi/java/awt/geom/PathIterator;->currentSegment([D)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdType:I

    iput v2, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levelIndex:I

    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levels:[I

    aput v2, p1, v2

    :cond_2
    iget p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdType:I

    if-eqz p1, :cond_d

    if-eq p1, v3, :cond_d

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq p1, v5, :cond_9

    if-eq p1, v1, :cond_5

    if-eq p1, v6, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->movx:D

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->curx:D

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->movy:D

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->cury:D

    :cond_4
    :goto_0
    iput v2, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    iput v2, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdEnd:I

    goto/16 :goto_6

    :cond_5
    iget p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    iget v7, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdEnd:I

    if-lt p1, v7, :cond_6

    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    array-length v7, p1

    add-int/lit8 v7, v7, -0x8

    iput v7, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    array-length v8, p1

    sub-int/2addr v8, v5

    iput v8, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdEnd:I

    add-int/lit8 v8, v7, 0x0

    iget-wide v9, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->curx:D

    aput-wide v9, p1, v8

    add-int/lit8 v8, v7, 0x1

    iget-wide v9, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->cury:D

    aput-wide v9, p1, v8

    add-int/lit8 v8, v7, 0x2

    aget-wide v9, p1, v2

    aput-wide v9, p1, v8

    add-int/lit8 v2, v7, 0x3

    aget-wide v8, p1, v3

    aput-wide v8, p1, v2

    add-int/lit8 v2, v7, 0x4

    aget-wide v8, p1, v5

    aput-wide v8, p1, v2

    add-int/lit8 v2, v7, 0x5

    aget-wide v8, p1, v1

    aput-wide v8, p1, v2

    add-int/lit8 v1, v7, 0x6

    aget-wide v5, p1, v6

    iput-wide v5, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->curx:D

    aput-wide v5, p1, v1

    add-int/lit8 v7, v7, 0x7

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->cury:D

    aput-wide v0, p1, v7

    :cond_6
    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levels:[I

    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levelIndex:I

    aget p1, p1, v0

    :goto_1
    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->limit:I

    if-ge p1, v0, :cond_8

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    iget v1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/geom/CubicCurve2D;->getFlatnessSq([DI)D

    move-result-wide v0

    iget-wide v5, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->squareflat:D

    cmpg-double v0, v0, v5

    if-gez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v4}, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->ensureHoldCapacity(I)V

    iget-object v9, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    iget v10, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 v8, v10, -0x6

    move-object v5, v9

    move v6, v10

    move-object v7, v9

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/java/awt/geom/CubicCurve2D;->subdivide([DI[DI[DI)V

    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levels:[I

    iget v1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levelIndex:I

    aput p1, v0, v1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levelIndex:I

    aput p1, v0, v1

    goto :goto_1

    :cond_8
    :goto_2
    iget p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/2addr p1, v4

    goto/16 :goto_5

    :cond_9
    iget p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    iget v7, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdEnd:I

    if-lt p1, v7, :cond_a

    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    array-length v7, p1

    sub-int/2addr v7, v4

    iput v7, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    array-length v4, p1

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdEnd:I

    add-int/lit8 v4, v7, 0x0

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->curx:D

    aput-wide v8, p1, v4

    add-int/lit8 v4, v7, 0x1

    iget-wide v8, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->cury:D

    aput-wide v8, p1, v4

    add-int/lit8 v4, v7, 0x2

    aget-wide v8, p1, v2

    aput-wide v8, p1, v4

    add-int/lit8 v2, v7, 0x3

    aget-wide v8, p1, v3

    aput-wide v8, p1, v2

    add-int/lit8 v2, v7, 0x4

    aget-wide v4, p1, v5

    iput-wide v4, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->curx:D

    aput-wide v4, p1, v2

    add-int/2addr v7, v0

    aget-wide v0, p1, v1

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->cury:D

    aput-wide v0, p1, v7

    :cond_a
    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levels:[I

    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levelIndex:I

    aget p1, p1, v0

    :goto_3
    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->limit:I

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    iget v1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/geom/QuadCurve2D;->getFlatnessSq([DI)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->squareflat:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v6}, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->ensureHoldCapacity(I)V

    iget-object v11, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    iget v12, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 v10, v12, -0x4

    move-object v7, v11

    move v8, v12

    move-object v9, v11

    invoke-static/range {v7 .. v12}, Lorg/apache/poi/java/awt/geom/QuadCurve2D;->subdivide([DI[DI[DI)V

    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    sub-int/2addr v0, v6

    iput v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levels:[I

    iget v1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levelIndex:I

    aput p1, v0, v1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levelIndex:I

    aput p1, v0, v1

    goto :goto_3

    :cond_c
    :goto_4
    iget p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/2addr p1, v6

    :goto_5
    iput p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    iget p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levelIndex:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->levelIndex:I

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    aget-wide v4, v0, v2

    iput-wide v4, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->curx:D

    aget-wide v6, v0, v3

    iput-wide v6, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->cury:D

    if-nez p1, :cond_4

    iput-wide v4, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->movx:D

    iput-wide v6, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->movy:D

    goto/16 :goto_0

    :goto_6
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    iget v3, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 v4, v3, 0x0

    aget-wide v4, v1, v4

    const/4 v6, 0x0

    aput-wide v4, p1, v6

    add-int/2addr v3, v2

    aget-wide v3, v1, v3

    aput-wide v3, p1, v2

    if-eqz v0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "flattening iterator out of bounds"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public currentSegment([F)I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    iget v3, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 v4, v3, 0x0

    aget-wide v4, v1, v4

    double-to-float v4, v4

    const/4 v5, 0x0

    aput v4, p1, v5

    add-int/2addr v3, v2

    aget-wide v3, v1, v3

    double-to-float v1, v3

    aput v1, p1, v2

    if-eqz v0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "flattening iterator out of bounds"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ensureHoldCapacity(I)V
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    sub-int p1, v0, p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    array-length v1, p1

    sub-int/2addr v1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, 0x18

    new-array v2, v2, [D

    add-int/lit8 v3, v0, 0x18

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->hold:[D

    iget p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    add-int/lit8 p1, p1, 0x18

    iput p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdIndex:I

    iget p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdEnd:I

    add-int/lit8 p1, p1, 0x18

    iput p1, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->holdEnd:I

    :cond_0
    return-void
.end method

.method public getFlatness()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->squareflat:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRecursionLimit()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->limit:I

    return v0
.end method

.method public getWindingRule()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->src:Lorg/apache/poi/java/awt/geom/PathIterator;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/geom/PathIterator;->getWindingRule()I

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->done:Z

    return v0
.end method

.method public next()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/geom/FlatteningPathIterator;->next(Z)V

    return-void
.end method
