.class Lorg/apache/poi/javax/imageio/spi/FilterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private filter:Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->next:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->iter:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->filter:Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->advance()V

    return-void
.end method

.method private advance()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->filter:Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;

    invoke-interface {v1, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;->filter(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->next:Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->next:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/spi/FilterIterator;->advance()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
