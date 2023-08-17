.class public Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2RemoteFlowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;,
        Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;,
        Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final MIN_WRITABLE_CHUNK:I = 0x8000

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private final connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private initialWindowSize:I

.field private monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

.field private final stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private final streamByteDistributor:Lio/netty/handler/codec/http2/StreamByteDistributor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;-><init>(Lio/netty/handler/codec/http2/Http2Connection;)V

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/StreamByteDistributor;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/StreamByteDistributor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/StreamByteDistributor;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/StreamByteDistributor;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    const-string v0, "connection"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    const-string v0, "streamWriteDistributor"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/handler/codec/http2/StreamByteDistributor;

    iput-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->streamByteDistributor:Lio/netty/handler/codec/http2/StreamByteDistributor;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/Http2Stream;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->listener(Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    iget-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    iget p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    invoke-virtual {p2, v0, p3}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->windowSize(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;I)V

    new-instance p2, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$1;

    invoke-direct {p2, p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$1;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)V

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Z
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->isChannelWritable0()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/Http2Connection;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Z
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->isChannelWritable()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1400()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)I
    .locals 0

    iget p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    return p0
.end method

.method public static synthetic access$202(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;I)I
    .locals 0

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    return p1
.end method

.method public static synthetic access$300(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    return-object p0
.end method

.method public static synthetic access$500(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public static synthetic access$600(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/StreamByteDistributor;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->streamByteDistributor:Lio/netty/handler/codec/http2/StreamByteDistributor;

    return-object p0
.end method

.method public static synthetic access$700(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)I
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionWindowSize()I

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    return-object p0
.end method

.method public static synthetic access$900(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;)I
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->writableBytes()I

    move-result p0

    return p0
.end method

.method private connectionWindowSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->windowSize()I

    move-result v0

    return v0
.end method

.method private isChannelWritable()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->isChannelWritable0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isChannelWritable0()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    return v0
.end method

.method private maxUsableChannelBytes()I
    .locals 4

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->bytesBeforeUnwritable()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->minUsableChannelBytes()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionState:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->windowSize()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private minUsableChannelBytes()I
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v0

    const v1, 0x8000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    return-object p1
.end method

.method private writableBytes()I
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->connectionWindowSize()I

    move-result v0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->maxUsableChannelBytes()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V
    .locals 1

    const-string v0, "frame"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->enqueueFrame(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p2, v0, p1}, Lio/netty/handler/codec/http2/Http2RemoteFlowController$FlowControlled;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public channelHandlerContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public channelHandlerContext(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->channelWritabilityChanged()V

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->isChannelWritable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->writePendingBytes()V

    :cond_0
    return-void
.end method

.method public channelWritabilityChanged()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->channelWritabilityChange()V

    return-void
.end method

.method public hasFlowControlled(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->hasFrame()Z

    move-result p1

    return p1
.end method

.method public incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->incrementWindowSize(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;I)V

    return-void
.end method

.method public initialWindowSize()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->initialWindowSize:I

    return v0
.end method

.method public initialWindowSize(I)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->initialWindowSize(I)V

    return-void
.end method

.method public isWritable(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->isWritable(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;)Z

    move-result p1

    return p1
.end method

.method public listener(Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$ListenerWritabilityMonitor;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;Lio/netty/handler/codec/http2/Http2RemoteFlowController$Listener;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    return-void
.end method

.method public updateDependencyTree(IISZ)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->streamByteDistributor:Lio/netty/handler/codec/http2/StreamByteDistributor;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/StreamByteDistributor;->updateDependencyTree(IISZ)V

    return-void
.end method

.method public windowSize(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$FlowState;->windowSize()I

    move-result p1

    return p1
.end method

.method public writePendingBytes()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;->monitor:Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController$WritabilityMonitor;->writePendingBytes()V

    return-void
.end method
