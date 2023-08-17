.class public Lorg/apache/poi/java/awt/BasicStroke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Stroke;


# static fields
.field public static final CAP_BUTT:I = 0x0

.field public static final CAP_ROUND:I = 0x1

.field public static final CAP_SQUARE:I = 0x2

.field public static final JOIN_BEVEL:I = 0x2

.field public static final JOIN_MITER:I = 0x0

.field public static final JOIN_ROUND:I = 0x1


# instance fields
.field public cap:I

.field public dash:[F

.field public dash_phase:F

.field public join:I

.field public miterlimit:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/BasicStroke;-><init>(FIIF[FF)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/BasicStroke;-><init>(FIIF[FF)V

    return-void
.end method

.method public constructor <init>(FII)V
    .locals 7

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/BasicStroke;-><init>(FIIF[FF)V

    return-void
.end method

.method public constructor <init>(FIIF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/BasicStroke;-><init>(FIIF[FF)V

    return-void
.end method

.method public constructor <init>(FIIF[FF)V
    .locals 8
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "lineWidth",
            "endCap",
            "lineJoin",
            "miterLimit",
            "dashArray",
            "dashPhase"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_d

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal end cap value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p4, v1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "miter limit < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eq p3, v2, :cond_5

    if-ne p3, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal line join value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    if-eqz p5, :cond_b

    cmpg-float v0, p6, v0

    if-ltz v0, :cond_a

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v3, p5

    if-ge v1, v3, :cond_8

    aget v3, p5, v1

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    cmpg-double v3, v3, v5

    if-ltz v3, :cond_7

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative dash length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dash lengths all zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative dash phase"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    iput p1, p0, Lorg/apache/poi/java/awt/BasicStroke;->width:F

    iput p2, p0, Lorg/apache/poi/java/awt/BasicStroke;->cap:I

    iput p3, p0, Lorg/apache/poi/java/awt/BasicStroke;->join:I

    iput p4, p0, Lorg/apache/poi/java/awt/BasicStroke;->miterlimit:F

    if-eqz p5, :cond_c

    invoke-virtual {p5}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash:[F

    :cond_c
    iput p6, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash_phase:F

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createStrokedShape(Lorg/apache/poi/java/awt/Shape;)Lorg/apache/poi/java/awt/Shape;
    .locals 8

    invoke-static {}, Lorg/apache/poi/sun/java2d/pipe/RenderingEngine;->getInstance()Lorg/apache/poi/sun/java2d/pipe/RenderingEngine;

    move-result-object v0

    iget v2, p0, Lorg/apache/poi/java/awt/BasicStroke;->width:F

    iget v3, p0, Lorg/apache/poi/java/awt/BasicStroke;->cap:I

    iget v4, p0, Lorg/apache/poi/java/awt/BasicStroke;->join:I

    iget v5, p0, Lorg/apache/poi/java/awt/BasicStroke;->miterlimit:F

    iget-object v6, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash:[F

    iget v7, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash_phase:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/apache/poi/sun/java2d/pipe/RenderingEngine;->createStrokedShape(Lorg/apache/poi/java/awt/Shape;FIIF[FF)Lorg/apache/poi/java/awt/Shape;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/java/awt/BasicStroke;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/java/awt/BasicStroke;

    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->width:F

    iget v2, p1, Lorg/apache/poi/java/awt/BasicStroke;->width:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->join:I

    iget v2, p1, Lorg/apache/poi/java/awt/BasicStroke;->join:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->cap:I

    iget v2, p1, Lorg/apache/poi/java/awt/BasicStroke;->cap:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->miterlimit:F

    iget v2, p1, Lorg/apache/poi/java/awt/BasicStroke;->miterlimit:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash:[F

    if-eqz v0, :cond_6

    iget v2, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash_phase:F

    iget v3, p1, Lorg/apache/poi/java/awt/BasicStroke;->dash_phase:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget-object p1, p1, Lorg/apache/poi/java/awt/BasicStroke;->dash:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_6
    iget-object p1, p1, Lorg/apache/poi/java/awt/BasicStroke;->dash:[F

    if-eqz p1, :cond_7

    return v1

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public getDashArray()[F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash:[F

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getDashPhase()F
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash_phase:F

    return v0
.end method

.method public getEndCap()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->cap:I

    return v0
.end method

.method public getLineJoin()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->join:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->width:F

    return v0
.end method

.method public getMiterLimit()F
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->miterlimit:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/BasicStroke;->width:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/poi/java/awt/BasicStroke;->join:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/poi/java/awt/BasicStroke;->cap:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/poi/java/awt/BasicStroke;->miterlimit:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash:[F

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash_phase:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/BasicStroke;->dash:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
