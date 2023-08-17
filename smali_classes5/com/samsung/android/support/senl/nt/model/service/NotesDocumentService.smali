.class public abstract Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/service/IDocumentService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;,
        Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotesDocumentService"

.field private static final THREAD_TIME_OUT_SECONDS:J = 0x5L


# instance fields
.field public mContext:Landroid/content/Context;

.field private final mDelayedRunnableQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mNotesDocumentHandler:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;

.field private mServiceMaintainer:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

.field private final mServiceWrapperManager:Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mDelayedRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    const-string v1, "NotesDocumentService"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mServiceMaintainer:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mServiceWrapperManager:Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    return-void
.end method

.method private onDocumentServiceStarted()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v1, "DOC_SERVICE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->getDocumentUsecaseExecutor()Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/executor/ExecutorServiceUsecase;->init()V

    return-void
.end method

.method private printRemainedTasks()V
    .locals 2

    const-string v0, "NotesDocumentService"

    const-string v1, "printRemainedTasks"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "printRemainedTasks, tasks exist."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setTaskProgressListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mNotesDocumentHandler:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;->getDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$6;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->setTaskProgressListener(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public askForReadyToDownloadDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "askForReadyToDownloadDocument, inquirer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->getWrappers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->notifyOnReadyToDownloadDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "askForReadyToDownloadDocument, editor : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_1
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public askForReadyToReplaceOriginalDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "askForReadyToReplaceOriginalDocument, inquirer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->getWrappers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->notifyOnReadyToReplaceDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "askForReadyToReplaceOriginalDocument, editor : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_1
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public awaitTermination()V
    .locals 8

    const-string v0, "NotesDocumentService"

    const-string v1, "awaitTermination, "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->printRemainedTasks()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mDelayedRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;->executeDelayedRunnables(Ljava/util/concurrent/BlockingQueue;Landroid/os/Handler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v4

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "awaitTermination, running tasks exist."

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->quit(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "awaitTermination, e : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "awaitTermination, done, duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->printRemainedTasks()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->quit(Z)V

    throw v0
.end method

.method public close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;JLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 11
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;J",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - close, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    new-instance v10, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mDelayedRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    move-object v1, v10

    move-object v2, p0

    move-object v6, p1

    move-wide v7, p2

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$3;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;JLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    invoke-virtual {v0, v10, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - close, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->close(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public discardQuickSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - discardQuickSave, documentDataSource : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->discardCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object p2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mDelayedRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;->executeDelayedRunnables(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Landroid/os/Handler;)V

    return-void
.end method

.method public existUsingDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "existUsingDocument, inquirer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->existUsingDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDocumentServiceMaintainer()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mServiceMaintainer:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$7;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;->setServiceMaintainerListener(Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer$ServiceMaintainerListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mServiceMaintainer:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    return-object v0
.end method

.method public getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mNotesDocumentHandler:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mNotesDocumentHandler:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->setTaskProgressListener()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mNotesDocumentHandler:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;->getDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mServiceWrapperManager:Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    return-object v0
.end method

.method public abstract handleStartCommand(Landroid/content/Intent;II)V
.end method

.method public maintainConnection(ZLjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maintainConnection, maintain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bindService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "NotesDocumentService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maintainConnection, wrappers isEmpty : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getDocumentServiceMaintainer()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;->unbind(Landroid/content/Context;)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getDocumentServiceMaintainer()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;->bind(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public notifyDocumentOpenedListeners(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDocumentOpenedListeners, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requestUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->getWrappers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->notifyDocumentOpenedListener(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V

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

.method public notifyForceClosedDocument()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->getWrappers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->notifyForceClosedDocument()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyOnChangedDocumentListeners(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnChangedDocumentListeners, modifier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->getWrappers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->notifyOnChangedDocumentListener(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)V

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

.method public notifyOnChangedWorkingState(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->getWrappers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->notifyOnChangedWorkingState(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    goto :goto_0

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

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p1, "NotesDocumentService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$LocalBinder;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;Lcom/samsung/android/support/senl/nt/model/service/a;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v1, "DOC_SERVICE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$1;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->setOnWorkingStateListener(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$OnWorkingStateListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mServiceMaintainer:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->awaitTermination()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->isIdle()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "DOC_SERVICE"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - onStartCommand, intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->onDocumentServiceStarted()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->handleStartCommand(Landroid/content/Intent;II)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onSubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->onDocumentServiceStarted()V

    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const-string p1, "NotesDocumentService"

    const-string v0, "onTaskRemoved"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->setTaskRemoved(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->notifyForceClosedDocument()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->awaitTermination()V

    return-void
.end method

.method public abstract onUnsubscribed(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - open, documentRepository : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/injector/NotesDocumentInjector;->provide(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public openCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - openCache, documentRepository : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mDelayedRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$DelayedRunnable;->cancelDelayedRunnable(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$2;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->openCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public release(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;JLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 9
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            "J",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - release, user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$4;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mDelayedRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$4;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/util/concurrent/BlockingQueue;JLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    invoke-virtual {v0, v8, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reload(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - reload, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->reload(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 8
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;ZZ",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - save, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sync : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", doNotShowSavedToast : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;

    invoke-direct {v7, p0, p4, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$5;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public saveCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;Z",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - saveCache, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->saveCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public sendBroadcastMessage(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NotesDocumentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastMessage, sender : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->getWrappers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->notifyOnReceiveBroadcastMessage(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Intent;)V

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

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setDocumentHandler(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->mNotesDocumentHandler:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandlerWrapper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->setTaskProgressListener()V

    return-void
.end method

.method public snapSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;Z",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelRefactoring - snapSave, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->snapSave(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;ZLcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public stopSelfIfNoLongerUsed()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->isIdle()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getServiceWrapperManager()Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/service/DocumentServiceWrapperManager;->isEmpty()Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "NotesDocumentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopSelfIfNoLongerUsed, wrappers is empty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isIdle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getNotesDocumentHandler()Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentHandler;->quit(Z)V

    const-string v0, "NotesDocumentService"

    const-string v1, "stopSelfIfNoLongerUsed, There are no wrappers. so try to stop self."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v1, "DOC_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
