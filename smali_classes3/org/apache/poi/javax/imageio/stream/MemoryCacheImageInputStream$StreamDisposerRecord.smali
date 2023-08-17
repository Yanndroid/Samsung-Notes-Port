.class Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream$StreamDisposerRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamDisposerRecord"
.end annotation


# instance fields
.field private cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/stream/MemoryCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream$StreamDisposerRecord;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream$StreamDisposerRecord;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/stream/MemoryCache;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/stream/MemoryCacheImageInputStream$StreamDisposerRecord;->cache:Lorg/apache/poi/javax/imageio/stream/MemoryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
