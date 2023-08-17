.class public Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditNoteUpDownloader"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;


# instance fields
.field private final mDeleteHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;

.field private final mExternalAccessibleChecker:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;

.field private final mInternalImportHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;

.field private final mPollingHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

.field private final mRunningNoteUuids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningNoteUuidsLock:Ljava/lang/Object;

.field private final mServiceConnectHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

.field private mStopCoeditListener:Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;

.field private final mWaitForDownloadHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

.field private final mWaitForSyncHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuids:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuidsLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mPollingHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mServiceConnectHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mDeleteHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mExternalAccessibleChecker:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mInternalImportHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForDownloadHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForSyncHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mInstance:Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mInstance:Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mInstance:Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;
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
.method public addToRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuids:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CoeditNoteUpDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToRunningNoteUuids, already exists, uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", caller: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuids:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "CoeditNoteUpDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToRunningNoteUuids, added on RunningNoteUuids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", caller: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelCoeditTrimLocalSDoc()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForDownloadHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->cancelCoeditTrimLocalSDoc()V

    return-void
.end method

.method public cancelRequestedDownload()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForDownloadHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->cancelRequestedDownload()V

    return-void
.end method

.method public cancelRequestedSync()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForSyncHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->cancelRequestedSync()V

    return-void
.end method

.method public downloadSpenWNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mServiceConnectHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->downloadSpenWNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V

    return-void
.end method

.method public externalSnapStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mServiceConnectHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ServiceConnectHandler;->externalSnapStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V

    return-void
.end method

.method public finishPolling()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mPollingHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;->finishPolling()V

    return-void
.end method

.method public importNoteToCoedit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mInternalImportHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->importNoteToCoedit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object p1

    return-object p1
.end method

.method public importNoteToCoedit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lj/a;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lj/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lj/a;",
            ")",
            "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mInternalImportHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/InternalImportHandler;->importNoteToCoedit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lj/a;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object p1

    return-object p1
.end method

.method public isExceedRunningNoteUuids()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isExistRunningNoteUuids()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunningNoteUuids(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuids:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

.method public registerExternalSnap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForSyncHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->registerExternalSnap(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeFromRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuids:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "CoeditNoteUpDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFromRunningNoteUuids, removed from RunningNoteUuids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", caller: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mRunningNoteUuids:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mStopCoeditListener:Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;->onEnded(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mStopCoeditListener:Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public requestConnectSession()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m(I)V

    return-void
.end method

.method public requestDeleteItems(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lv/d$c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv/d$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lv/d$c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mDeleteHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;->requestDeleteItems(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lv/d$c;)V

    return-void
.end method

.method public requestDeleteLocalNoteByPush(Landroid/content/Context;Ljava/lang/String;Lv/d$c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lv/d$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mDeleteHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;->requestDeleteLocalNoteByPush(Landroid/content/Context;Ljava/lang/String;Lv/d$c;)V

    return-void
.end method

.method public requestDisconnectSession()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    return-void
.end method

.method public requestDownload(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForDownloadHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->requestDownload(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    return-void
.end method

.method public requestDownloadAddedNoteByPush(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForDownloadHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->requestDownloadAddedNoteByPush(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    return-void
.end method

.method public requestDownloadAddedNoteFromComposer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForDownloadHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->requestDownloadAddedNoteFromComposer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    return-void
.end method

.method public requestDownloadByPush(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForDownloadHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->requestDownloadByPush(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    return-void
.end method

.method public requestDownloadStandalone(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForDownloadHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->requestDownloadStandalone(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    return-void
.end method

.method public requestExternalAccessibleNotes(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mExternalAccessibleChecker:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;->requestExternalAccessibleNotes(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;)Z

    move-result p1

    return p1
.end method

.method public requestSync(Ljava/util/List;Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mWaitForSyncHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->requestSync(Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public setStopCoeditListener(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mStopCoeditListener:Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;

    return-void
.end method

.method public startPolling(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->mPollingHandler:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;->startPolling(Ljava/lang/String;)V

    return-void
.end method

.method public stopDownloadCoeditBySmartSwitch(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->isExistRunningNoteUuids()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;->onEnded(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->setStopCoeditListener(Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->cancelRequestedDownload()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->cancelRequestedSync()V

    return-void
.end method
