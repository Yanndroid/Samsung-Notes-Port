.class public Lorg/apache/poi/java/awt/geom/Point2D$Double;
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
    name = "Double"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x555bf8ca09a31d5fL


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Point2D;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Point2D;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Double;->x:D

    iput-wide p3, p0, Lorg/apache/poi/java/awt/geom/Point2D$Double;->y:D

    return-void
.end method


# virtual methods
.method public getX()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Point2D$Double;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/geom/Point2D$Double;->y:D

    return-wide v0
.end method

.method public setLocation(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Double;->x:D

    iput-wide p3, p0, Lorg/apache/poi/java/awt/geom/Point2D$Double;->y:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point2D.Double["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Double;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/geom/Point2D$Double;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
