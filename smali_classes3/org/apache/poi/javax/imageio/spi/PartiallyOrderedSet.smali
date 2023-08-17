.class Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field private nodes:Ljava/util/Set;

.field private poNodes:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->nodes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->nodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    invoke-direct {v0, p1}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->nodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasOrdering(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    invoke-virtual {p1, p2}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->hasEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lorg/apache/poi/javax/imageio/spi/PartialOrderIterator;

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/spi/PartialOrderIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->dispose()V

    const/4 p1, 0x1

    return p1
.end method

.method public setOrdering(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    invoke-virtual {p2, p1}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->removeEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z

    invoke-virtual {p1, p2}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->addEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->nodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public unsetOrdering(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/PartiallyOrderedSet;->poNodes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/javax/imageio/spi/DigraphNode;

    invoke-virtual {p1, p2}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->removeEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Lorg/apache/poi/javax/imageio/spi/DigraphNode;->removeEdge(Lorg/apache/poi/javax/imageio/spi/DigraphNode;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
