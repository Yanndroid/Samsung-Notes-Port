.class public Lorg/apache/poi/java/awt/geom/Line2D$Double;
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
    name = "Double"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6ebd54d799dcb6abL


# instance fields
.field public x1:D

.field public x2:D

.field public y1:D

.field public y2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Line2D;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Line2D;-><init>()V

    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/java/awt/geom/Line2D$Double;->setLine(DDDD)V

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
    .locals 13

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->x1:D

    iget-wide v2, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->x2:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    sub-double/2addr v2, v0

    move-wide v5, v0

    move-wide v9, v2

    goto :goto_0

    :cond_0
    sub-double/2addr v0, v2

    move-wide v9, v0

    move-wide v5, v2

    :goto_0
    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->y1:D

    iget-wide v2, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->y2:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    sub-double/2addr v2, v0

    move-wide v7, v0

    move-wide v11, v2

    goto :goto_1

    :cond_1
    sub-double/2addr v0, v2

    move-wide v11, v0

    move-wide v7, v2

    :goto_1
    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public getP1()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->x1:D

    iget-wide v3, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->y1:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getP2()Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->x2:D

    iget-wide v3, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->y2:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->x1:D

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->x2:D

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->y1:D

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->y2:D

    return-wide v0
.end method

.method public setLine(DDDD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->x1:D

    iput-wide p3, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->y1:D

    iput-wide p5, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->x2:D

    iput-wide p7, p0, Lorg/apache/poi/java/awt/geom/Line2D$Double;->y2:D

    return-void
.end method
