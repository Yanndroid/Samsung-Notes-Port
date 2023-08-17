.class public Lio/netty/util/concurrent/DefaultPromise;
.super Lio/netty/util/concurrent/AbstractFuture;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/Promise;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;,
        Lio/netty/util/concurrent/DefaultPromise$CauseHolder;,
        Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/AbstractFuture<",
        "TV;>;",
        "Lio/netty/util/concurrent/Promise<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

.field private static final CANCELLATION_STACK:[Ljava/lang/StackTraceElement;

.field private static final MAX_LISTENER_STACK_DEPTH:I

.field private static final RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/concurrent/DefaultPromise;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUCCESS:Ljava/lang/Object;

.field private static final UNCANCELLABLE:Ljava/lang/Object;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private listeners:Ljava/lang/Object;

.field private notifyingListeners:Z

.field private volatile result:Ljava/lang/Object;

.field private waiters:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/netty/util/concurrent/DefaultPromise;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/netty/util/concurrent/DefaultPromise;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".rejectedExecution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "io.netty.defaultPromise.maxListenerStackDepth"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lio/netty/util/concurrent/DefaultPromise;->MAX_LISTENER_STACK_DEPTH:I

    const-class v0, Lio/netty/util/concurrent/DefaultPromise;

    const-class v1, Ljava/lang/Object;

    const-string v2, "result"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const-class v1, Lio/netty/util/concurrent/DefaultPromise;

    const-string v2, "cancel(...)"

    invoke-static {v1, v2}, Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;->newInstance(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v0, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_STACK:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    const-string v0, "executor"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/concurrent/EventExecutor;

    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-void
.end method

.method public static synthetic access$000()[Ljava/lang/StackTraceElement;
    .locals 1

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_STACK:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public static synthetic access$200(Lio/netty/util/concurrent/DefaultPromise;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListenersNow()V

    return-void
.end method

.method public static synthetic access$300(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 0

    invoke-static {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    return-void
.end method

.method public static synthetic access$400(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    return-void
.end method

.method public static synthetic access$500(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    return-void
.end method

.method private addListener0(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v1, :cond_1

    check-cast v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->add(Lio/netty/util/concurrent/GenericFutureListener;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lio/netty/util/concurrent/DefaultFutureListeners;

    check-cast v0, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-direct {v1, v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;-><init>(Lio/netty/util/concurrent/GenericFutureListener;Lio/netty/util/concurrent/GenericFutureListener;)V

    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private await0(JZ)Z
    .locals 12

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result p1

    return p1

    :cond_1
    if-eqz p3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    monitor-enter p0

    const/4 v0, 0x0

    move-wide v6, p1

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v8

    if-nez v8, :cond_7

    cmp-long v8, v6, v2

    if-lez v8, :cond_7

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v8, 0xf4240

    :try_start_1
    div-long v10, v6, v8

    rem-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {p0, v10, v11, v6}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v6

    if-nez p3, :cond_6

    :try_start_3
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v0, v1

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_5

    if-eqz v0, :cond_4

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return v1

    :cond_5
    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    sub-long/2addr v6, v4

    sub-long v6, p1, v6

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_6
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    :try_start_8
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    throw p1

    :cond_7
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_8

    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_8
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    move v1, v0

    :goto_4
    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    throw p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1
.end method

.method private cause0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    instance-of v0, p1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-ne p1, v0, :cond_2

    new-instance p1, Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;

    invoke-direct {p1, v1}, Lio/netty/util/concurrent/DefaultPromise$LeanCancellationException;-><init>(Lio/netty/util/concurrent/DefaultPromise$1;)V

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    invoke-direct {v2, p1}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    :cond_2
    check-cast p1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object p1, p1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    return-object p1
.end method

.method private declared-synchronized checkNotifyWaiters()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private decWaiters()V
    .locals 1

    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    return-void
.end method

.method private incWaiters()V
    .locals 3

    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many waiters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isCancelled0(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-eqz v0, :cond_0

    check-cast p0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object p0, p0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDone0(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static notifyListener(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/util/concurrent/Future<",
            "*>;",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "eventExecutor"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/util/concurrent/EventExecutor;

    const-string v0, "future"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/util/concurrent/Future;

    const-string v0, "listener"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-static {p0, p1, p2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListenerWithStackOverFlowProtection(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    return-void
.end method

.method private static notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p0}, Lio/netty/util/concurrent/GenericFutureListener;->operationComplete(Lio/netty/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception was thrown by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".operationComplete()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static notifyListenerWithStackOverFlowProtection(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/util/concurrent/Future<",
            "*>;",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth()I

    move-result v1

    sget v2, Lio/netty/util/concurrent/DefaultPromise;->MAX_LISTENER_STACK_DEPTH:I

    if-ge v1, v2, :cond_0

    add-int/lit8 p0, v1, 0x1

    invoke-virtual {v0, p0}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    :try_start_0
    invoke-static {p1, p2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    throw p0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$2;

    invoke-direct {v0, p1, p2}, Lio/netty/util/concurrent/DefaultPromise$2;-><init>(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    invoke-static {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyListeners()V
    .locals 4

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth()I

    move-result v2

    sget v3, Lio/netty/util/concurrent/DefaultPromise;->MAX_LISTENER_STACK_DEPTH:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    :try_start_0
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListenersNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    throw v0

    :cond_0
    new-instance v1, Lio/netty/util/concurrent/DefaultPromise$1;

    invoke-direct {v1, p0}, Lio/netty/util/concurrent/DefaultPromise$1;-><init>(Lio/netty/util/concurrent/DefaultPromise;)V

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyListeners0(Lio/netty/util/concurrent/DefaultFutureListeners;)V
    .locals 3

    invoke-virtual {p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, v0, v1

    invoke-static {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyListenersNow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/util/concurrent/DefaultPromise;->notifyingListeners:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/util/concurrent/DefaultPromise;->notifyingListeners:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    instance-of v2, v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v2, :cond_1

    check-cast v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners0(Lio/netty/util/concurrent/DefaultFutureListeners;)V

    goto :goto_1

    :cond_1
    check-cast v0, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-static {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    :goto_1
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/util/concurrent/DefaultPromise;->notifyingListeners:Z

    monitor-exit p0

    return-void

    :cond_2
    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_2
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 6

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lio/netty/util/concurrent/GenericProgressiveFutureListener;->operationProgressed(Lio/netty/util/concurrent/ProgressiveFuture;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p2, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p2}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "An exception was thrown by "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".operationProgressed()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/ProgressiveFuture<",
            "*>;[",
            "Lio/netty/util/concurrent/GenericProgressiveFutureListener<",
            "*>;JJ)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private declared-synchronized progressiveListeners()Ljava/lang/Object;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    instance-of v2, v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v2, :cond_7

    check-cast v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v0}, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    invoke-virtual {v0}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v0

    new-array v1, v2, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v4

    instance-of v6, v5, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v6, :cond_1

    add-int/lit8 v6, v3, 0x1

    check-cast v5, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    aput-object v5, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    instance-of v5, v4, Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    monitor-exit p0

    return-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-object v1

    :cond_6
    monitor-exit p0

    return-object v1

    :cond_7
    :try_start_3
    instance-of v2, v0, Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    if-eqz v2, :cond_8

    return-object v0

    :cond_8
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeListener0(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    instance-of v1, v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->remove(Lio/netty/util/concurrent/GenericFutureListener;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private rethrowIfFailed()V
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lio/netty/util/concurrent/DefaultPromise;->rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "Failed to submit a listener notification task. Event loop shut down?"

    invoke-interface {p1, v0, p0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setFailure0(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const-string v1, "cause"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->setValue0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private setSuccess0(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setValue0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private setValue0(Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkNotifyWaiters()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->addListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    throw v0

    :cond_1
    monitor-exit p0

    return-object p0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public await(J)Z
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result p1

    return p1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    const/4 v0, 0x0

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    throw v0

    :catch_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-object p0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public cancel(Z)Z
    .locals 2

    sget-object p1, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkNotifyWaiters()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public cause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->cause0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public checkDeadLock()V
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/BlockingOperationException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/BlockingOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    :cond_0
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->cause0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_3

    check-cast v1, Ljava/util/concurrent/CancellationException;

    throw v1

    :cond_3
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/concurrent/DefaultPromise;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    sget-object p1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-eq v0, p1, :cond_5

    sget-object p1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->cause0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/util/concurrent/CancellationException;

    throw p1

    :cond_4
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    instance-of v1, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-nez v1, :cond_1

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCancellable()Z
    .locals 1

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isCancelled0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    instance-of v0, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyProgressiveListeners(JJ)V
    .locals 10

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->progressiveListeners()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    check-cast v3, Lio/netty/util/concurrent/ProgressiveFuture;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v9

    invoke-interface {v9}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v1, v3

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    goto :goto_1

    :cond_1
    move-object v2, v0

    check-cast v2, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-object v1, v3

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v1, :cond_3

    move-object v4, v0

    check-cast v4, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$3;

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lio/netty/util/concurrent/DefaultPromise$3;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    goto :goto_0

    :cond_3
    move-object v4, v0

    check-cast v4, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$4;

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lio/netty/util/concurrent/DefaultPromise$4;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    :goto_0
    invoke-static {v9, v0}, Lio/netty/util/concurrent/DefaultPromise;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->removeListener0(Lio/netty/util/concurrent/GenericFutureListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess0(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complete already: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUncancellable()Z
    .locals 3

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->RESULT_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isCancelled0(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->sync()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->rethrowIfFailed()V

    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->syncUninterruptibly()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->rethrowIfFailed()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const-string v1, "(success)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    const-string v1, "(uncancellable)"

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    const/16 v3, 0x29

    if-eqz v2, :cond_2

    const-string v2, "(failure: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v1, v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "(success: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "(incomplete)"

    goto :goto_0

    :goto_2
    return-object v0
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure0(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public trySuccess(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
