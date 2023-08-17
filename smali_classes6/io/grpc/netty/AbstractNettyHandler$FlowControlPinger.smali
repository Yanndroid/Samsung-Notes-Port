.class final Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/AbstractNettyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlowControlPinger"
.end annotation


# static fields
.field private static final MAX_WINDOW_SIZE:I = 0x800000


# instance fields
.field private dataSizeSincePing:I

.field private lastBandwidth:F

.field private lastPingTime:J

.field private pingCount:I

.field private final pingLimiter:Lio/grpc/netty/AbstractNettyHandler$PingLimiter;

.field private pingReturn:I

.field private pinging:Z

.field public final synthetic this$0:Lio/grpc/netty/AbstractNettyHandler;


# direct methods
.method public constructor <init>(Lio/grpc/netty/AbstractNettyHandler;Lio/grpc/netty/AbstractNettyHandler$PingLimiter;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "pingLimiter"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pingLimiter:Lio/grpc/netty/AbstractNettyHandler$PingLimiter;

    return-void
.end method

.method private incrementDataSincePing(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->getDataSincePing()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->setDataSizeSincePing(I)V

    return-void
.end method

.method private isPinging()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pinging:Z

    return v0
.end method

.method private sendPing(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->setDataSizeSincePing(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->lastPingTime:J

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    const/4 v3, 0x0

    const-wide/16 v4, 0x4d2

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    iget p1, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pingCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pingCount:I

    return-void
.end method

.method private setDataSizeSincePing(I)V
    .locals 0

    iput p1, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->dataSizeSincePing:I

    return-void
.end method

.method private setPinging(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pinging:Z

    return-void
.end method


# virtual methods
.method public getDataSincePing()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->dataSizeSincePing:I

    return v0
.end method

.method public getPingCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pingCount:I

    return v0
.end method

.method public getPingReturn()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pingReturn:I

    return v0
.end method

.method public maxWindow()I
    .locals 1

    const/high16 v0, 0x800000

    return v0
.end method

.method public onDataRead(II)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-static {v0}, Lio/grpc/netty/AbstractNettyHandler;->access$100(Lio/grpc/netty/AbstractNettyHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->isPinging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pingLimiter:Lio/grpc/netty/AbstractNettyHandler$PingLimiter;

    invoke-interface {v0}, Lio/grpc/netty/AbstractNettyHandler$PingLimiter;->isPingAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->setPinging(Z)V

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-virtual {v0}, Lio/grpc/netty/AbstractNettyHandler;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->sendPing(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_1
    add-int/2addr p1, p2

    invoke-direct {p0, p1}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->incrementDataSincePing(I)V

    return-void
.end method

.method public payload()J
    .locals 2

    const-wide/16 v0, 0x4d2

    return-wide v0
.end method

.method public setDataSizeAndSincePing(I)V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->setDataSizeSincePing(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->lastPingTime:J

    return-void
.end method

.method public updateWindow()V
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-static {v0}, Lio/grpc/netty/AbstractNettyHandler;->access$100(Lio/grpc/netty/AbstractNettyHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pingReturn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->pingReturn:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->lastPingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    move-wide v0, v3

    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->getDataSincePing()I

    move-result v2

    int-to-long v5, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    mul-long/2addr v5, v2

    div-long/2addr v5, v0

    iget-object v0, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->getDataSincePing()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->setPinging(Z)V

    iget-object v2, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->initialWindowSize(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result v2

    if-le v1, v2, :cond_2

    long-to-float v3, v5

    iget v4, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->lastBandwidth:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    iput v3, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->lastBandwidth:F

    sub-int v2, v1, v2

    iget-object v3, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lio/netty/handler/codec/http2/Http2FlowController;->incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2FlowController;->initialWindowSize(I)V

    new-instance v0, Lio/netty/handler/codec/http2/Http2Settings;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2Settings;-><init>()V

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/Http2Settings;->initialWindowSize(I)Lio/netty/handler/codec/http2/Http2Settings;

    iget-object v1, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-static {v1}, Lio/grpc/netty/AbstractNettyHandler;->access$200(Lio/grpc/netty/AbstractNettyHandler;)Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-virtual {v2}, Lio/grpc/netty/AbstractNettyHandler;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->this$0:Lio/grpc/netty/AbstractNettyHandler;

    invoke-virtual {v3}, Lio/grpc/netty/AbstractNettyHandler;->ctx()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :cond_2
    return-void
.end method
