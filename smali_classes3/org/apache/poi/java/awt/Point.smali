.class public Lorg/apache/poi/java/awt/Point;
.super Lorg/apache/poi/java/awt/geom/Point2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x493b758dcb8137daL


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Point2D;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/Point;->x:I

    iput p2, p0, Lorg/apache/poi/java/awt/Point;->y:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Point;)V
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/java/awt/Point;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/java/awt/Point;

    iget v0, p0, Lorg/apache/poi/java/awt/Point;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Point;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/Point;->y:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/geom/Point2D;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLocation()Lorg/apache/poi/java/awt/Point;
    .locals 3
    .annotation runtime Ljava/beans/Transient;
    .end annotation

    new-instance v0, Lorg/apache/poi/java/awt/Point;

    iget v1, p0, Lorg/apache/poi/java/awt/Point;->x:I

    iget v2, p0, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    return-object v0
.end method

.method public getX()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/Point;->x:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/Point;->y:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public move(II)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/Point;->x:I

    iput p2, p0, Lorg/apache/poi/java/awt/Point;->y:I

    return-void
.end method

.method public setLocation(DD)V
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/Point;->x:I

    add-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/Point;->y:I

    return-void
.end method

.method public setLocation(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Point;->move(II)V

    return-void
.end method

.method public setLocation(Lorg/apache/poi/java/awt/Point;)V
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Point;->setLocation(II)V

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

    iget v1, p0, Lorg/apache/poi/java/awt/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(II)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Point;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p0, Lorg/apache/poi/java/awt/Point;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/poi/java/awt/Point;->y:I

    return-void
.end method
