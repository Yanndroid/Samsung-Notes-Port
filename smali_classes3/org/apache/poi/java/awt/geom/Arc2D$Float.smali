.class public Lorg/apache/poi/java/awt/geom/Arc2D$Float;
.super Lorg/apache/poi/java/awt/geom/Arc2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/geom/Arc2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7eb772d1b8844ff6L


# instance fields
.field public extent:F

.field public height:F

.field public start:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/geom/Arc2D;-><init>(I)V

    return-void
.end method

.method public constructor <init>(FFFFFFI)V
    .locals 0

    invoke-direct {p0, p7}, Lorg/apache/poi/java/awt/geom/Arc2D;-><init>(I)V

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->x:F

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->y:F

    iput p3, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->width:F

    iput p4, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->height:F

    iput p5, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->start:F

    iput p6, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->extent:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/geom/Arc2D;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/geom/Rectangle2D;FFI)V
    .locals 2

    invoke-direct {p0, p4}, Lorg/apache/poi/java/awt/geom/Arc2D;-><init>(I)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    double-to-float p4, v0

    iput p4, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->x:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    double-to-float p4, v0

    iput p4, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->y:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    double-to-float p4, v0

    iput p4, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->width:F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->height:F

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->start:F

    iput p3, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->extent:F

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/geom/Arc2D;->setArcType(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/geom/Arc2D;->getArcType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public getAngleExtent()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->extent:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getAngleStart()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->start:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getHeight()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->height:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->width:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->x:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->y:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 4

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->width:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->height:F

    float-to-double v0, v0

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

.method public makeBounds(DDDD)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;

    double-to-float p1, p1

    double-to-float p2, p3

    double-to-float p3, p5

    double-to-float p4, p7

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public setAngleExtent(D)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->extent:F

    return-void
.end method

.method public setAngleStart(D)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->start:F

    return-void
.end method

.method public setArc(DDDDDDI)V
    .locals 0

    invoke-virtual {p0, p13}, Lorg/apache/poi/java/awt/geom/Arc2D;->setArcType(I)V

    double-to-float p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->x:F

    double-to-float p1, p3

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->y:F

    double-to-float p1, p5

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->width:F

    double-to-float p1, p7

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->height:F

    double-to-float p1, p9

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->start:F

    double-to-float p1, p11

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Arc2D$Float;->extent:F

    return-void
.end method
