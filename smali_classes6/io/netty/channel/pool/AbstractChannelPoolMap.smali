.class public abstract Lio/netty/channel/pool/AbstractChannelPoolMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/pool/ChannelPoolMap;
.implements Ljava/lang/Iterable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "P::",
        "Lio/netty/channel/pool/ChannelPool;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/channel/pool/ChannelPoolMap<",
        "TK;TP;>;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TP;>;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static poolCloseAsyncIfSupported(Lio/netty/channel/pool/ChannelPool;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/pool/ChannelPool;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Lio/netty/channel/pool/SimpleChannelPool;

    if-eqz v0, :cond_0

    check-cast p0, Lio/netty/channel/pool/SimpleChannelPool;

    invoke-virtual {p0}, Lio/netty/channel/pool/SimpleChannelPool;->closeAsync()Lio/netty/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lio/netty/channel/pool/ChannelPool;->close()V

    sget-object p0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/AbstractEventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-virtual {v0, p0}, Lio/netty/util/concurrent/AbstractEventExecutor;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method private removeAsyncIfSupported(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/pool/ChannelPool;

    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/AbstractEventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-static {p1}, Lio/netty/channel/pool/AbstractChannelPoolMap;->poolCloseAsyncIfSupported(Lio/netty/channel/pool/ChannelPool;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    new-instance v1, Lio/netty/channel/pool/AbstractChannelPoolMap$1;

    invoke-direct {v1, p0, v0}, Lio/netty/channel/pool/AbstractChannelPoolMap$1;-><init>(Lio/netty/channel/pool/AbstractChannelPoolMap;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {p1, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-object v0

    :cond_0
    sget-object p1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lio/netty/util/concurrent/AbstractEventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/netty/channel/pool/AbstractChannelPoolMap;->removeAsyncIfSupported(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/Future;->syncUninterruptibly()Lio/netty/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Lio/netty/channel/pool/ChannelPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TP;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/ChannelPool;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/channel/pool/AbstractChannelPoolMap;->newPool(Ljava/lang/Object;)Lio/netty/channel/pool/ChannelPool;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/pool/ChannelPool;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lio/netty/channel/pool/AbstractChannelPoolMap;->poolCloseAsyncIfSupported(Lio/netty/channel/pool/ChannelPool;)Lio/netty/util/concurrent/Future;

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TP;>;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/internal/ReadOnlyIterator;

    iget-object v1, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public abstract newPool(Ljava/lang/Object;)Lio/netty/channel/pool/ChannelPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TP;"
        }
    .end annotation
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/pool/ChannelPool;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lio/netty/channel/pool/AbstractChannelPoolMap;->poolCloseAsyncIfSupported(Lio/netty/channel/pool/ChannelPool;)Lio/netty/util/concurrent/Future;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lio/netty/channel/pool/AbstractChannelPoolMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method
