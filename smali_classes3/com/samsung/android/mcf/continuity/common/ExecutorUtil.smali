.class public Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$ThrowExceptionRunnable;
    }
.end annotation


# static fields
.field private static final NUM_CALLBACK_THREAD:I = 0x1

.field private static final NUM_IO_THREAD:I = 0x40

.field private static final NUM_MAIN_THREAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExecutorUtil"

.field private static sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sExecutorMain:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static sIsStarted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "ExecutorMain: "

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorMain:Ljava/util/concurrent/ThreadPoolExecutor;

    sput-boolean v2, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->lambda$getThreadPoolExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private static execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z
    .locals 2
    .param p0    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    new-instance v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$ThrowExceptionRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$ThrowExceptionRunnable;-><init>(Ljava/lang/Runnable;Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$1;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExecutorUtil"

    const-string v0, "execute"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static executeOnCallback(Ljava/lang/Runnable;)Z
    .locals 3
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to execute : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExecutorUtil"

    const-string v2, "executeOnCallback"

    invoke-static {v0, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static executeOnIO(Ljava/lang/Runnable;)Z
    .locals 3
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to execute : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExecutorUtil"

    const-string v2, "executeOnIO"

    invoke-static {v0, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static executeOnMain(Ljava/lang/Runnable;)Z
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorMain:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private static getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lj3/a;

    invoke-direct {v7, p0}, Lj3/a;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x3c

    move-object v0, v8

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v8, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v8
.end method

.method private static synthetic lambda$getThreadPoolExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static shutdown()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sIsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExecutorUtil"

    const-string/jumbo v2, "shutdown"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    :cond_2
    return-void
.end method

.method private static shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p0    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown, but not executed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExecutorUtil"

    const-string/jumbo v2, "shutdown"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static start()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sIsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExecutorUtil"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    if-nez v0, :cond_0

    const-string v0, "ExecutorCallback: "

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v0, 0x40

    const-string v2, "ExecutorIO: "

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    sput-boolean v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    :cond_0
    return-void
.end method
