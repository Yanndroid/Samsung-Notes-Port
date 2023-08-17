.class Lio/grpc/netty/WriteQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/WriteQueue$QueuedCommand;,
        Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;,
        Lio/grpc/netty/WriteQueue$RunnableCommand;
    }
.end annotation


# static fields
.field public static final DEQUE_CHUNK_SIZE:I = 0x80
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private final later:Ljava/lang/Runnable;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/netty/WriteQueue$QueuedCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/grpc/netty/WriteQueue$1;

    invoke-direct {v0, p0}, Lio/grpc/netty/WriteQueue$1;-><init>(Lio/grpc/netty/WriteQueue;)V

    iput-object v0, p0, Lio/grpc/netty/WriteQueue;->later:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/WriteQueue;->scheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/Channel;

    iput-object p1, p0, Lio/grpc/netty/WriteQueue;->channel:Lio/netty/channel/Channel;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/WriteQueue;->queue:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/netty/WriteQueue;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/WriteQueue;->flush()V

    return-void
.end method

.method private flush()V
    .locals 8

    const-string v0, "WriteQueue.flush0"

    const-string v1, "WriteQueue.flush1"

    const-string v2, "WriteQueue.periodicFlush"

    invoke-static {v2}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lio/grpc/netty/WriteQueue;->queue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/netty/WriteQueue$QueuedCommand;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lio/grpc/netty/WriteQueue;->channel:Lio/netty/channel/Channel;

    invoke-interface {v6, v7}, Lio/grpc/netty/WriteQueue$QueuedCommand;->run(Lio/netty/channel/Channel;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x80

    if-ne v4, v6, :cond_0

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lio/grpc/netty/WriteQueue;->channel:Lio/netty/channel/Channel;

    invoke-interface {v4}, Lio/netty/channel/Channel;->flush()Lio/netty/channel/Channel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    const/4 v5, 0x1

    move v4, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    invoke-static {v1}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Lio/grpc/netty/WriteQueue;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->flush()Lio/netty/channel/Channel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    invoke-static {v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    iget-object v0, p0, Lio/grpc/netty/WriteQueue;->scheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lio/grpc/netty/WriteQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lio/grpc/netty/WriteQueue;->scheduleFlush()V

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    iget-object v1, p0, Lio/grpc/netty/WriteQueue;->scheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lio/grpc/netty/WriteQueue;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lio/grpc/netty/WriteQueue;->scheduleFlush()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public drainNow()V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/WriteQueue;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    const-string v1, "must be on the event loop"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/netty/WriteQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lio/grpc/netty/WriteQueue;->flush()V

    return-void
.end method

.method public enqueue(Lio/grpc/netty/WriteQueue$QueuedCommand;Z)Lio/netty/channel/ChannelFuture;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-interface {p1}, Lio/grpc/netty/WriteQueue$QueuedCommand;->promise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "promise must not be set on command"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lio/grpc/netty/WriteQueue;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/grpc/netty/WriteQueue$QueuedCommand;->promise(Lio/netty/channel/ChannelPromise;)V

    iget-object v1, p0, Lio/grpc/netty/WriteQueue;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lio/grpc/netty/WriteQueue;->scheduleFlush()V

    :cond_1
    return-object v0
.end method

.method public enqueue(Ljava/lang/Runnable;Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/WriteQueue;->queue:Ljava/util/Queue;

    new-instance v1, Lio/grpc/netty/WriteQueue$RunnableCommand;

    invoke-direct {v1, p1}, Lio/grpc/netty/WriteQueue$RunnableCommand;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/WriteQueue;->scheduleFlush()V

    :cond_0
    return-void
.end method

.method public scheduleFlush()V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/WriteQueue;->scheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/WriteQueue;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/WriteQueue;->later:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
