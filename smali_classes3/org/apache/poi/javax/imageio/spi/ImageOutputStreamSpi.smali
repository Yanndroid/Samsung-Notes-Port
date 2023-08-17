.class public abstract Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;
.super Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;
.source "SourceFile"


# instance fields
.field public outputClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public canUseCacheFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createOutputStreamInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;->createOutputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public abstract createOutputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;
.end method

.method public getOutputClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    return-object v0
.end method

.method public needsCacheFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
