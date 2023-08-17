.class Lorg/apache/poi/javax/imageio/ImageIO$CanEncodeImageAndFormatFilter;
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
    name = "CanEncodeImageAndFormatFilter"
.end annotation


# instance fields
.field public formatName:Ljava/lang/String;

.field public type:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$CanEncodeImageAndFormatFilter;->type:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/ImageIO$CanEncodeImageAndFormatFilter;->formatName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->getFormatNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageIO$CanEncodeImageAndFormatFilter;->formatName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$CanEncodeImageAndFormatFilter;->type:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    invoke-virtual {p1, v0}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->canEncodeImage(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
