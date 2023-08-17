.class public Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;,
        Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;,
        Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;,
        Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;,
        Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotesDocumentInteractor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDocumentInteractorListener:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;

.field private final mDocumentUserManager:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsClosing:Z

.field private final mLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSDocMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mDocumentUserManager:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->lambda$enqueue$0(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mDocumentUserManager:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->injectSchedulerDataSource(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V

    return-void
.end method

.method private forceClose()V
    .locals 6

    const-string v0, "NotesDocumentInteractor"

    const-string v1, "forceClose, start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, "NotesDocumentInteractor"

    const-string v2, "forceClose, remains are not exist."

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    const-string v3, "NotesDocumentInteractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceClose, remained document : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "NotesDocumentInteractor"

    const-string v1, "forceClose, end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->printInformations()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->putSpenSDocDataSource(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->removeSchedulerDataSource(Ljava/lang/String;)V

    return-void
.end method

.method private injectSchedulerDataSource(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "NotesDocumentInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectSchedulerDataSource, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->existExecutorService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->getExecutorService(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/scheduler/NotesDocumentThreadPool;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/scheduler/DocumentSchedulerRepository;->create(Ljava/util/concurrent/ExecutorService;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->setScheduler(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->removeSpenSDocDataSource(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$enqueue$0(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->callback()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue, already closed, listener exists : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotesDocumentInteractor"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceConstants$DocumentServiceAlreadyClosedException;

    const-string v2, "Document service is already closed"

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceConstants$DocumentServiceAlreadyClosedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;->failed(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private printInformations()V
    .locals 0

    return-void
.end method

.method private putSpenSDocDataSource(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "NotesDocumentInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putSpenSDocDataSource, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sdoc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeSchedulerDataSource(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "NotesDocumentInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSchedulerDataSource, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->getExecutorService(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/scheduler/NotesDocumentThreadPool;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->shutdownExecutorService(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeSpenSDocDataSource(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "NotesDocumentInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSpenSDocDataSource, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->setScheduler(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->removeSchedulerDataSource(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public awaitTerminationAll(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "awaitTerminationAll, timeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentInteractor"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->forceClose()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->awaitTerminationAll(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask$Builder;->build(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Landroid/os/Handler;)Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$4;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask;->taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/CloseDocumentTask$CloseTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->target(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->uuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->user(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->listener(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V

    return-void
.end method

.method public discardCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask$Builder;->build(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Landroid/os/Handler;)Lcom/samsung/android/support/senl/nt/model/executor/task/DiscardCacheDocumentTask;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->target(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->uuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->user(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->listener(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/executor/a;->a:Lcom/samsung/android/support/senl/nt/model/executor/a;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;)V

    return-void
.end method

.method public enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    monitor-enter v0

    :try_start_0
    const-string v1, "NotesDocumentInteractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueue, request : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mIsClosing:Z

    if-eqz v1, :cond_0

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;->onFailed(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->getExecutorService(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/scheduler/NotesDocumentThreadPool;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "NotesDocumentInteractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueue, ThreadPool: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->replaceExecutorService(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/scheduler/NotesDocumentThreadPool;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;->onFailed(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/NotesDocumentThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->notifyTaskStartedListener()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public existUsingDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existUsingDocument, inquirer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mDocumentUserManager:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mDocumentUserManager:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;

    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUserManager;->exist(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSpenSDocDataSource(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "NotesDocumentInteractor"

    const-string v1, "getSpenSDocDataSource, uuid"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    const-string v2, "NotesDocumentInteractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSpenSDocDataSource, uuid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mIsClosing:Z

    const-string v1, "NotesDocumentInteractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, isClosing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mIsClosing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isIdle()Z
    .locals 5

    const-string v0, "NotesDocumentInteractor"

    const-string v1, "isIdle"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "NotesDocumentInteractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIdle, sDocMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", detail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NotesDocumentInteractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIdle, scheduler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-interface {v4}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->isIdle()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", detail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public notifyTaskEndedListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mDocumentInteractorListener:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public notifyTaskSavedListener(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Z)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mDocumentInteractorListener:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;->onSaved(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Z)V

    :cond_0
    return-void
.end method

.method public notifyTaskStartedListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mDocumentInteractorListener:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;->onStart()V

    :cond_0
    return-void
.end method

.method public open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p2, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$Builder;->build(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Landroid/os/Handler;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mode(I)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$1;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;

    move-result-object v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;->CACHE_NONE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;->CACHE_MEMORY:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->cacheStrategy(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->target(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->uuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->user(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    if-nez v0, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->needToCountUpDocReference(Z)Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->listener(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V

    return-void
.end method

.method public openCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$Builder;->build(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLockConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->lockConfirm(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->caller(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$2;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$LoadCacheTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->documentRepository(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->uuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->user(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;->needToCountUpDocReference(Z)Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->listener(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V

    return-void
.end method

.method public quit(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    monitor-enter v0

    :try_start_0
    const-string v1, "NotesDocumentInteractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quit, remains : { [SchedulerDataSource - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mIsClosing:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSchedulerDataSource:Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource;->close()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 6
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "NotesDocumentInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release, user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mSDocMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    invoke-interface {v2, p1}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->isUsed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NotesDocumentInteractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release, exist using cache : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reload(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/ReloadDocumentTask$Builder;->build(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Landroid/os/Handler;)Lcom/samsung/android/support/senl/nt/model/executor/task/ReloadDocumentTask;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->target(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->uuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->user(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->listener(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;)V

    return-void
.end method

.method public save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 10
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    new-instance v9, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;

    const-string v2, "save"

    move-object v0, v9

    move-object v1, p0

    move v3, p3

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;ZLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveDocumentTask$Builder;->build(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/support/senl/nt/model/executor/task/SaveDocumentTask;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveDocumentTask;->taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/SaveDocumentTask$SaveTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/SaveDocumentTask;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->target(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->uuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->user(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$3;

    invoke-direct {v1, p0, p1, p4}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$3;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Z)V

    invoke-direct {v0, p0, p5, v1}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->listener(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;

    invoke-direct {p2, v9}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;)V

    if-eqz p3, :cond_2

    :try_start_0
    const-string p1, "NotesDocumentInteractor"

    const-string p2, "save, thread locked."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "NotesDocumentInteractor"

    const-string p2, "save, thread unlocked."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "NotesDocumentInteractor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "save, e : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_2
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p2, "NotesDocumentInteractor"

    const-string p3, "save, thread unlocked."

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_3
    return-void
.end method

.method public saveCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 10
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    new-instance v9, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;

    const-string v2, "saveCache"

    move-object v0, v9

    move-object v1, p0

    move v3, p3

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;ZLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$Builder;->build(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Landroid/os/Handler;)Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;->taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask$SaveCacheTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/SaveCacheDocumentTask;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->target(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->uuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->user(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    invoke-direct {p2, p0, p4}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->listener(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;

    invoke-direct {p2, v9}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;)V

    if-eqz p3, :cond_2

    :try_start_0
    const-string p1, "NotesDocumentInteractor"

    const-string p2, "saveCache, thread locked."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "NotesDocumentInteractor"

    const-string p2, "saveCache, thread unlocked."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "NotesDocumentInteractor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "saveCache, e : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_2
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p2, "NotesDocumentInteractor"

    const-string p3, "saveCache, thread unlocked."

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_3
    return-void
.end method

.method public setDocumentInteractorListener(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mDocumentInteractorListener:Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;

    return-void
.end method

.method public snapSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 10
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    new-instance v9, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;

    const-string v2, "snapSave"

    move-object v0, v9

    move-object v1, p0

    move v3, p3

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Ljava/lang/String;ZLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/SnapSaveDocumentTask$Builder;->build(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Landroid/os/Handler;)Lcom/samsung/android/support/senl/nt/model/executor/task/SnapSaveDocumentTask;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/senl/nt/model/executor/task/SnapSaveDocumentTask;->taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/SnapSaveDocumentTask$SnapSaveTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/SnapSaveDocumentTask;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->target(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->uuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->user(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;

    invoke-direct {p2, p0, p4}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$CompletionCallback;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->listener(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;

    invoke-direct {p2, v9}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$SaveTaskSubmitListener;-><init>(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$BaseSaveTaskCallback;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->enqueue(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$TaskSubmitListener;)V

    if-eqz p3, :cond_2

    :try_start_0
    const-string p1, "NotesDocumentInteractor"

    const-string p2, "snapSave, thread locked."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "NotesDocumentInteractor"

    const-string p2, "snapSave, thread unlocked."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "NotesDocumentInteractor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "snapSave, e : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor;->mLocks:Ljava/util/Map;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_2
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p2, "NotesDocumentInteractor"

    const-string p3, "snapSave, thread unlocked."

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_3
    return-void
.end method
