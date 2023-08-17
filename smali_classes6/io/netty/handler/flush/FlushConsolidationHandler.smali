.class public Lio/netty/handler/flush/FlushConsolidationHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# static fields
.field public static final DEFAULT_EXPLICIT_FLUSH_AFTER_FLUSHES:I = 0x100


# instance fields
.field private final consolidateWhenNoReadInProgress:Z

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final explicitFlushAfterFlushes:I

.field private flushPendingCount:I

.field private final flushTask:Ljava/lang/Runnable;

.field private nextScheduledFlush:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private readInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/handler/flush/FlushConsolidationHandler;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/flush/FlushConsolidationHandler;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-string v0, "explicitFlushAfterFlushes"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->explicitFlushAfterFlushes:I

    iput-boolean p2, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->consolidateWhenNoReadInProgress:Z

    if-eqz p2, :cond_0

    new-instance p1, Lio/netty/handler/flush/FlushConsolidationHandler$1;

    invoke-direct {p1, p0}, Lio/netty/handler/flush/FlushConsolidationHandler$1;-><init>(Lio/netty/handler/flush/FlushConsolidationHandler;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/flush/FlushConsolidationHandler;)I
    .locals 0

    iget p0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    return p0
.end method

.method public static synthetic access$002(Lio/netty/handler/flush/FlushConsolidationHandler;I)I
    .locals 0

    iput p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    return p1
.end method

.method public static synthetic access$100(Lio/netty/handler/flush/FlushConsolidationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    return p0
.end method

.method public static synthetic access$202(Lio/netty/handler/flush/FlushConsolidationHandler;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method public static synthetic access$300(Lio/netty/handler/flush/FlushConsolidationHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method private cancelScheduledFlush()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method private flushNow(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/flush/FlushConsolidationHandler;->cancelScheduledFlush()V

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method private resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method private scheduleFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    iget-object v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushTask:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/EventExecutorGroup;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->nextScheduledFlush:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->resetReadAndFlushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    iget-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->readInProgress:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    iget v1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->explicitFlushAfterFlushes:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->consolidateWhenNoReadInProgress:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->flushPendingCount:I

    iget v1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->explicitFlushAfterFlushes:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->scheduleFlush(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushNow(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/flush/FlushConsolidationHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/flush/FlushConsolidationHandler;->flushIfNeeded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method
