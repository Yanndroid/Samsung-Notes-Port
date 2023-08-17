.class final Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NettyTransportFactory"
.end annotation


# instance fields
.field private final autoFlowControl:Z

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

.field private final channelOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;"
        }
    .end annotation
.end field

.field private closed:Z

.field private final flowControlWindow:I

.field private final group:Lio/netty/channel/EventLoopGroup;

.field private final groupPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveBackoff:Lio/grpc/internal/AtomicBackoff;

.field private final keepAliveTimeNanos:J

.field private final keepAliveTimeoutNanos:J

.field private final keepAliveWithoutCalls:Z

.field private final localSocketPicker:Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;

.field private final maxHeaderListSize:I

.field private final maxMessageSize:I

.field private final protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

.field private final transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

.field private final useGetForSafeMethods:Z


# direct methods
.method public constructor <init>(Lio/grpc/netty/ProtocolNegotiator;Lio/netty/channel/ChannelFactory;Ljava/util/Map;Lio/grpc/internal/ObjectPool;ZIIIJJZLio/grpc/internal/TransportTracer$Factory;Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/ProtocolNegotiator;",
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;ZIIIJJZ",
            "Lio/grpc/internal/TransportTracer$Factory;",
            "Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "protocolNegotiator"

    move-object v4, p1

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/ProtocolNegotiator;

    iput-object v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    move-object v3, p2

    iput-object v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->channelFactory:Lio/netty/channel/ChannelFactory;

    new-instance v3, Ljava/util/HashMap;

    move-object v4, p3

    invoke-direct {v3, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->channelOptions:Ljava/util/Map;

    move-object v3, p4

    iput-object v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->groupPool:Lio/grpc/internal/ObjectPool;

    invoke-interface {p4}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/EventLoopGroup;

    iput-object v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->group:Lio/netty/channel/EventLoopGroup;

    move v3, p5

    iput-boolean v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->autoFlowControl:Z

    move v3, p6

    iput v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->flowControlWindow:I

    move v3, p7

    iput v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->maxMessageSize:I

    move v3, p8

    iput v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->maxHeaderListSize:I

    iput-wide v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveTimeNanos:J

    new-instance v3, Lio/grpc/internal/AtomicBackoff;

    const-string v4, "keepalive time nanos"

    invoke-direct {v3, v4, p9, p10}, Lio/grpc/internal/AtomicBackoff;-><init>(Ljava/lang/String;J)V

    iput-object v3, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveBackoff:Lio/grpc/internal/AtomicBackoff;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveTimeoutNanos:J

    move/from16 v1, p13

    iput-boolean v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveWithoutCalls:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    if-eqz p15, :cond_0

    move-object/from16 v1, p15

    goto :goto_0

    :cond_0
    new-instance v1, Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;

    invoke-direct {v1}, Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;-><init>()V

    :goto_0
    iput-object v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->localSocketPicker:Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;

    move/from16 v1, p16

    iput-boolean v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->useGetForSafeMethods:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->closed:Z

    iget-object v0, p0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-interface {v0}, Lio/grpc/netty/ProtocolNegotiator;->close()V

    iget-object v0, p0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->groupPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->group:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->group:Lio/netty/channel/EventLoopGroup;

    return-object v0
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->closed:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "The transport factory is closed."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getHttpConnectProxiedSocketAddress()Lio/grpc/HttpConnectProxiedSocketAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress;->getTargetAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress;->getProxyAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lio/grpc/HttpConnectProxiedSocketAddress;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    invoke-static {v3, v4, v2, v5}, Lio/grpc/netty/ProtocolNegotiators;->httpProxy(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/ProtocolNegotiator;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v2

    move-object v4, v1

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    move-object v8, v1

    :goto_0
    iget-object v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveBackoff:Lio/grpc/internal/AtomicBackoff;

    invoke-virtual {v1}, Lio/grpc/internal/AtomicBackoff;->getState()Lio/grpc/internal/AtomicBackoff$State;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory$1;

    move-object/from16 v20, v2

    invoke-direct {v2, v0, v1}, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory$1;-><init>(Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;Lio/grpc/internal/AtomicBackoff$State;)V

    new-instance v2, Lio/grpc/netty/NettyClientTransport;

    move-object v3, v2

    iget-object v5, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->channelFactory:Lio/netty/channel/ChannelFactory;

    iget-object v6, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->channelOptions:Ljava/util/Map;

    iget-object v7, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->group:Lio/netty/channel/EventLoopGroup;

    iget-boolean v9, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->autoFlowControl:Z

    iget v10, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->flowControlWindow:I

    iget v11, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->maxMessageSize:I

    iget v12, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->maxHeaderListSize:I

    invoke-virtual {v1}, Lio/grpc/internal/AtomicBackoff$State;->get()J

    move-result-wide v13

    move-object/from16 p1, v2

    iget-wide v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveTimeoutNanos:J

    move-wide v15, v1

    iget-boolean v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveWithoutCalls:Z

    move/from16 v17, v1

    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getAuthority()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v19

    iget-object v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    invoke-virtual {v1}, Lio/grpc/internal/TransportTracer$Factory;->create()Lio/grpc/internal/TransportTracer;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getEagAttributes()Lio/grpc/Attributes;

    move-result-object v22

    iget-object v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->localSocketPicker:Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;

    move-object/from16 v23, v1

    iget-boolean v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->useGetForSafeMethods:Z

    move/from16 v25, v1

    move-object/from16 v24, p3

    invoke-direct/range {v3 .. v25}, Lio/grpc/netty/NettyClientTransport;-><init>(Ljava/net/SocketAddress;Lio/netty/channel/ChannelFactory;Ljava/util/Map;Lio/netty/channel/EventLoopGroup;Lio/grpc/netty/ProtocolNegotiator;ZIIIJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lio/grpc/internal/TransportTracer;Lio/grpc/Attributes;Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;Lio/grpc/ChannelLogger;Z)V

    return-object p1
.end method

.method public swapChannelCredentials(Lio/grpc/ChannelCredentials;)Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "channelCreds"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lio/grpc/netty/ProtocolNegotiators;->from(Lio/grpc/ChannelCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    move-result-object v1

    iget-object v2, v1, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v15, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;

    move-object v2, v15

    iget-object v3, v1, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    invoke-interface {v3}, Lio/grpc/netty/ProtocolNegotiator$ClientFactory;->newNegotiator()Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v3

    iget-object v4, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->channelFactory:Lio/netty/channel/ChannelFactory;

    iget-object v5, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->channelOptions:Ljava/util/Map;

    iget-object v6, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->groupPool:Lio/grpc/internal/ObjectPool;

    iget-boolean v7, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->autoFlowControl:Z

    iget v8, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->flowControlWindow:I

    iget v9, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->maxMessageSize:I

    iget v10, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->maxHeaderListSize:I

    iget-wide v11, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveTimeNanos:J

    iget-wide v13, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveTimeoutNanos:J

    move-object/from16 p1, v15

    iget-boolean v15, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->keepAliveWithoutCalls:Z

    move-object/from16 v19, p1

    move-object/from16 p1, v1

    iget-object v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    move-object/from16 v16, v1

    iget-object v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->localSocketPicker:Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;->useGetForSafeMethods:Z

    move/from16 v18, v1

    invoke-direct/range {v2 .. v18}, Lio/grpc/netty/NettyChannelBuilder$NettyTransportFactory;-><init>(Lio/grpc/netty/ProtocolNegotiator;Lio/netty/channel/ChannelFactory;Ljava/util/Map;Lio/grpc/internal/ObjectPool;ZIIIJJZLio/grpc/internal/TransportTracer$Factory;Lio/grpc/netty/NettyChannelBuilder$LocalSocketPicker;Z)V

    new-instance v1, Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;

    move-object/from16 v2, p1

    iget-object v2, v2, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->callCredentials:Lio/grpc/CallCredentials;

    move-object/from16 v3, v19

    invoke-direct {v1, v3, v2}, Lio/grpc/internal/ClientTransportFactory$SwapChannelCredentialsResult;-><init>(Lio/grpc/internal/ClientTransportFactory;Lio/grpc/CallCredentials;)V

    return-object v1
.end method
