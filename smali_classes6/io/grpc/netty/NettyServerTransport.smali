.class Lio/grpc/netty/NettyServerTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ServerTransport;


# static fields
.field private static final QUIET_EXCEPTIONS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final connectionLog:Ljava/util/logging/Logger;


# instance fields
.field private final autoFlowControl:Z

.field private final channel:Lio/netty/channel/Channel;

.field private final channelUnused:Lio/netty/channel/ChannelPromise;

.field private final eagAttributes:Lio/grpc/Attributes;

.field private final flowControlWindow:I

.field private grpcHandler:Lio/grpc/netty/NettyServerHandler;

.field private final keepAliveTimeInNanos:J

.field private final keepAliveTimeoutInNanos:J

.field private listener:Lio/grpc/internal/ServerTransportListener;

.field private final logId:Lio/grpc/InternalLogId;

.field private final maxConnectionAgeGraceInNanos:J

.field private final maxConnectionAgeInNanos:J

.field private final maxConnectionIdleInNanos:J

.field private final maxHeaderListSize:I

.field private final maxMessageSize:I

.field private final maxStreams:I

.field private final permitKeepAliveTimeInNanos:J

.field private final permitKeepAliveWithoutCalls:Z

.field private final protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

.field private final streamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private terminated:Z

.field private final transportTracer:Lio/grpc/internal/TransportTracer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lio/grpc/netty/NettyServerTransport;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s.connections"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/NettyServerTransport;->connectionLog:Ljava/util/logging/Logger;

    const-string v0, "NativeIoException"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/NettyServerTransport;->QUIET_EXCEPTIONS:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;Lio/grpc/netty/ProtocolNegotiator;Ljava/util/List;Lio/grpc/internal/TransportTracer;IZIIIJJJJJZJLio/grpc/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/channel/ChannelPromise;",
            "Lio/grpc/netty/ProtocolNegotiator;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Lio/grpc/internal/TransportTracer;",
            "IZIIIJJJJJZJ",
            "Lio/grpc/Attributes;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "channel"

    move-object v2, p1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/Channel;

    iput-object v1, v0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    move-object v1, p2

    iput-object v1, v0, Lio/grpc/netty/NettyServerTransport;->channelUnused:Lio/netty/channel/ChannelPromise;

    const-string v1, "protocolNegotiator"

    move-object v3, p3

    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/ProtocolNegotiator;

    iput-object v1, v0, Lio/grpc/netty/NettyServerTransport;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    const-string v1, "streamTracerFactories"

    move-object v3, p4

    invoke-static {p4, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lio/grpc/netty/NettyServerTransport;->streamTracerFactories:Ljava/util/List;

    const-string v1, "transportTracer"

    move-object v3, p5

    invoke-static {p5, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/TransportTracer;

    iput-object v1, v0, Lio/grpc/netty/NettyServerTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    move v1, p6

    iput v1, v0, Lio/grpc/netty/NettyServerTransport;->maxStreams:I

    move v1, p7

    iput-boolean v1, v0, Lio/grpc/netty/NettyServerTransport;->autoFlowControl:Z

    move v1, p8

    iput v1, v0, Lio/grpc/netty/NettyServerTransport;->flowControlWindow:I

    move v1, p9

    iput v1, v0, Lio/grpc/netty/NettyServerTransport;->maxMessageSize:I

    move v1, p10

    iput v1, v0, Lio/grpc/netty/NettyServerTransport;->maxHeaderListSize:I

    move-wide/from16 v3, p11

    iput-wide v3, v0, Lio/grpc/netty/NettyServerTransport;->keepAliveTimeInNanos:J

    move-wide/from16 v3, p13

    iput-wide v3, v0, Lio/grpc/netty/NettyServerTransport;->keepAliveTimeoutInNanos:J

    move-wide/from16 v3, p15

    iput-wide v3, v0, Lio/grpc/netty/NettyServerTransport;->maxConnectionIdleInNanos:J

    move-wide/from16 v3, p17

    iput-wide v3, v0, Lio/grpc/netty/NettyServerTransport;->maxConnectionAgeInNanos:J

    move-wide/from16 v3, p19

    iput-wide v3, v0, Lio/grpc/netty/NettyServerTransport;->maxConnectionAgeGraceInNanos:J

    move/from16 v1, p21

    iput-boolean v1, v0, Lio/grpc/netty/NettyServerTransport;->permitKeepAliveWithoutCalls:Z

    move-wide/from16 v3, p22

    iput-wide v3, v0, Lio/grpc/netty/NettyServerTransport;->permitKeepAliveTimeInNanos:J

    const-string v1, "eagAttributes"

    move-object/from16 v3, p24

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Attributes;

    iput-object v1, v0, Lio/grpc/netty/NettyServerTransport;->eagAttributes:Lio/grpc/Attributes;

    invoke-interface {p1}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/netty/NettyServerTransport;->logId:Lio/grpc/InternalLogId;

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/netty/NettyServerTransport;)Lio/grpc/netty/NettyServerHandler;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerTransport;->grpcHandler:Lio/grpc/netty/NettyServerHandler;

    return-object p0
.end method

.method public static synthetic access$100(Lio/grpc/netty/NettyServerTransport;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyServerTransport;->notifyTerminated(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$200(Lio/grpc/netty/NettyServerTransport;)Lio/netty/channel/Channel;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    return-object p0
.end method

.method public static synthetic access$300(Lio/grpc/netty/NettyServerTransport;Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketStats;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyServerTransport;->getStatsHelper(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketStats;

    move-result-object p0

    return-object p0
.end method

.method private createHandler(Lio/grpc/internal/ServerTransportListener;Lio/netty/channel/ChannelPromise;)Lio/grpc/netty/NettyServerHandler;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lio/grpc/netty/NettyServerTransport;->streamTracerFactories:Ljava/util/List;

    iget-object v4, v0, Lio/grpc/netty/NettyServerTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    iget v5, v0, Lio/grpc/netty/NettyServerTransport;->maxStreams:I

    iget-boolean v6, v0, Lio/grpc/netty/NettyServerTransport;->autoFlowControl:Z

    iget v7, v0, Lio/grpc/netty/NettyServerTransport;->flowControlWindow:I

    iget v8, v0, Lio/grpc/netty/NettyServerTransport;->maxHeaderListSize:I

    iget v9, v0, Lio/grpc/netty/NettyServerTransport;->maxMessageSize:I

    iget-wide v10, v0, Lio/grpc/netty/NettyServerTransport;->keepAliveTimeInNanos:J

    iget-wide v12, v0, Lio/grpc/netty/NettyServerTransport;->keepAliveTimeoutInNanos:J

    iget-wide v14, v0, Lio/grpc/netty/NettyServerTransport;->maxConnectionIdleInNanos:J

    iget-wide v1, v0, Lio/grpc/netty/NettyServerTransport;->maxConnectionAgeInNanos:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lio/grpc/netty/NettyServerTransport;->maxConnectionAgeGraceInNanos:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lio/grpc/netty/NettyServerTransport;->permitKeepAliveWithoutCalls:Z

    move/from16 v20, v1

    iget-wide v1, v0, Lio/grpc/netty/NettyServerTransport;->permitKeepAliveTimeInNanos:J

    move-wide/from16 v21, v1

    iget-object v1, v0, Lio/grpc/netty/NettyServerTransport;->eagAttributes:Lio/grpc/Attributes;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v23}, Lio/grpc/netty/NettyServerHandler;->newHandler(Lio/grpc/internal/ServerTransportListener;Lio/netty/channel/ChannelPromise;Ljava/util/List;Lio/grpc/internal/TransportTracer;IZIIIJJJJJZJLio/grpc/Attributes;)Lio/grpc/netty/NettyServerHandler;

    move-result-object v1

    return-object v1
.end method

.method public static getLogLevel(Ljava/lang/Throwable;)Ljava/util/logging/Level;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lio/grpc/netty/NettyServerTransport;->QUIET_EXCEPTIONS:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0
.end method

.method private getStatsHelper(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketStats;
    .locals 7

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    new-instance v0, Lio/grpc/InternalChannelz$SocketStats;

    iget-object v1, p0, Lio/grpc/netty/NettyServerTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    invoke-virtual {v1}, Lio/grpc/internal/TransportTracer;->getStats()Lio/grpc/InternalChannelz$TransportStats;

    move-result-object v2

    iget-object v1, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v3

    iget-object v1, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-static {p1}, Lio/grpc/netty/Utils;->getSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v5

    iget-object p1, p0, Lio/grpc/netty/NettyServerTransport;->grpcHandler:Lio/grpc/netty/NettyServerHandler;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/NettyServerHandler;->getSecurityInfo()Lio/grpc/InternalChannelz$Security;

    move-result-object p1

    :goto_0
    move-object v6, p1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    return-object v0
.end method

.method private notifyTerminated(Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lio/grpc/netty/NettyServerTransport;->connectionLog:Ljava/util/logging/Logger;

    invoke-static {p1}, Lio/grpc/netty/NettyServerTransport;->getLogLevel(Ljava/lang/Throwable;)Ljava/util/logging/Level;

    move-result-object v1

    const-string v2, "Transport failed"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean p1, p0, Lio/grpc/netty/NettyServerTransport;->terminated:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/grpc/netty/NettyServerTransport;->terminated:Z

    iget-object p1, p0, Lio/grpc/netty/NettyServerTransport;->listener:Lio/grpc/internal/ServerTransportListener;

    invoke-interface {p1}, Lio/grpc/internal/ServerTransportListener;->transportTerminated()V

    :cond_1
    return-void
.end method


# virtual methods
.method public channel()Lio/netty/channel/Channel;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-direct {p0, v1}, Lio/grpc/netty/NettyServerTransport;->getStatsHelper(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketStats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget-object v1, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/NettyServerTransport$2;

    invoke-direct {v2, p0, v0}, Lio/grpc/netty/NettyServerTransport$2;-><init>(Lio/grpc/netty/NettyServerTransport;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutorGroup;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/NettyServerTransport$1;

    invoke-direct {v2, p0, v0}, Lio/grpc/netty/NettyServerTransport$1;-><init>(Lio/grpc/netty/NettyServerTransport;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    :cond_0
    return-void
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    new-instance v1, Lio/grpc/netty/ForcefulCloseCommand;

    invoke-direct {v1, p1}, Lio/grpc/netty/ForcefulCloseCommand;-><init>(Lio/grpc/Status;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    :cond_0
    return-void
.end method

.method public start(Lio/grpc/internal/ServerTransportListener;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->listener:Lio/grpc/internal/ServerTransportListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Handler already registered"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/netty/NettyServerTransport;->listener:Lio/grpc/internal/ServerTransportListener;

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->channelUnused:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/NettyServerTransport;->createHandler(Lio/grpc/internal/ServerTransportListener;Lio/netty/channel/ChannelPromise;)Lio/grpc/netty/NettyServerHandler;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyServerTransport;->grpcHandler:Lio/grpc/netty/NettyServerHandler;

    iget-object v0, p0, Lio/grpc/netty/NettyServerTransport;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0, p1}, Lio/grpc/netty/ProtocolNegotiator;->newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;

    move-result-object p1

    new-instance v0, Lio/grpc/netty/WriteBufferingAndExceptionHandler;

    invoke-direct {v0, p1}, Lio/grpc/netty/WriteBufferingAndExceptionHandler;-><init>(Lio/netty/channel/ChannelHandler;)V

    new-instance p1, Lio/grpc/netty/NettyServerTransport$1TerminationNotifier;

    invoke-direct {p1, p0}, Lio/grpc/netty/NettyServerTransport$1TerminationNotifier;-><init>(Lio/grpc/netty/NettyServerTransport;)V

    iget-object v3, p0, Lio/grpc/netty/NettyServerTransport;->channelUnused:Lio/netty/channel/ChannelPromise;

    invoke-interface {v3, p1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    iget-object v3, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v3}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v3, p1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    iget-object p1, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    new-array v1, v1, [Lio/netty/channel/ChannelHandler;

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServerTransport;->logId:Lio/grpc/InternalLogId;

    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServerTransport;->channel:Lio/netty/channel/Channel;

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
