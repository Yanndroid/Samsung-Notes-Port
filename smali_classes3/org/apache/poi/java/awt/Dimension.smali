.class public Lorg/apache/poi/java/awt/Dimension;
.super Lorg/apache/poi/java/awt/geom/Dimension2D;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x418ed9d7ac5f4414L


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Dimension;->initIDs()V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/geom/Dimension2D;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/Dimension;->width:I

    iput p2, p0, Lorg/apache/poi/java/awt/Dimension;->height:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget p1, p1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-void
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/java/awt/Dimension;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/Dimension;

    iget v0, p0, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v2, p1, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget p1, p1, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getHeight()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/Dimension;->height:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 3
    .annotation runtime Ljava/beans/Transient;
    .end annotation

    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v2, p0, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/Dimension;->width:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v1, p0, Lorg/apache/poi/java/awt/Dimension;->height:I

    add-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method public setSize(DD)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/Dimension;->width:I

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/apache/poi/java/awt/Dimension;->height:I

    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/Dimension;->width:I

    iput p2, p0, Lorg/apache/poi/java/awt/Dimension;->height:I

    return-void
.end method

.method public setSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 1

    iget v0, p1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget p1, p1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Dimension;->setSize(II)V

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

    const-string v1, "[width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Dimension;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
