.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

.field private mSearchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

.field private mSearchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SearchController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public canUpdateSearchingResult()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->getThreadId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->cancel()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mSearchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->cancel(Z)V

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mSearchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->cancel(Z)V

    return-void
.end method

.method public cancelToSearch()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelToSearch search: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mSearchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->cancel(Z)V

    :cond_1
    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mSearchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;->setSearchContract(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine$SearchContract;)V

    return-void
.end method

.method public search(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->cancelToSearch()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mSearchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mSearchEngine:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mSearchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/search/SearchEngine;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/b;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mLastTask:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$QueryTask;

    sget-object p3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, p3, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateSearchingResult(ILcom/samsung/android/sdk/composer/search/SearchData;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController;->mSearchCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SearchController$SearchCallback;->onUpdateSearchingResult(ILcom/samsung/android/sdk/composer/search/SearchData;)V

    return-void
.end method
