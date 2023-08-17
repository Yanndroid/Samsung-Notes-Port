.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CpV$BackgroundTaskManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public isRunningPageInfoInitTask()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startPageManagerInitTask(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$PageManagerInitializationTask;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;->cancel()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "release# wait thread"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const-string v1, "release# wait thread done"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
