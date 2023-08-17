.class Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;",
        ">;"
    }
.end annotation


# instance fields
.field private producers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;",
            ">;"
        }
    .end annotation
.end field

.field private theNext:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->theNext:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->producers:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->theNext:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->producers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->producers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->getType()Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->theNext:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->producers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->theNext:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->next()Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->theNext:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->theNext:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->theNext:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeIterator;->producers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
