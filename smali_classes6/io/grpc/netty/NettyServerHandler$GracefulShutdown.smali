.class final Lio/grpc/netty/NettyServerHandler$GracefulShutdown;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettyServerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GracefulShutdown"
.end annotation


# instance fields
.field public goAwayMessage:Ljava/lang/String;

.field public graceTimeInNanos:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public pingAckedOrTimeout:Z

.field public pingFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/grpc/netty/NettyServerHandler;


# direct methods
.method public constructor <init>(Lio/grpc/netty/NettyServerHandler;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->goAwayMessage:Ljava/lang/String;

    iput-object p3, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->graceTimeInNanos:Ljava/lang/Long;

    return-void
.end method

.method private graceTimeOverrideMillis(J)J
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->graceTimeInNanos:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p2, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->graceTimeInNanos:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public secondGoAwayAndClose(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 10

    iget-boolean v0, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->pingAckedOrTimeout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->pingAckedOrTimeout:Z

    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->pingFuture:Ljava/util/concurrent/Future;

    const-string v2, "pingFuture"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->pingFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v3, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->lastStreamCreated()I

    move-result v5

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v6

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->goAwayMessage:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    iget-object v1, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->gracefulShutdownTimeoutMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->graceTimeOverrideMillis(J)J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v5, v3, v4}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->gracefulShutdownTimeoutMillis(J)V

    iget-object v3, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lio/grpc/netty/NettyServerHandler;->access$1701(Lio/grpc/netty/NettyServerHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v4, p1, v0, v3}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onError(Lio/netty/channel/ChannelHandlerContext;ZLjava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p1, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {p1, v1, v2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->gracefulShutdownTimeoutMillis(J)V

    return-void

    :goto_1
    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->gracefulShutdownTimeoutMillis(J)V

    throw p1
.end method

.method public start(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->goAwayMessage:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    const v2, 0x7fffffff

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/NettyServerHandler$GracefulShutdown$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/NettyServerHandler$GracefulShutdown$1;-><init>(Lio/grpc/netty/NettyServerHandler$GracefulShutdown;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-static {}, Lio/grpc/netty/NettyServerHandler;->access$1600()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->pingFuture:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lio/grpc/netty/NettyServerHandler$GracefulShutdown;->this$0:Lio/grpc/netty/NettyServerHandler;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    const/4 v3, 0x0

    const-wide v4, 0x97acef001L

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePing(Lio/netty/channel/ChannelHandlerContext;ZJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
