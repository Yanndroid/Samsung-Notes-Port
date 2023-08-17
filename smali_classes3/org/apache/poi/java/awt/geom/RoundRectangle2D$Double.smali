.class public Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;
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
    name = "Double"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe8e94c42b521a65L


# instance fields
.field public archeight:D

.field public arcwidth:D

.field public height:D

.field public width:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;-><init>()V

    invoke-virtual/range {p0 .. p12}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->setRoundRect(DDDDDD)V

    return-void
.end method


# virtual methods
.method public getArcHeight()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->archeight:D

    return-wide v0
.end method

.method public getArcWidth()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->arcwidth:D

    return-wide v0
.end method

.method public getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 10

    new-instance v9, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->x:D

    iget-wide v3, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->y:D

    iget-wide v5, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->width:D

    iget-wide v7, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->height:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->height:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->y:D

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->width:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->height:D

    cmpg-double v0, v0, v2

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

    iput-wide p1, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->x:D

    iput-wide p3, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->y:D

    iput-wide p5, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->width:D

    iput-wide p7, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->height:D

    iput-wide p9, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->arcwidth:D

    iput-wide p11, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->archeight:D

    return-void
.end method

.method public setRoundRect(Lorg/apache/poi/java/awt/geom/RoundRectangle2D;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->x:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->y:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->width:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->height:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcWidth()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->arcwidth:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RoundRectangle2D;->getArcHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/RoundRectangle2D$Double;->archeight:D

    return-void
.end method
