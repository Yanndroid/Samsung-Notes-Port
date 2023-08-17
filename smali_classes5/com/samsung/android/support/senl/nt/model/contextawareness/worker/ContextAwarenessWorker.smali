.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static final KEEP_ALIVE_TIME:I = 0x3e8

.field private static final MAX_POOL_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;


# instance fields
.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ContextAwarenessWorker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;->sInstance:Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public runContextAwareness(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runContextAwareness activeCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/ContextAwarenessWorker;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/TaskFactory;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/TaskFactory;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/TaskFactory;->createTask(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
