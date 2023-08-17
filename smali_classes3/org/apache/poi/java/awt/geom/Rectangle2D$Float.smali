.class public Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;
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
    name = "Float"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34b7c0d33b2c0501L


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Rectangle2D;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Rectangle2D;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->setRect(FFFF)V

    return-void
.end method


# virtual methods
.method public createIntersection(Lorg/apache/poi/java/awt/geom/Rectangle2D;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->intersect(Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v0
.end method

.method public createUnion(Lorg/apache/poi/java/awt/geom/Rectangle2D;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>()V

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->union(Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-object v0
.end method

.method public getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->x:F

    iget v2, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->y:F

    iget v3, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->width:F

    iget v4, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->height:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->height:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->width:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->x:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->y:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->width:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->height:F

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

.method public outcode(DD)I
    .locals 6

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->width:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->x:F

    float-to-double v3, v2

    cmpg-double v3, p1, v3

    if-gez v3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    float-to-double v2, v2

    float-to-double v4, v0

    add-double/2addr v2, v4

    cmpl-double p1, p1, v2

    if-lez p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->height:F

    cmpg-float v0, p2, v1

    if-gtz v0, :cond_3

    or-int/lit8 p1, p1, 0xa

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->y:F

    float-to-double v1, v0

    cmpg-double v1, p3, v1

    if-gez v1, :cond_4

    or-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_4
    float-to-double v0, v0

    float-to-double v2, p2

    add-double/2addr v0, v2

    cmpl-double p2, p3, v0

    if-lez p2, :cond_5

    or-int/lit8 p1, p1, 0x8

    :cond_5
    :goto_1
    return p1
.end method

.method public setRect(DDDD)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->x:F

    double-to-float p1, p3

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->y:F

    double-to-float p1, p5

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->width:F

    double-to-float p1, p7

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->height:F

    return-void
.end method

.method public setRect(FFFF)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->x:F

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->y:F

    iput p3, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->width:F

    iput p4, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->height:F

    return-void
.end method

.method public setRect(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->x:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->y:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->width:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->height:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
