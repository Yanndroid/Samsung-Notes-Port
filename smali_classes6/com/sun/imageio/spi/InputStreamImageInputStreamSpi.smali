.class public Lcom/sun/imageio/spi/InputStreamImageInputStreamSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageInputStreamSpi;
.source "SourceFile"


# static fields
.field private static final inputClass:Ljava/lang/Class;

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/io/InputStream;

    sput-object v0, Lcom/sun/imageio/spi/InputStreamImageInputStreamSpi;->inputClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/sun/imageio/spi/InputStreamImageInputStreamSpi;->inputClass:Ljava/lang/Class;

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/javax/imageio/spi/ImageInputStreamSpi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public canUseCacheFile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createInputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Lorg/apache/poi/javax/imageio/stream/ImageInputStream;
    .locals 1

    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/io/InputStream;

    if-eqz p2, :cond_0

    new-instance p2, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    return-object p2

    :cond_0
    new-instance p2, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {p2, p1}, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Service provider that instantiates a FileCacheImageInputStream or MemoryCacheImageInputStream from an InputStream"

    return-object p1
.end method

.method public needsCacheFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
