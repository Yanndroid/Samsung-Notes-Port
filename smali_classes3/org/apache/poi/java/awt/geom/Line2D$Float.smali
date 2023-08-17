.class public Lorg/apache/poi/java/awt/geom/Line2D$Float;
.super Lorg/apache/poi/java/awt/geom/Line2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/geom/Line2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x55830373efa192bdL


# instance fields
.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Line2D;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Line2D;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/geom/Line2D$Float;->setLine(FFFF)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Line2D;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/geom/Line2D;->setLine(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;)V

    return-void
.end method


# virtual methods
.method public getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 6

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x1:F

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x2:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v1

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_0
    iget v2, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y1:F

    iget v3, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y2:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_1

    sub-float/2addr v3, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v2, v3

    move v5, v3

    move v3, v2

    move v2, v5

    :goto_1
    new-instance v4, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;

    invoke-direct {v4, v0, v2, v1, v3}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v4
.end method

.method public getP1()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x1:F

    iget v2, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y1:F

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getP2()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x2:F

    iget v2, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y2:F

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public setLine(DDDD)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x1:F

    double-to-float p1, p3

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y1:F

    double-to-float p1, p5

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x2:F

    double-to-float p1, p7

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y2:F

    return-void
.end method

.method public setLine(FFFF)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x1:F

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y1:F

    iput p3, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->x2:F

    iput p4, p0, Lorg/apache/poi/java/awt/geom/Line2D$Float;->y2:F

    return-void
.end method
