.class Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageWriterIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/javax/imageio/ImageWriter;",
        ">;"
    }
.end annotation


# instance fields
.field public iter:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;->next()Lorg/apache/poi/javax/imageio/ImageWriter;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/javax/imageio/ImageWriter;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->createWriterInstance()Lorg/apache/poi/javax/imageio/ImageWriter;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-object v1, v0

    :catch_1
    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->access$100()Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    move-result-object v2

    const-class v3, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->deregisterServiceProvider(Ljava/lang/Object;Ljava/lang/Class;)Z

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
