.class Lorg/apache/poi/javax/imageio/spi/DigraphNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public data:Ljava/lang/Object;

.field public inDegree:I

.field private inNodes:Ljava/util/Set;

.field public outNodes:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inDegree:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inNodes:Ljava/util/Set;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->data:Ljava/lang/Object;

    return-void
.end method

.method private decrementInDegree()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inDegree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inDegree:I

    return-void
.end method

.method private incrementInDegree()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inDegree:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inDegree:I

    return-void
.end method


# virtual methods
.method public addEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inNodes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p1}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->incrementInDegree()V

    const/4 p1, 0x1

    return p1
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    invoke-virtual {v3, p0}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->removeEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    check-cast v2, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    invoke-virtual {p0, v2}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->removeEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getInDegree()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inDegree:I

    return v0
.end method

.method public getOutNodes()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hasEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->outNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->inNodes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p1}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->decrementInDegree()V

    const/4 p1, 0x1

    return p1
.end method
