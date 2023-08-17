.class Lorg/apache/poi/javax/imageio/ImageIO$ImageTranscoderIterator;
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
    name = "ImageTranscoderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/javax/imageio/ImageTranscoder;",
        ">;"
    }
.end annotation


# instance fields
.field public iter:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$ImageTranscoderIterator;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$ImageTranscoderIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageTranscoderIterator;->next()Lorg/apache/poi/javax/imageio/ImageTranscoder;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/javax/imageio/ImageTranscoder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageIO$ImageTranscoderIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/spi/ImageTranscoderSpi;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/ImageTranscoderSpi;->createTranscoderInstance()Lorg/apache/poi/javax/imageio/ImageTranscoder;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
