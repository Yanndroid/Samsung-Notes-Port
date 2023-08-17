.class Lio/grpc/netty/NettyClientHandler$2;
.super Lio/netty/handler/codec/http2/Http2ConnectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyClientHandler;-><init>(Lio/netty/handler/codec/http2/Http2ConnectionDecoder;Lio/netty/handler/codec/http2/Http2ConnectionEncoder;Lio/netty/handler/codec/http2/Http2Settings;Lio/grpc/ChannelLogger;Lio/grpc/netty/ClientTransportLifecycleManager;Lio/grpc/internal/KeepAliveManager;Lcom/google/common/base/Supplier;Ljava/lang/Runnable;Lio/grpc/internal/TransportTracer;Lio/grpc/Attributes;Ljava/lang/String;ZLio/grpc/netty/AbstractNettyHandler$PingLimiter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientHandler;

.field public final synthetic val$tooManyPingsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientHandler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientHandler$2;->this$0:Lio/grpc/netty/NettyClientHandler;

    iput-object p2, p0, Lio/grpc/netty/NettyClientHandler$2;->val$tooManyPingsRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2ConnectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGoAwayReceived(IJLio/netty/buffer/ByteBuf;)V
    .locals 2

    invoke-static {p4}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;)[B

    move-result-object p1

    iget-object p4, p0, Lio/grpc/netty/NettyClientHandler$2;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p4, p2, p3, p1}, Lio/grpc/netty/NettyClientHandler;->access$200(Lio/grpc/netty/NettyClientHandler;J[B)V

    sget-object p4, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p4}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/String;

    sget-object p3, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {}, Lio/grpc/netty/NettyClientHandler;->access$300()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: {0}"

    invoke-virtual {p1, p3, p4, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "too_many_pings"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$2;->val$tooManyPingsRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onStreamActive(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$2;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->numActiveStreams()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$2;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$400(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$2;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$400(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/KeepAliveManager;->onTransportActive()V

    :cond_0
    return-void
.end method

.method public onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$2;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {v0}, Lio/grpc/netty/NettyClientHandler;->access$500(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/InUseStateAggregator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$2;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->numActiveStreams()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$2;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$400(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$2;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$400(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/KeepAliveManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/KeepAliveManager;->onTransportIdle()V

    :cond_0
    return-void
.end method
