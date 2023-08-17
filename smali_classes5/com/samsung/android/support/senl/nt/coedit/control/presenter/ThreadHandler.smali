.class public Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mUIThreadHandler:Landroid/os/Handler;

.field private mUIThreadLock:Ljava/lang/Object;

.field private mWorkerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public initUiThreadHandler()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseUiThreadHandler()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public runOnUIThread(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized runOnWorkerThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v0, p2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/a;->a:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/a;

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
