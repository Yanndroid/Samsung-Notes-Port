.class Lio/grpc/netty/NettyServerHandler$FrameListener;
.super Lio/netty/handler/codec/http2/Http2FrameAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyServerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameListener"
.end annotation


# instance fields
.field private firstSettings:Z

.field public final synthetic this$0:Lio/grpc/netty/NettyServerHandler;


# direct methods
.method private constructor <init>(Lio/grpc/netty/NettyServerHandler;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2FrameAdapter;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->firstSettings:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/NettyServerHandler;Lio/grpc/netty/NettyServerHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyServerHandler$FrameListener;-><init>(Lio/grpc/netty/NettyServerHandler;)V

    return-void
.end method


# virtual methods
.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    :cond_0
    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p1, p2, p3, p4, p5}, Lio/grpc/netty/NettyServerHandler;->access$900(Lio/grpc/netty/NettyServerHandler;ILio/netty/buffer/ByteBuf;IZ)V

    return p4
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 0

    iget-object p4, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p4}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p4}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p4

    invoke-virtual {p4}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    :cond_0
    iget-object p4, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p4, p1, p2, p3}, Lio/grpc/netty/NettyServerHandler;->access$1000(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;)V

    if-eqz p8, :cond_1

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    sget-object p3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4, p8}, Lio/grpc/netty/NettyServerHandler;->access$900(Lio/grpc/netty/NettyServerHandler;ILio/netty/buffer/ByteBuf;IZ)V

    :cond_1
    return-void
.end method

.method public onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {v0}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {v0}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v0}, Lio/grpc/netty/AbstractNettyHandler;->flowControlPing()Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->payload()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {p1}, Lio/grpc/netty/AbstractNettyHandler;->flowControlPing()Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->updateWindow()V

    invoke-static {}, Lio/grpc/netty/NettyServerHandler;->access$1400()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object p3, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object p3

    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object p3

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-interface {p3, v0}, Lio/netty/handler/codec/http2/Http2LocalFlowController;->initialWindowSize(Lio/netty/handler/codec/http2/Http2Stream;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "Window: {0}"

    invoke-virtual {p1, p2, v0, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-wide v0, 0x97acef001L

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p2}, Lio/grpc/netty/NettyServerHandler;->access$200(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lio/grpc/netty/NettyServerHandler;->access$1400()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Received GRACEFUL_SHUTDOWN_PING Ack but gracefulShutdown is null"

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p2}, Lio/grpc/netty/NettyServerHandler;->access$200(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/netty/NettyServerHandler$GracefulShutdown;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->secondGoAwayAndClose(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_1

    :cond_3
    const-wide/32 v0, 0xdead

    cmp-long p1, p2, v0

    if-eqz p1, :cond_4

    invoke-static {}, Lio/grpc/netty/NettyServerHandler;->access$1400()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Received unexpected ping ack. No ping outstanding"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 7

    iget-object p2, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p2}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p2}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    :cond_0
    iget-object p2, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p2}, Lio/grpc/netty/NettyServerHandler;->access$1200(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/internal/KeepAliveEnforcer;->pingAcceptable()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p2

    const-string p3, "too_many_pings"

    invoke-static {p2, p3}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamCreated()I

    move-result v2

    sget-object p2, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v3

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    sget-object p2, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const-string p3, "Too many pings from client"

    invoke-virtual {p2, p3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    :try_start_0
    iget-object p3, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    new-instance v0, Lio/grpc/netty/ForcefulCloseCommand;

    invoke-direct {v0, p2}, Lio/grpc/netty/ForcefulCloseCommand;-><init>(Lio/grpc/Status;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p2

    invoke-static {p3, p1, v0, p2}, Lio/grpc/netty/NettyServerHandler;->access$1300(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object p3, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0, p2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyServerHandler;->access$800(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    :cond_0
    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p1, p2, p3, p4}, Lio/grpc/netty/NettyServerHandler;->access$1100(Lio/grpc/netty/NettyServerHandler;IJ)V

    return-void
.end method

.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 1

    iget-boolean p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->firstSettings:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->firstSettings:Z

    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyServerHandler;->access$700(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/internal/ServerTransportListener;

    move-result-object p2

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$FrameListener;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {v0}, Lio/grpc/netty/NettyServerHandler;->access$600(Lio/grpc/netty/NettyServerHandler;)Lio/grpc/Attributes;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/grpc/internal/ServerTransportListener;->transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;

    move-result-object p2

    invoke-static {p1, p2}, Lio/grpc/netty/NettyServerHandler;->access$502(Lio/grpc/netty/NettyServerHandler;Lio/grpc/Attributes;)Lio/grpc/Attributes;

    :cond_0
    return-void
.end method
