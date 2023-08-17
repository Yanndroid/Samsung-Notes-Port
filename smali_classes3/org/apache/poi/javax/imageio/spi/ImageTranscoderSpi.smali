.class public abstract Lorg/apache/poi/javax/imageio/spi/ImageTranscoderSpi;
.super Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract createTranscoderInstance()Lorg/apache/poi/javax/imageio/ImageTranscoder;
.end method

.method public abstract getReaderServiceProviderName()Ljava/lang/String;
.end method

.method public abstract getWriterServiceProviderName()Ljava/lang/String;
.end method
