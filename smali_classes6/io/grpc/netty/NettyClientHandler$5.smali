.class Lio/grpc/netty/NettyClientHandler$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyClientHandler;->sendPingFrameTraced(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/SendPingCommand;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientHandler;

.field public final synthetic val$finalPing:Lio/grpc/internal/Http2Ping;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientHandler;Lio/grpc/internal/Http2Ping;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientHandler$5;->this$0:Lio/grpc/netty/NettyClientHandler;

    iput-object p2, p0, Lio/grpc/netty/NettyClientHandler$5;->val$finalPing:Lio/grpc/internal/Http2Ping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$5;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$900(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/TransportTracer;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/TransportTracer;->reportKeepAliveSent()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$5;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {v0}, Lio/grpc/netty/NettyClientHandler;->access$000(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/netty/ClientTransportLifecycleManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/ClientTransportLifecycleManager;->getShutdownThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    const-string v1, "Ping failed but for unknown reason."

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    :cond_1
    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$5;->val$finalPing:Lio/grpc/internal/Http2Ping;

    invoke-virtual {p1, v0}, Lio/grpc/internal/Http2Ping;->failed(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$5;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {p1}, Lio/grpc/netty/NettyClientHandler;->access$1000(Lio/grpc/netty/NettyClientHandler;)Lio/grpc/internal/Http2Ping;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$5;->val$finalPing:Lio/grpc/internal/Http2Ping;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lio/grpc/netty/NettyClientHandler$5;->this$0:Lio/grpc/netty/NettyClientHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/grpc/netty/NettyClientHandler;->access$1002(Lio/grpc/netty/NettyClientHandler;Lio/grpc/internal/Http2Ping;)Lio/grpc/internal/Http2Ping;

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/grpc/netty/NettyClientHandler$5;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
