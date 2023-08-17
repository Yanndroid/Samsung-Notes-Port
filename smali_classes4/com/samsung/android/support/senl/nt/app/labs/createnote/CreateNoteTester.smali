.class public Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static final KEEP_ALIVE_TIME:I = 0x3e8

.field private static final MAX_POOL_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CreateNoteTester"

.field private static sInstance:Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;


# instance fields
.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
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

    iput-object v7, p0, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "CreateNoteTester"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;->sInstance:Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;->sInstance:Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;->sInstance:Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;
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
.method public execute(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/TaskFactory;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/TaskFactory;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/TaskFactory;->createTask(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
