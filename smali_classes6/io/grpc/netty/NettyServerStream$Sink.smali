.class Lio/grpc/netty/NettyServerStream$Sink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/AbstractServerStream$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyServerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sink"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/NettyServerStream;


# direct methods
.method private constructor <init>(Lio/grpc/netty/NettyServerStream;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/NettyServerStream;Lio/grpc/netty/NettyServerStream$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/NettyServerStream$Sink;-><init>(Lio/grpc/netty/NettyServerStream;)V

    return-void
.end method

.method private writeFrameInternal(Lio/grpc/internal/WritableBuffer;ZI)V
    .locals 5

    const/4 v0, 0x0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    check-cast p1, Lio/grpc/netty/NettyWritableBuffer;

    invoke-virtual {p1}, Lio/grpc/netty/NettyWritableBuffer;->bytebuf()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    iget-object v2, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-static {v2, v1}, Lio/grpc/netty/NettyServerStream;->access$300(Lio/grpc/netty/NettyServerStream;I)V

    iget-object v2, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-static {v2}, Lio/grpc/netty/NettyServerStream;->access$200(Lio/grpc/netty/NettyServerStream;)Lio/grpc/netty/WriteQueue;

    move-result-object v2

    new-instance v3, Lio/grpc/netty/SendGrpcFrameCommand;

    iget-object v4, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-virtual {v4}, Lio/grpc/netty/NettyServerStream;->transportState()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v4

    invoke-direct {v3, v4, p1, v0}, Lio/grpc/netty/SendGrpcFrameCommand;-><init>(Lio/grpc/netty/StreamIdHolder;Lio/netty/buffer/ByteBuf;Z)V

    invoke-virtual {v2, v3, p2}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance p2, Lio/grpc/netty/NettyServerStream$Sink$1;

    invoke-direct {p2, p0, v1, p3}, Lio/grpc/netty/NettyServerStream$Sink$1;-><init>(Lio/grpc/netty/NettyServerStream$Sink;II)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 4

    const-string v0, "NettyServerStream$Sink.cancel"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-static {v1}, Lio/grpc/netty/NettyServerStream;->access$200(Lio/grpc/netty/NettyServerStream;)Lio/grpc/netty/WriteQueue;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/CancelServerStreamCommand;

    iget-object v3, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-virtual {v3}, Lio/grpc/netty/NettyServerStream;->transportState()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lio/grpc/netty/CancelServerStreamCommand;-><init>(Lio/grpc/netty/NettyServerStream$TransportState;Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFrame(Lio/grpc/internal/WritableBuffer;ZI)V
    .locals 1

    const-string v0, "NettyServerStream$Sink.writeFrame"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/NettyServerStream$Sink;->writeFrameInternal(Lio/grpc/internal/WritableBuffer;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw p1
.end method

.method public writeHeaders(Lio/grpc/Metadata;)V
    .locals 3

    const-string v0, "NettyServerStream$Sink.writeHeaders"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-static {v1}, Lio/grpc/netty/NettyServerStream;->access$200(Lio/grpc/netty/NettyServerStream;)Lio/grpc/netty/WriteQueue;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-virtual {v2}, Lio/grpc/netty/NettyServerStream;->transportState()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v2

    invoke-static {p1}, Lio/grpc/netty/Utils;->convertServerHeaders(Lio/grpc/Metadata;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    invoke-static {v2, p1}, Lio/grpc/netty/SendResponseHeadersCommand;->createHeaders(Lio/grpc/netty/StreamIdHolder;Lio/netty/handler/codec/http2/Http2Headers;)Lio/grpc/netty/SendResponseHeadersCommand;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTrailers(Lio/grpc/Metadata;ZLio/grpc/Status;)V
    .locals 2

    const-string v0, "NettyServerStream$Sink.writeTrailers"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p2}, Lio/grpc/netty/Utils;->convertTrailers(Lio/grpc/Metadata;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    iget-object p2, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-static {p2}, Lio/grpc/netty/NettyServerStream;->access$200(Lio/grpc/netty/NettyServerStream;)Lio/grpc/netty/WriteQueue;

    move-result-object p2

    iget-object v1, p0, Lio/grpc/netty/NettyServerStream$Sink;->this$0:Lio/grpc/netty/NettyServerStream;

    invoke-virtual {v1}, Lio/grpc/netty/NettyServerStream;->transportState()Lio/grpc/netty/NettyServerStream$TransportState;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lio/grpc/netty/SendResponseHeadersCommand;->createTrailers(Lio/grpc/netty/StreamIdHolder;Lio/netty/handler/codec/http2/Http2Headers;Lio/grpc/Status;)Lio/grpc/netty/SendResponseHeadersCommand;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw p1
.end method
