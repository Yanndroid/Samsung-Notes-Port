.class abstract Lio/grpc/netty/AbstractNettyHandler;
.super Lio/grpc/netty/GrpcHttp2ConnectionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/AbstractNettyHandler$AllowPingLimiter;,
        Lio/grpc/netty/AbstractNettyHandler$PingLimiter;,
        Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;
    }
.end annotation


# static fields
.field private static final BDP_MEASUREMENT_PING:J = 0x4d2L

.field private static final GRACEFUL_SHUTDOWN_NO_TIMEOUT:J = -0x1L


# instance fields
.field private autoTuneFlowControlOn:Z

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final flowControlPing:Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;

.field private final initialConnectionWindow:I

.field private initialWindowSent:Z


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Lio/grpc/ChannelLogger;ZLio/grpc/netty/AbstractNettyHandler$PingLimiter;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lio/grpc/netty/GrpcHttp2ConnectionHandler;-><init>(Lio/netty/channel/ChannelPromise;Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Lio/grpc/ChannelLogger;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/netty/AbstractNettyHandler;->initialWindowSent:Z

    const-wide/16 p1, -0x1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->gracefulShutdownTimeoutMillis(J)V

    invoke-virtual {p4}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lio/grpc/netty/AbstractNettyHandler;->initialConnectionWindow:I

    iput-boolean p6, p0, Lio/grpc/netty/AbstractNettyHandler;->autoTuneFlowControlOn:Z

    if-nez p7, :cond_1

    new-instance p7, Lio/grpc/netty/AbstractNettyHandler$AllowPingLimiter;

    const/4 p1, 0x0

    invoke-direct {p7, p1}, Lio/grpc/netty/AbstractNettyHandler$AllowPingLimiter;-><init>(Lio/grpc/netty/AbstractNettyHandler$1;)V

    :cond_1
    new-instance p1, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;

    invoke-direct {p1, p0, p7}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;-><init>(Lio/grpc/netty/AbstractNettyHandler;Lio/grpc/netty/AbstractNettyHandler$PingLimiter;)V

    iput-object p1, p0, Lio/grpc/netty/AbstractNettyHandler;->flowControlPing:Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/netty/AbstractNettyHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/AbstractNettyHandler;->autoTuneFlowControlOn:Z

    return p0
.end method

.method public static synthetic access$200(Lio/grpc/netty/AbstractNettyHandler;)Lio/netty/handler/codec/http2/Http2FrameWriter;
    .locals 0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object p0

    return-object p0
.end method

.method private sendInitialConnectionWindow()V
    .locals 3

    iget-boolean v0, p0, Lio/grpc/netty/AbstractNettyHandler;->initialWindowSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->flowController()Lio/netty/handler/codec/http2/Http2FlowController;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2LocalFlowController;

    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2FlowController;->windowSize(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v1

    iget v2, p0, Lio/grpc/netty/AbstractNettyHandler;->initialConnectionWindow:I

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lio/netty/handler/codec/http2/Http2FlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/netty/AbstractNettyHandler;->initialWindowSent:Z

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-direct {p0}, Lio/grpc/netty/AbstractNettyHandler;->sendInitialConnectionWindow()V

    return-void
.end method

.method public final ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public final exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lio/netty/handler/codec/http2/Http2CodecUtil;->getEmbeddedHttp2Exception(Ljava/lang/Throwable;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public flowControlPing()Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler;->flowControlPing:Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;

    return-object v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/AbstractNettyHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-direct {p0}, Lio/grpc/netty/AbstractNettyHandler;->sendInitialConnectionWindow()V

    return-void
.end method

.method public setAutoTuneFlowControl(Z)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lio/grpc/netty/AbstractNettyHandler;->autoTuneFlowControlOn:Z

    return-void
.end method
