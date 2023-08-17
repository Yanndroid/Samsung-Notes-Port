.class public final Lorg/apache/poi/javax/imageio/spi/IIORegistry;
.super Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;
.source "SourceFile"


# static fields
.field private static final initialCategories:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lorg/apache/poi/javax/imageio/spi/IIORegistry;->initialCategories:Ljava/util/Vector;

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageTranscoderSpi;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageInputStreamSpi;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-class v1, Lorg/apache/poi/javax/imageio/spi/ImageOutputStreamSpi;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/javax/imageio/spi/IIORegistry;->initialCategories:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;-><init>(Ljava/util/Iterator;)V

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/spi/IIORegistry;->registerStandardSpis()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/spi/IIORegistry;->registerApplicationClasspathSpis()V

    return-void
.end method

.method public static getDefaultInstance()Lorg/apache/poi/javax/imageio/spi/IIORegistry;
    .locals 3

    const-class v0, Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/poi/javax/imageio/spi/IIORegistry;

    invoke-direct {v2}, Lorg/apache/poi/javax/imageio/spi/IIORegistry;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method private registerInstalledProviders()V
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/spi/IIORegistry$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/javax/imageio/spi/IIORegistry$1;-><init>(Lorg/apache/poi/javax/imageio/spi/IIORegistry;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private registerStandardSpis()V
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/png/PNGImageReaderSpi;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V

    new-instance v0, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/png/PNGImageWriterSpi;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V

    new-instance v0, Lcom/sun/imageio/spi/FileImageInputStreamSpi;

    invoke-direct {v0}, Lcom/sun/imageio/spi/FileImageInputStreamSpi;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V

    new-instance v0, Lcom/sun/imageio/spi/FileImageOutputStreamSpi;

    invoke-direct {v0}, Lcom/sun/imageio/spi/FileImageOutputStreamSpi;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V

    new-instance v0, Lcom/sun/imageio/spi/InputStreamImageInputStreamSpi;

    invoke-direct {v0}, Lcom/sun/imageio/spi/InputStreamImageInputStreamSpi;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V

    new-instance v0, Lcom/sun/imageio/spi/OutputStreamImageOutputStreamSpi;

    invoke-direct {v0}, Lcom/sun/imageio/spi/OutputStreamImageOutputStreamSpi;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V

    new-instance v0, Lcom/sun/imageio/spi/RAFImageInputStreamSpi;

    invoke-direct {v0}, Lcom/sun/imageio/spi/RAFImageInputStreamSpi;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V

    new-instance v0, Lcom/sun/imageio/spi/RAFImageOutputStreamSpi;

    invoke-direct {v0}, Lcom/sun/imageio/spi/RAFImageOutputStreamSpi;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/spi/IIORegistry;->registerInstalledProviders()V

    return-void
.end method


# virtual methods
.method public registerApplicationClasspathSpis()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->getCategories()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;

    invoke-virtual {p0, v3}, Lorg/apache/poi/javax/imageio/spi/ServiceRegistry;->registerServiceProvider(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/ServiceConfigurationError;->printStackTrace()V

    goto :goto_0

    :cond_1
    throw v3

    :cond_2
    return-void
.end method
