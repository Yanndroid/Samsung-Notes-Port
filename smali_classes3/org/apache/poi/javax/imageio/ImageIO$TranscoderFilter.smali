.class Lorg/apache/poi/javax/imageio/ImageIO$TranscoderFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranscoderFilter"
.end annotation


# instance fields
.field public readerSpiName:Ljava/lang/String;

.field public writerSpiName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$TranscoderFilter;->readerSpiName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$TranscoderFilter;->writerSpiName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lorg/apache/poi/javax/imageio/spi/ImageTranscoderSpi;

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/spi/ImageTranscoderSpi;->getReaderServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/spi/ImageTranscoderSpi;->getWriterServiceProviderName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageIO$TranscoderFilter;->readerSpiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$TranscoderFilter;->writerSpiName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
