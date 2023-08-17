.class Lio/grpc/netty/NettyClientHandler$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2StreamVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/NettyClientHandler;->forcefulClose(Lio/netty/channel/ChannelHandlerContext;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyClientHandler;

.field public final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field public final synthetic val$msg:Lio/grpc/netty/ForcefulCloseCommand;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientHandler;Lio/grpc/netty/ForcefulCloseCommand;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyClientHandler$6;->this$0:Lio/grpc/netty/NettyClientHandler;

    iput-object p2, p0, Lio/grpc/netty/NettyClientHandler$6;->val$msg:Lio/grpc/netty/ForcefulCloseCommand;

    iput-object p3, p0, Lio/grpc/netty/NettyClientHandler$6;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 12

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$6;->this$0:Lio/grpc/netty/NettyClientHandler;

    invoke-static {v0, p1}, Lio/grpc/netty/NettyClientHandler;->access$600(Lio/grpc/netty/NettyClientHandler;Lio/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/NettyClientStream$TransportState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/netty/NettyClientStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/perfmark/PerfMark;->createTag()Lio/perfmark/Tag;

    move-result-object v1

    :goto_0
    const-string v2, "NettyClientHandler.forcefulClose"

    invoke-static {v2, v1}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    iget-object v3, p0, Lio/grpc/netty/NettyClientHandler$6;->val$msg:Lio/grpc/netty/ForcefulCloseCommand;

    invoke-virtual {v3}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;->getLink()Lio/perfmark/Link;

    move-result-object v3

    invoke-static {v3}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v4, p0, Lio/grpc/netty/NettyClientHandler$6;->val$msg:Lio/grpc/netty/ForcefulCloseCommand;

    invoke-virtual {v4}, Lio/grpc/netty/ForcefulCloseCommand;->getStatus()Lio/grpc/Status;

    move-result-object v4

    new-instance v5, Lio/grpc/Metadata;

    invoke-direct {v5}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v4, v3, v5}, Lio/grpc/internal/AbstractClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    iget-object v6, p0, Lio/grpc/netty/NettyClientHandler$6;->this$0:Lio/grpc/netty/NettyClientHandler;

    iget-object v7, p0, Lio/grpc/netty/NettyClientHandler$6;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v8

    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v9

    iget-object v0, p0, Lio/grpc/netty/NettyClientHandler$6;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->resetStream(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :cond_1
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->close()Lio/netty/handler/codec/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return v3

    :catchall_0
    move-exception p1

    invoke-static {v2, v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw p1
.end method
