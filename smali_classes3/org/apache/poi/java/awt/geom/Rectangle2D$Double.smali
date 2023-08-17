.class public Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;
.super Lorg/apache/poi/java/awt/geom/Rectangle2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/geom/Rectangle2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6bd940b818fc507dL


# instance fields
.field public height:D

.field public width:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Rectangle2D;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Rectangle2D;-><init>()V

    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->setRect(DDDD)V

    return-void
.end method


# virtual methods
.method public createIntersection(Lorg/apache/poi/java/awt/geom/Rectangle2D;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->intersect(Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v0
.end method

.method public createUnion(Lorg/apache/poi/java/awt/geom/Rectangle2D;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->union(Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v0
.end method

.method public getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 10

    new-instance v9, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->x:D

    iget-wide v3, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->y:D

    iget-wide v5, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->width:D

    iget-wide v7, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->height:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9
.end method

.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->height:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->y:D

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->width:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->height:D

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

.method public outcode(DD)I
    .locals 7

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->width:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->x:D

    cmpg-double v6, p1, v4

    if-gez v6, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    add-double/2addr v4, v0

    cmpl-double p1, p1, v4

    if-lez p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->height:D

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_3

    or-int/lit8 p1, p1, 0xa

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->y:D

    cmpg-double p2, p3, v2

    if-gez p2, :cond_4

    or-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_4
    add-double/2addr v2, v0

    cmpl-double p2, p3, v2

    if-lez p2, :cond_5

    or-int/lit8 p1, p1, 0x8

    :cond_5
    :goto_1
    return p1
.end method

.method public setRect(DDDD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->x:D

    iput-wide p3, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->y:D

    iput-wide p5, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->width:D

    iput-wide p7, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->height:D

    return-void
.end method

.method public setRect(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->x:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->y:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->width:D

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->height:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->width:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;->height:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
