.class public abstract Lio/netty/resolver/AddressResolverGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/net/SocketAddress;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final executorTerminationListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final resolvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/resolver/AddressResolver<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/resolver/AddressResolverGroup;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/AddressResolverGroup;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lio/netty/resolver/AddressResolverGroup;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/resolver/AddressResolverGroup;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 7

    iget-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lio/netty/resolver/AddressResolver;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/resolver/AddressResolver;

    iget-object v3, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-array v4, v2, [Ljava/util/Map$Entry;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map$Entry;

    iget-object v4, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    array-length v0, v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v5, v3, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v6}, Lio/netty/util/concurrent/EventExecutorGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-interface {v6, v5}, Lio/netty/util/concurrent/Future;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    :try_start_1
    invoke-interface {v3}, Lio/netty/resolver/AddressResolver;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    sget-object v4, Lio/netty/resolver/AddressResolverGroup;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Failed to close a resolver:"

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")",
            "Lio/netty/resolver/AddressResolver<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/util/concurrent/EventExecutorGroup;->isShuttingDown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/resolver/AddressResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0, p1}, Lio/netty/resolver/AddressResolverGroup;->newResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lio/netty/resolver/AddressResolverGroup;->resolvers:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/netty/resolver/AddressResolverGroup$1;

    invoke-direct {v2, p0, p1, v1}, Lio/netty/resolver/AddressResolverGroup$1;-><init>(Lio/netty/resolver/AddressResolverGroup;Lio/netty/util/concurrent/EventExecutor;Lio/netty/resolver/AddressResolver;)V

    iget-object v3, p0, Lio/netty/resolver/AddressResolverGroup;->executorTerminationListeners:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/util/concurrent/EventExecutorGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to create a new resolver"

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "executor not accepting a task"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract newResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")",
            "Lio/netty/resolver/AddressResolver<",
            "TT;>;"
        }
    .end annotation
.end method
