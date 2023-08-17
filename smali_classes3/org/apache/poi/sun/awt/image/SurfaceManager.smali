.class public abstract Lorg/apache/poi/sun/awt/image/SurfaceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sun/awt/image/SurfaceManager$FlushableCacheData;,
        Lorg/apache/poi/sun/awt/image/SurfaceManager$ProxiedGraphicsConfig;,
        Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageCapabilitiesGc;,
        Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;
    }
.end annotation


# static fields
.field private static imgaccessor:Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;


# instance fields
.field private cacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageScale(Lorg/apache/poi/java/awt/Image;)I
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/java/awt/image/VolatileImage;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/sun/awt/image/SurfaceManager;->getManager(Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/sun/awt/image/SurfaceManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SurfaceManager;->getPrimarySurfaceData()Lorg/apache/poi/sun/java2d/SurfaceData;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/sun/java2d/SurfaceData;->getDefaultScale()I

    move-result p0

    return p0
.end method

.method public static getManager(Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/sun/awt/image/SurfaceManager;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static setImageAccessor(Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/image/SurfaceManager;->imgaccessor:Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;

    if-nez v0, :cond_0

    sput-object p0, Lorg/apache/poi/sun/awt/image/SurfaceManager;->imgaccessor:Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "Attempt to set ImageAccessor twice"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setManager(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/sun/awt/image/SurfaceManager;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/image/SurfaceManager;->imgaccessor:Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;->setSurfaceManager(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/sun/awt/image/SurfaceManager;)V

    return-void
.end method


# virtual methods
.method public acceleratedSurfaceLost()V
    .locals 0

    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/sun/awt/image/SurfaceManager;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/sun/awt/image/SurfaceManager$FlushableCacheData;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/sun/awt/image/SurfaceManager$FlushableCacheData;

    invoke-interface {v1, p1}, Lorg/apache/poi/sun/awt/image/SurfaceManager$FlushableCacheData;->flush(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCacheData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCapabilities(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/ImageCapabilities;
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageCapabilitiesGc;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageCapabilitiesGc;-><init>(Lorg/apache/poi/sun/awt/image/SurfaceManager;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-object v0
.end method

.method public abstract getPrimarySurfaceData()Lorg/apache/poi/sun/java2d/SurfaceData;
.end method

.method public abstract restoreContents()Lorg/apache/poi/sun/java2d/SurfaceData;
.end method

.method public setAccelerationPriority(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sun/awt/image/SurfaceManager;->flush(Z)V

    :cond_0
    return-void
.end method

.method public setCacheData(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
