.class Lio/grpc/netty/NettyServerHandler$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyServerHandler;->forcefulClose(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServerHandler;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field public final synthetic val$msg:Lio/grpc/netty/ForcefulCloseCommand;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerHandler;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler$6;->this$0:Lio/grpc/netty/NettyServerHandler;

    iput-object p2, p0, Lio/grpc/netty/NettyServerHandler$6;->val$msg:Lio/grpc/netty/ForcefulCloseCommand;

    iput-object p3, p0, Lio/grpc/netty/NettyServerHandler$6;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 9

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$6;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-static {v0, p1}, Lio/grpc/netty/NettyServerHandler;->access$400(Lio/grpc/netty/NettyServerHandler;Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v1

    const-string v2, "NettyServerHandler.forcefulClose"

    invoke-static {v2, v1}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$6;->val$msg:Lio/grpc/netty/ForcefulCloseCommand;

    invoke-virtual {v1}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;->getLink()Lio/perfmark/Link;

    move-result-object v1

    invoke-static {v1}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$6;->val$msg:Lio/grpc/netty/ForcefulCloseCommand;

    invoke-virtual {v1}, Lio/grpc/netty/ForcefulCloseCommand;->getStatus()Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/AbstractServerStream$TransportState;->transportReportStatus(Lio/grpc/Status;)V

    iget-object v3, p0, Lio/grpc/netty/NettyServerHandler$6;->this$0:Lio/grpc/netty/NettyServerHandler;

    iget-object v4, p0, Lio/grpc/netty/NettyServerHandler$6;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v5

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v6

    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$6;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->resetStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v2, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lio/grpc/netty/NettyServerStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v2, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->close()Lio/netty/handler/codec/http2/Http2Stream;

    const/4 p1, 0x1

    return p1
.end method
