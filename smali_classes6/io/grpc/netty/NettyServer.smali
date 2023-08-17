.class Lio/grpc/netty/NettyServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/InternalServer;
.implements Lio/grpc/InternalWithLogId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/NettyServer$ListenSocket;,
        Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final autoFlowControl:Z

.field private final bossExecutor:Lio/netty/channel/EventLoop;

.field private bossGroup:Lio/netty/channel/EventLoopGroup;

.field private final bossGroupPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final channelFactory:Lio/netty/channel/ChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/ServerChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final channelGroup:Lio/netty/channel/group/ChannelGroup;

.field private final channelOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;"
        }
    .end annotation
.end field

.field private final channelz:Lio/grpc/InternalChannelz;

.field private final childChannelOptions:Ljava/util/Map;
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

.field private final forceHeapBuffer:Z

.field private final keepAliveTimeInNanos:J

.field private final keepAliveTimeoutInNanos:J

.field private volatile listenSocketStatsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private listener:Lio/grpc/internal/ServerListener;

.field private final logId:Lio/grpc/InternalLogId;

.field private final maxConnectionAgeGraceInNanos:J

.field private final maxConnectionAgeInNanos:J

.field private final maxConnectionIdleInNanos:J

.field private final maxHeaderListSize:I

.field private final maxMessageSize:I

.field private final maxStreamsPerConnection:I

.field private final permitKeepAliveTimeInNanos:J

.field private final permitKeepAliveWithoutCalls:Z

.field private final protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

.field private final sharedResourceReferenceCounter:Lio/netty/util/ReferenceCounted;

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

.field private volatile terminated:Z

.field private final transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

.field private workerGroup:Lio/netty/channel/EventLoopGroup;

.field private final workerGroupPool:Lio/grpc/internal/ObjectPool;
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
    .locals 1

    const-class v0, Lio/grpc/internal/InternalServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/NettyServer;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lio/netty/channel/ChannelFactory;Ljava/util/Map;Ljava/util/Map;Lio/grpc/internal/ObjectPool;Lio/grpc/internal/ObjectPool;ZLio/grpc/netty/ProtocolNegotiator;Ljava/util/List;Lio/grpc/internal/TransportTracer$Factory;IZIIIJJJJJZJLio/grpc/Attributes;Lio/grpc/InternalChannelz;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/net/SocketAddress;",
            ">;",
            "Lio/netty/channel/ChannelFactory<",
            "+",
            "Lio/netty/channel/ServerChannel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Lio/netty/channel/EventLoopGroup;",
            ">;Z",
            "Lio/grpc/netty/ProtocolNegotiator;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Lio/grpc/internal/TransportTracer$Factory;",
            "IZIIIJJJJJZJ",
            "Lio/grpc/Attributes;",
            "Lio/grpc/InternalChannelz;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;

    invoke-direct {v3, p0}, Lio/grpc/netty/NettyServer$SharedResourceReferenceCounter;-><init>(Lio/grpc/netty/NettyServer;)V

    iput-object v3, v0, Lio/grpc/netty/NettyServer;->sharedResourceReferenceCounter:Lio/netty/util/ReferenceCounted;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lio/grpc/netty/NettyServer;->listenSocketStatsList:Ljava/util/List;

    const-string v3, "addresses"

    move-object v4, p1

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Lio/grpc/netty/NettyServer;->addresses:Ljava/util/List;

    const-string v3, "channelFactory"

    move-object v5, p2

    invoke-static {p2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/ChannelFactory;

    iput-object v3, v0, Lio/grpc/netty/NettyServer;->channelFactory:Lio/netty/channel/ChannelFactory;

    const-string v3, "channelOptions"

    invoke-static {p3, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Lio/grpc/netty/NettyServer;->channelOptions:Ljava/util/Map;

    const-string v1, "childChannelOptions"

    invoke-static {p4, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->childChannelOptions:Ljava/util/Map;

    const-string v1, "bossGroupPool"

    move-object v2, p5

    invoke-static {p5, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ObjectPool;

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->bossGroupPool:Lio/grpc/internal/ObjectPool;

    const-string v1, "workerGroupPool"

    move-object v3, p6

    invoke-static {p6, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ObjectPool;

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->workerGroupPool:Lio/grpc/internal/ObjectPool;

    move v1, p7

    iput-boolean v1, v0, Lio/grpc/netty/NettyServer;->forceHeapBuffer:Z

    invoke-interface {p5}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoopGroup;

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->bossGroup:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v1}, Lio/netty/channel/EventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->bossExecutor:Lio/netty/channel/EventLoop;

    new-instance v2, Lio/netty/channel/group/DefaultChannelGroup;

    invoke-direct {v2, v1}, Lio/netty/channel/group/DefaultChannelGroup;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v2, v0, Lio/grpc/netty/NettyServer;->channelGroup:Lio/netty/channel/group/ChannelGroup;

    invoke-interface {p6}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoopGroup;

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->workerGroup:Lio/netty/channel/EventLoopGroup;

    const-string v1, "protocolNegotiator"

    move-object v2, p8

    invoke-static {p8, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/ProtocolNegotiator;

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    const-string v1, "streamTracerFactories"

    move-object v2, p9

    invoke-static {p9, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->streamTracerFactories:Ljava/util/List;

    move-object/from16 v1, p10

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    move/from16 v1, p11

    iput v1, v0, Lio/grpc/netty/NettyServer;->maxStreamsPerConnection:I

    move/from16 v1, p12

    iput-boolean v1, v0, Lio/grpc/netty/NettyServer;->autoFlowControl:Z

    move/from16 v1, p13

    iput v1, v0, Lio/grpc/netty/NettyServer;->flowControlWindow:I

    move/from16 v1, p14

    iput v1, v0, Lio/grpc/netty/NettyServer;->maxMessageSize:I

    move/from16 v1, p15

    iput v1, v0, Lio/grpc/netty/NettyServer;->maxHeaderListSize:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lio/grpc/netty/NettyServer;->keepAliveTimeInNanos:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lio/grpc/netty/NettyServer;->keepAliveTimeoutInNanos:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lio/grpc/netty/NettyServer;->maxConnectionIdleInNanos:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lio/grpc/netty/NettyServer;->maxConnectionAgeInNanos:J

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lio/grpc/netty/NettyServer;->maxConnectionAgeGraceInNanos:J

    move/from16 v1, p26

    iput-boolean v1, v0, Lio/grpc/netty/NettyServer;->permitKeepAliveWithoutCalls:Z

    move-wide/from16 v1, p27

    iput-wide v1, v0, Lio/grpc/netty/NettyServer;->permitKeepAliveTimeInNanos:J

    const-string v1, "eagAttributes"

    move-object/from16 v2, p29

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Attributes;

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->eagAttributes:Lio/grpc/Attributes;

    invoke-static/range {p30 .. p30}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/InternalChannelz;

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->channelz:Lio/grpc/InternalChannelz;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "No address"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lio/grpc/InternalLogId;->allocate(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/InternalLogId;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/netty/NettyServer;->logId:Lio/grpc/InternalLogId;

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/netty/NettyServer;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/NettyServer;->maxConnectionAgeInNanos:J

    return-wide v0
.end method

.method public static synthetic access$100(Lio/grpc/netty/NettyServer;)Lio/grpc/netty/ProtocolNegotiator;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->protocolNegotiator:Lio/grpc/netty/ProtocolNegotiator;

    return-object p0
.end method

.method public static synthetic access$1000(Lio/grpc/netty/NettyServer;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/NettyServer;->keepAliveTimeoutInNanos:J

    return-wide v0
.end method

.method public static synthetic access$1100(Lio/grpc/netty/NettyServer;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/NettyServer;->maxConnectionIdleInNanos:J

    return-wide v0
.end method

.method public static synthetic access$1200(Lio/grpc/netty/NettyServer;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/NettyServer;->maxConnectionAgeGraceInNanos:J

    return-wide v0
.end method

.method public static synthetic access$1300(Lio/grpc/netty/NettyServer;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/NettyServer;->permitKeepAliveWithoutCalls:Z

    return p0
.end method

.method public static synthetic access$1400(Lio/grpc/netty/NettyServer;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/NettyServer;->permitKeepAliveTimeInNanos:J

    return-wide v0
.end method

.method public static synthetic access$1500(Lio/grpc/netty/NettyServer;)Lio/grpc/Attributes;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->eagAttributes:Lio/grpc/Attributes;

    return-object p0
.end method

.method public static synthetic access$1600(Lio/grpc/netty/NettyServer;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/NettyServer;->terminated:Z

    return p0
.end method

.method public static synthetic access$1602(Lio/grpc/netty/NettyServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/NettyServer;->terminated:Z

    return p1
.end method

.method public static synthetic access$1700(Lio/grpc/netty/NettyServer;)Lio/netty/util/ReferenceCounted;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->sharedResourceReferenceCounter:Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public static synthetic access$1800(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/ServerListener;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->listener:Lio/grpc/internal/ServerListener;

    return-object p0
.end method

.method public static synthetic access$1900(Lio/grpc/netty/NettyServer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->addresses:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lio/grpc/netty/NettyServer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->streamTracerFactories:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2000(Lio/grpc/netty/NettyServer;)Lio/netty/channel/group/ChannelGroup;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->channelGroup:Lio/netty/channel/group/ChannelGroup;

    return-object p0
.end method

.method public static synthetic access$2100(Lio/grpc/netty/NettyServer;)Lio/grpc/InternalChannelz;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->channelz:Lio/grpc/InternalChannelz;

    return-object p0
.end method

.method public static synthetic access$2200()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/netty/NettyServer;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic access$2302(Lio/grpc/netty/NettyServer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServer;->listenSocketStatsList:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2400(Lio/grpc/netty/NettyServer;)Lio/netty/channel/EventLoopGroup;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->bossGroup:Lio/netty/channel/EventLoopGroup;

    return-object p0
.end method

.method public static synthetic access$2402(Lio/grpc/netty/NettyServer;Lio/netty/channel/EventLoopGroup;)Lio/netty/channel/EventLoopGroup;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServer;->bossGroup:Lio/netty/channel/EventLoopGroup;

    return-object p1
.end method

.method public static synthetic access$2500(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/ObjectPool;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->bossGroupPool:Lio/grpc/internal/ObjectPool;

    return-object p0
.end method

.method public static synthetic access$2600(Lio/grpc/netty/NettyServer;)Lio/netty/channel/EventLoopGroup;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->workerGroup:Lio/netty/channel/EventLoopGroup;

    return-object p0
.end method

.method public static synthetic access$2602(Lio/grpc/netty/NettyServer;Lio/netty/channel/EventLoopGroup;)Lio/netty/channel/EventLoopGroup;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServer;->workerGroup:Lio/netty/channel/EventLoopGroup;

    return-object p1
.end method

.method public static synthetic access$2700(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/ObjectPool;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->workerGroupPool:Lio/grpc/internal/ObjectPool;

    return-object p0
.end method

.method public static synthetic access$300(Lio/grpc/netty/NettyServer;)Lio/grpc/internal/TransportTracer$Factory;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServer;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    return-object p0
.end method

.method public static synthetic access$400(Lio/grpc/netty/NettyServer;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/NettyServer;->maxStreamsPerConnection:I

    return p0
.end method

.method public static synthetic access$500(Lio/grpc/netty/NettyServer;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/NettyServer;->autoFlowControl:Z

    return p0
.end method

.method public static synthetic access$600(Lio/grpc/netty/NettyServer;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/NettyServer;->flowControlWindow:I

    return p0
.end method

.method public static synthetic access$700(Lio/grpc/netty/NettyServer;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/NettyServer;->maxMessageSize:I

    return p0
.end method

.method public static synthetic access$800(Lio/grpc/netty/NettyServer;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/NettyServer;->maxHeaderListSize:I

    return p0
.end method

.method public static synthetic access$900(Lio/grpc/netty/NettyServer;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/NettyServer;->keepAliveTimeInNanos:J

    return-wide v0
.end method


# virtual methods
.method public getListenSocketAddress()Ljava/net/SocketAddress;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyServer;->channelGroup:Lio/netty/channel/group/ChannelGroup;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/NettyServer;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/grpc/netty/NettyServer;->addresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    :goto_0
    return-object v0
.end method

.method public getListenSocketAddresses()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/grpc/netty/NettyServer;->channelGroup:Lio/netty/channel/group/ChannelGroup;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/grpc/netty/NettyServer;->addresses:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getListenSocketStats()Lio/grpc/InternalInstrumented;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServer;->listenSocketStatsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalInstrumented;

    :goto_0
    return-object v0
.end method

.method public getListenSocketStatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServer;->listenSocketStatsList:Ljava/util/List;

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServer;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method public shutdown()V
    .locals 4

    iget-boolean v0, p0, Lio/grpc/netty/NettyServer;->terminated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/NettyServer;->channelGroup:Lio/netty/channel/group/ChannelGroup;

    invoke-interface {v0}, Lio/netty/channel/group/ChannelGroup;->close()Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/NettyServer$4;

    invoke-direct {v1, p0}, Lio/grpc/netty/NettyServer$4;-><init>(Lio/grpc/netty/NettyServer;)V

    invoke-interface {v0, v1}, Lio/netty/channel/group/ChannelGroupFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lio/netty/channel/group/ChannelGroupFuture;->await()Lio/netty/channel/group/ChannelGroupFuture;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lio/grpc/netty/NettyServer;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Interrupted while shutting down"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public start(Lio/grpc/internal/ServerListener;)V
    .locals 6

    const-string v0, "serverListener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ServerListener;

    iput-object p1, p0, Lio/grpc/netty/NettyServer;->listener:Lio/grpc/internal/ServerListener;

    new-instance p1, Lio/netty/bootstrap/ServerBootstrap;

    invoke-direct {p1}, Lio/netty/bootstrap/ServerBootstrap;-><init>()V

    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    iget-boolean v1, p0, Lio/grpc/netty/NettyServer;->forceHeapBuffer:Z

    invoke-static {v1}, Lio/grpc/netty/Utils;->getByteBufAllocator(Z)Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    iget-boolean v1, p0, Lio/grpc/netty/NettyServer;->forceHeapBuffer:Z

    invoke-static {v1}, Lio/grpc/netty/Utils;->getByteBufAllocator(Z)Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/netty/bootstrap/ServerBootstrap;->childOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/ServerBootstrap;

    iget-object v0, p0, Lio/grpc/netty/NettyServer;->bossExecutor:Lio/netty/channel/EventLoop;

    iget-object v1, p0, Lio/grpc/netty/NettyServer;->workerGroup:Lio/netty/channel/EventLoopGroup;

    invoke-virtual {p1, v0, v1}, Lio/netty/bootstrap/ServerBootstrap;->group(Lio/netty/channel/EventLoopGroup;Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/ServerBootstrap;

    iget-object v0, p0, Lio/grpc/netty/NettyServer;->channelFactory:Lio/netty/channel/ChannelFactory;

    invoke-virtual {p1, v0}, Lio/netty/bootstrap/AbstractBootstrap;->channelFactory(Lio/netty/channel/ChannelFactory;)Lio/netty/bootstrap/AbstractBootstrap;

    sget-object v0, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lio/netty/bootstrap/ServerBootstrap;->childOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/ServerBootstrap;

    iget-object v0, p0, Lio/grpc/netty/NettyServer;->channelOptions:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/channel/ChannelOption;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/NettyServer;->childChannelOptions:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/channel/ChannelOption;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lio/netty/bootstrap/ServerBootstrap;->childOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/ServerBootstrap;

    goto :goto_1

    :cond_1
    new-instance v0, Lio/grpc/netty/NettyServer$1;

    invoke-direct {v0, p0}, Lio/grpc/netty/NettyServer$1;-><init>(Lio/grpc/netty/NettyServer;)V

    invoke-virtual {p1, v0}, Lio/netty/bootstrap/ServerBootstrap;->childHandler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/ServerBootstrap;

    iget-object v0, p0, Lio/grpc/netty/NettyServer;->bossExecutor:Lio/netty/channel/EventLoop;

    new-instance v1, Lio/grpc/netty/NettyServer$2;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/NettyServer$2;-><init>(Lio/grpc/netty/NettyServer;Lio/netty/bootstrap/ServerBootstrap;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutorGroup;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->awaitUninterruptibly()Lio/netty/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/channel/ChannelFuture;

    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->awaitUninterruptibly()Lio/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v1, Lio/grpc/netty/NettyServer$ListenSocket;

    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-direct {v1, v5}, Lio/grpc/netty/NettyServer$ListenSocket;-><init>(Lio/netty/channel/Channel;)V

    iget-object v5, p0, Lio/grpc/netty/NettyServer;->channelz:Lio/grpc/InternalChannelz;

    invoke-virtual {v5, v1}, Lio/grpc/InternalChannelz;->addListenSocket(Lio/grpc/InternalInstrumented;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v4

    new-instance v5, Lio/grpc/netty/NettyServer$3;

    invoke-direct {v5, p0, v1}, Lio/grpc/netty/NettyServer$3;-><init>(Lio/grpc/netty/NettyServer;Lio/grpc/InternalInstrumented;)V

    invoke-interface {v4, v5}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lio/grpc/netty/NettyServer;->channelGroup:Lio/netty/channel/group/ChannelGroup;

    invoke-interface {p1}, Lio/netty/channel/group/ChannelGroup;->close()Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/group/ChannelGroupFuture;->awaitUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;

    new-instance p1, Ljava/io/IOException;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Failed to bind to address %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyServer;->listenSocketStatsList:Ljava/util/List;

    return-void

    :cond_4
    iget-object v0, p0, Lio/grpc/netty/NettyServer;->channelGroup:Lio/netty/channel/group/ChannelGroup;

    invoke-interface {v0}, Lio/netty/channel/group/ChannelGroup;->close()Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/group/ChannelGroupFuture;->awaitUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;

    new-instance v0, Ljava/io/IOException;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/netty/NettyServer;->addresses:Ljava/util/List;

    aput-object v3, v1, v2

    const-string v2, "Failed to bind to addresses %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServer;->logId:Lio/grpc/InternalLogId;

    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServer;->addresses:Ljava/util/List;

    const-string v2, "addresses"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
