.class Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Polygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PolygonPathIterator"
.end annotation


# instance fields
.field public index:I

.field public poly:Lorg/apache/poi/java/awt/Polygon;

.field public final synthetic this$0:Lorg/apache/poi/java/awt/Polygon;

.field public transform:Lorg/apache/poi/java/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Polygon;Lorg/apache/poi/java/awt/Polygon;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->this$0:Lorg/apache/poi/java/awt/Polygon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->poly:Lorg/apache/poi/java/awt/Polygon;

    iput-object p3, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->transform:Lorg/apache/poi/java/awt/geom/AffineTransform;

    iget p1, p2, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->index:I

    :cond_0
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 11

    iget v0, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->index:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->poly:Lorg/apache/poi/java/awt/Polygon;

    iget v2, v1, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    if-lt v0, v2, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget-object v2, v1, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    aget v2, v2, v0

    int-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, p1, v4

    iget-object v1, v1, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    aget v0, v1, v0

    int-to-double v0, v0

    const/4 v2, 0x1

    aput-wide v0, p1, v2

    iget-object v5, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->transform:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v5, :cond_1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, p1

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([DI[DII)V

    :cond_1
    iget p1, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->index:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    return v4
.end method

.method public currentSegment([F)I
    .locals 10

    iget v0, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->index:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->poly:Lorg/apache/poi/java/awt/Polygon;

    iget v2, v1, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    if-lt v0, v2, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget-object v2, v1, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    aget v2, v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, p1, v3

    iget-object v1, v1, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    aget v0, v1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    iget-object v4, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->transform:Lorg/apache/poi/java/awt/geom/AffineTransform;

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lorg/apache/poi/java/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_1
    iget p1, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->index:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    return v3
.end method

.method public getWindingRule()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->index:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->poly:Lorg/apache/poi/java/awt/Polygon;

    iget v1, v1, Lorg/apache/poi/java/awt/Polygon;->npoints:I

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

    iget v0, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/Polygon$PolygonPathIterator;->index:I

    return-void
.end method
