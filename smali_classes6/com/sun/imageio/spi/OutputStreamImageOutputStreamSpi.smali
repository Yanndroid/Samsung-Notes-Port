.class public Lcom/sun/imageio/spi/OutputStreamImageOutputStreamSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;
.source "SourceFile"


# static fields
.field private static final outputClass:Ljava/lang/Class;

.field private static final vendorName:Ljava/lang/String; = "Oracle Corporation"

.field private static final version:Ljava/lang/String; = "1.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/io/OutputStream;

    sput-object v0, Lcom/sun/imageio/spi/OutputStreamImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/sun/imageio/spi/OutputStreamImageOutputStreamSpi;->outputClass:Ljava/lang/Class;

    const-string v1, "Oracle Corporation"

    const-string v2, "1.0"

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public canUseCacheFile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createOutputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;
    .locals 1

    instance-of v0, p1, Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/io/OutputStream;

    if-eqz p2, :cond_0

    new-instance p2, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/javax/imageio/stream/FileCacheImageOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/File;)V

    return-object p2

    :cond_0
    new-instance p2, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;

    invoke-direct {p2, p1}, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "Service provider that instantiates an OutputStreamImageOutputStream from an OutputStream"

    return-object p1
.end method

.method public needsCacheFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
