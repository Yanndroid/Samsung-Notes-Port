.class public Lio/netty/handler/traffic/ChannelTrafficShapingHandler;
.super Lio/netty/handler/traffic/AbstractTrafficShapingHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;
    }
.end annotation


# instance fields
.field private final messagesQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(J)V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJ)V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJ)V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJJ)V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static synthetic access$100(Lio/netty/handler/traffic/ChannelTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->sendAllValid(Lio/netty/channel/ChannelHandlerContext;J)V

    return-void
.end method

.method private sendAllValid(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->relativeTimeAction:J

    cmp-long v1, v1, p2

    if-gtz v1, :cond_0

    iget-object v1, v0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    move-result-wide v1

    iget-object v3, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v3, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    iget-wide v3, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->queueSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->queueSize:J

    iget-object v1, v0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    iget-object v0, v0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v1, v0}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    iget-object v0, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_1
    iget-object p2, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->releaseWriteSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7

    new-instance v6, Lio/netty/handler/traffic/TrafficCounter;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelTC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/traffic/TrafficCounter;-><init>(Lio/netty/handler/traffic/AbstractTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V

    invoke-virtual {p0, v6}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->setTrafficCounter(Lio/netty/handler/traffic/TrafficCounter;)V

    invoke-virtual {v6}, Lio/netty/handler/traffic/TrafficCounter;->start()V

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 6

    iget-object v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lio/netty/handler/traffic/TrafficCounter;->stop()V

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;

    iget-object v2, v1, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4, v2, v3}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    iget-wide v4, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->queueSize:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->queueSize:J

    iget-object v2, v1, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    iget-object v1, v1, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v2, v1}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;

    iget-object v1, v1, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    instance-of v2, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->releaseWriteSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->releaseReadSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-super {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public queueSize()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->queueSize:J

    return-wide v0
.end method

.method public submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-wide/from16 v8, p5

    monitor-enter p0

    const-wide/16 v3, 0x0

    cmp-long v3, v8, v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, v7, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v7, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v3, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    move-object/from16 v3, p2

    move-object/from16 v4, p9

    invoke-interface {v0, v3, v4}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    monitor-exit p0

    return-void

    :cond_0
    move-object/from16 v3, p2

    move-object/from16 v4, p9

    new-instance v5, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;

    add-long v11, v8, p7

    const/4 v15, 0x0

    move-object v10, v5

    move-object/from16 v13, p2

    move-object/from16 v14, p9

    invoke-direct/range {v10 .. v15}, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;-><init>(JLjava/lang/Object;Lio/netty/channel/ChannelPromise;Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;)V

    iget-object v3, v7, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->messagesQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-wide v3, v7, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->queueSize:J

    add-long v10, v3, v1

    iput-wide v10, v7, Lio/netty/handler/traffic/ChannelTrafficShapingHandler;->queueSize:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p5

    move-object v12, v5

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkWriteSuspend(Lio/netty/channel/ChannelHandlerContext;JJ)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v1, v12, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$ToSend;->relativeTimeAction:J

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    new-instance v4, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;

    invoke-direct {v4, v7, v0, v1, v2}, Lio/netty/handler/traffic/ChannelTrafficShapingHandler$1;-><init>(Lio/netty/handler/traffic/ChannelTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;J)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v8, v9, v0}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
