.class public Lio/netty/channel/pool/FixedChannelPool;
.super Lio/netty/channel/pool/SimpleChannelPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutException;,
        Lio/netty/channel/pool/FixedChannelPool$AcquireListener;,
        Lio/netty/channel/pool/FixedChannelPool$TimeoutTask;,
        Lio/netty/channel/pool/FixedChannelPool$AcquireTask;,
        Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acquireTimeoutNanos:J

.field private final acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private closed:Z

.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private final maxConnections:I

.field private final maxPendingAcquires:I

.field private pendingAcquireCount:I

.field private final pendingAcquireQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/channel/pool/FixedChannelPool$AcquireTask;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutTask:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/channel/pool/FixedChannelPool;

    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;I)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/pool/FixedChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;II)V

    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;II)V
    .locals 9

    sget-object v3, Lio/netty/channel/pool/ChannelHealthChecker;->ACTIVE:Lio/netty/channel/pool/ChannelHealthChecker;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/channel/pool/FixedChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JII)V

    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JII)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lio/netty/channel/pool/FixedChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JIIZ)V

    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JIIZ)V
    .locals 11

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lio/netty/channel/pool/FixedChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JIIZZ)V

    return-void
.end method

.method public constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutAction;JIIZZ)V
    .locals 11

    move-object v6, p0

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/pool/SimpleChannelPool;-><init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/pool/ChannelPoolHandler;Lio/netty/channel/pool/ChannelHealthChecker;ZZ)V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v6, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v6, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "maxConnections"

    invoke-static {v9, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    const-string v0, "maxPendingAcquires"

    invoke-static {v10, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    const-wide/16 v0, -0x1

    if-nez p4, :cond_0

    cmp-long v2, v7, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v6, Lio/netty/channel/pool/FixedChannelPool;->timeoutTask:Ljava/lang/Runnable;

    iput-wide v0, v6, Lio/netty/channel/pool/FixedChannelPool;->acquireTimeoutNanos:J

    goto :goto_3

    :cond_0
    if-nez p4, :cond_2

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, v6, Lio/netty/channel/pool/FixedChannelPool;->acquireTimeoutNanos:J

    sget-object v0, Lio/netty/channel/pool/FixedChannelPool$7;->$SwitchMap$io$netty$channel$pool$FixedChannelPool$AcquireTimeoutAction:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    new-instance v0, Lio/netty/channel/pool/FixedChannelPool$2;

    invoke-direct {v0, p0}, Lio/netty/channel/pool/FixedChannelPool$2;-><init>(Lio/netty/channel/pool/FixedChannelPool;)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Lio/netty/channel/pool/FixedChannelPool$1;

    invoke-direct {v0, p0}, Lio/netty/channel/pool/FixedChannelPool$1;-><init>(Lio/netty/channel/pool/FixedChannelPool;)V

    :goto_2
    iput-object v0, v6, Lio/netty/channel/pool/FixedChannelPool;->timeoutTask:Ljava/lang/Runnable;

    :goto_3
    invoke-virtual {p1}, Lio/netty/bootstrap/Bootstrap;->config()Lio/netty/bootstrap/BootstrapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    iput-object v0, v6, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    iput v9, v6, Lio/netty/channel/pool/FixedChannelPool;->maxConnections:I

    iput v10, v6, Lio/netty/channel/pool/FixedChannelPool;->maxPendingAcquires:I

    return-void
.end method

.method public static synthetic access$1000(Lio/netty/channel/pool/FixedChannelPool;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->runTaskQueue()V

    return-void
.end method

.method public static synthetic access$1100(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/netty/channel/pool/FixedChannelPool;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->close0()Lio/netty/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1301(Lio/netty/channel/pool/FixedChannelPool;)V
    .locals 0

    invoke-super {p0}, Lio/netty/channel/pool/SimpleChannelPool;->close()V

    return-void
.end method

.method public static synthetic access$201(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/pool/SimpleChannelPool;->acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/pool/FixedChannelPool;->acquire0(Lio/netty/util/concurrent/Promise;)V

    return-void
.end method

.method public static synthetic access$400(Lio/netty/channel/pool/FixedChannelPool;)Lio/netty/util/concurrent/EventExecutor;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object p0
.end method

.method public static synthetic access$500(Lio/netty/channel/pool/FixedChannelPool;)Z
    .locals 0

    iget-boolean p0, p0, Lio/netty/channel/pool/FixedChannelPool;->closed:Z

    return p0
.end method

.method public static synthetic access$600(Lio/netty/channel/pool/FixedChannelPool;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->decrementAndRunTaskQueue()V

    return-void
.end method

.method public static synthetic access$700(Lio/netty/channel/pool/FixedChannelPool;)J
    .locals 2

    iget-wide v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquireTimeoutNanos:J

    return-wide v0
.end method

.method public static synthetic access$800(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$906(Lio/netty/channel/pool/FixedChannelPool;)I
    .locals 1

    iget v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    return v0
.end method

.method private acquire0(Lio/netty/util/concurrent/Promise;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FixedChannelPool was closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    return-void

    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lio/netty/channel/pool/FixedChannelPool;->maxConnections:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    new-instance v1, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V

    invoke-virtual {v1}, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->acquired()V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    invoke-super {p0, v0}, Lio/netty/channel/pool/SimpleChannelPool;->acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    goto :goto_0

    :cond_1
    iget v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    iget v1, p0, Lio/netty/channel/pool/FixedChannelPool;->maxPendingAcquires:I

    if-lt v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lio/netty/channel/pool/FixedChannelPool;->tooManyOutstanding(Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V

    iget-object v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    iget-object v1, p0, Lio/netty/channel/pool/FixedChannelPool;->timeoutTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    iget-wide v3, p0, Lio/netty/channel/pool/FixedChannelPool;->acquireTimeoutNanos:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, v3, v4, v5}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private close0()Lio/netty/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool;->closed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool;->closed:Z

    :goto_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    new-instance v1, Lio/netty/channel/pool/FixedChannelPool$6;

    invoke-direct {v1, p0}, Lio/netty/channel/pool/FixedChannelPool$6;-><init>(Lio/netty/channel/pool/FixedChannelPool;)V

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/AbstractEventExecutor;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->promise:Lio/netty/util/concurrent/Promise;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    :cond_2
    sget-object v0, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/AbstractEventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private decrementAndRunTaskQueue()V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->runTaskQueue()V

    return-void
.end method

.method private runTaskQueue()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lio/netty/channel/pool/FixedChannelPool;->maxConnections:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->timeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/netty/channel/pool/FixedChannelPool;->pendingAcquireCount:I

    invoke-virtual {v0}, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->acquired()V

    iget-object v0, v0, Lio/netty/channel/pool/FixedChannelPool$AcquireTask;->promise:Lio/netty/util/concurrent/Promise;

    invoke-super {p0, v0}, Lio/netty/channel/pool/SimpleChannelPool;->acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private tooManyOutstanding(Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many outstanding acquire operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    return-void
.end method


# virtual methods
.method public acquire(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/channel/pool/FixedChannelPool;->acquire0(Lio/netty/util/concurrent/Promise;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    new-instance v1, Lio/netty/channel/pool/FixedChannelPool$3;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/pool/FixedChannelPool$3;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    :goto_0
    return-object p1
.end method

.method public acquiredChannelCount()I
    .locals 1

    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->acquiredChannelCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/pool/FixedChannelPool;->closeAsync()Lio/netty/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/Future;->await()Lio/netty/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeAsync()Lio/netty/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool;->close0()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    new-instance v2, Lio/netty/channel/pool/FixedChannelPool$5;

    invoke-direct {v2, p0, v0}, Lio/netty/channel/pool/FixedChannelPool$5;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public release(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "promise"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    new-instance v1, Lio/netty/channel/pool/FixedChannelPool$4;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/pool/FixedChannelPool$4;-><init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lio/netty/channel/pool/SimpleChannelPool;->release(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    return-object p2
.end method
