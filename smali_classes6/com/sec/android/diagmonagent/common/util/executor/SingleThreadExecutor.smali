.class public Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/Executor;


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;

.field private static singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$1;

    invoke-direct {v0, p0}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$1;-><init>(Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/diagmonagent/common/util/executor/Executor;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    invoke-direct {v0}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;-><init>()V

    sput-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
    .locals 2

    sget-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;-><init>(Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
