.class public Lcom/microsoft/identity/common/java/util/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNamedThreadFactory(Ljava/lang/String;Ljava/lang/SecurityManager;)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "poolName is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/identity/common/java/util/ThreadUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/java/util/ThreadUtils$1;-><init>(Ljava/lang/String;Ljava/lang/SecurityManager;)V

    return-object v0
.end method

.method public static getNamedThreadPoolExecutor(IIIJLjava/util/concurrent/TimeUnit;Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 11
    .param p5    # Ljava/util/concurrent/TimeUnit;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    move v0, p2

    move-object/from16 v1, p6

    const-string v2, "keepAliveUnit is marked non-null but is null"

    move-object/from16 v8, p5

    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "poolName is marked non-null but is null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lez v0, :cond_0

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v9, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/util/ThreadUtils;->getNamedThreadFactory(Ljava/lang/String;Ljava/lang/SecurityManager;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v10

    move-object v3, v2

    move v4, p0

    move v5, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v2

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/util/ThreadUtils;->getNamedThreadFactory(Ljava/lang/String;Ljava/lang/SecurityManager;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v10

    move-object v3, v0

    move v4, p0

    move v5, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/util/ThreadUtils;->getNamedThreadFactory(Ljava/lang/String;Ljava/lang/SecurityManager;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v10

    move-object v3, v0

    move v4, p0

    move v5, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static sleepSafely(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "tag is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "message is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lez p0, :cond_0

    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method
