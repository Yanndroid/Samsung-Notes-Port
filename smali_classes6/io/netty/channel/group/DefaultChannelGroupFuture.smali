.class final Lio/netty/channel/group/DefaultChannelGroupFuture;
.super Lio/netty/util/concurrent/DefaultPromise;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/group/ChannelGroupFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/DefaultPromise<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/netty/channel/group/ChannelGroupFuture;"
    }
.end annotation


# instance fields
.field private final childListener:Lio/netty/channel/ChannelFutureListener;

.field private failureCount:I

.field private final futures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/channel/Channel;",
            "Lio/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final group:Lio/netty/channel/group/ChannelGroup;

.field private successCount:I


# direct methods
.method public constructor <init>(Lio/netty/channel/group/ChannelGroup;Ljava/util/Collection;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/group/ChannelGroup;",
            "Ljava/util/Collection<",
            "Lio/netty/channel/ChannelFuture;",
            ">;",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    new-instance p3, Lio/netty/channel/group/DefaultChannelGroupFuture$1;

    invoke-direct {p3, p0}, Lio/netty/channel/group/DefaultChannelGroupFuture$1;-><init>(Lio/netty/channel/group/DefaultChannelGroupFuture;)V

    iput-object p3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lio/netty/channel/ChannelFutureListener;

    const-string p3, "group"

    invoke-static {p1, p3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/group/ChannelGroup;

    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->group:Lio/netty/channel/group/ChannelGroup;

    const-string p1, "futures"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/netty/channel/ChannelFuture;

    invoke-interface {p3}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/channel/ChannelFuture;

    iget-object p3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p2, p3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setSuccess0()V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/group/ChannelGroup;Ljava/util/Map;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/group/ChannelGroup;",
            "Ljava/util/Map<",
            "Lio/netty/channel/Channel;",
            "Lio/netty/channel/ChannelFuture;",
            ">;",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    new-instance p3, Lio/netty/channel/group/DefaultChannelGroupFuture$1;

    invoke-direct {p3, p0}, Lio/netty/channel/group/DefaultChannelGroupFuture$1;-><init>(Lio/netty/channel/group/DefaultChannelGroupFuture;)V

    iput-object p3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lio/netty/channel/ChannelFutureListener;

    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->group:Lio/netty/channel/group/ChannelGroup;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/channel/ChannelFuture;

    iget-object p3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p2, p3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setSuccess0()V

    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lio/netty/channel/group/DefaultChannelGroupFuture;)I
    .locals 0

    iget p0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    return p0
.end method

.method public static synthetic access$008(Lio/netty/channel/group/DefaultChannelGroupFuture;)I
    .locals 2

    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    return v0
.end method

.method public static synthetic access$100(Lio/netty/channel/group/DefaultChannelGroupFuture;)I
    .locals 0

    iget p0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    return p0
.end method

.method public static synthetic access$108(Lio/netty/channel/group/DefaultChannelGroupFuture;)I
    .locals 2

    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    return v0
.end method

.method public static synthetic access$200(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/channel/group/DefaultChannelGroupFuture;Lio/netty/channel/group/ChannelGroupException;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setFailure0(Lio/netty/channel/group/ChannelGroupException;)V

    return-void
.end method

.method public static synthetic access$400(Lio/netty/channel/group/DefaultChannelGroupFuture;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setSuccess0()V

    return-void
.end method

.method private setFailure0(Lio/netty/channel/group/ChannelGroupException;)V
    .locals 0

    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    return-void
.end method

.method private setSuccess0()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/DefaultChannelGroupFuture;"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/DefaultChannelGroupFuture;"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic await()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->await()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0

    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->await()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Promise;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->await()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->awaitUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0

    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->awaitUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->awaitUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public cause()Lio/netty/channel/group/ChannelGroupException;
    .locals 1

    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lio/netty/channel/group/ChannelGroupException;

    return-object v0
.end method

.method public bridge synthetic cause()Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->cause()Lio/netty/channel/group/ChannelGroupException;

    move-result-object v0

    return-object v0
.end method

.method public checkDeadLock()V
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lio/netty/util/concurrent/ImmediateEventExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateEventExecutor;

    if-eq v0, v1, :cond_1

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/BlockingOperationException;

    invoke-direct {v0}, Lio/netty/util/concurrent/BlockingOperationException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public find(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelFuture;

    return-object p1
.end method

.method public group()Lio/netty/channel/group/ChannelGroup;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->group:Lio/netty/channel/group/ChannelGroup;

    return-object v0
.end method

.method public declared-synchronized isPartialFailure()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPartialSuccess()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/DefaultChannelGroupFuture;"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/DefaultChannelGroupFuture;"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public setSuccess(Ljava/lang/Void;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sync()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->sync()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0

    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->sync()Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->sync()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Promise;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->sync()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->syncUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0

    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->syncUninterruptibly()Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->syncUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->syncUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public bridge synthetic trySuccess(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->trySuccess(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public trySuccess(Ljava/lang/Void;)Z
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
