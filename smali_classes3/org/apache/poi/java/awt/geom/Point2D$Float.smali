.class public Lorg/apache/poi/java/awt/geom/Point2D$Float;
.super Lorg/apache/poi/java/awt/geom/Point2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/geom/Point2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x27d6526f25451cbeL


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Point2D;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Point2D;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->x:F

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->y:F

    return-void
.end method


# virtual methods
.method public getX()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->x:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->y:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public setLocation(DD)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->x:F

    double-to-float p1, p3

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->y:F

    return-void
.end method

.method public setLocation(FF)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->x:F

    iput p2, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point2D.Float["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Float;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
