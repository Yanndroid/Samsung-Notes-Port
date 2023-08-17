.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$InternalLogger;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBackgroundTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$Callback;

.field private mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mHandler:Landroid/os/Handler;

.field private mThumbnailCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PageListSearchResultUpdater"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$Callback;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mThumbnailCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->onDone(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->onThumbnailCreated(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;)V

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onDone(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "onDone"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$InternalLogger;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDone# remain size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$InternalLogger;->debugLog(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onThumbnailCreated(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThumbnailCreated# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$InternalLogger;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$Callback;->onThumbnailCreated(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->TAG:Ljava/lang/String;

    const-string v1, "cancel#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;->cancel()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public init(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;

    invoke-direct {p1, p2, p3, v0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mThumbnailCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;

    return-void
.end method

.method public ready()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->TAG:Ljava/lang/String;

    const-string v1, "ready#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ready# task list is not empty"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mThumbnailCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->release()V

    :cond_0
    return-void
.end method

.method public submit(Lcom/samsung/android/sdk/composer/search/SearchData;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit# shutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/search/SearchData;->getPageIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;Lcom/samsung/android/sdk/composer/search/SearchData;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$BackgroundTask;->setMyFuture(Ljava/util/concurrent/Future;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/search/SearchData;->getPageIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$InternalLogger;->debugLog(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public waitToFinish()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting# remain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->mBackgroundTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->cancel()V

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->TAG:Ljava/lang/String;

    const-string v1, "waitToFinish# done"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
