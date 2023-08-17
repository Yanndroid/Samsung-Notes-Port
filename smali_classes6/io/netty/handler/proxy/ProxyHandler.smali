.class public abstract Lio/netty/handler/proxy/ProxyHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;
    }
.end annotation


# static fields
.field public static final AUTH_NONE:Ljava/lang/String; = "none"

.field private static final DEFAULT_CONNECT_TIMEOUT_MILLIS:J = 0x2710L

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final connectPromise:Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

.field private connectTimeoutFuture:Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile connectTimeoutMillis:J

.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private volatile destinationAddress:Ljava/net/SocketAddress;

.field private finished:Z

.field private flushedPrematurely:Z

.field private pendingWrites:Lio/netty/channel/PendingWriteQueue;

.field private final proxyAddress:Ljava/net/SocketAddress;

.field private suppressChannelReadComplete:Z

.field private final writeListener:Lio/netty/channel/ChannelFutureListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/proxy/ProxyHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/proxy/ProxyHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 2

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectTimeoutMillis:J

    new-instance v0, Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;-><init>(Lio/netty/handler/proxy/ProxyHandler;Lio/netty/handler/proxy/ProxyHandler$1;)V

    iput-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectPromise:Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

    new-instance v0, Lio/netty/handler/proxy/ProxyHandler$1;

    invoke-direct {v0, p0}, Lio/netty/handler/proxy/ProxyHandler$1;-><init>(Lio/netty/handler/proxy/ProxyHandler;)V

    iput-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->writeListener:Lio/netty/channel/ChannelFutureListener;

    const-string v0, "proxyAddress"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    iput-object p1, p0, Lio/netty/handler/proxy/ProxyHandler;->proxyAddress:Ljava/net/SocketAddress;

    return-void
.end method

.method public static synthetic access$100(Lio/netty/handler/proxy/ProxyHandler;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->setConnectFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$200(Lio/netty/handler/proxy/ProxyHandler;)Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectPromise:Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/handler/proxy/ProxyHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method private addPendingWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->pendingWrites:Lio/netty/channel/PendingWriteQueue;

    if-nez v0, :cond_0

    new-instance v0, Lio/netty/channel/PendingWriteQueue;

    invoke-direct {v0, p1}, Lio/netty/channel/PendingWriteQueue;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    iput-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->pendingWrites:Lio/netty/channel/PendingWriteQueue;

    :cond_0
    invoke-virtual {v0, p2, p3}, Lio/netty/channel/PendingWriteQueue;->add(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method private cancelConnectTimeoutFuture()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private failPendingWrites(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->pendingWrites:Lio/netty/channel/PendingWriteQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/netty/channel/PendingWriteQueue;->removeAndFailAll(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/handler/proxy/ProxyHandler;->pendingWrites:Lio/netty/channel/PendingWriteQueue;

    :cond_0
    return-void
.end method

.method private failPendingWritesAndClose(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->failPendingWrites(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectPromise:Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/DefaultPromise;->tryFailure(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    iget-object p1, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private static readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method

.method private safeRemoveDecoder()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v0}, Lio/netty/handler/proxy/ProxyHandler;->removeDecoder(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lio/netty/handler/proxy/ProxyHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to remove proxy decoders:"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private safeRemoveEncoder()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v0}, Lio/netty/handler/proxy/ProxyHandler;->removeEncoder(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lio/netty/handler/proxy/ProxyHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to remove proxy encoders:"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private sendInitialMessage(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    iget-wide v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectTimeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    new-instance v3, Lio/netty/handler/proxy/ProxyHandler$2;

    invoke-direct {v3, p0}, Lio/netty/handler/proxy/ProxyHandler$2;-><init>(Lio/netty/handler/proxy/ProxyHandler;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectTimeoutFuture:Lio/netty/util/concurrent/Future;

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->newInitialMessage(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lio/netty/handler/proxy/ProxyHandler;->sendToProxyServer(Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1}, Lio/netty/handler/proxy/ProxyHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method private setConnectFailure(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->finished:Z

    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->cancelConnectTimeoutFuture()V

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectPromise:Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

    invoke-virtual {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/proxy/ProxyConnectException;

    if-nez v0, :cond_0

    new-instance v0, Lio/netty/handler/proxy/ProxyConnectException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/handler/proxy/ProxyHandler;->exceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_0
    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->safeRemoveDecoder()Z

    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->safeRemoveEncoder()Z

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->failPendingWritesAndClose(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private setConnectSuccess()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->finished:Z

    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->cancelConnectTimeoutFuture()V

    iget-object v1, p0, Lio/netty/handler/proxy/ProxyHandler;->connectPromise:Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

    invoke-virtual {v1}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->safeRemoveEncoder()Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v2, Lio/netty/handler/proxy/ProxyConnectionEvent;

    invoke-virtual {p0}, Lio/netty/handler/proxy/ProxyHandler;->protocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/netty/handler/proxy/ProxyHandler;->authScheme()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/netty/handler/proxy/ProxyHandler;->proxyAddress:Ljava/net/SocketAddress;

    iget-object v6, p0, Lio/netty/handler/proxy/ProxyHandler;->destinationAddress:Ljava/net/SocketAddress;

    invoke-direct {v2, v3, v4, v5, v6}, Lio/netty/handler/proxy/ProxyConnectionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->safeRemoveDecoder()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->writePendingWrites()V

    iget-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->flushedPrematurely:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectPromise:Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

    iget-object v1, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->trySuccess(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lio/netty/handler/proxy/ProxyConnectException;

    const-string v1, "failed to remove all codec handlers added by the proxy handler; bug?"

    invoke-direct {v0, v1}, Lio/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/netty/handler/proxy/ProxyHandler;->failPendingWritesAndClose(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private writePendingWrites()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->pendingWrites:Lio/netty/channel/PendingWriteQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/channel/PendingWriteQueue;->removeAndWriteAll()Lio/netty/channel/ChannelFuture;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->pendingWrites:Lio/netty/channel/PendingWriteQueue;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addCodec(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract authScheme()Ljava/lang/String;
.end method

.method public final channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->sendInitialMessage(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public final channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->finished:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_0
    new-instance p1, Lio/netty/handler/proxy/ProxyConnectException;

    const-string v0, "disconnected"

    invoke-virtual {p0, v0}, Lio/netty/handler/proxy/ProxyHandler;->exceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->setConnectFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->finished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->suppressChannelReadComplete:Z

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->suppressChannelReadComplete:Z

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/proxy/ProxyHandler;->handleResponse(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->setConnectSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->setConnectFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->suppressChannelReadComplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->suppressChannelReadComplete:Z

    invoke-static {p1}, Lio/netty/handler/proxy/ProxyHandler;->readIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public final connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->destinationAddress:Ljava/net/SocketAddress;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {p1}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    invoke-interface {p4, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void

    :cond_0
    iput-object p2, p0, Lio/netty/handler/proxy/ProxyHandler;->destinationAddress:Ljava/net/SocketAddress;

    iget-object p2, p0, Lio/netty/handler/proxy/ProxyHandler;->proxyAddress:Ljava/net/SocketAddress;

    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public final connectFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectPromise:Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

    return-object v0
.end method

.method public final connectTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectTimeoutMillis:J

    return-wide v0
.end method

.method public final destinationAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/SocketAddress;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->destinationAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->finished:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lio/netty/handler/proxy/ProxyHandler;->setConnectFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final exceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lio/netty/handler/proxy/ProxyHandler;->protocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/handler/proxy/ProxyHandler;->authScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/handler/proxy/ProxyHandler;->proxyAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/handler/proxy/ProxyHandler;->destinationAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->finished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->writePendingWrites()V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/proxy/ProxyHandler;->flushedPrematurely:Z

    :goto_0
    return-void
.end method

.method public abstract handleResponse(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)Z
.end method

.method public final handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iput-object p1, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->addCodec(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/proxy/ProxyHandler;->sendInitialMessage(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->connectPromise:Lio/netty/handler/proxy/ProxyHandler$LazyChannelPromise;

    invoke-virtual {v0}, Lio/netty/util/concurrent/DefaultPromise;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public abstract newInitialMessage(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
.end method

.method public abstract protocol()Ljava/lang/String;
.end method

.method public final proxyAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/SocketAddress;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->proxyAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public abstract removeDecoder(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public abstract removeEncoder(Lio/netty/channel/ChannelHandlerContext;)V
.end method

.method public final sendToProxyServer(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyHandler;->writeListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public final setConnectTimeoutMillis(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lio/netty/handler/proxy/ProxyHandler;->connectTimeoutMillis:J

    return-void
.end method

.method public final write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/proxy/ProxyHandler;->finished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/proxy/ProxyHandler;->writePendingWrites()V

    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/proxy/ProxyHandler;->addPendingWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-void
.end method
