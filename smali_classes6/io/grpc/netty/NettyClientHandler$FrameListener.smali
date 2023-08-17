.class Lio/grpc/netty/NettyClientHandler$FrameListener;
.super Lio/netty/handler/codec/http2/Http2FrameAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyClientHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameListener"
.end annotation


# instance fields
.field private firstSettings:Z

.field public final synthetic this$0:Lio/grpc/netty/NettyClientHandler;


# direct methods
.method private constructor <init>(Lio/grpc/netty/NettyClientHandler;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2FrameAdapter;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->firstSettings:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/NettyClientHandler;Lio/grpc/netty/NettyClientHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyClientHandler$FrameListener;-><init>(Lio/grpc/netty/NettyClientHandler;)V

    return-void
.end method


# virtual methods
.method public onDataRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)I
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1, p2, p3, p4, p5}, Lio/grpc/netty/NettyClientHandler;->access$1100(Lio/grpc/netty/NettyClientHandler;ILio/netty/buffer/ByteBuf;IZ)V

    return p4
.end method

.method public onHeadersRead(Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1, p2, p3, p8}, Lio/grpc/netty/NettyClientHandler;->access$1200(Lio/grpc/netty/NettyClientHandler;ILio/netty/handler/codec/http2/Http2Headers;Z)V

    return-void
.end method

.method public onPingAckRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 6

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$1000(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/Http2Ping;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {v0}, Lio/grpc/netty/AbstractNettyHandler;->flowControlPing()Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->payload()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {p1}, Lio/grpc/netty/AbstractNettyHandler;->flowControlPing()Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/AbstractNettyHandler$FlowControlPinger;->updateWindow()V

    invoke-static {}, Lio/grpc/netty/NettyClientHandler;->access$300()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object p3, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {p3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->decoder()Lio/netty/handler/codec/http2/Http2ConnectionDecoder;

    move-result-object p3

    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2ConnectionDecoder;->flowController()Lio/netty/handler/codec/http2/Http2LocalFlowController;

    move-result-object p3

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

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

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lio/grpc/internal/Http2Ping;->payload()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/grpc/internal/Http2Ping;->complete()Z

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/grpc/netty/NettyClientHandler;->access$1002(Lio/grpc/netty/NettyClientHandler;Lio/grpc/internal/Http2Ping;)Lio/grpc/internal/Http2Ping;

    goto :goto_0

    :cond_1
    invoke-static {}, Lio/grpc/netty/NettyClientHandler;->access$300()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/grpc/internal/Http2Ping;->payload()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Received unexpected ping ack. Expecting {0}, got {1}"

    invoke-virtual {v0, v1, p1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lio/grpc/netty/NettyClientHandler;->access$300()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Received unexpected ping ack. No ping outstanding"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$400(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$400(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    :cond_3
    return-void
.end method

.method public onPingRead(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$400(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$400(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    :cond_0
    return-void
.end method

.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1, p2, p3, p4}, Lio/grpc/netty/NettyClientHandler;->access$1300(Lio/grpc/netty/NettyClientHandler;IJ)V

    return-void
.end method

.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 0

    iget-boolean p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->firstSettings:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->firstSettings:Z

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$FrameListener;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$000(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/netty/ClientTransportLifecycleManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/ClientTransportLifecycleManager;->notifyReady()V

    :cond_0
    return-void
.end method
