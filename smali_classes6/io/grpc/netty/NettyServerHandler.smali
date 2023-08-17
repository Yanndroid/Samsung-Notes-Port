.class Lio/grpc/netty/NettyServerHandler;
.super Lio/grpc/netty/AbstractNettyHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/NettyServerHandler$ServerChannelLogger;,
        Lio/grpc/netty/NettyServerHandler$WriteMonitoringFrameWriter;,
        Lio/grpc/netty/NettyServerHandler$GracefulShutdown;,
        Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;,
        Lio/grpc/netty/NettyServerHandler$FrameListener;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final DISABLE_CONNECTION_HEADER_CHECK:Z

.field public static final GRACEFUL_SHUTDOWN_PING:J = 0x97acef001L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final GRACEFUL_SHUTDOWN_PING_TIMEOUT_NANOS:J

.field private static final KEEPALIVE_PING:J = 0xdeadL

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private attributes:Lio/grpc/Attributes;

.field private connectionError:Ljava/lang/Throwable;

.field private final eagAttributes:Lio/grpc/Attributes;

.field private gracefulShutdown:Lio/grpc/netty/NettyServerHandler$GracefulShutdown;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

.field private keepAliveManager:Lio/grpc/internal/KeepAliveManager;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final keepAliveTimeInNanos:J

.field private final keepAliveTimeoutInNanos:J

.field private lastKnownAuthority:Lio/netty/util/AsciiString;

.field private final maxConnectionAgeGraceInNanos:J

.field private final maxConnectionAgeInNanos:J

.field private maxConnectionAgeMonitor:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final maxMessageSize:I

.field private negotiationAttributes:Lio/grpc/Attributes;

.field private securityInfo:Lio/grpc/InternalChannelz$Security;

.field private serverWriteQueue:Lio/grpc/netty/WriteQueue;

.field private final streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

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

.field private teWarningLogged:Z

.field private final transportListener:Lio/grpc/internal/ServerTransportListener;

.field private final transportTracer:Lio/grpc/internal/TransportTracer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/NettyServerHandler;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/netty/NettyServerHandler;->GRACEFUL_SHUTDOWN_PING_TIMEOUT_NANOS:J

    const-string v0, "io.grpc.netty.disableConnectionHeaderCheck"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/NettyServerHandler;->DISABLE_CONNECTION_HEADER_CHECK:Z

    return-void
.end method

.method private constructor <init>(Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http2/Http2Connection;Lio/grpc/internal/ServerTransportListener;Ljava/util/List;Lio/grpc/internal/TransportTracer;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;IJJJJJLio/grpc/internal/KeepAliveEnforcer;ZLio/grpc/Attributes;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelPromise;",
            "Lio/netty/handler/codec/http2/Http2Connection;",
            "Lio/grpc/internal/ServerTransportListener;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Lio/grpc/internal/TransportTracer;",
            "Lio/netty/handler/codec/http2/Http2ConnectionDecoder;",
            "Lio/netty/handler/codec/http2/Http2ConnectionEncoder;",
            "Lio/netty/handler/codec/http2/Http2Settings;",
            "IJJJJJ",
            "Lio/grpc/internal/KeepAliveEnforcer;",
            "Z",
            "Lio/grpc/Attributes;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p9

    move-wide/from16 v11, p14

    move-object/from16 v13, p20

    new-instance v5, Lio/grpc/netty/NettyServerHandler$ServerChannelLogger;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Lio/grpc/netty/NettyServerHandler$ServerChannelLogger;-><init>(Lio/grpc/netty/NettyServerHandler$1;)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v6, p21

    invoke-direct/range {v0 .. v7}, Lio/grpc/netty/AbstractNettyHandler;-><init>(Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Lio/grpc/ChannelLogger;ZLio/grpc/netty/AbstractNettyHandler$PingLimiter;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v11, v0

    if-nez v0, :cond_0

    move-object v0, v14

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/internal/MaxConnectionIdleManager;

    invoke-direct {v0, v11, v12}, Lio/grpc/internal/MaxConnectionIdleManager;-><init>(J)V

    :goto_0
    new-instance v1, Lio/grpc/netty/NettyServerHandler$1;

    invoke-direct {v1, p0, v9, v13, v0}, Lio/grpc/netty/NettyServerHandler$1;-><init>(Lio/grpc/netty/NettyServerHandler;Lio/netty/handler/codec/http2/Http2Connection;Lio/grpc/internal/KeepAliveEnforcer;Lio/grpc/internal/MaxConnectionIdleManager;)V

    invoke-interface {v9, v1}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    if-ltz v10, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "maxMessageSize must be non-negative: %s"

    invoke-static {v1, v2, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iput v10, v8, Lio/grpc/netty/NettyServerHandler;->maxMessageSize:I

    move-wide/from16 v1, p10

    iput-wide v1, v8, Lio/grpc/netty/NettyServerHandler;->keepAliveTimeInNanos:J

    move-wide/from16 v1, p12

    iput-wide v1, v8, Lio/grpc/netty/NettyServerHandler;->keepAliveTimeoutInNanos:J

    iput-object v0, v8, Lio/grpc/netty/NettyServerHandler;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    move-wide/from16 v0, p16

    iput-wide v0, v8, Lio/grpc/netty/NettyServerHandler;->maxConnectionAgeInNanos:J

    move-wide/from16 v0, p18

    iput-wide v0, v8, Lio/grpc/netty/NettyServerHandler;->maxConnectionAgeGraceInNanos:J

    const-string v0, "keepAliveEnforcer"

    invoke-static {v13, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/KeepAliveEnforcer;

    iput-object v0, v8, Lio/grpc/netty/NettyServerHandler;->keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    const-string v0, "eagAttributes"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Attributes;

    iput-object v0, v8, Lio/grpc/netty/NettyServerHandler;->eagAttributes:Lio/grpc/Attributes;

    invoke-interface/range {p7 .. p7}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, v8, Lio/grpc/netty/NettyServerHandler;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    const-string v0, "transportListener"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ServerTransportListener;

    iput-object v0, v8, Lio/grpc/netty/NettyServerHandler;->transportListener:Lio/grpc/internal/ServerTransportListener;

    const-string v0, "streamTracerFactories"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v8, Lio/grpc/netty/NettyServerHandler;->streamTracerFactories:Ljava/util/List;

    const-string v0, "transportTracer"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TransportTracer;

    iput-object v0, v8, Lio/grpc/netty/NettyServerHandler;->transportTracer:Lio/grpc/internal/TransportTracer;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/NettyServerHandler$FrameListener;

    invoke-direct {v1, p0, v14}, Lio/grpc/netty/NettyServerHandler$FrameListener;-><init>(Lio/grpc/netty/NettyServerHandler;Lio/grpc/netty/NettyServerHandler$1;)V

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->frameListener(Lio/netty/handler/codec/http2/Http2FrameListener;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerHandler;->onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;)V

    return-void
.end method

.method public static synthetic access$1100(Lio/grpc/netty/NettyServerHandler;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerHandler;->onRstStreamRead(IJ)V

    return-void
.end method

.method public static synthetic access$1200(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveEnforcer;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerHandler;->keepAliveEnforcer:Lio/grpc/internal/KeepAliveEnforcer;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerHandler;->forcefulClose(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public static synthetic access$1400()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/netty/NettyServerHandler;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic access$1500(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/TransportTracer;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerHandler;->transportTracer:Lio/grpc/internal/TransportTracer;

    return-object p0
.end method

.method public static synthetic access$1600()J
    .locals 2

    sget-wide v0, Lio/grpc/netty/NettyServerHandler;->GRACEFUL_SHUTDOWN_PING_TIMEOUT_NANOS:J

    return-wide v0
.end method

.method public static synthetic access$1701(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public static synthetic access$1800(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/NettyServerHandler;->toJavaLogLevel(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/netty/NettyServerHandler$GracefulShutdown;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerHandler;->gracefulShutdown:Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    return-object p0
.end method

.method public static synthetic access$202(Lio/grpc/netty/NettyServerHandler;Lio/grpc/netty/NettyServerHandler$GracefulShutdown;)Lio/grpc/netty/NettyServerHandler$GracefulShutdown;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler;->gracefulShutdown:Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    return-object p1
.end method

.method public static synthetic access$300(Lio/grpc/netty/NettyServerHandler;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/NettyServerHandler;->maxConnectionAgeGraceInNanos:J

    return-wide v0
.end method

.method public static synthetic access$400(Lio/grpc/netty/NettyServerHandler;Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyServerStream$TransportState;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyServerHandler;->serverStream(Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$502(Lio/grpc/netty/NettyServerHandler;Lio/grpc/Attributes;)Lio/grpc/Attributes;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler;->attributes:Lio/grpc/Attributes;

    return-object p1
.end method

.method public static synthetic access$600(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/Attributes;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerHandler;->negotiationAttributes:Lio/grpc/Attributes;

    return-object p0
.end method

.method public static synthetic access$700(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/ServerTransportListener;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerHandler;->transportListener:Lio/grpc/internal/ServerTransportListener;

    return-object p0
.end method

.method public static synthetic access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerHandler;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    return-object p0
.end method

.method public static synthetic access$900(Lio/grpc/netty/NettyServerHandler;ILio/netty/buffer/ByteBuf;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/netty/NettyServerHandler;->onDataRead(ILio/netty/buffer/ByteBuf;IZ)V

    return-void
.end method

.method private cancelStream(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/CancelServerStreamCommand;Lio/netty/channel/ChannelPromise;)V
    .locals 9

    invoke-virtual {p2}, Lio/grpc/netty/CancelServerStreamCommand;->stream()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "NettyServerHandler.cancelStream"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    invoke-virtual {p2}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;->getLink()Lio/perfmark/Link;

    move-result-object v0

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    :try_start_0
    invoke-virtual {p2}, Lio/grpc/netty/CancelServerStreamCommand;->stream()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v0

    invoke-virtual {p2}, Lio/grpc/netty/CancelServerStreamCommand;->reason()Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/internal/AbstractServerStream$TransportState;->transportReportStatus(Lio/grpc/Status;)V

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v3

    invoke-virtual {p2}, Lio/grpc/netty/CancelServerStreamCommand;->stream()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/NettyServerStream$TransportState;->id()I

    move-result v5

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v6

    move-object v4, p1

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeRstStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lio/grpc/netty/CancelServerStreamCommand;->stream()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object p1

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lio/grpc/netty/CancelServerStreamCommand;->stream()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object p2

    invoke-static {v1, p2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method private closeStreamWhenDone(Lio/netty/channel/ChannelPromise;I)V
    .locals 1

    invoke-direct {p0, p2}, Lio/grpc/netty/NettyServerHandler;->requireHttp2Stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/grpc/netty/NettyServerHandler;->serverStream(Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object p2

    new-instance v0, Lio/grpc/netty/NettyServerHandler$5;

    invoke-direct {v0, p0, p2}, Lio/grpc/netty/NettyServerHandler$5;-><init>(Lio/grpc/netty/NettyServerHandler;Lio/grpc/netty/NettyServerStream$TransportState;)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method private forcefulClose(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    invoke-super {p0, p1, p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p3

    new-instance v0, Lio/grpc/netty/NettyServerHandler$6;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/netty/NettyServerHandler$6;-><init>(Lio/grpc/netty/NettyServerHandler;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p3, v0}, Lio/netty/handler/codec/http2/Http2Connection;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;

    return-void
.end method

.method private getOrUpdateAuthority(Lio/netty/util/AsciiString;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->lastKnownAuthority:Lio/netty/util/AsciiString;

    invoke-virtual {p1, v0}, Lio/netty/util/AsciiString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler;->lastKnownAuthority:Lio/netty/util/AsciiString;

    :cond_1
    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler;->lastKnownAuthority:Lio/netty/util/AsciiString;

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private gracefulClose(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/GracefulServerCloseCommand;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->gracefulShutdown:Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2}, Lio/grpc/netty/GracefulServerCloseCommand;->getGraceTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lio/grpc/netty/GracefulServerCloseCommand;->getGraceTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p2}, Lio/grpc/netty/GracefulServerCloseCommand;->getGraceTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    new-instance v1, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    invoke-virtual {p2}, Lio/grpc/netty/GracefulServerCloseCommand;->getGoAwayDebugString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p2, v0}, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;-><init>(Lio/grpc/netty/NettyServerHandler;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object v1, p0, Lio/grpc/netty/NettyServerHandler;->gracefulShutdown:Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    invoke-virtual {v1, p1}, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->start(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_1
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public static newHandler(Lio/grpc/internal/ServerTransportListener;Lio/netty/channel/ChannelPromise;Ljava/util/List;Lio/grpc/internal/TransportTracer;IZIIIJJJJJZJLio/grpc/Attributes;)Lio/grpc/netty/NettyServerHandler;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ServerTransportListener;",
            "Lio/netty/channel/ChannelPromise;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Lio/grpc/internal/TransportTracer;",
            "IZIIIJJJJJZJ",
            "Lio/grpc/Attributes;",
            ")",
            "Lio/grpc/netty/NettyServerHandler;"
        }
    .end annotation

    move/from16 v9, p7

    if-lez v9, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxHeaderListSize must be positive: %s"

    invoke-static {v0, v1, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v1, Lio/netty/handler/logging/LogLevel;->DEBUG:Lio/netty/handler/logging/LogLevel;

    const-class v2, Lio/grpc/netty/NettyServerHandler;

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2FrameLogger;-><init>(Lio/netty/handler/logging/LogLevel;Ljava/lang/Class;)V

    new-instance v2, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2ServerHeadersDecoder;

    int-to-long v3, v9

    invoke-direct {v2, v3, v4}, Lio/grpc/netty/GrpcHttp2HeadersUtils$GrpcHttp2ServerHeadersDecoder;-><init>(J)V

    new-instance v3, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;

    move-object v1, v3

    new-instance v4, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-direct {v4, v2}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;-><init>(Lio/netty/handler/codec/http2/Http2HeadersDecoder;)V

    invoke-direct {v3, v4, v0}, Lio/netty/handler/codec/http2/Http2InboundFrameLogger;-><init>(Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2FrameLogger;)V

    new-instance v3, Lio/netty/handler/codec/http2/Http2OutboundFrameLogger;

    move-object v2, v3

    new-instance v4, Lio/netty/handler/codec/http2/DefaultHttp2FrameWriter;

    invoke-direct {v4}, Lio/netty/handler/codec/http2/DefaultHttp2FrameWriter;-><init>()V

    invoke-direct {v3, v4, v0}, Lio/netty/handler/codec/http2/Http2OutboundFrameLogger;-><init>(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/netty/handler/codec/http2/Http2FrameLogger;)V

    move-object/from16 v0, p1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move/from16 v21, p19

    move-wide/from16 v22, p20

    move-object/from16 v24, p22

    invoke-static/range {v0 .. v24}, Lio/grpc/netty/NettyServerHandler;->newHandler(Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/grpc/internal/ServerTransportListener;Ljava/util/List;Lio/grpc/internal/TransportTracer;IZIIIJJJJJZJLio/grpc/Attributes;)Lio/grpc/netty/NettyServerHandler;

    move-result-object v0

    return-object v0
.end method

.method public static newHandler(Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http2/Http2FrameReader;Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/grpc/internal/ServerTransportListener;Ljava/util/List;Lio/grpc/internal/TransportTracer;IZIIIJJJJJZJLio/grpc/Attributes;)Lio/grpc/netty/NettyServerHandler;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelPromise;",
            "Lio/netty/handler/codec/http2/Http2FrameReader;",
            "Lio/netty/handler/codec/http2/Http2FrameWriter;",
            "Lio/grpc/internal/ServerTransportListener;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Lio/grpc/internal/TransportTracer;",
            "IZIIIJJJJJZJ",
            "Lio/grpc/Attributes;",
            ")",
            "Lio/grpc/netty/NettyServerHandler;"
        }
    .end annotation

    move/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p9

    move/from16 v12, p10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "maxStreams must be positive: %s"

    invoke-static {v5, v6, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    if-lez v1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const-string v6, "flowControlWindow must be positive: %s"

    invoke-static {v5, v6, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    if-lez v2, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    const-string v6, "maxHeaderListSize must be positive: %s"

    invoke-static {v5, v6, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    if-lez v12, :cond_3

    move v3, v4

    :cond_3
    const-string v5, "maxMessageSize must be positive: %s"

    invoke-static {v3, v5, v12}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    new-instance v3, Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    move-object v5, v3

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;-><init>(Z)V

    new-instance v6, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;

    invoke-direct {v6, v3}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;-><init>(Lio/netty/handler/codec/http2/Http2Connection;)V

    const/16 v7, 0x4000

    invoke-virtual {v6, v7}, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;->allocationQuantum(I)V

    new-instance v7, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;

    invoke-direct {v7, v3, v6}, Lio/netty/handler/codec/http2/DefaultHttp2RemoteFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/StreamByteDistributor;)V

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v6

    invoke-interface {v6, v7}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController(Lio/netty/handler/codec/http2/Http2FlowController;)V

    new-instance v6, Lio/grpc/internal/KeepAliveEnforcer;

    move-object/from16 v23, v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move/from16 v8, p21

    move-wide/from16 v9, p22

    invoke-direct {v6, v8, v9, v10, v7}, Lio/grpc/internal/KeepAliveEnforcer;-><init>(ZJLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v7

    new-instance v8, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {v8, v3, v9, v4}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;FZ)V

    invoke-interface {v7, v8}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController(Lio/netty/handler/codec/http2/Http2FlowController;)V

    new-instance v4, Lio/grpc/netty/NettyServerHandler$WriteMonitoringFrameWriter;

    move-object/from16 v7, p2

    invoke-direct {v4, v7, v6}, Lio/grpc/netty/NettyServerHandler$WriteMonitoringFrameWriter;-><init>(Lio/netty/handler/codec/http2/Http2FrameWriter;Lio/grpc/internal/KeepAliveEnforcer;)V

    new-instance v6, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;

    invoke-direct {v6, v3, v4}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionEncoder;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2FrameWriter;)V

    new-instance v4, Lio/grpc/netty/Http2ControlFrameLimitEncoder;

    move-object v10, v4

    const/16 v7, 0x2710

    invoke-direct {v4, v6, v7}, Lio/grpc/netty/Http2ControlFrameLimitEncoder;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;I)V

    new-instance v6, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;

    move-object v9, v6

    move-object/from16 v7, p1

    invoke-direct {v6, v3, v4, v7}, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;-><init>(Lio/netty/handler/codec/http2/Http2Connection;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2FrameReader;)V

    new-instance v3, Lio/netty/handler/codec/http2/Http2Settings;

    move-object v11, v3

    invoke-direct {v3}, Lio/netty/handler/codec/http2/Http2Settings;-><init>()V

    invoke-virtual {v3, v1}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize(I)Lio/netty/handler/codec/http2/Http2Settings;

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Lio/netty/handler/codec/http2/Http2Settings;->maxConcurrentStreams(J)Lio/netty/handler/codec/http2/Http2Settings;

    int-to-long v0, v2

    invoke-virtual {v3, v0, v1}, Lio/netty/handler/codec/http2/Http2Settings;->maxHeaderListSize(J)Lio/netty/handler/codec/http2/Http2Settings;

    new-instance v0, Lio/grpc/netty/NettyServerHandler;

    move-object v3, v0

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v12, p10

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move-wide/from16 v21, p19

    move/from16 v24, p7

    move-object/from16 v25, p24

    invoke-direct/range {v3 .. v25}, Lio/grpc/netty/NettyServerHandler;-><init>(Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http2/Http2Connection;Lio/grpc/internal/ServerTransportListener;Ljava/util/List;Lio/grpc/internal/TransportTracer;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;IJJJJJLio/grpc/internal/KeepAliveEnforcer;ZLio/grpc/Attributes;)V

    return-object v0
.end method

.method private newStreamException(ILjava/lang/Throwable;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 3

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2, v1, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    return-object p1
.end method

.method private onDataRead(ILio/netty/buffer/ByteBuf;IZ)V
    .locals 3

    const-string v0, "NettyServerHandler.onDataRead"

    invoke-virtual {p0}, Lio/grpc/netty/AbstractNettyHandler;->flowControlPing()Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;

    move-result-object v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->onDataRead(II)V

    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/NettyServerHandler;->requireHttp2Stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object p3

    invoke-direct {p0, p3}, Lio/grpc/netty/NettyServerHandler;->serverStream(Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object p3

    invoke-virtual {p3}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v1

    invoke-static {v0, v1}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p3, p2, p4}, Lio/grpc/netty/NettyServerStream$TransportState;->inboundDataReceived(Lio/netty/buffer/ByteBuf;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p3}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object p2

    invoke-static {v0, p2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p3}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object p3

    invoke-static {v0, p3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    sget-object p3, Lio/grpc/netty/NettyServerHandler;->logger:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Exception in onDataRead()"

    invoke-virtual {p3, p4, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/NettyServerHandler;->newStreamException(ILjava/lang/Throwable;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method private onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;)V
    .locals 17

    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v0, p3

    const-string v11, "NettyServerHandler.onHeadersRead"

    :try_start_0
    sget-boolean v1, Lio/grpc/netty/NettyServerHandler;->DISABLE_CONNECTION_HEADER_CHECK:Z

    if-nez v1, :cond_0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/Headers;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->resetStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void

    :cond_0
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->authority()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/Headers;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    const/16 v4, 0x190

    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v6, "Multiple host headers"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/NettyServerHandler;->respondWithHttpError(Lio/netty/channel/ChannelHandlerContext;IILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0, v4, v1}, Lio/netty/handler/codec/Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    :cond_2
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/Headers;->remove(Ljava/lang/Object;)Z

    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->path()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_3

    const/16 v4, 0x194

    sget-object v5, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    const-string v6, "Expected path but is missing"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/NettyServerHandler;->respondWithHttpError(Lio/netty/channel/ChannelHandlerContext;IILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_4

    const/16 v4, 0x194

    sget-object v5, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    const-string v0, "Expected path to start with /: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/NettyServerHandler;->respondWithHttpError(Lio/netty/channel/ChannelHandlerContext;IILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v1, Lio/grpc/netty/Utils;->CONTENT_TYPE_HEADER:Lio/netty/util/AsciiString;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    const/16 v4, 0x19f

    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v6, "Content-Type is missing from the request"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/NettyServerHandler;->respondWithHttpError(Lio/netty/channel/ChannelHandlerContext;IILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->isGrpcContentType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x19f

    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v0, "Content-Type \'%s\' is not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/NettyServerHandler;->respondWithHttpError(Lio/netty/channel/ChannelHandlerContext;IILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    :cond_6
    sget-object v1, Lio/grpc/netty/Utils;->HTTP_METHOD:Lio/netty/util/AsciiString;

    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->method()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v4, 0x195

    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v1, "Method \'%s\' is not supported"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->method()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/NettyServerHandler;->respondWithHttpError(Lio/netty/channel/ChannelHandlerContext;IILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-boolean v1, v9, Lio/grpc/netty/NettyServerHandler;->teWarningLogged:Z

    if-nez v1, :cond_8

    sget-object v1, Lio/grpc/netty/Utils;->TE_TRAILERS:Lio/netty/util/AsciiString;

    sget-object v4, Lio/grpc/netty/Utils;->TE_HEADER:Lio/netty/util/AsciiString;

    invoke-interface {v0, v4}, Lio/netty/handler/codec/Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Lio/grpc/netty/NettyServerHandler;->logger:Ljava/util/logging/Logger;

    const-string v6, "Expected header TE: %s, but %s is received. This means some intermediate proxy may not support trailers"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v2

    invoke-interface {v0, v4}, Lio/netty/handler/codec/Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iput-boolean v3, v9, Lio/grpc/netty/NettyServerHandler;->teWarningLogged:Z

    :cond_8
    invoke-direct {v9, v10}, Lio/grpc/netty/NettyServerHandler;->requireHttp2Stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v13

    invoke-static/range {p3 .. p3}, Lio/grpc/netty/Utils;->convertHeaders(Lio/netty/handler/codec/http2/Http2Headers;)Lio/grpc/Metadata;

    move-result-object v14

    iget-object v1, v9, Lio/grpc/netty/NettyServerHandler;->streamTracerFactories:Ljava/util/List;

    invoke-static {v1, v12, v14}, Lio/grpc/internal/StatsTraceContext;->newServerContext(Ljava/util/List;Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;

    move-result-object v15

    new-instance v8, Lio/grpc/netty/NettyServerStream$TransportState;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    iget v5, v9, Lio/grpc/netty/NettyServerHandler;->maxMessageSize:I

    iget-object v7, v9, Lio/grpc/netty/NettyServerHandler;->transportTracer:Lio/grpc/internal/TransportTracer;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v4, v13

    move-object v6, v15

    move-object/from16 v16, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lio/grpc/netty/NettyServerStream$TransportState;-><init>(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/EventLoop;Lio/netty/handler/codec/http2/Http2Stream;ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v1

    invoke-static {v11, v1}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface/range {p3 .. p3}, Lio/netty/handler/codec/http2/Http2Headers;->authority()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-direct {v9, v0}, Lio/grpc/netty/NettyServerHandler;->getOrUpdateAuthority(Lio/netty/util/AsciiString;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lio/grpc/netty/NettyServerStream;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    iget-object v5, v9, Lio/grpc/netty/NettyServerHandler;->attributes:Lio/grpc/Attributes;

    iget-object v8, v9, Lio/grpc/netty/NettyServerHandler;->transportTracer:Lio/grpc/internal/TransportTracer;

    move-object v2, v0

    move-object/from16 v4, v16

    move-object v7, v15

    invoke-direct/range {v2 .. v8}, Lio/grpc/netty/NettyServerStream;-><init>(Lio/netty/channel/Channel;Lio/grpc/netty/NettyServerStream$TransportState;Lio/grpc/Attributes;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    iget-object v1, v9, Lio/grpc/netty/NettyServerHandler;->transportListener:Lio/grpc/internal/ServerTransportListener;

    invoke-interface {v1, v0, v12, v14}, Lio/grpc/internal/ServerTransportListener;->streamCreated(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;)V

    invoke-virtual/range {v16 .. v16}, Lio/grpc/internal/AbstractServerStream$TransportState;->onStreamAllocated()V

    iget-object v0, v9, Lio/grpc/netty/NettyServerHandler;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, v16

    :try_start_2
    invoke-interface {v13, v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v11, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    :goto_0
    invoke-virtual {v1}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v1

    invoke-static {v11, v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lio/grpc/netty/NettyServerHandler;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception in onHeadersRead()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v9, v10, v0}, Lio/grpc/netty/NettyServerHandler;->newStreamException(ILjava/lang/Throwable;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private onRstStreamRead(IJ)V
    .locals 5

    const-string v0, "NettyServerHandler.onRstStreamRead"

    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/grpc/netty/NettyServerHandler;->serverStream(Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v0, v2}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RST_STREAM received for code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/grpc/internal/AbstractServerStream$TransportState;->transportReportStatus(Lio/grpc/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object p2

    invoke-static {v0, p2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {v1}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object p3

    invoke-static {v0, p3}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p2

    sget-object p3, Lio/grpc/netty/NettyServerHandler;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Exception in onRstStreamRead()"

    invoke-virtual {p3, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/NettyServerHandler;->newStreamException(ILjava/lang/Throwable;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method private requireHttp2Stream(I)Lio/netty/handler/codec/http2/Http2Stream;
    .locals 3

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private respondWithHttpError(Lio/netty/channel/ChannelHandlerContext;IILio/grpc/Status$Code;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    sget-object v1, Lio/grpc/InternalStatus;->CODE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p4}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    sget-object p4, Lio/grpc/InternalStatus;->MESSAGE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, p4, p5}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/grpc/InternalMetadata;->serialize(Lio/grpc/Metadata;)[[B

    move-result-object p4

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    array-length v1, p4

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>(ZI)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p3

    sget-object v0, Lio/grpc/netty/Utils;->CONTENT_TYPE_HEADER:Lio/netty/util/AsciiString;

    const-string v1, "text/plain; charset=utf-8"

    invoke-interface {p3, v0, v1}, Lio/netty/handler/codec/Headers;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lio/netty/handler/codec/http2/Http2Headers;

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    new-instance v1, Lio/netty/util/AsciiString;

    aget-object v2, p4, v0

    invoke-direct {v1, v2, p3}, Lio/netty/util/AsciiString;-><init>([BZ)V

    new-instance v2, Lio/netty/util/AsciiString;

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p4, v4

    invoke-direct {v2, v4, p3}, Lio/netty/util/AsciiString;-><init>([BZ)V

    invoke-interface {v3, v1, v2}, Lio/netty/handler/codec/Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p3

    invoke-static {p3, p5}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2DataWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private sendGrpcFrame(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/SendGrpcFrameCommand;Lio/netty/channel/ChannelPromise;)V
    .locals 9

    invoke-virtual {p2}, Lio/grpc/netty/SendGrpcFrameCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/StreamIdHolder;->tag()Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "NettyServerHandler.sendGrpcFrame"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    invoke-virtual {p2}, Lio/grpc/netty/SendGrpcFrameCommand;->getLink()Lio/perfmark/Link;

    move-result-object v0

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    :try_start_0
    invoke-virtual {p2}, Lio/grpc/netty/SendGrpcFrameCommand;->endStream()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/grpc/netty/SendGrpcFrameCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/StreamIdHolder;->id()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lio/grpc/netty/NettyServerHandler;->closeStreamWhenDone(Lio/netty/channel/ChannelPromise;I)V

    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v2

    invoke-virtual {p2}, Lio/grpc/netty/SendGrpcFrameCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/StreamIdHolder;->id()I

    move-result v4

    invoke-virtual {p2}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Lio/grpc/netty/SendGrpcFrameCommand;->endStream()Z

    move-result v7

    move-object v3, p1

    move-object v8, p3

    invoke-interface/range {v2 .. v8}, Lio/netty/handler/codec/http2/Http2DataWriter;->writeData(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lio/grpc/netty/SendGrpcFrameCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/StreamIdHolder;->tag()Lio/perfmark/Tag;

    move-result-object p1

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lio/grpc/netty/SendGrpcFrameCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/StreamIdHolder;->tag()Lio/perfmark/Tag;

    move-result-object p2

    invoke-static {v1, p2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method private sendResponseHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/SendResponseHeadersCommand;Lio/netty/channel/ChannelPromise;)V
    .locals 9

    invoke-virtual {p2}, Lio/grpc/netty/SendResponseHeadersCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/StreamIdHolder;->tag()Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "NettyServerHandler.sendResponseHeaders"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    invoke-virtual {p2}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;->getLink()Lio/perfmark/Link;

    move-result-object v0

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    :try_start_0
    invoke-virtual {p2}, Lio/grpc/netty/SendResponseHeadersCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/StreamIdHolder;->id()I

    move-result v4

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0, v4}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->resetStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lio/grpc/netty/SendResponseHeadersCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/StreamIdHolder;->tag()Lio/perfmark/Tag;

    move-result-object p1

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lio/grpc/netty/SendResponseHeadersCommand;->endOfStream()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, v4}, Lio/grpc/netty/NettyServerHandler;->closeStreamWhenDone(Lio/netty/channel/ChannelPromise;I)V

    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v2

    invoke-virtual {p2}, Lio/grpc/netty/SendResponseHeadersCommand;->headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Lio/grpc/netty/SendResponseHeadersCommand;->endOfStream()Z

    move-result v7

    move-object v3, p1

    move-object v8, p3

    invoke-interface/range {v2 .. v8}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeHeaders(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lio/grpc/netty/SendResponseHeadersCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/StreamIdHolder;->tag()Lio/perfmark/Tag;

    move-result-object p1

    invoke-static {v1, p1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lio/grpc/netty/SendResponseHeadersCommand;->stream()Lio/grpc/netty/StreamIdHolder;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/StreamIdHolder;->tag()Lio/perfmark/Tag;

    move-result-object p2

    invoke-static {v1, p2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method private serverStream(Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyServerStream$TransportState;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->streamKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/NettyServerStream$TransportState;

    :goto_0
    return-object p1
.end method

.method private static toJavaLogLevel(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;
    .locals 1

    sget-object v0, Lio/grpc/netty/NettyServerHandler$7;->$SwitchMap$io$grpc$ChannelLogger$ChannelLogLevel:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportTermination()V

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportTermination()V

    :cond_1
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->maxConnectionAgeMonitor:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v1, "connection terminated for unknown reason"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/NettyServerHandler$4;

    invoke-direct {v2, p0, v0}, Lio/grpc/netty/NettyServerHandler$4;-><init>(Lio/grpc/netty/NettyServerHandler;Lio/grpc/Status;)V

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http2/Http2Connection;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    throw v0
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    new-instance v0, Lio/grpc/netty/GracefulServerCloseCommand;

    const-string v1, "app_requested"

    invoke-direct {v0, v1}, Lio/grpc/netty/GracefulServerCloseCommand;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lio/grpc/netty/NettyServerHandler;->gracefulClose(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/GracefulServerCloseCommand;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public connectionError()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->connectionError:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getEagAttributes()Lio/grpc/Attributes;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->eagAttributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getKeepAliveManagerForTest()Lio/grpc/internal/KeepAliveManager;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    return-object v0
.end method

.method public getSecurityInfo()Lio/grpc/InternalChannelz$Security;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->securityInfo:Lio/grpc/InternalChannelz$Security;

    return-object v0
.end method

.method public getWriteQueue()Lio/grpc/netty/WriteQueue;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->serverWriteQueue:Lio/grpc/netty/WriteQueue;

    return-object v0
.end method

.method public handleProtocolNegotiationCompleted(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler;->negotiationAttributes:Lio/grpc/Attributes;

    iput-object p2, p0, Lio/grpc/netty/NettyServerHandler;->securityInfo:Lio/grpc/InternalChannelz$Security;

    invoke-super {p0, p1, p2}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;->handleProtocolNegotiationCompleted(Lio/grpc/Attributes;Lio/grpc/InternalChannelz$Security;)V

    invoke-virtual {p0}, Lio/grpc/netty/AbstractNettyHandler;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->writeBufferingAndRemove(Lio/netty/channel/Channel;)V

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 9

    new-instance v0, Lio/grpc/netty/WriteQueue;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/WriteQueue;-><init>(Lio/netty/channel/Channel;)V

    iput-object v0, p0, Lio/grpc/netty/NettyServerHandler;->serverWriteQueue:Lio/grpc/netty/WriteQueue;

    iget-wide v0, p0, Lio/grpc/netty/NettyServerHandler;->maxConnectionAgeInNanos:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v4, Lio/grpc/netty/NettyServerHandler$2;

    invoke-direct {v4, p0, p1}, Lio/grpc/netty/NettyServerHandler$2;-><init>(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-direct {v1, v4}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    iget-wide v4, p0, Lio/grpc/netty/NettyServerHandler;->maxConnectionAgeInNanos:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v6}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/NettyServerHandler;->maxConnectionAgeMonitor:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->maxConnectionIdleManager:Lio/grpc/internal/MaxConnectionIdleManager;

    if-eqz v0, :cond_1

    new-instance v1, Lio/grpc/netty/NettyServerHandler$3;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/NettyServerHandler$3;-><init>(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/grpc/internal/MaxConnectionIdleManager;->start(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)V

    :cond_1
    iget-wide v0, p0, Lio/grpc/netty/NettyServerHandler;->keepAliveTimeInNanos:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Lio/grpc/internal/KeepAliveManager;

    new-instance v2, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;

    invoke-direct {v2, p0, p1}, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;-><init>(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    iget-wide v4, p0, Lio/grpc/netty/NettyServerHandler;->keepAliveTimeInNanos:J

    iget-wide v6, p0, Lio/grpc/netty/NettyServerHandler;->keepAliveTimeoutInNanos:J

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/KeepAliveManager;-><init>(Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object v0, p0, Lio/grpc/netty/NettyServerHandler;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportStarted()V

    :cond_2
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler;->transportTracer:Lio/grpc/internal/TransportTracer;

    new-instance v1, Lio/grpc/netty/Utils$FlowControlReader;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/netty/Utils$FlowControlReader;-><init>(Lio/netty/handler/codec/http2/Http2Connection;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/TransportTracer;->setFlowControlWindowReader(Lio/grpc/internal/TransportTracer$FlowControlReader;)V

    invoke-super {p0, p1}, Lio/grpc/netty/AbstractNettyHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V
    .locals 3

    sget-object v0, Lio/grpc/netty/NettyServerHandler;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Connection Error"

    invoke-virtual {v0, v1, v2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lio/grpc/netty/NettyServerHandler;->connectionError:Ljava/lang/Throwable;

    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onConnectionError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception;)V

    return-void
.end method

.method public onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 4

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-static {p4}, Lio/netty/handler/codec/http2/Http2Exception;->streamId(Lio/netty/handler/codec/http2/Http2Exception;)I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Connection;->stream(I)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/netty/NettyServerHandler;->serverStream(Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lio/netty/handler/codec/http2/Http2Exception;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    if-ne v2, v3, :cond_0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    :cond_0
    sget-object v2, Lio/grpc/netty/NettyServerHandler;->logger:Ljava/util/logging/Logger;

    const-string v3, "Stream Error"

    invoke-virtual {v2, v1, v3, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lio/perfmark/PerfMark;->createTag()Lio/perfmark/Tag;

    move-result-object v1

    :goto_0
    const-string v2, "NettyServerHandler.onStreamError"

    invoke-static {v2, v1}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p3}, Lio/grpc/netty/Utils;->statusFromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/grpc/internal/AbstractServerStream$TransportState;->transportReportStatus(Lio/grpc/Status;)V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onStreamError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2, v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method

.method public returnProcessedBytes(Lio/netty/handler/codec/http2/Http2Stream;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setKeepAliveManagerForTest(Lio/grpc/internal/KeepAliveManager;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    instance-of v0, p2, Lio/grpc/netty/SendGrpcFrameCommand;

    if-eqz v0, :cond_0

    check-cast p2, Lio/grpc/netty/SendGrpcFrameCommand;

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerHandler;->sendGrpcFrame(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/SendGrpcFrameCommand;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lio/grpc/netty/SendResponseHeadersCommand;

    if-eqz v0, :cond_1

    check-cast p2, Lio/grpc/netty/SendResponseHeadersCommand;

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerHandler;->sendResponseHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/SendResponseHeadersCommand;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lio/grpc/netty/CancelServerStreamCommand;

    if-eqz v0, :cond_2

    check-cast p2, Lio/grpc/netty/CancelServerStreamCommand;

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerHandler;->cancelStream(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/CancelServerStreamCommand;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lio/grpc/netty/GracefulServerCloseCommand;

    if-eqz v0, :cond_3

    check-cast p2, Lio/grpc/netty/GracefulServerCloseCommand;

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerHandler;->gracefulClose(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/GracefulServerCloseCommand;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lio/grpc/netty/ForcefulCloseCommand;

    if-eqz v0, :cond_4

    check-cast p2, Lio/grpc/netty/ForcefulCloseCommand;

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerHandler;->forcefulClose(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write called for unexpected type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    throw p1
.end method
