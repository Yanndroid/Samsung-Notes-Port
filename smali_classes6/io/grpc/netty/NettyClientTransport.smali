.class Lio/grpc/netty/NettyClientTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ConnectionClientTransport;


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final authority:Lio/netty/util/AsciiString;

.field private final authorityString:Ljava/lang/String;

.field private final autoFlowControl:Z

.field private channel:Lio/netty/channel/Channel;

.field private final channelFactory:Lio/netty/channel/ChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final channelLogger:Lio/grpc/ChannelLogger;

.field private final channelOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;"
        }
    .end annotation
.end field

.field private final eagAttributes:Lio/grpc/Attributes;

.field private final flowControlWindow:I

.field private final group:Lio/netty/channel/EventLoopGroup;

.field private handler:Lio/grpc/netty/NettyClientHandler;

.field private keepAliveManager:Lio/grpc/internal/KeepAliveManager;

.field private final keepAliveTimeNanos:J

.field private final keepAliveTimeoutNanos:J

.field private final keepAliveWithoutCalls:Z

.field private lifecycleManager:Lio/grpc/netty/ClientTransportLifecycleManager;

.field private final localSocketPicker:Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;

.field private final logId:Lio/grpc/InternalLogId;

.field private final maxHeaderListSize:I

.field private final maxMessageSize:I

.field private final negotiationScheme:Lio/netty/util/AsciiString;

.field private final negotiator:Lio/grpc/netty/ProtocolNegotiator;

.field private final remoteAddress:Ljava/net/SocketAddress;

.field private statusExplainingWhyTheChannelIsNull:Lio/grpc/Status;

.field private final tooManyPingsRunnable:Ljava/lang/Runnable;

.field private final transportTracer:Lio/grpc/internal/TransportTracer;

.field private final useGetForSafeMethods:Z

.field private final userAgent:Lio/netty/util/AsciiString;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Lio/netty/channel/ChannelFactory;Ljava/util/Map;Lio/netty/channel/EventLoopGroup;Lio/grpc/netty/ProtocolNegotiator;ZIIIJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lio/grpc/internal/TransportTracer;Lio/grpc/Attributes;Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;Lio/grpc/ChannelLogger;Z)V
    .locals 5
    .param p16    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;",
            "Lio/netty/channel/EventLoopGroup;",
            "Lio/grpc/netty/ProtocolNegotiator;",
            "ZIIIJJZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/grpc/internal/TransportTracer;",
            "Lio/grpc/Attributes;",
            "Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;",
            "Lio/grpc/ChannelLogger;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "negotiator"

    move-object v3, p5

    invoke-static {p5, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/netty/ProtocolNegotiator;

    iput-object v2, v0, Lio/grpc/netty/NettyClientTransport;->negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v2}, Lio/grpc/netty/ProtocolNegotiator;->scheme()Lio/netty/util/AsciiString;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/netty/NettyClientTransport;->negotiationScheme:Lio/netty/util/AsciiString;

    const-string v2, "address"

    move-object v3, p1

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    iput-object v2, v0, Lio/grpc/netty/NettyClientTransport;->remoteAddress:Ljava/net/SocketAddress;

    const-string v3, "group"

    move-object v4, p4

    invoke-static {p4, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/EventLoopGroup;

    iput-object v3, v0, Lio/grpc/netty/NettyClientTransport;->group:Lio/netty/channel/EventLoopGroup;

    move-object v3, p2

    iput-object v3, v0, Lio/grpc/netty/NettyClientTransport;->channelFactory:Lio/netty/channel/ChannelFactory;

    const-string v3, "channelOptions"

    move-object v4, p3

    invoke-static {p3, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, v0, Lio/grpc/netty/NettyClientTransport;->channelOptions:Ljava/util/Map;

    move v3, p6

    iput-boolean v3, v0, Lio/grpc/netty/NettyClientTransport;->autoFlowControl:Z

    move v3, p7

    iput v3, v0, Lio/grpc/netty/NettyClientTransport;->flowControlWindow:I

    move v3, p8

    iput v3, v0, Lio/grpc/netty/NettyClientTransport;->maxMessageSize:I

    move v3, p9

    iput v3, v0, Lio/grpc/netty/NettyClientTransport;->maxHeaderListSize:I

    move-wide v3, p10

    iput-wide v3, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveTimeNanos:J

    move-wide/from16 v3, p12

    iput-wide v3, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveTimeoutNanos:J

    move/from16 v3, p14

    iput-boolean v3, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveWithoutCalls:Z

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->authorityString:Ljava/lang/String;

    new-instance v3, Lio/netty/util/AsciiString;

    invoke-direct {v3, v1}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, v0, Lio/grpc/netty/NettyClientTransport;->authority:Lio/netty/util/AsciiString;

    new-instance v1, Lio/netty/util/AsciiString;

    const-string v3, "netty"

    move-object/from16 v4, p16

    invoke-static {v3, v4}, Lio/grpc/internal/GrpcUtil;->getGrpcUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->userAgent:Lio/netty/util/AsciiString;

    const-string v1, "tooManyPingsRunnable"

    move-object/from16 v3, p17

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->tooManyPingsRunnable:Ljava/lang/Runnable;

    const-string v1, "transportTracer"

    move-object/from16 v3, p18

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/TransportTracer;

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    const-string v1, "eagAttributes"

    move-object/from16 v3, p19

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Attributes;

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->eagAttributes:Lio/grpc/Attributes;

    const-string v1, "localSocketPicker"

    move-object/from16 v3, p20

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->localSocketPicker:Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->logId:Lio/grpc/InternalLogId;

    const-string v1, "channelLogger"

    move-object/from16 v2, p21

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ChannelLogger;

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->channelLogger:Lio/grpc/ChannelLogger;

    move/from16 v1, p22

    iput-boolean v1, v0, Lio/grpc/netty/NettyClientTransport;->useGetForSafeMethods:Z

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/netty/NettyClientTransport;)Lio/grpc/Status;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyClientTransport;->statusExplainingWhyTheChannelIsNull:Lio/grpc/Status;

    return-object p0
.end method

.method public static synthetic access$100(Lio/grpc/netty/NettyClientTransport;Lio/netty/channel/ChannelFuture;)Lio/grpc/Status;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyClientTransport;->statusFromFailedFuture(Lio/netty/channel/ChannelFuture;)Lio/grpc/Status;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lio/grpc/netty/NettyClientTransport;)Lio/grpc/netty/ClientTransportLifecycleManager;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyClientTransport;->lifecycleManager:Lio/grpc/netty/ClientTransportLifecycleManager;

    return-object p0
.end method

.method public static synthetic access$300(Lio/grpc/netty/NettyClientTransport;)Lio/netty/channel/Channel;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    return-object p0
.end method

.method public static synthetic access$400(Lio/grpc/netty/NettyClientTransport;Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketStats;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyClientTransport;->getStatsHelper(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketStats;

    move-result-object p0

    return-object p0
.end method

.method private getStatsHelper(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketStats;
    .locals 7

    new-instance v6, Lio/grpc/InternalChannelz$SocketStats;

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    invoke-virtual {v0}, Lio/grpc/internal/TransportTracer;->getStats()Lio/grpc/InternalChannelz$TransportStats;

    move-result-object v1

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v2

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {p1}, Lio/grpc/netty/Utils;->getSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketOptions;

    move-result-object v4

    iget-object p1, p0, Lio/grpc/netty/NettyClientTransport;->handler:Lio/grpc/netty/NettyClientHandler;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/NettyClientHandler;->getSecurityInfo()Lio/grpc/InternalChannelz$Security;

    move-result-object p1

    :goto_0
    move-object v5, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/grpc/InternalChannelz$SocketStats;-><init>(Lio/grpc/InternalChannelz$TransportStats;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/InternalChannelz$SocketOptions;Lio/grpc/InternalChannelz$Security;)V

    return-object v6
.end method

.method private statusFromFailedFuture(Lio/netty/channel/ChannelFuture;)Lio/grpc/Status;
    .locals 2

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/grpc/netty/Utils;->statusFromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->lifecycleManager:Lio/grpc/netty/ClientTransportLifecycleManager;

    invoke-virtual {v0}, Lio/grpc/netty/ClientTransportLifecycleManager;->getShutdownStatus()Lio/grpc/Status;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    const-string v1, "Channel closed but for unknown reason"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-virtual {v1, p1}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public channel()Lio/netty/channel/Channel;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->handler:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {v0}, Lio/grpc/netty/NettyClientHandler;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->logId:Lio/grpc/InternalLogId;

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

    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    invoke-direct {p0, v1}, Lio/grpc/netty/NettyClientTransport;->getStatsHelper(Lio/netty/channel/Channel;)Lio/grpc/InternalChannelz$SocketStats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/NettyClientTransport$8;

    invoke-direct {v2, p0, v0}, Lio/grpc/netty/NettyClientTransport$8;-><init>(Lio/grpc/netty/NettyClientTransport;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutorGroup;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/NettyClientTransport$7;

    invoke-direct {v2, p0, v0}, Lio/grpc/netty/NettyClientTransport$7;-><init>(Lio/grpc/netty/NettyClientTransport;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-object v0
.end method

.method public keepAliveManager()Lio/grpc/internal/KeepAliveManager;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            "[",
            "Lio/grpc/ClientStreamTracer;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object/from16 v0, p4

    const-string v1, "method"

    move-object/from16 v11, p1

    invoke-static {v11, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "headers"

    invoke-static {v12, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    if-nez v1, :cond_0

    new-instance v1, Lio/grpc/internal/FailingClientStream;

    iget-object v2, v8, Lio/grpc/netty/NettyClientTransport;->statusExplainingWhyTheChannelIsNull:Lio/grpc/Status;

    invoke-direct {v1, v2, v0}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;[Lio/grpc/ClientStreamTracer;)V

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/NettyClientTransport;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lio/grpc/internal/StatsTraceContext;->newClientContext([Lio/grpc/ClientStreamTracer;Lio/grpc/Attributes;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;

    move-result-object v17

    new-instance v21, Lio/grpc/netty/NettyClientStream;

    new-instance v10, Lio/grpc/netty/NettyClientTransport$3;

    iget-object v2, v8, Lio/grpc/netty/NettyClientTransport;->handler:Lio/grpc/netty/NettyClientHandler;

    iget-object v0, v8, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    iget v4, v8, Lio/grpc/netty/NettyClientTransport;->maxMessageSize:I

    iget-object v6, v8, Lio/grpc/netty/NettyClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    invoke-virtual/range {p1 .. p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v7

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v7}, Lio/grpc/netty/NettyClientTransport$3;-><init>(Lio/grpc/netty/NettyClientTransport;Lio/grpc/netty/NettyClientHandler;Lio/netty/channel/EventLoop;ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Ljava/lang/String;)V

    iget-object v13, v8, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    iget-object v14, v8, Lio/grpc/netty/NettyClientTransport;->authority:Lio/netty/util/AsciiString;

    iget-object v15, v8, Lio/grpc/netty/NettyClientTransport;->negotiationScheme:Lio/netty/util/AsciiString;

    iget-object v0, v8, Lio/grpc/netty/NettyClientTransport;->userAgent:Lio/netty/util/AsciiString;

    iget-object v1, v8, Lio/grpc/netty/NettyClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    iget-boolean v2, v8, Lio/grpc/netty/NettyClientTransport;->useGetForSafeMethods:Z

    move-object/from16 v9, v21

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v19, p3

    move/from16 v20, v2

    invoke-direct/range {v9 .. v20}, Lio/grpc/netty/NettyClientStream;-><init>(Lio/grpc/netty/NettyClientStream$TransportState;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/netty/channel/Channel;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/CallOptions;Z)V

    return-object v21
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    if-nez v0, :cond_0

    new-instance v0, Lio/grpc/netty/NettyClientTransport$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/NettyClientTransport$1;-><init>(Lio/grpc/netty/NettyClientTransport;Lio/grpc/internal/ClientTransport$PingCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Lio/grpc/netty/NettyClientTransport$2;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/netty/NettyClientTransport$2;-><init>(Lio/grpc/netty/NettyClientTransport;Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport;->handler:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {v1}, Lio/grpc/netty/NettyClientHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/SendPingCommand;

    invoke-direct {v2, p1, p2}, Lio/grpc/netty/SendPingCommand;-><init>(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public shutdown(Lio/grpc/Status;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->handler:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {v0}, Lio/grpc/netty/NettyClientHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/GracefulCloseCommand;

    invoke-direct {v1, p1}, Lio/grpc/netty/GracefulCloseCommand;-><init>(Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;

    :cond_1
    return-void
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/NettyClientTransport;->handler:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {v0}, Lio/grpc/netty/NettyClientHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/NettyClientTransport$6;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/NettyClientTransport$6;-><init>(Lio/grpc/netty/NettyClientTransport;Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/WriteQueue;->enqueue(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method public start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Lio/grpc/netty/ClientTransportLifecycleManager;

    const-string v2, "listener"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-direct {v1, v2}, Lio/grpc/netty/ClientTransportLifecycleManager;-><init>(Lio/grpc/internal/ManagedClientTransport$Listener;)V

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->lifecycleManager:Lio/grpc/netty/ClientTransportLifecycleManager;

    iget-object v1, v0, Lio/grpc/netty/NettyClientTransport;->group:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v1}, Lio/netty/channel/EventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v1

    iget-wide v2, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveTimeNanos:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v2, v2, v10

    if-eqz v2, :cond_0

    new-instance v12, Lio/grpc/internal/KeepAliveManager;

    new-instance v3, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;

    invoke-direct {v3, v0}, Lio/grpc/internal/KeepAliveManager$ClientKeepAlivePinger;-><init>(Lio/grpc/internal/ConnectionClientTransport;)V

    iget-wide v5, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveTimeNanos:J

    iget-wide v7, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveTimeoutNanos:J

    iget-boolean v9, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveWithoutCalls:Z

    move-object v2, v12

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lio/grpc/internal/KeepAliveManager;-><init>(Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object v12, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    :cond_0
    iget-object v13, v0, Lio/grpc/netty/NettyClientTransport;->lifecycleManager:Lio/grpc/netty/ClientTransportLifecycleManager;

    iget-object v14, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    iget-boolean v15, v0, Lio/grpc/netty/NettyClientTransport;->autoFlowControl:Z

    iget v2, v0, Lio/grpc/netty/NettyClientTransport;->flowControlWindow:I

    iget v3, v0, Lio/grpc/netty/NettyClientTransport;->maxHeaderListSize:I

    sget-object v18, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    iget-object v4, v0, Lio/grpc/netty/NettyClientTransport;->tooManyPingsRunnable:Ljava/lang/Runnable;

    iget-object v5, v0, Lio/grpc/netty/NettyClientTransport;->transportTracer:Lio/grpc/internal/TransportTracer;

    iget-object v6, v0, Lio/grpc/netty/NettyClientTransport;->eagAttributes:Lio/grpc/Attributes;

    iget-object v7, v0, Lio/grpc/netty/NettyClientTransport;->authorityString:Ljava/lang/String;

    iget-object v8, v0, Lio/grpc/netty/NettyClientTransport;->channelLogger:Lio/grpc/ChannelLogger;

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    invoke-static/range {v13 .. v23}, Lio/grpc/netty/NettyClientHandler;->newHandler(Lio/grpc/netty/ClientTransportLifecycleManager;Lio/grpc/internal/KeepAliveManager;ZIILcom/google/common/base/Supplier;Ljava/lang/Runnable;Lio/grpc/internal/TransportTracer;Lio/grpc/Attributes;Ljava/lang/String;Lio/grpc/ChannelLogger;)Lio/grpc/netty/NettyClientHandler;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/netty/NettyClientTransport;->handler:Lio/grpc/netty/NettyClientHandler;

    iget-object v3, v0, Lio/grpc/netty/NettyClientTransport;->negotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v3, v2}, Lio/grpc/netty/ProtocolNegotiator;->newHandler(Lio/grpc/netty/GrpcHttp2ConnectionHandler;)Lio/netty/channel/ChannelHandler;

    move-result-object v2

    new-instance v3, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v3}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    sget-object v4, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    const/4 v5, 0x0

    invoke-static {v5}, Lio/grpc/netty/Utils;->getByteBufAllocator(Z)Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    invoke-virtual {v3, v1}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    iget-object v1, v0, Lio/grpc/netty/NettyClientTransport;->channelFactory:Lio/netty/channel/ChannelFactory;

    invoke-virtual {v3, v1}, Lio/netty/bootstrap/AbstractBootstrap;->channelFactory(Lio/netty/channel/ChannelFactory;)Lio/netty/bootstrap/AbstractBootstrap;

    sget-object v1, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1, v4}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    iget-wide v4, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveTimeNanos:J

    cmp-long v1, v4, v10

    if-eqz v1, :cond_1

    invoke-static {}, Lio/grpc/netty/Utils;->maybeGetTcpUserTimeoutOption()Lio/netty/channel/ChannelOption;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveTimeoutNanos:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    :cond_1
    iget-object v1, v0, Lio/grpc/netty/NettyClientTransport;->channelOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/channel/ChannelOption;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    goto :goto_0

    :cond_2
    new-instance v1, Lio/grpc/netty/WriteBufferingAndExceptionHandler;

    invoke-direct {v1, v2}, Lio/grpc/netty/WriteBufferingAndExceptionHandler;-><init>(Lio/netty/channel/ChannelHandler;)V

    invoke-virtual {v3, v1}, Lio/netty/bootstrap/AbstractBootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    invoke-virtual {v3}, Lio/netty/bootstrap/AbstractBootstrap;->register()Lio/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v3, v0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Channel is null, but future doesn\'t have a cause"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Lio/grpc/netty/Utils;->statusFromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->statusExplainingWhyTheChannelIsNull:Lio/grpc/Status;

    new-instance v1, Lio/grpc/netty/NettyClientTransport$4;

    invoke-direct {v1, v0}, Lio/grpc/netty/NettyClientTransport$4;-><init>(Lio/grpc/netty/NettyClientTransport;)V

    return-object v1

    :cond_4
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    iget-object v2, v0, Lio/grpc/netty/NettyClientTransport;->handler:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {v2, v1}, Lio/grpc/netty/NettyClientHandler;->startWriteQueue(Lio/netty/channel/Channel;)V

    iget-object v1, v0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    sget-object v2, Lio/grpc/netty/NettyClientHandler;->NOOP_MESSAGE:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/NettyClientTransport$5;

    invoke-direct {v2, v0}, Lio/grpc/netty/NettyClientTransport$5;-><init>(Lio/grpc/netty/NettyClientTransport;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    iget-object v1, v0, Lio/grpc/netty/NettyClientTransport;->localSocketPicker:Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;

    iget-object v2, v0, Lio/grpc/netty/NettyClientTransport;->remoteAddress:Ljava/net/SocketAddress;

    iget-object v4, v0, Lio/grpc/netty/NettyClientTransport;->eagAttributes:Lio/grpc/Attributes;

    invoke-virtual {v1, v2, v4}, Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;->createSocketAddress(Ljava/net/SocketAddress;Lio/grpc/Attributes;)Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    iget-object v4, v0, Lio/grpc/netty/NettyClientTransport;->remoteAddress:Ljava/net/SocketAddress;

    invoke-interface {v2, v4, v1}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    iget-object v2, v0, Lio/grpc/netty/NettyClientTransport;->remoteAddress:Ljava/net/SocketAddress;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelOutboundInvoker;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    :goto_1
    iget-object v1, v0, Lio/grpc/netty/NettyClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lio/grpc/internal/KeepAliveManager;->onTransportStarted()V

    :cond_6
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport;->logId:Lio/grpc/InternalLogId;

    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport;->remoteAddress:Ljava/net/SocketAddress;

    const-string v2, "remoteAddress"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyClientTransport;->channel:Lio/netty/channel/Channel;

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
