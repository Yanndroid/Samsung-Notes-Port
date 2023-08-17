.class public abstract Lio/grpc/netty/NettyClientStream$TransportState;
.super Lio/grpc/internal/Http2ClientStreamTransportState;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/StreamIdHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TransportState"
.end annotation


# static fields
.field private static final NON_EXISTENT_ID:I = -0x1


# instance fields
.field private final eventLoop:Lio/netty/channel/EventLoop;

.field private final handler:Lio/grpc/netty/NettyClientHandler;

.field private http2Stream:Lio/netty/handler/codec/http2/Http2Stream;

.field private id:I

.field private final methodName:Ljava/lang/String;

.field private tag:Lio/perfmark/Tag;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyClientHandler;Lio/netty/channel/EventLoop;ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p4, p5}, Lio/grpc/internal/Http2ClientStreamTransportState;-><init>(ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    const-string p3, "methodName"

    invoke-static {p6, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lio/grpc/netty/NettyClientStream$TransportState;->methodName:Ljava/lang/String;

    const-string p3, "handler"

    invoke-static {p1, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/NettyClientHandler;

    iput-object p1, p0, Lio/grpc/netty/NettyClientStream$TransportState;->handler:Lio/grpc/netty/NettyClientHandler;

    const-string p1, "eventLoop"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/EventLoop;

    iput-object p1, p0, Lio/grpc/netty/NettyClientStream$TransportState;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-static {p6}, Lio/perfmark/PerfMark;->createTag(Ljava/lang/String;)Lio/perfmark/Tag;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyClientStream$TransportState;->tag:Lio/perfmark/Tag;

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/netty/NettyClientStream$TransportState;)Lio/grpc/netty/NettyClientHandler;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->handler:Lio/grpc/netty/NettyClientHandler;

    return-object p0
.end method


# virtual methods
.method public bytesRead(I)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->handler:Lio/grpc/netty/NettyClientHandler;

    iget-object v1, p0, Lio/grpc/netty/NettyClientStream$TransportState;->http2Stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/NettyClientHandler;->returnProcessedBytes(Lio/netty/handler/codec/http2/Http2Stream;I)V

    iget-object p1, p0, Lio/grpc/netty/NettyClientStream$TransportState;->handler:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {p1}, Lio/grpc/netty/NettyClientHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/WriteQueue;->scheduleFlush()V

    return-void
.end method

.method public deframeFailed(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lio/grpc/netty/NettyClientStream$TransportState;->http2ProcessingFailed(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    return-void
.end method

.method public http2ProcessingFailed(Lio/grpc/Status;ZLio/grpc/Metadata;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/AbstractClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    iget-object p2, p0, Lio/grpc/netty/NettyClientStream$TransportState;->handler:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {p2}, Lio/grpc/netty/NettyClientHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object p2

    new-instance p3, Lio/grpc/netty/CancelClientStreamCommand;

    invoke-direct {p3, p0, p1}, Lio/grpc/netty/CancelClientStreamCommand;-><init>(Lio/grpc/netty/NettyClientStream$TransportState;Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p3, p1}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public http2Stream()Lio/netty/handler/codec/http2/Http2Stream;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->http2Stream:Lio/netty/handler/codec/http2/Http2Stream;

    return-object v0
.end method

.method public id()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->id:I

    return v0
.end method

.method public isNonExistent()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public runOnTransportThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setHttp2Stream(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    const-string v0, "http2Stream"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->http2Stream:Lio/netty/handler/codec/http2/Http2Stream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can only set http2Stream once"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/netty/NettyClientStream$TransportState;->http2Stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream$TransportState;->onStreamAllocated()V

    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream$TransportState;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/TransportTracer;->reportLocalStreamStarted()V

    return-void
.end method

.method public setId(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "id must be positive %s"

    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iget v2, p0, Lio/grpc/netty/NettyClientStream$TransportState;->id:I

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "id has been previously set: %s"

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    iput p1, p0, Lio/grpc/netty/NettyClientStream$TransportState;->id:I

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->methodName:Ljava/lang/String;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lio/perfmark/PerfMark;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/NettyClientStream$TransportState;->tag:Lio/perfmark/Tag;

    return-void
.end method

.method public setNonExistent()V
    .locals 3

    iget v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->id:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Id has been previously set: %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    const/4 v0, -0x1

    iput v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->id:I

    return-void
.end method

.method public abstract statusFromFailedFuture(Lio/netty/channel/ChannelFuture;)Lio/grpc/Status;
.end method

.method public final tag()Lio/perfmark/Tag;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/NettyClientStream$TransportState;->tag:Lio/perfmark/Tag;

    return-object v0
.end method

.method public transportDataReceived(Lio/netty/buffer/ByteBuf;Z)V
    .locals 1

    new-instance v0, Lio/grpc/netty/NettyReadableBuffer;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/netty/NettyReadableBuffer;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p0, v0, p2}, Lio/grpc/internal/Http2ClientStreamTransportState;->transportDataReceived(Lio/grpc/internal/ReadableBuffer;Z)V

    return-void
.end method

.method public transportHeadersReceived(Lio/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream$TransportState;->isOutboundClosed()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lio/grpc/netty/NettyClientStream$TransportState;->handler:Lio/grpc/netty/NettyClientHandler;

    invoke-virtual {p2}, Lio/grpc/netty/NettyClientHandler;->getWriteQueue()Lio/grpc/netty/WriteQueue;

    move-result-object p2

    new-instance v0, Lio/grpc/netty/CancelClientStreamCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/CancelClientStreamCommand;-><init>(Lio/grpc/netty/NettyClientStream$TransportState;Lio/grpc/Status;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lio/grpc/netty/WriteQueue;->enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;

    :cond_0
    invoke-static {p1}, Lio/grpc/netty/Utils;->convertTrailers(Lio/netty/handler/codec/http2/Http2Headers;)Lio/grpc/Metadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/Http2ClientStreamTransportState;->transportTrailersReceived(Lio/grpc/Metadata;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lio/grpc/netty/Utils;->convertHeaders(Lio/netty/handler/codec/http2/Http2Headers;)Lio/grpc/Metadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/Http2ClientStreamTransportState;->transportHeadersReceived(Lio/grpc/Metadata;)V

    :goto_0
    return-void
.end method
