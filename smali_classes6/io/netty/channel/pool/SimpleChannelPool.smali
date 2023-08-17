.class public Lio/netty/channel/pool/SimpleChannelPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/pool/ChannelPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/pool/SimpleChannelPool$ChannelPoolFullException;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final POOL_KEY:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "Lio/netty/channel/pool/SimpleChannelPool;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bootstrap:Lio/netty/bootstrap/Bootstrap;

.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lio/netty/channel/pool/ChannelPoolHandler;

.field private final healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

.field private final lastRecentUsed:Z

.field private final releaseHealthCheck:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/channel/pool/SimpleChannelPool;

    const-string v0, "io.netty.channel.pool.SimpleChannelPool"

    invoke-static {v0}, Lio/netty/util/AttributeKey;->newInstance(Ljava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;)V
    .locals 1

    sget-object v0, Lio/netty/channel/pool/ChannelHealthChecker;->ACTIVE:Lio/netty/channel/pool/ChannelHealthChecker;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/pool/SimpleChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/pool/SimpleChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Z)V

    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Z)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/pool/SimpleChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;ZZ)V

    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentDeque()Ljava/util/Deque;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->deque:Ljava/util/Deque;

    const-string v0, "handler"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/ChannelPoolHandler;

    iput-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    const-string v0, "healthCheck"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/netty/channel/pool/ChannelHealthChecker;

    iput-object p3, p0, Lio/netty/channel/pool/SimpleChannelPool;->healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

    iput-boolean p4, p0, Lio/netty/channel/pool/SimpleChannelPool;->releaseHealthCheck:Z

    const-string p3, "bootstrap"

    invoke-static {p1, p3}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {p1}, Lio/netty/bootstrap/Bootstrap;->clone()Lio/netty/bootstrap/Bootstrap;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/pool/SimpleChannelPool;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    new-instance p3, Lio/netty/channel/pool/SimpleChannelPool$1;

    invoke-direct {p3, p0, p2}, Lio/netty/channel/pool/SimpleChannelPool$1;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/pool/ChannelPoolHandler;)V

    invoke-virtual {p1, p3}, Lio/netty/bootstrap/AbstractBootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    iput-boolean p5, p0, Lio/netty/channel/pool/SimpleChannelPool;->lastRecentUsed:Z

    return-void
.end method

.method public static synthetic access$000(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->notifyConnect(Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method public static synthetic access$100(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->doHealthCheck(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method public static synthetic access$200(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/util/concurrent/Future;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/pool/SimpleChannelPool;->notifyHealthCheck(Lio/netty/util/concurrent/Future;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method public static synthetic access$300(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->doReleaseChannel(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method public static synthetic access$400(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/pool/SimpleChannelPool;->releaseAndOfferIfHealthy(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method private acquireHealthyFromPoolOrNew(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/pool/SimpleChannelPool;->pollChannel()Lio/netty/channel/Channel;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/Bootstrap;->clone()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    sget-object v1, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    invoke-virtual {v0, v1, p0}, Lio/netty/bootstrap/AbstractBootstrap;->attr(Lio/netty/util/AttributeKey;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    invoke-virtual {p0, v0}, Lio/netty/channel/pool/SimpleChannelPool;->connectChannel(Lio/netty/bootstrap/Bootstrap;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->notifyConnect(Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$2;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/pool/SimpleChannelPool$2;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->doHealthCheck(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lio/netty/channel/pool/SimpleChannelPool$3;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/channel/pool/SimpleChannelPool$3;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    :goto_0
    return-object p1
.end method

.method private closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            "Lio/netty/util/concurrent/Promise<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->closeChannel(Lio/netty/channel/Channel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p3, p1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    invoke-interface {p3, p2}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private closeChannel(Lio/netty/channel/Channel;)V
    .locals 2

    sget-object v0, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {p1, v0}, Lio/netty/util/AttributeMap;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/Attribute;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private doHealthCheck(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

    invoke-interface {v0, p1}, Lio/netty/channel/pool/ChannelHealthChecker;->isHealthy(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->notifyHealthCheck(Lio/netty/util/concurrent/Future;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$4;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool$4;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    :goto_0
    return-void
.end method

.method private doHealthCheckOnRelease(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

    invoke-interface {v0, p1}, Lio/netty/channel/pool/ChannelHealthChecker;->isHealthy(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/pool/SimpleChannelPool;->releaseAndOfferIfHealthy(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$6;

    invoke-direct {v1, p0, p1, p2, v0}, Lio/netty/channel/pool/SimpleChannelPool$6;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private doReleaseChannel(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {p1, v0}, Lio/netty/util/AttributeMap;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/Attribute;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not acquired from this ChannelPool"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->releaseHealthCheck:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->doHealthCheckOnRelease(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->releaseAndOffer(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    :goto_0
    return-void
.end method

.method private notifyConnect(Lio/netty/channel/ChannelFuture;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelFuture;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    iget-object p1, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    invoke-interface {p1, v0}, Lio/netty/channel/pool/ChannelPoolHandler;->channelAcquired(Lio/netty/channel/Channel;)V

    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lio/netty/channel/pool/SimpleChannelPool;->release(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyHealthCheck(Lio/netty/util/concurrent/Future;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lio/netty/channel/pool/SimpleChannelPool;->POOL_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {p2, p1}, Lio/netty/util/AttributeMap;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    invoke-interface {p1, p2}, Lio/netty/channel/pool/ChannelPoolHandler;->channelAcquired(Lio/netty/channel/Channel;)V

    invoke-interface {p3, p2}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeChannel(Lio/netty/channel/Channel;)V

    invoke-direct {p0, p3}, Lio/netty/channel/pool/SimpleChannelPool;->acquireHealthyFromPoolOrNew(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0, p2, p1, p3}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    :goto_0
    return-void
.end method

.method private releaseAndOffer(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->offerChannel(Lio/netty/channel/Channel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/pool/ChannelPoolHandler;->channelReleased(Lio/netty/channel/Channel;)V

    invoke-interface {p2, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/channel/pool/SimpleChannelPool$ChannelPoolFullException;

    invoke-direct {v0, v1}, Lio/netty/channel/pool/SimpleChannelPool$ChannelPoolFullException;-><init>(Lio/netty/channel/pool/SimpleChannelPool$1;)V

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    :goto_0
    return-void
.end method

.method private releaseAndOfferIfHealthy(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p3}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->releaseAndOffer(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    invoke-interface {p3, p1}, Lio/netty/channel/pool/ChannelPoolHandler;->channelReleased(Lio/netty/channel/Channel;)V

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    invoke-direct {p0, p1, p3, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final acquire()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/Bootstrap;->config()Lio/netty/bootstrap/BootstrapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/pool/SimpleChannelPool;->acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/concurrent/Promise;

    invoke-direct {p0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->acquireHealthyFromPoolOrNew(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public bootstrap()Lio/netty/bootstrap/Bootstrap;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    return-object v0
.end method

.method public close()V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/pool/SimpleChannelPool;->pollChannel()Lio/netty/channel/Channel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->awaitUninterruptibly()Lio/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method public closeAsync()Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$7;

    invoke-direct {v1, p0}, Lio/netty/channel/pool/SimpleChannelPool$7;-><init>(Lio/netty/channel/pool/SimpleChannelPool;)V

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/AbstractEventExecutor;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public connectChannel(Lio/netty/bootstrap/Bootstrap;)Lio/netty/channel/ChannelFuture;
    .locals 0

    invoke-virtual {p1}, Lio/netty/bootstrap/Bootstrap;->connect()Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public handler()Lio/netty/channel/pool/ChannelPoolHandler;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->handler:Lio/netty/channel/pool/ChannelPoolHandler;

    return-object v0
.end method

.method public healthChecker()Lio/netty/channel/pool/ChannelHealthChecker;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->healthCheck:Lio/netty/channel/pool/ChannelHealthChecker;

    return-object v0
.end method

.method public offerChannel(Lio/netty/channel/Channel;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->deque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public pollChannel()Lio/netty/channel/Channel;
    .locals 1

    iget-boolean v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->lastRecentUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lio/netty/channel/Channel;

    return-object v0
.end method

.method public final release(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/pool/SimpleChannelPool;->release(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public release(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool;->doReleaseChannel(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/pool/SimpleChannelPool$5;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/pool/SimpleChannelPool$5;-><init>(Lio/netty/channel/pool/SimpleChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/pool/SimpleChannelPool;->closeAndFail(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lio/netty/util/concurrent/Promise;)V

    :goto_0
    return-object p2
.end method

.method public releaseHealthCheck()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/channel/pool/SimpleChannelPool;->releaseHealthCheck:Z

    return v0
.end method
