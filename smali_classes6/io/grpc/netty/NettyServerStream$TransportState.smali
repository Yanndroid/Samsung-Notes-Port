.class public Lio/grpc/netty/NettyServerStream$TransportState;
.super Lio/grpc/internal/AbstractServerStream$TransportState;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/StreamIdHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyServerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportState"
.end annotation


# instance fields
.field private final eventLoop:Lio/netty/channel/EventLoop;

.field private final handler:Lio/grpc/netty/NettyServerHandler;

.field private final http2Stream:Lio/netty/handler/codec/http2/Http2Stream;

.field private final tag:Lio/perfmark/Tag;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/EventLoop;Lio/netty/handler/codec/http2/Http2Stream;ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p5, p6}, Lio/grpc/internal/AbstractServerStream$TransportState;-><init>(ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    const-string p4, "http2Stream"

    invoke-static {p3, p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/netty/handler/codec/http2/Http2Stream;

    iput-object p4, p0, Lio/grpc/netty/NettyServerStream$TransportState;->http2Stream:Lio/netty/handler/codec/http2/Http2Stream;

    const-string p4, "handler"

    invoke-static {p1, p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/NettyServerHandler;

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream$TransportState;->handler:Lio/grpc/netty/NettyServerHandler;

    iput-object p2, p0, Lio/grpc/netty/NettyServerStream$TransportState;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p7, p1, p2}, Lio/perfmark/PerfMark;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyServerStream$TransportState;->tag:Lio/perfmark/Tag;

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/netty/NettyServerStream$TransportState;)Lio/grpc/netty/NettyServerHandler;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerStream$TransportState;->handler:Lio/grpc/netty/NettyServerHandler;

    return-object p0
.end method

.method public static synthetic access$500(Lio/grpc/netty/NettyServerStream$TransportState;)Lio/perfmark/Tag;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyServerStream$TransportState;->tag:Lio/perfmark/Tag;

    return-object p0
.end method


# virtual methods
.method public bytesRead(I)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$TransportState;->handler:Lio/grpc/netty/NettyServerHandler;

    iget-object v1, p0, Lio/grpc/netty/NettyServerStream$TransportState;->http2Stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/NettyServerHandler;->returnProcessedBytes(Lio/netty/handler/codec/http2/Http2Stream;I)V

    iget-object p1, p0, Lio/grpc/netty/NettyServerStream$TransportState;->handler:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {p1}, Lio/grpc/netty/NettyServerHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/WriteQueue;->scheduleFlush()V

    return-void
.end method

.method public bridge synthetic complete()V
    .locals 0

    invoke-super {p0}, Lio/grpc/internal/AbstractServerStream$TransportState;->complete()V

    return-void
.end method

.method public deframeFailed(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lio/grpc/netty/NettyServerStream;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Exception processing message"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractServerStream$TransportState;->transportReportStatus(Lio/grpc/Status;)V

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$TransportState;->handler:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v0}, Lio/grpc/netty/NettyServerHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/CancelServerStreamCommand;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/CancelServerStreamCommand;-><init>(Lio/grpc/netty/NettyServerStream$TransportState;Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public bridge synthetic deframerClosed(Z)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/internal/AbstractServerStream$TransportState;->deframerClosed(Z)V

    return-void
.end method

.method public id()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$TransportState;->http2Stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    return v0
.end method

.method public bridge synthetic inboundDataReceived(Lio/grpc/internal/ReadableBuffer;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/grpc/internal/AbstractServerStream$TransportState;->inboundDataReceived(Lio/grpc/internal/ReadableBuffer;Z)V

    return-void
.end method

.method public inboundDataReceived(Lio/netty/buffer/ByteBuf;Z)V
    .locals 1

    new-instance v0, Lio/grpc/netty/NettyReadableBuffer;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/netty/NettyReadableBuffer;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-super {p0, v0, p2}, Lio/grpc/internal/AbstractServerStream$TransportState;->inboundDataReceived(Lio/grpc/internal/ReadableBuffer;Z)V

    return-void
.end method

.method public runOnTransportThread(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$TransportState;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/NettyServerStream$TransportState;->eventLoop:Lio/netty/channel/EventLoop;

    new-instance v2, Lio/grpc/netty/NettyServerStream$TransportState$1;

    invoke-direct {v2, p0, v0, p1}, Lio/grpc/netty/NettyServerStream$TransportState$1;-><init>(Lio/grpc/netty/NettyServerStream$TransportState;Lio/perfmark/Link;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public tag()Lio/perfmark/Tag;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyServerStream$TransportState;->tag:Lio/perfmark/Tag;

    return-object v0
.end method
