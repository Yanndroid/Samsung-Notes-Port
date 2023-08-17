.class public abstract Lorg/apache/poi/java/awt/geom/Ellipse2D;
.super Lorg/apache/poi/java/awt/geom/RectangularShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/geom/Ellipse2D$Double;,
        Lorg/apache/poi/java/awt/geom/Ellipse2D$Float;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(DD)Z
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    sub-double/2addr p1, v6

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p1, v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    cmpg-double v2, v6, v2

    if-gtz v2, :cond_1

    return v5

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    sub-double/2addr p3, v2

    div-double/2addr p3, v6

    sub-double/2addr p3, v0

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x3fd0000000000000L    # 0.25

    cmpg-double p1, p1, p3

    if-gez p1, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method public contains(DDDD)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/geom/Ellipse2D;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    add-double/2addr p5, p1

    invoke-virtual {p0, p5, p6, p3, p4}, Lorg/apache/poi/java/awt/geom/Ellipse2D;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    add-double/2addr p3, p7

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/geom/Ellipse2D;->contains(DD)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p5, p6, p3, p4}, Lorg/apache/poi/java/awt/geom/Ellipse2D;->contains(DD)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/java/awt/geom/Ellipse2D;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/poi/java/awt/geom/Ellipse2D;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getPathIterator(Lorg/apache/poi/java/awt/geom/AffineTransform;)Lorg/apache/poi/java/awt/geom/PathIterator;
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/geom/EllipseIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/java/awt/geom/EllipseIterator;-><init>(Lorg/apache/poi/java/awt/geom/Ellipse2D;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x2b

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x2f

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public intersects(DDDD)Z
    .locals 14

    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    const/4 v3, 0x0

    if-lez v2, :cond_7

    cmpg-double v2, p7, v0

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    cmpg-double v2, v4, v0

    if-gtz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    sub-double v6, p1, v6

    div-double/2addr v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    div-double v4, p5, v4

    add-double/2addr v4, v6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    cmpg-double v2, v10, v0

    if-gtz v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v12

    sub-double v12, p3, v12

    div-double/2addr v12, v10

    sub-double/2addr v12, v8

    div-double v8, p7, v10

    add-double/2addr v8, v12

    cmpl-double v2, v6, v0

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    cmpg-double v2, v4, v0

    if-gez v2, :cond_4

    move-wide v6, v4

    goto :goto_0

    :cond_4
    move-wide v6, v0

    :goto_0
    cmpl-double v2, v12, v0

    if-lez v2, :cond_5

    move-wide v0, v12

    goto :goto_1

    :cond_5
    cmpg-double v2, v8, v0

    if-gez v2, :cond_6

    move-wide v0, v8

    :cond_6
    :goto_1
    mul-double/2addr v6, v6

    mul-double/2addr v0, v0

    add-double/2addr v6, v0

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    cmpg-double v0, v6, v0

    if-gez v0, :cond_7

    const/4 v3, 0x1

    :cond_7
    :goto_2
    return v3
.end method
