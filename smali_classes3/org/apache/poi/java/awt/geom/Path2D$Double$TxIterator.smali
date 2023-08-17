.class Lorg/apache/poi/java/awt/geom/Path2D$Double$TxIterator;
.super Lorg/apache/poi/java/awt/geom/Path2D$Iterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/geom/Path2D$Double;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxIterator"
.end annotation


# instance fields
.field public affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

.field public doubleCoords:[D


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Path2D$Double;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;-><init>(Lorg/apache/poi/java/awt/geom/Path2D;)V

    iget-object p1, p1, Lorg/apache/poi/java/awt/geom/Path2D$Double;->doubleCoords:[D

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Double$TxIterator;->doubleCoords:[D

    iput-object p2, p0, Lorg/apache/poi/java/awt/geom/Path2D$Double$TxIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->path:Lorg/apache/poi/java/awt/geom/Path2D;

    iget-object v0, v0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->typeIdx:I

    aget-byte v0, v0, v1

    sget-object v1, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->curvecoords:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/geom/Path2D$Double$TxIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    iget-object v3, p0, Lorg/apache/poi/java/awt/geom/Path2D$Double$TxIterator;->doubleCoords:[D

    iget v4, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->pointIdx:I

    const/4 v6, 0x0

    div-int/lit8 v7, v1, 0x2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_0
    return v0
.end method

.method public currentSegment([F)I
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->path:Lorg/apache/poi/java/awt/geom/Path2D;

    iget-object v0, v0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->typeIdx:I

    aget-byte v0, v0, v1

    sget-object v1, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->curvecoords:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/geom/Path2D$Double$TxIterator;->affine:Lorg/apache/poi/java/awt/geom/AffineTransform;

    iget-object v3, p0, Lorg/apache/poi/java/awt/geom/Path2D$Double$TxIterator;->doubleCoords:[D

    iget v4, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->pointIdx:I

    const/4 v6, 0x0

    div-int/lit8 v7, v1, 0x2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[FII)V

    :cond_0
    return v0
.end method
