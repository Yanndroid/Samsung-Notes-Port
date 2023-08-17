.class public Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;
.super Lorg/apache/poi/java/awt/geom/RoundRectangle2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/geom/RoundRectangle2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2f817959ce0672aaL


# instance fields
.field public archeight:F

.field public arcwidth:F

.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->setRoundRect(FFFFFF)V

    return-void
.end method


# virtual methods
.method public getArcHeight()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->archeight:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getArcWidth()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->arcwidth:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->x:F

    iget v2, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->y:F

    iget v3, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->width:F

    iget v4, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->height:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->height:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->width:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->x:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->y:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->width:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->height:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setRoundRect(DDDDDD)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->x:F

    double-to-float p1, p3

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->y:F

    double-to-float p1, p5

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->width:F

    double-to-float p1, p7

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->height:F

    double-to-float p1, p9

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->arcwidth:F

    double-to-float p1, p11

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->archeight:F

    return-void
.end method

.method public setRoundRect(FFFFFF)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->x:F

    iput p2, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->y:F

    iput p3, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->width:F

    iput p4, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->height:F

    iput p5, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->arcwidth:F

    iput p6, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->archeight:F

    return-void
.end method

.method public setRoundRect(Lorg/apache/poi/java/awt/geom/RoundRectangle2D;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->x:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->y:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->width:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->height:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->arcwidth:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Float;->archeight:F

    return-void
.end method
