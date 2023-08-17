.class public abstract Lio/netty/util/concurrent/MultithreadEventExecutorGroup;
.super Lio/netty/util/concurrent/AbstractEventExecutorGroup;
.source "SourceFile"


# instance fields
.field private final children:[Lio/netty/util/concurrent/EventExecutor;

.field private final chooser:Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;

.field private final readonlyChildren:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final terminatedChildren:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final terminationFuture:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutorGroup;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminatedChildren:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lio/netty/util/concurrent/DefaultPromise;

    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    const-string v0, "nThreads"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    if-nez p2, :cond_0

    new-instance p2, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->newDefaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p2, v0}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    :cond_0
    new-array v0, p1, [Lio/netty/util/concurrent/EventExecutor;

    iput-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    :try_start_0
    iget-object v2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {p0, p2, p4}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "failed to create a child event loop"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move p2, v0

    :goto_2
    if-ge p2, v1, :cond_1

    iget-object p3, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object p3, p3, p2

    invoke-interface {p3}, Lio/netty/util/concurrent/EventExecutorGroup;->shutdownGracefully()Lio/netty/util/concurrent/Future;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    if-ge v0, v1, :cond_3

    iget-object p2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object p2, p2, v0

    :goto_4
    :try_start_2
    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result p3

    if-nez p3, :cond_2

    const-wide/32 p3, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    throw p1

    :cond_4
    iget-object p1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {p3, p1}, Lio/netty/util/concurrent/EventExecutorChooserFactory;->newChooser([Lio/netty/util/concurrent/EventExecutor;)Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;

    move-result-object p1

    iput-object p1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->chooser:Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;

    new-instance p1, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;

    invoke-direct {p1, p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;-><init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)V

    iget-object p2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length p3, p2

    :goto_5
    if-ge v0, p3, :cond_5

    aget-object p4, p2, v0

    invoke-interface {p4}, Lio/netty/util/concurrent/EventExecutorGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object p4

    invoke-interface {p4, p1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object p2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length p2, p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object p2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->readonlyChildren:Ljava/util/Set;

    return-void
.end method

.method public varargs constructor <init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;->INSTANCE:Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;

    invoke-direct {p0, p1, p2, v0, p3}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;-><init>(ILjava/util/concurrent/Executor;Lio/netty/util/concurrent/EventExecutorChooserFactory;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    invoke-direct {v0, p2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminatedChildren:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$100(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)[Lio/netty/util/concurrent/EventExecutor;
    .locals 0

    iget-object p0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    return-object p0
.end method

.method public static synthetic access$200(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Lio/netty/util/concurrent/Promise;
    .locals 0

    iget-object p0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object p0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    iget-object p1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v2, p1, p3

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->isTerminated()Z

    move-result p1

    return p1
.end method

.method public final executorCount()I
    .locals 1

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v0, v0

    return v0
.end method

.method public isShutdown()Z
    .locals 5

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isShuttingDown()Z
    .locals 5

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lio/netty/util/concurrent/EventExecutorGroup;->isShuttingDown()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isTerminated()Z
    .locals 5

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->readonlyChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public varargs abstract newChild(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
.end method

.method public newDefaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 2

    new-instance v0, Lio/netty/util/concurrent/DefaultThreadFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->chooser:Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lio/netty/util/concurrent/EventExecutorGroup;->shutdown()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lio/netty/util/concurrent/EventExecutorGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public terminationFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method
