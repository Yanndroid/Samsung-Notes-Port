.class public final Lorg/apache/poi/javax/imageio/ImageIO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/javax/imageio/ImageIO$TranscoderFilter;,
        Lorg/apache/poi/javax/imageio/ImageIO$ImageTranscoderIterator;,
        Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;,
        Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;,
        Lorg/apache/poi/javax/imageio/ImageIO$CanEncodeImageAndFormatFilter;,
        Lorg/apache/poi/javax/imageio/ImageIO$CanDecodeInputFilter;,
        Lorg/apache/poi/javax/imageio/ImageIO$ImageReaderIterator;,
        Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;,
        Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;
    }
.end annotation


# static fields
.field private static readerFileSuffixesMethod:Ljava/lang/reflect/Method;

.field private static readerFormatNamesMethod:Ljava/lang/reflect/Method;

.field private static readerMIMETypesMethod:Ljava/lang/reflect/Method;

.field private static final theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

.field private static writerFileSuffixesMethod:Ljava/lang/reflect/Method;

.field private static writerFormatNamesMethod:Ljava/lang/reflect/Method;

.field private static writerMIMETypesMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "getMIMETypes"

    const-string v1, "getFileSuffixes"

    const-string v2, "getFormatNames"

    const-class v3, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    const-class v4, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    invoke-static {}, Lorg/apache/poi/javax/imageio/spi/IIORegistry;->getDefaultInstance()Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const/4 v5, 0x0

    :try_start_0
    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lorg/apache/poi/javax/imageio/ImageIO;->readerFormatNamesMethod:Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lorg/apache/poi/javax/imageio/ImageIO;->readerFileSuffixesMethod:Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/apache/poi/javax/imageio/ImageIO;->readerMIMETypesMethod:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/javax/imageio/ImageIO;->writerFormatNamesMethod:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/javax/imageio/ImageIO;->writerFileSuffixesMethod:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->writerMIMETypesMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lorg/apache/poi/javax/imageio/spi/IIORegistry;
    .locals 1

    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    return-object v0
.end method

.method public static synthetic access$200([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/javax/imageio/ImageIO;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static createImageInputStream(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageInputStream;
    .locals 5

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v2, Lorg/apache/poi/javax/imageio/spi/ImageInputStreamSpi;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getUseCache()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->hasCachePermission()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/spi/ImageInputStreamSpi;

    invoke-virtual {v2}, Lorg/apache/poi/javax/imageio/spi/ImageInputStreamSpi;->getInputClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, p0, v3, v0}, Lorg/apache/poi/javax/imageio/spi/ImageInputStreamSpi;->createInputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "Can\'t create cache file!"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createImageOutputStream(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;
    .locals 5

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v2, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getUseCache()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->hasCachePermission()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;

    invoke-virtual {v2}, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;->getOutputClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, p0, v3, v0}, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;->createOutputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "Can\'t create cache file!"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "output == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static doWrite(Lorg/apache/poi/java/awt/image/RenderedImage;Lorg/apache/poi/javax/imageio/ImageWriter;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/javax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->write(Lorg/apache/poi/java/awt/image/RenderedImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageWriter;->dispose()V

    invoke-interface {p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->flush()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageWriter;->dispose()V

    invoke-interface {p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->flush()V

    throw p0
.end method

.method public static getCacheDirectory()Ljava/io/File;
    .locals 1

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;
    .locals 4

    const-class v0, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    const-class v1, Lorg/apache/poi/javax/imageio/ImageIO;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    invoke-direct {v3}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getImageReader(Lorg/apache/poi/javax/imageio/ImageWriter;)Lorg/apache/poi/javax/imageio/ImageReader;
    .locals 6

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOriginatingProvider()Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :try_start_0
    sget-object v3, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v4, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    invoke-virtual {v3, v4, v1}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    invoke-virtual {v4, p0}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->isOwnWriter(Lorg/apache/poi/javax/imageio/ImageWriter;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :cond_1
    if-nez v0, :cond_2

    :catch_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->getImageReaderSpiNames()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v2

    :cond_3
    :try_start_1
    aget-object p0, p0, v1

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    invoke-virtual {v0, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviderByClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;->createReaderInstance()Lorg/apache/poi/javax/imageio/ImageReader;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->deregisterServiceProvider(Ljava/lang/Object;Ljava/lang/Class;)Z

    :catch_2
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "writer == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageReader;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    new-instance v2, Lorg/apache/poi/javax/imageio/ImageIO$CanDecodeInputFilter;

    invoke-direct {v2, p0}, Lorg/apache/poi/javax/imageio/ImageIO$CanDecodeInputFilter;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageIO$ImageReaderIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageReaderIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageReadersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageReader;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    new-instance v2, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;

    sget-object v3, Lorg/apache/poi/javax/imageio/ImageIO;->readerFormatNamesMethod:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageIO$ImageReaderIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageReaderIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "formatName == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageReadersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageReader;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    new-instance v2, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;

    sget-object v3, Lorg/apache/poi/javax/imageio/ImageIO;->readerMIMETypesMethod:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageIO$ImageReaderIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageReaderIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "MIMEType == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageReadersBySuffix(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageReader;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    new-instance v2, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;

    sget-object v3, Lorg/apache/poi/javax/imageio/ImageIO;->readerFileSuffixesMethod:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageIO$ImageReaderIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageReaderIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileSuffix == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageTranscoders(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/javax/imageio/ImageWriter;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/imageio/ImageReader;",
            "Lorg/apache/poi/javax/imageio/ImageWriter;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageTranscoder;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->getOriginatingProvider()Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOriginatingProvider()Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageIO$TranscoderFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/javax/imageio/ImageIO$TranscoderFilter;-><init>(Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V

    :try_start_0
    sget-object p0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class p1, Lorg/apache/poi/javax/imageio/spi/ImageTranscoderSpi;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/apache/poi/javax/imageio/ImageIO$ImageTranscoderIterator;

    invoke-direct {p1, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageTranscoderIterator;-><init>(Ljava/util/Iterator;)V

    return-object p1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "writer == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reader == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWriter(Lorg/apache/poi/javax/imageio/ImageReader;)Lorg/apache/poi/javax/imageio/ImageWriter;
    .locals 6

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageReader;->getOriginatingProvider()Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :try_start_0
    sget-object v3, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v4, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v3, v4, v1}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v4, p0}, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;->isOwnReader(Lorg/apache/poi/javax/imageio/ImageReader;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :cond_1
    if-nez v0, :cond_2

    :catch_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;->getImageWriterSpiNames()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v2

    :cond_3
    :try_start_1
    aget-object p0, p0, v1

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    invoke-virtual {v0, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviderByClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->createWriterInstance()Lorg/apache/poi/javax/imageio/ImageWriter;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->deregisterServiceProvider(Ljava/lang/Object;Ljava/lang/Class;)Z

    :catch_2
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "reader == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWriters(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageWriter;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    new-instance v2, Lorg/apache/poi/javax/imageio/ImageIO$CanEncodeImageAndFormatFilter;

    invoke-direct {v2, p0, p1}, Lorg/apache/poi/javax/imageio/ImageIO$CanEncodeImageAndFormatFilter;-><init>(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;

    invoke-direct {p1, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;-><init>(Ljava/util/Iterator;)V

    return-object p1

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "formatName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "type == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWritersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageWriter;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    new-instance v2, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;

    sget-object v3, Lorg/apache/poi/javax/imageio/ImageIO;->writerFormatNamesMethod:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "formatName == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWritersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageWriter;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    new-instance v2, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;

    sget-object v3, Lorg/apache/poi/javax/imageio/ImageIO;->writerMIMETypesMethod:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "MIMEType == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getImageWritersBySuffix(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/javax/imageio/ImageWriter;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    new-instance v2, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;

    sget-object v3, Lorg/apache/poi/javax/imageio/ImageIO;->writerFileSuffixesMethod:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ContainsFilter;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/ImageIO$ImageWriterIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileSuffix == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getReaderFileSuffixes()[Ljava/lang/String;
    .locals 2

    const-class v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    sget-object v1, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->FILE_SUFFIXES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Lorg/apache/poi/javax/imageio/ImageIO;->getReaderWriterInfo(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReaderFormatNames()[Ljava/lang/String;
    .locals 2

    const-class v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    sget-object v1, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->FORMAT_NAMES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Lorg/apache/poi/javax/imageio/ImageIO;->getReaderWriterInfo(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReaderMIMETypes()[Ljava/lang/String;
    .locals 2

    const-class v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    sget-object v1, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->MIME_TYPES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Lorg/apache/poi/javax/imageio/ImageIO;->getReaderWriterInfo(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getReaderWriterInfo(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;

    invoke-virtual {p1, v1}, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->info(Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getTempDir()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v1, "java.io.tmpdir"

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getUseCache()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->getUseCache()Z

    move-result v0

    return v0
.end method

.method private static getWriter(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/ImageWriter;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createFromRenderedImage(Lorg/apache/poi/java/awt/image/RenderedImage;)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/javax/imageio/ImageIO;->getImageWriters(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/javax/imageio/ImageWriter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWriterFileSuffixes()[Ljava/lang/String;
    .locals 2

    const-class v0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    sget-object v1, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->FILE_SUFFIXES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Lorg/apache/poi/javax/imageio/ImageIO;->getReaderWriterInfo(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWriterFormatNames()[Ljava/lang/String;
    .locals 2

    const-class v0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    sget-object v1, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->FORMAT_NAMES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Lorg/apache/poi/javax/imageio/ImageIO;->getReaderWriterInfo(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWriterMIMETypes()[Ljava/lang/String;
    .locals 2

    const-class v0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    sget-object v1, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->MIME_TYPES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, v1}, Lorg/apache/poi/javax/imageio/ImageIO;->getReaderWriterInfo(Ljava/lang/Class;Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasCachePermission()Z
    .locals 5

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->getHasPermission()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getTempDir()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FilePermission;

    const-string v4, "read, write, delete"

    invoke-direct {v3, v2, v4}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->setHasPermission(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_5
    :goto_2
    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->setHasPermission(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->setHasPermission(Ljava/lang/Boolean;)V

    return v0
.end method

.method public static read(Ljava/io/File;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/apache/poi/javax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/javax/imageio/ImageIO;->read(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "Can\'t create an ImageInputStream!"

    invoke-direct {p0, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v0, "Can\'t read input file!"

    invoke-direct {p0, v0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/InputStream;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/javax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/javax/imageio/ImageIO;->read(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/net/URL;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 2

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/apache/poi/javax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lorg/apache/poi/javax/imageio/ImageIO;->read(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOException;

    const-string v1, "Can\'t get input stream from URL!"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/javax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/imageio/ImageReader;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageReader;->getDefaultReadParam()Lorg/apache/poi/javax/imageio/ImageReadParam;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v2}, Lorg/apache/poi/javax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/javax/imageio/ImageReader;->read(ILorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageReader;->dispose()V

    invoke-interface {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/ImageReader;->dispose()V

    invoke-interface {p0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V

    throw v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "stream == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scanForPlugins()V
    .locals 1

    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO;->theRegistry:Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/IIORegistry;->registerApplicationClasspathSpis()V

    return-void
.end method

.method public static setCacheDirectory(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a directory!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->setCacheDirectory(Ljava/io/File;)V

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->setHasPermission(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setUseCache(Z)V
    .locals 1

    invoke-static {}, Lorg/apache/poi/javax/imageio/ImageIO;->getCacheInfo()Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/javax/imageio/ImageIO$CacheInfo;->setUseCache(Z)V

    return-void
.end method

.method public static write(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lorg/apache/poi/javax/imageio/ImageIO;->getWriter(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/ImageWriter;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    invoke-static {p2}, Lorg/apache/poi/javax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageIO;->doWrite(Lorg/apache/poi/java/awt/image/RenderedImage;Lorg/apache/poi/javax/imageio/ImageWriter;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string p2, "Can\'t create output stream!"

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static write(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Lorg/apache/poi/javax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/poi/javax/imageio/ImageIO;->getWriter(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/ImageWriter;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageIO;->doWrite(Lorg/apache/poi/java/awt/image/RenderedImage;Lorg/apache/poi/javax/imageio/ImageWriter;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/javax/imageio/IIOException;

    const-string p2, "Can\'t create output stream!"

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/javax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static write(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/lang/String;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)Z
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lorg/apache/poi/javax/imageio/ImageIO;->getWriter(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/lang/String;)Lorg/apache/poi/javax/imageio/ImageWriter;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageIO;->doWrite(Lorg/apache/poi/java/awt/image/RenderedImage;Lorg/apache/poi/javax/imageio/ImageWriter;Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "formatName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "im == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
