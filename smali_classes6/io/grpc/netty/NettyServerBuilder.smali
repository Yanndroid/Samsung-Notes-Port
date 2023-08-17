.class public final Lio/grpc/netty/NettyServerBuilder;
.super Lio/grpc/internal/AbstractServerImplBuilder;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/NettyServerBuilder$NettyClientTransportServersBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/AbstractServerImplBuilder<",
        "Lio/grpc/netty/NettyServerBuilder;",
        ">;"
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1784"
.end annotation


# static fields
.field private static final AS_LARGE_AS_INFINITE:J

.field private static final DEFAULT_BOSS_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FLOW_CONTROL_WINDOW:I = 0x100000

.field private static final DEFAULT_WORKER_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_CONNECTION_AGE_GRACE_NANOS_INFINITE:J = 0x7fffffffffffffffL

.field public static final MAX_CONNECTION_AGE_NANOS_DISABLED:J = 0x7fffffffffffffffL

.field public static final MAX_CONNECTION_IDLE_NANOS_DISABLED:J = 0x7fffffffffffffffL

.field private static final MIN_KEEPALIVE_TIMEOUT_NANO:J

.field private static final MIN_KEEPALIVE_TIME_NANO:J

.field private static final MIN_MAX_CONNECTION_AGE_NANO:J

.field private static final MIN_MAX_CONNECTION_IDLE_NANO:J


# instance fields
.field private autoFlowControl:Z

.field private bossEventLoopGroupPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field

.field private channelFactory:Lio/netty/channel/ChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/ServerChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final channelOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final childChannelOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private eagAttributes:Lio/grpc/Attributes;

.field private flowControlWindow:I

.field private forceHeapBuffer:Z

.field private final freezeProtocolNegotiatorFactory:Z

.field private keepAliveTimeInNanos:J

.field private keepAliveTimeoutInNanos:J

.field private final listenAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private maxConcurrentCallsPerConnection:I

.field private maxConnectionAgeGraceInNanos:J

.field private maxConnectionAgeInNanos:J

.field private maxConnectionIdleInNanos:J

.field private maxHeaderListSize:I

.field private maxMessageSize:I

.field private permitKeepAliveTimeInNanos:J

.field private permitKeepAliveWithoutCalls:Z

.field private protocolNegotiatorFactory:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

.field private final serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

.field private transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

.field private workerEventLoopGroupPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lio/grpc/netty/NettyServerBuilder;->MIN_KEEPALIVE_TIME_NANO:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lio/grpc/netty/NettyServerBuilder;->MIN_KEEPALIVE_TIMEOUT_NANO:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lio/grpc/netty/NettyServerBuilder;->MIN_MAX_CONNECTION_IDLE_NANO:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/netty/NettyServerBuilder;->MIN_MAX_CONNECTION_AGE_NANO:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/netty/NettyServerBuilder;->AS_LARGE_AS_INFINITE:J

    sget-object v0, Lio/grpc/netty/Utils;->DEFAULT_BOSS_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_BOSS_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    sget-object v0, Lio/grpc/netty/Utils;->DEFAULT_WORKER_EVENT_LOOP_GROUP:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_WORKER_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    return-void
.end method

.method private constructor <init>(Ljava/net/SocketAddress;)V
    .locals 4

    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->listenAddresses:Ljava/util/List;

    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    sget-object v1, Lio/grpc/netty/Utils;->DEFAULT_SERVER_CHANNEL_FACTORY:Lio/netty/channel/ChannelFactory;

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->channelFactory:Lio/netty/channel/ChannelFactory;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->channelOptions:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->childChannelOptions:Ljava/util/Map;

    sget-object v1, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_BOSS_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->bossEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    sget-object v1, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_WORKER_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->workerEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    const v1, 0x7fffffff

    iput v1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConcurrentCallsPerConnection:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/netty/NettyServerBuilder;->autoFlowControl:Z

    const/high16 v1, 0x100000

    iput v1, p0, Lio/grpc/netty/NettyServerBuilder;->flowControlWindow:I

    const/high16 v1, 0x400000

    iput v1, p0, Lio/grpc/netty/NettyServerBuilder;->maxMessageSize:I

    const/16 v1, 0x2000

    iput v1, p0, Lio/grpc/netty/NettyServerBuilder;->maxHeaderListSize:I

    sget-wide v1, Lio/grpc/internal/GrpcUtil;->DEFAULT_SERVER_KEEPALIVE_TIME_NANOS:J

    iput-wide v1, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeInNanos:J

    sget-wide v1, Lio/grpc/internal/GrpcUtil;->DEFAULT_SERVER_KEEPALIVE_TIMEOUT_NANOS:J

    iput-wide v1, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeoutInNanos:J

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionIdleInNanos:J

    iput-wide v1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeInNanos:J

    iput-wide v1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeGraceInNanos:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iput-wide v1, p0, Lio/grpc/netty/NettyServerBuilder;->permitKeepAliveTimeInNanos:J

    sget-object v1, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->eagAttributes:Lio/grpc/Attributes;

    new-instance v1, Lio/grpc/internal/ServerImplBuilder;

    new-instance v2, Lio/grpc/netty/NettyServerBuilder$NettyClientTransportServersBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/grpc/netty/NettyServerBuilder$NettyClientTransportServersBuilder;-><init>(Lio/grpc/netty/NettyServerBuilder;Lio/grpc/netty/NettyServerBuilder$1;)V

    invoke-direct {v1, v2}, Lio/grpc/internal/ServerImplBuilder;-><init>(Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;)V

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lio/grpc/netty/ProtocolNegotiators;->serverPlaintextFactory()Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->protocolNegotiatorFactory:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/netty/NettyServerBuilder;->freezeProtocolNegotiatorFactory:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)V
    .locals 5

    invoke-direct {p0}, Lio/grpc/internal/AbstractServerImplBuilder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->listenAddresses:Ljava/util/List;

    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    sget-object v1, Lio/grpc/netty/Utils;->DEFAULT_SERVER_CHANNEL_FACTORY:Lio/netty/channel/ChannelFactory;

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->channelFactory:Lio/netty/channel/ChannelFactory;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->channelOptions:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->childChannelOptions:Ljava/util/Map;

    sget-object v1, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_BOSS_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->bossEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    sget-object v1, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_WORKER_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v1, p0, Lio/grpc/netty/NettyServerBuilder;->workerEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    const v1, 0x7fffffff

    iput v1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConcurrentCallsPerConnection:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/netty/NettyServerBuilder;->autoFlowControl:Z

    const/high16 v2, 0x100000

    iput v2, p0, Lio/grpc/netty/NettyServerBuilder;->flowControlWindow:I

    const/high16 v2, 0x400000

    iput v2, p0, Lio/grpc/netty/NettyServerBuilder;->maxMessageSize:I

    const/16 v2, 0x2000

    iput v2, p0, Lio/grpc/netty/NettyServerBuilder;->maxHeaderListSize:I

    sget-wide v2, Lio/grpc/internal/GrpcUtil;->DEFAULT_SERVER_KEEPALIVE_TIME_NANOS:J

    iput-wide v2, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeInNanos:J

    sget-wide v2, Lio/grpc/internal/GrpcUtil;->DEFAULT_SERVER_KEEPALIVE_TIMEOUT_NANOS:J

    iput-wide v2, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeoutInNanos:J

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionIdleInNanos:J

    iput-wide v2, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeInNanos:J

    iput-wide v2, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeGraceInNanos:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/netty/NettyServerBuilder;->permitKeepAliveTimeInNanos:J

    sget-object v2, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    iput-object v2, p0, Lio/grpc/netty/NettyServerBuilder;->eagAttributes:Lio/grpc/Attributes;

    new-instance v2, Lio/grpc/internal/ServerImplBuilder;

    new-instance v3, Lio/grpc/netty/NettyServerBuilder$NettyClientTransportServersBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lio/grpc/netty/NettyServerBuilder$NettyClientTransportServersBuilder;-><init>(Lio/grpc/netty/NettyServerBuilder;Lio/grpc/netty/NettyServerBuilder$1;)V

    invoke-direct {v2, v3}, Lio/grpc/internal/ServerImplBuilder;-><init>(Lio/grpc/internal/ServerImplBuilder$ClientTransportServersBuilder;)V

    iput-object v2, p0, Lio/grpc/netty/NettyServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "negotiatorFactory"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->protocolNegotiatorFactory:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    iput-boolean v1, p0, Lio/grpc/netty/NettyServerBuilder;->freezeProtocolNegotiatorFactory:Z

    return-void
.end method

.method public static forAddress(Ljava/net/SocketAddress;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1

    new-instance v0, Lio/grpc/netty/NettyServerBuilder;

    invoke-direct {v0, p0}, Lio/grpc/netty/NettyServerBuilder;-><init>(Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static forAddress(Ljava/net/SocketAddress;Lio/grpc/ServerCredentials;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1

    invoke-static {p1}, Lio/grpc/netty/ProtocolNegotiators;->from(Lio/grpc/ServerCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    move-result-object p1

    iget-object v0, p1, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lio/grpc/netty/NettyServerBuilder;

    iget-object p1, p1, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/NettyServerBuilder;-><init>(Ljava/net/SocketAddress;Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-object p1, p1, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forPort(I)Lio/grpc/netty/NettyServerBuilder;
    .locals 1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p0}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-static {v0}, Lio/grpc/netty/NettyServerBuilder;->forAddress(Ljava/net/SocketAddress;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static forPort(ILio/grpc/ServerCredentials;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p0}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-static {v0, p1}, Lio/grpc/netty/NettyServerBuilder;->forAddress(Ljava/net/SocketAddress;Lio/grpc/ServerCredentials;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addListenAddress(Ljava/net/SocketAddress;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->listenAddresses:Ljava/util/List;

    const-string v1, "listenAddress"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public assertEventLoopsAndChannelType()V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->channelFactory:Lio/netty/channel/ChannelFactory;

    sget-object v1, Lio/grpc/netty/Utils;->DEFAULT_SERVER_CHANNEL_FACTORY:Lio/netty/channel/ChannelFactory;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget-object v4, p0, Lio/grpc/netty/NettyServerBuilder;->bossEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    sget-object v5, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_BOSS_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lio/grpc/netty/NettyServerBuilder;->workerEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    sget-object v5, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_WORKER_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    if-eq v4, v5, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->bossEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    sget-object v1, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_BOSS_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->workerEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    sget-object v1, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_WORKER_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    const-string v0, "All of BossEventLoopGroup, WorkerEventLoopGroup and ChannelType should be provided or neither should be"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public bossEventLoopGroup(Lio/netty/channel/EventLoopGroup;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/netty/NettyServerBuilder;->bossEventLoopGroupPool(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_BOSS_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerBuilder;->bossEventLoopGroupPool(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bossEventLoopGroupPool(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;)",
            "Lio/grpc/netty/NettyServerBuilder;"
        }
    .end annotation

    const-string v0, "bossEventLoopGroupPool"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ObjectPool;

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->bossEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    return-object p0
.end method

.method public buildTransportServers(Ljava/util/List;)Lio/grpc/netty/NettyServer;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)",
            "Lio/grpc/netty/NettyServer;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/NettyServerBuilder;->assertEventLoopsAndChannelType()V

    iget-object v1, v0, Lio/grpc/netty/NettyServerBuilder;->protocolNegotiatorFactory:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    iget-object v2, v0, Lio/grpc/netty/NettyServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v2}, Lio/grpc/internal/ServerImplBuilder;->getExecutorPool()Lio/grpc/internal/ObjectPool;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/netty/ProtocolNegotiator$ServerFactory;->newNegotiator(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v9

    new-instance v32, Lio/grpc/netty/NettyServer;

    move-object/from16 v1, v32

    iget-object v2, v0, Lio/grpc/netty/NettyServerBuilder;->listenAddresses:Ljava/util/List;

    iget-object v3, v0, Lio/grpc/netty/NettyServerBuilder;->channelFactory:Lio/netty/channel/ChannelFactory;

    iget-object v4, v0, Lio/grpc/netty/NettyServerBuilder;->channelOptions:Ljava/util/Map;

    iget-object v5, v0, Lio/grpc/netty/NettyServerBuilder;->childChannelOptions:Ljava/util/Map;

    iget-object v6, v0, Lio/grpc/netty/NettyServerBuilder;->bossEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    iget-object v7, v0, Lio/grpc/netty/NettyServerBuilder;->workerEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    iget-boolean v8, v0, Lio/grpc/netty/NettyServerBuilder;->forceHeapBuffer:Z

    iget-object v11, v0, Lio/grpc/netty/NettyServerBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    iget v12, v0, Lio/grpc/netty/NettyServerBuilder;->maxConcurrentCallsPerConnection:I

    iget-boolean v13, v0, Lio/grpc/netty/NettyServerBuilder;->autoFlowControl:Z

    iget v14, v0, Lio/grpc/netty/NettyServerBuilder;->flowControlWindow:I

    iget v15, v0, Lio/grpc/netty/NettyServerBuilder;->maxMessageSize:I

    move-object/from16 p1, v1

    iget v1, v0, Lio/grpc/netty/NettyServerBuilder;->maxHeaderListSize:I

    move/from16 v16, v1

    move-object/from16 v33, v2

    iget-wide v1, v0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeInNanos:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeoutInNanos:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionIdleInNanos:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeInNanos:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeGraceInNanos:J

    move-wide/from16 v25, v1

    iget-boolean v1, v0, Lio/grpc/netty/NettyServerBuilder;->permitKeepAliveWithoutCalls:Z

    move/from16 v27, v1

    iget-wide v1, v0, Lio/grpc/netty/NettyServerBuilder;->permitKeepAliveTimeInNanos:J

    move-wide/from16 v28, v1

    iget-object v1, v0, Lio/grpc/netty/NettyServerBuilder;->eagAttributes:Lio/grpc/Attributes;

    move-object/from16 v30, v1

    iget-object v1, v0, Lio/grpc/netty/NettyServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v1}, Lio/grpc/internal/ServerImplBuilder;->getChannelz()Lio/grpc/InternalChannelz;

    move-result-object v31

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct/range {v1 .. v31}, Lio/grpc/netty/NettyServer;-><init>(Ljava/util/List;Lio/netty/channel/ChannelFactory;Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/ObjectPool;Lio/grpc/internal/ObjectPool;ZLio/grpc/netty/ProtocolNegotiator;Ljava/util/List;Lio/grpc/internal/TransportTracer$Factory;IZIIIJJJJJZJLio/grpc/Attributes;Lio/grpc/InternalChannelz;)V

    return-object v32
.end method

.method public channelFactory(Lio/netty/channel/ChannelFactory;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/ServerChannel;",
            ">;)",
            "Lio/grpc/netty/NettyServerBuilder;"
        }
    .end annotation

    const-string v0, "channelFactory"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelFactory;

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->channelFactory:Lio/netty/channel/ChannelFactory;

    return-object p0
.end method

.method public channelType(Ljava/lang/Class;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/ServerChannel;",
            ">;)",
            "Lio/grpc/netty/NettyServerBuilder;"
        }
    .end annotation

    const-string v0, "channelType"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/netty/channel/ReflectiveChannelFactory;

    invoke-direct {v0, p1}, Lio/netty/channel/ReflectiveChannelFactory;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/grpc/netty/NettyServerBuilder;->channelFactory(Lio/netty/channel/ChannelFactory;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public delegate()Lio/grpc/ServerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .annotation build Lio/grpc/Internal;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    return-object v0
.end method

.method public eagAttributes(Lio/grpc/Attributes;)V
    .locals 1

    const-string v0, "eagAttributes"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Attributes;

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->eagAttributes:Lio/grpc/Attributes;

    return-void
.end method

.method public flowControlWindow(I)Lio/grpc/netty/NettyServerBuilder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "flowControlWindow must be positive: %s"

    invoke-static {v1, v2, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iput p1, p0, Lio/grpc/netty/NettyServerBuilder;->flowControlWindow:I

    iput-boolean v0, p0, Lio/grpc/netty/NettyServerBuilder;->autoFlowControl:Z

    return-object p0
.end method

.method public initialFlowControlWindow(I)Lio/grpc/netty/NettyServerBuilder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "initialFlowControlWindow must be positive"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lio/grpc/netty/NettyServerBuilder;->flowControlWindow:I

    iput-boolean v0, p0, Lio/grpc/netty/NettyServerBuilder;->autoFlowControl:Z

    return-object p0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive time must be positive\uff1a%s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeInNanos:J

    invoke-static {p1, p2}, Lio/grpc/internal/KeepAliveManager;->clampKeepAliveTimeInNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeInNanos:J

    sget-wide v0, Lio/grpc/netty/NettyServerBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeInNanos:J

    :cond_1
    iget-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeInNanos:J

    sget-wide v0, Lio/grpc/netty/NettyServerBuilder;->MIN_KEEPALIVE_TIME_NANO:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    iput-wide v0, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeInNanos:J

    :cond_2
    return-object p0
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive timeout must be positive: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeoutInNanos:J

    invoke-static {p1, p2}, Lio/grpc/internal/KeepAliveManager;->clampKeepAliveTimeoutInNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeoutInNanos:J

    sget-wide v0, Lio/grpc/netty/NettyServerBuilder;->MIN_KEEPALIVE_TIMEOUT_NANO:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    iput-wide v0, p0, Lio/grpc/netty/NettyServerBuilder;->keepAliveTimeoutInNanos:J

    :cond_1
    return-object p0
.end method

.method public maxConcurrentCallsPerConnection(I)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max must be positive: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iput p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConcurrentCallsPerConnection:I

    return-object p0
.end method

.method public bridge synthetic maxConnectionAge(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAge(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxConnectionAge(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max connection age must be positive: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeInNanos:J

    sget-wide v0, Lio/grpc/netty/NettyServerBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeInNanos:J

    :cond_1
    iget-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeInNanos:J

    sget-wide v0, Lio/grpc/netty/NettyServerBuilder;->MIN_MAX_CONNECTION_AGE_NANO:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    iput-wide v0, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeInNanos:J

    :cond_2
    return-object p0
.end method

.method public bridge synthetic maxConnectionAgeGrace(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeGrace(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxConnectionAgeGrace(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max connection age grace must be non-negative: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeGraceInNanos:J

    sget-wide v0, Lio/grpc/netty/NettyServerBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionAgeGraceInNanos:J

    :cond_1
    return-object p0
.end method

.method public bridge synthetic maxConnectionIdle(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerBuilder;->maxConnectionIdle(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxConnectionIdle(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max connection idle must be positive: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionIdleInNanos:J

    sget-wide v0, Lio/grpc/netty/NettyServerBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionIdleInNanos:J

    :cond_1
    iget-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionIdleInNanos:J

    sget-wide v0, Lio/grpc/netty/NettyServerBuilder;->MIN_MAX_CONNECTION_IDLE_NANO:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    iput-wide v0, p0, Lio/grpc/netty/NettyServerBuilder;->maxConnectionIdleInNanos:J

    :cond_2
    return-object p0
.end method

.method public maxHeaderListSize(I)Lio/grpc/netty/NettyServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        replacement = "this.maxInboundMetadataSize(maxHeaderListSize)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerBuilder;->maxInboundMetadataSize(I)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerBuilder;->maxInboundMessageSize(I)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMessageSize(I)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bytes must be non-negative: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iput p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxMessageSize:I

    return-object p0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerBuilder;->maxInboundMetadataSize(I)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be positive: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iput p1, p0, Lio/grpc/netty/NettyServerBuilder;->maxHeaderListSize:I

    return-object p0
.end method

.method public maxMessageSize(I)Lio/grpc/netty/NettyServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        replacement = "this.maxInboundMessageSize(maxMessageSize)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerBuilder;->maxInboundMessageSize(I)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic permitKeepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerBuilder;->permitKeepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public permitKeepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "permit keepalive time must be non-negative: %s"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/NettyServerBuilder;->permitKeepAliveTimeInNanos:J

    return-object p0
.end method

.method public bridge synthetic permitKeepAliveWithoutCalls(Z)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerBuilder;->permitKeepAliveWithoutCalls(Z)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public permitKeepAliveWithoutCalls(Z)Lio/grpc/netty/NettyServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-boolean p1, p0, Lio/grpc/netty/NettyServerBuilder;->permitKeepAliveWithoutCalls:Z

    return-object p0
.end method

.method public final protocolNegotiator(Lio/grpc/netty/ProtocolNegotiator;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation build Lio/grpc/Internal;
    .end annotation

    iget-boolean v0, p0, Lio/grpc/netty/NettyServerBuilder;->freezeProtocolNegotiatorFactory:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ServerCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-static {p1}, Lio/grpc/netty/ProtocolNegotiators;->fixedServerFactory(Lio/grpc/netty/ProtocolNegotiator;)Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->protocolNegotiatorFactory:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    return-object p0
.end method

.method public setForceHeapBuffer(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/NettyServerBuilder;->forceHeapBuffer:Z

    return-void
.end method

.method public setStatsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ServerImplBuilder;->setStatsEnabled(Z)V

    return-void
.end method

.method public setStatsRecordRealTimeMetrics(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ServerImplBuilder;->setStatsRecordRealTimeMetrics(Z)V

    return-void
.end method

.method public setStatsRecordStartedRpcs(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ServerImplBuilder;->setStatsRecordStartedRpcs(Z)V

    return-void
.end method

.method public setTracingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->serverImplBuilder:Lio/grpc/internal/ServerImplBuilder;

    invoke-virtual {v0, p1}, Lio/grpc/internal/ServerImplBuilder;->setTracingEnabled(Z)V

    return-void
.end method

.method public setTransportTracerFactory(Lio/grpc/internal/TransportTracer$Factory;)Lio/grpc/netty/NettyServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    return-object p0
.end method

.method public sslContext(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iget-boolean v0, p0, Lio/grpc/netty/NettyServerBuilder;->freezeProtocolNegotiatorFactory:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ServerCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/netty/handler/ssl/SslContext;->isServer()Z

    move-result v0

    const-string v1, "Client SSL context can not be used for server"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lio/netty/handler/ssl/SslContext;->applicationProtocolNegotiator()Lio/netty/handler/ssl/ApplicationProtocolNegotiator;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/GrpcSslContexts;->ensureAlpnAndH2Enabled(Lio/netty/handler/ssl/ApplicationProtocolNegotiator;)V

    invoke-static {p1}, Lio/grpc/netty/ProtocolNegotiators;->serverTlsFactory(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/grpc/netty/ProtocolNegotiators;->serverPlaintextFactory()Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->protocolNegotiatorFactory:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    return-object p0
.end method

.method public bridge synthetic useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/NettyServerBuilder;->useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic useTransportSecurity(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/grpc/ServerBuilder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/NettyServerBuilder;->useTransportSecurity(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iget-boolean v0, p0, Lio/grpc/netty/NettyServerBuilder;->freezeProtocolNegotiatorFactory:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ServerCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_0
    invoke-static {p1, p2}, Lio/grpc/netty/GrpcSslContexts;->forServer(Ljava/io/File;Ljava/io/File;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/ssl/SslContextBuilder;->build()Lio/netty/handler/ssl/SslContext;

    move-result-object p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lio/grpc/netty/ProtocolNegotiators;->serverTlsFactory(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->protocolNegotiatorFactory:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public useTransportSecurity(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/grpc/netty/NettyServerBuilder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iget-boolean v0, p0, Lio/grpc/netty/NettyServerBuilder;->freezeProtocolNegotiatorFactory:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change security when using ServerCredentials"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_0
    invoke-static {p1, p2}, Lio/grpc/netty/GrpcSslContexts;->forServer(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/ssl/SslContextBuilder;->build()Lio/netty/handler/ssl/SslContext;

    move-result-object p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lio/grpc/netty/ProtocolNegotiators;->serverTlsFactory(Lio/netty/handler/ssl/SslContext;)Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->protocolNegotiatorFactory:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public withChildOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)",
            "Lio/grpc/netty/NettyServerBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->childChannelOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)",
            "Lio/grpc/netty/NettyServerBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServerBuilder;->channelOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public workerEventLoopGroup(Lio/netty/channel/EventLoopGroup;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/grpc/netty/NettyServerBuilder;->workerEventLoopGroupPool(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lio/grpc/netty/NettyServerBuilder;->DEFAULT_WORKER_EVENT_LOOP_GROUP_POOL:Lio/grpc/internal/ObjectPool;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyServerBuilder;->workerEventLoopGroupPool(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/NettyServerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public workerEventLoopGroupPool(Lio/grpc/internal/ObjectPool;)Lio/grpc/netty/NettyServerBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;)",
            "Lio/grpc/netty/NettyServerBuilder;"
        }
    .end annotation

    const-string v0, "workerEventLoopGroupPool"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ObjectPool;

    iput-object p1, p0, Lio/grpc/netty/NettyServerBuilder;->workerEventLoopGroupPool:Lio/grpc/internal/ObjectPool;

    return-object p0
.end method
