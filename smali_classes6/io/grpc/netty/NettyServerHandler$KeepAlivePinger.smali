.class final Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/KeepAliveManager$KeepAlivePinger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyServerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeepAlivePinger"
.end annotation


# instance fields
.field public final ctx:Lio/netty/channel/ChannelHandlerContext;

.field public final synthetic this$0:Lio/grpc/netty/NettyServerHandler;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public onPingTimeout()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->this$0:Lio/grpc/netty/NettyServerHandler;

    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v2, Lio/grpc/netty/ForcefulCloseCommand;

    sget-object v3, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v4, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/grpc/netty/ForcefulCloseCommand;-><init>(Lio/grpc/Status;)V

    iget-object v3, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/grpc/netty/NettyServerHandler;->access$1300(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->this$0:Lio/grpc/netty/NettyServerHandler;

    iget-object v2, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v1, v2, v0}, Lio/grpc/netty/AbstractNettyHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lio/grpc/netty/NettyServerHandler;->access$1400()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception while propagating exception"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lio/grpc/netty/NettyServerHandler;->access$1400()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Original failure"

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public ping()V
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    const/4 v3, 0x0

    const-wide/32 v4, 0xdead

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    new-instance v1, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger$1;

    invoke-direct {v1, p0}, Lio/grpc/netty/NettyServerHandler$KeepAlivePinger$1;-><init>(Lio/grpc/netty/NettyServerHandler$KeepAlivePinger;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
