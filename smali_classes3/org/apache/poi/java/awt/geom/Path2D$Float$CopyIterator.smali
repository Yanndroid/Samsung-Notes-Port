.class Lorg/apache/poi/java/awt/geom/Path2D$Float$CopyIterator;
.super Lorg/apache/poi/java/awt/geom/Path2D$Iterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/geom/Path2D$Float;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyIterator"
.end annotation


# instance fields
.field public floatCoords:[F


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Path2D$Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;-><init>(Lorg/apache/poi/java/awt/geom/Path2D;)V

    iget-object p1, p1, Lorg/apache/poi/java/awt/geom/Path2D$Float;->floatCoords:[F

    iput-object p1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float$CopyIterator;->floatCoords:[F

    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->path:Lorg/apache/poi/java/awt/geom/Path2D;

    iget-object v0, v0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->typeIdx:I

    aget-byte v0, v0, v1

    sget-object v1, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->curvecoords:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float$CopyIterator;->floatCoords:[F

    iget v4, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->pointIdx:I

    add-int/2addr v4, v2

    aget v3, v3, v4

    float-to-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public currentSegment([F)I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->path:Lorg/apache/poi/java/awt/geom/Path2D;

    iget-object v0, v0, Lorg/apache/poi/java/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->typeIdx:I

    aget-byte v0, v0, v1

    sget-object v1, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->curvecoords:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/geom/Path2D$Float$CopyIterator;->floatCoords:[F

    iget v3, p0, Lorg/apache/poi/java/awt/geom/Path2D$Iterator;->pointIdx:I

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return v0
.end method
