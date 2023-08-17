.class public abstract Lorg/apache/poi/java/awt/geom/RoundRectangle2D;
.super Lorg/apache/poi/java/awt/geom/RectangularShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;,
        Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;-><init>()V

    return-void
.end method

.method private classify(DDDD)I
    .locals 1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-double/2addr p3, p7

    cmpg-double p3, p1, p3

    if-gez p3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    sub-double p3, p5, p7

    cmpg-double p3, p1, p3

    if-gez p3, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    cmpg-double p1, p1, p5

    if-gez p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1
.end method


# virtual methods
.method public contains(DD)Z
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    add-double/2addr v6, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    add-double/2addr v8, v4

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_5

    cmpg-double v0, p3, v4

    if-ltz v0, :cond_5

    cmpl-double v0, p1, v6

    if-gez v0, :cond_5

    cmpl-double v0, p3, v8

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

    move-result-wide v16

    move-wide/from16 v18, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    div-double/2addr v1, v12

    add-double v12, v18, v10

    cmpl-double v3, p1, v12

    const/4 v14, 0x1

    if-ltz v3, :cond_2

    sub-double v12, v6, v10

    cmpg-double v3, p1, v12

    if-gez v3, :cond_2

    return v14

    :cond_2
    add-double/2addr v4, v1

    cmpl-double v3, p3, v4

    if-ltz v3, :cond_3

    sub-double v4, v8, v1

    cmpg-double v3, p3, v4

    if-gez v3, :cond_3

    return v14

    :cond_3
    sub-double v6, p1, v12

    div-double/2addr v6, v10

    sub-double v3, p3, v4

    div-double/2addr v3, v1

    mul-double/2addr v6, v6

    mul-double/2addr v3, v3

    add-double/2addr v6, v3

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v6, v1

    if-gtz v1, :cond_4

    move v1, v14

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_5
    :goto_1
    move v0, v1

    return v0
.end method

.method public contains(DDDD)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    cmpg-double v0, p5, v2

    if-lez v0, :cond_1

    cmpg-double v0, p7, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    add-double/2addr p5, p1

    invoke-virtual {p0, p5, p6, p3, p4}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    add-double/2addr p3, p7

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->contains(DD)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p5, p6, p3, p4}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->contains(DD)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;

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

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

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

.method public abstract getArcHeight()D
.end method

.method public abstract getArcWidth()D
.end method

.method public getPathIterator(Lorg/apache/poi/java/awt/geom/AffineTransform;)Lorg/apache/poi/java/awt/geom/PathIterator;
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/geom/RoundRectIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/java/awt/geom/RoundRectIterator;-><init>(Lorg/apache/poi/java/awt/geom/RoundRectangle2D;Lorg/apache/poi/java/awt/geom/AffineTransform;)V

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

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x35

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x3b

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
    .locals 35

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    if-lez v2, :cond_a

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v21

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    add-double v23, v19, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    add-double v25, v21, v0

    add-double v27, p1, p5

    cmpg-double v0, v27, v19

    if-lez v0, :cond_a

    cmpl-double v0, p1, v23

    if-gez v0, :cond_a

    add-double v29, p3, p7

    cmpg-double v0, v29, v21

    if-lez v0, :cond_a

    cmpl-double v0, p3, v25

    if-ltz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v31, v0, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double v33, v0, v2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, v19

    move-wide/from16 v5, v23

    move-wide/from16 v7, v31

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->classify(DDDD)I

    move-result v7

    move-object/from16 v10, p0

    move-wide/from16 v11, v27

    move-wide/from16 v13, v19

    move-wide/from16 v15, v23

    move-wide/from16 v17, v31

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->classify(DDDD)I

    move-result v10

    move-wide/from16 v1, p3

    move-wide/from16 v3, v21

    move-wide/from16 v5, v25

    move v11, v7

    move-wide/from16 v7, v33

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->classify(DDDD)I

    move-result v12

    move-wide/from16 v1, v29

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->classify(DDDD)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v11, v2, :cond_9

    if-eq v10, v2, :cond_9

    if-eq v12, v2, :cond_9

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    if-ge v11, v2, :cond_3

    if-gt v10, v2, :cond_4

    :cond_3
    if-ge v12, v2, :cond_5

    if-le v0, v2, :cond_5

    :cond_4
    return v1

    :cond_5
    if-ne v10, v1, :cond_6

    add-double v19, v19, v31

    sub-double v27, v27, v19

    goto :goto_0

    :cond_6
    sub-double v23, v23, v31

    sub-double v27, p1, v23

    :goto_0
    if-ne v0, v1, :cond_7

    add-double v21, v21, v33

    sub-double v29, v29, v21

    goto :goto_1

    :cond_7
    sub-double v25, v25, v33

    sub-double v29, p3, v25

    :goto_1
    div-double v27, v27, v31

    div-double v29, v29, v33

    mul-double v27, v27, v27

    mul-double v29, v29, v29

    add-double v27, v27, v29

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v27, v2

    if-gtz v0, :cond_8

    move v9, v1

    :cond_8
    return v9

    :cond_9
    :goto_2
    return v1

    :cond_a
    :goto_3
    return v9
.end method

.method public setFrame(DDDD)V
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v9

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

    move-result-wide v11

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v12}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->setRoundRect(DDDDDD)V

    return-void
.end method

.method public abstract setRoundRect(DDDDDD)V
.end method

.method public setRoundRect(Lorg/apache/poi/java/awt/geom/RoundRectangle2D;)V
    .locals 13

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v9

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

    move-result-wide v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->setRoundRect(DDDDDD)V

    return-void
.end method
