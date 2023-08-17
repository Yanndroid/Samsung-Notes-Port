.class public final Lorg/apache/poi/java/awt/SplashScreen;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static theInstance:Lorg/apache/poi/java/awt/SplashScreen; = null

.field private static wasClosed:Z = false


# instance fields
.field private image:Lorg/apache/poi/java/awt/image/BufferedImage;

.field private imageURL:Ljava/net/URL;

.field private final splashPtr:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.poi.java.awt.SplashScreen"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/SplashScreen;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/java/awt/SplashScreen;->splashPtr:J

    return-void
.end method

.method private static native _close(J)V
.end method

.method private static native _getBounds(J)Lorg/apache/poi/java/awt/Rectangle;
.end method

.method private static native _getImageFileName(J)Ljava/lang/String;
.end method

.method private static native _getImageJarName(J)Ljava/lang/String;
.end method

.method private static native _getInstance()J
.end method

.method private static native _isVisible(J)Z
.end method

.method private static native _setImageData(J[B)Z
.end method

.method private static native _update(J[IIIIII)V
.end method

.method private checkVisible()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/SplashScreen;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no splash screen available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSplashScreen()Lorg/apache/poi/java/awt/SplashScreen;
    .locals 5

    const-class v0, Lorg/apache/poi/java/awt/SplashScreen;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/apache/poi/java/awt/SplashScreen;->wasClosed:Z

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/poi/java/awt/SplashScreen;->theInstance:Lorg/apache/poi/java/awt/SplashScreen;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/sun/security/action/LoadLibraryAction;

    const-string/jumbo v2, "splashscreen"

    invoke-direct {v1, v2}, Lorg/apache/poi/sun/security/action/LoadLibraryAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/poi/java/awt/SplashScreen;->_getInstance()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/SplashScreen;->_isVisible(J)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/poi/java/awt/SplashScreen;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/java/awt/SplashScreen;-><init>(J)V

    sput-object v3, Lorg/apache/poi/java/awt/SplashScreen;->theInstance:Lorg/apache/poi/java/awt/SplashScreen;

    :cond_0
    sget-object v1, Lorg/apache/poi/java/awt/SplashScreen;->theInstance:Lorg/apache/poi/java/awt/SplashScreen;

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Lorg/apache/poi/java/awt/HeadlessException;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/HeadlessException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static markClosed()V
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/SplashScreen;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lorg/apache/poi/java/awt/SplashScreen;->wasClosed:Z

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/poi/java/awt/SplashScreen;->theInstance:Lorg/apache/poi/java/awt/SplashScreen;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3

    const-class v0, Lorg/apache/poi/java/awt/SplashScreen;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SplashScreen;->checkVisible()V

    iget-wide v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->splashPtr:J

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/SplashScreen;->_close(J)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->image:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-static {}, Lorg/apache/poi/java/awt/SplashScreen;->markClosed()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createGraphics()Lorg/apache/poi/java/awt/Graphics2D;
    .locals 5

    const-class v0, Lorg/apache/poi/java/awt/SplashScreen;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->image:Lorg/apache/poi/java/awt/image/BufferedImage;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/SplashScreen;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/java/awt/image/BufferedImage;

    iget v3, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v1, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    const/4 v4, 0x2

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(III)V

    iput-object v2, p0, Lorg/apache/poi/java/awt/SplashScreen;->image:Lorg/apache/poi/java/awt/image/BufferedImage;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->image:Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->createGraphics()Lorg/apache/poi/java/awt/Graphics2D;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 3

    const-class v0, Lorg/apache/poi/java/awt/SplashScreen;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SplashScreen;->checkVisible()V

    iget-wide v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->splashPtr:J

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/SplashScreen;->_getBounds(J)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImageURL()Ljava/net/URL;
    .locals 6

    const-class v0, Lorg/apache/poi/java/awt/SplashScreen;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SplashScreen;->checkVisible()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->imageURL:Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    iget-wide v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->splashPtr:J

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/SplashScreen;->_getImageFileName(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/poi/java/awt/SplashScreen;->splashPtr:J

    invoke-static {v2, v3}, Lorg/apache/poi/java/awt/SplashScreen;->_getImageJarName(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jar:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/poi/java/awt/SplashScreen;->imageURL:Ljava/net/URL;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->imageURL:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lorg/apache/poi/java/awt/SplashScreen;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "MalformedURLException caught in the getImageURL() method"

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->imageURL:Ljava/net/URL;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/SplashScreen;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Rectangle;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 3

    const-class v0, Lorg/apache/poi/java/awt/SplashScreen;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/apache/poi/java/awt/SplashScreen;->wasClosed:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->splashPtr:J

    invoke-static {v1, v2}, Lorg/apache/poi/java/awt/SplashScreen;->_isVisible(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setImageURL(Ljava/net/URL;)V
    .locals 7

    invoke-direct {p0}, Lorg/apache/poi/java/awt/SplashScreen;->checkVisible()V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int v6, v4, v5

    if-le v6, v1, :cond_2

    mul-int/lit8 v1, v4, 0x2

    if-le v6, v1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    new-array v1, v6, [B

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    move v1, v6

    :cond_2
    invoke-virtual {v0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_4

    const-class v6, Lorg/apache/poi/java/awt/SplashScreen;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SplashScreen;->checkVisible()V

    iget-wide v0, p0, Lorg/apache/poi/java/awt/SplashScreen;->splashPtr:J

    invoke-static {v0, v1, v2}, Lorg/apache/poi/java/awt/SplashScreen;->_setImageData(J[B)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lorg/apache/poi/java/awt/SplashScreen;->imageURL:Ljava/net/URL;

    monitor-exit v6

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bad image format or i/o error when loading image"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    add-int/2addr v4, v5

    goto :goto_0
.end method

.method public update()V
    .locals 12

    const-class v0, Lorg/apache/poi/java/awt/SplashScreen;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SplashScreen;->checkVisible()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/SplashScreen;->image:Lorg/apache/poi/java/awt/image/BufferedImage;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object v2

    instance-of v3, v2, Lorg/apache/poi/java/awt/image/DataBufferInt;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/DataBuffer;->getNumBanks()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v11

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/Raster;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    check-cast v2, Lorg/apache/poi/java/awt/image/DataBufferInt;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealData(Lorg/apache/poi/java/awt/image/DataBufferInt;I)[I

    move-result-object v6

    monitor-enter v0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/poi/java/awt/SplashScreen;->checkVisible()V

    iget-wide v4, p0, Lorg/apache/poi/java/awt/SplashScreen;->splashPtr:J

    iget v7, v1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v8, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v9, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v10, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-static/range {v4 .. v11}, Lorg/apache/poi/java/awt/SplashScreen;->_update(J[IIIIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overlay image has invalid sample model == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of banks =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in overlay image DataBuffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overlay image DataBuffer is of invalid type == "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no overlay image available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
