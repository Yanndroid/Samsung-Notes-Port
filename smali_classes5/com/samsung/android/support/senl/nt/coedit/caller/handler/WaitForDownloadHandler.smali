.class public Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WaitForDownloadHandler"


# instance fields
.field private mCoeditTrimLocalSDoc:Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;

.field private final mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

.field private final mDeleteNotifyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadListLock:Ljava/lang/Object;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mWaitForDownload:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadListLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mCoeditTrimLocalSDoc:Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDeleteNotifyList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "WaitForDownloadHandler_handler"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mCoeditTrimLocalSDoc:Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;

    return-object p0
.end method

.method private addOnlyNewSpaceIdToDownloadList(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRunnable:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRunnable:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    const-string v1, "WaitForDownloadHandler"

    if-nez v0, :cond_4

    const-string v0, "[CS7] addOnlyNewSpaceIdToDownloadList "

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " first"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    invoke-interface {p2, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string p1, "[CS7] addOnlyNewSpaceIdToDownloadList : exist!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private addOnlyNewSpaceIdToDownloadListFromComposer(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mItemId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mItemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRunnable:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRunnable:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    const-string v1, "WaitForDownloadHandler"

    if-nez v0, :cond_4

    const-string v0, "[CS7] addOnlyNewSpaceIdToDownloadListFromComposer "

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " first"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    invoke-interface {p2, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string p1, "[CS7] addOnlyNewSpaceIdToDownloadListFromComposer : exist!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadListLock:Ljava/lang/Object;

    return-object p0
.end method

.method private downloadSpenWNoteOnFailed(Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS7-2] downloadSpenWNote, onFailed(), itemId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uuid : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WaitForDownloadHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->deleteTempFile(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    const-string p3, "requestDownloadInternal-onFailed"

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->removeFromRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->publishLinkSharingFailedEvent(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method private downloadSpenWNoteOnFinished(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p4

    move-object/from16 v14, p7

    move-object/from16 v13, p8

    const-string v12, "requestDownloadInternal-onFinished"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7-1] requestDownloadInternal, onFinished() saveCoeditNote : uuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "WaitForDownloadHandler"

    invoke-static {v11, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    move-object/from16 v2, p2

    invoke-direct {v9, v2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->a()Lx/a;

    move-result-object v3

    invoke-interface {v3}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".sdocx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v9}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->h()V

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    const-string v6, "lastModifiedAt"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    :cond_0
    move-wide v7, v4

    :goto_0
    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getCreatedTime()J

    move-result-wide v5

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getModifiedTime()J

    move-result-wide v17

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getLeaderId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getResourceId()Ljava/lang/String;

    move-result-object v21
    :try_end_0
    .catch Ly1/b; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move-object/from16 v22, v9

    move-wide/from16 v9, v17

    move-object/from16 v23, v11

    move-object/from16 v11, p4

    move-object/from16 v24, v12

    move-object/from16 v12, v19

    move-object/from16 v13, p5

    move-object/from16 v14, v20

    move-object/from16 v15, v16

    move-object/from16 v16, p6

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    :try_start_1
    invoke-static/range {v2 .. v18}, Lv/g;->r(Landroid/content/Context;ZLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Z

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->exists()Z

    move-result v3
    :try_end_1
    .catch Ly1/b; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-static/range {p4 .. p4}, Lv/d;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3
    :try_end_2
    .catch Ly1/b; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ly1/b; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->setWorkspaceId(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getModifiedTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->updateTitleAndModifiedTime(Ljava/lang/String;J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7-1] requestDownloadInternal, workspaceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ly1/b; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v3, v23

    :try_start_5
    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/caller/Event;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COEDIT_LINK_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/support/senl/nt/coedit/caller/Event;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/Event;->setEventData(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;->publish(Lcom/samsung/android/support/senl/nt/coedit/caller/Event;)Z

    move-object/from16 v2, p4

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object/from16 v3, v23

    :goto_2
    move-object/from16 v2, p4

    :goto_3
    move-object/from16 v4, p7

    move-object/from16 v5, p8

    goto :goto_7

    :cond_2
    move-object/from16 v3, v23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS7-2] requestDownloadInternal, fail to save : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ly1/b; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v2, p4

    :try_start_6
    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->publishLinkSharingFailedEvent(Ljava/lang/String;)V
    :try_end_6
    .catch Ly1/b; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    move-object/from16 v4, p7

    move-object/from16 v5, p8

    :try_start_7
    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->onSuccess(Ljava/lang/String;)Z
    :try_end_7
    .catch Ly1/b; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->deleteTempFile(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->j()V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-object/from16 v6, v24

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v4, p7

    :goto_5
    move-object/from16 v6, v24

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    :goto_6
    move-object/from16 v2, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v3, v23

    :goto_7
    move-object/from16 v6, v24

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v22, v9

    move-object v6, v12

    move-object v4, v14

    goto :goto_b

    :catch_a
    move-exception v0

    goto :goto_8

    :catch_b
    move-exception v0

    :goto_8
    move-object/from16 v22, v9

    move-object v3, v11

    move-object v6, v12

    move-object v5, v13

    move-object v4, v14

    move-object v2, v15

    :goto_9
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CS7-2] requestDownloadInternal, onFinished() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->publishLinkSharingFailedEvent(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->onFailed(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->deleteTempFile(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->j()V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    :goto_a
    invoke-interface {v0, v4, v6}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->removeFromRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v0

    :goto_b
    invoke-static/range {p6 .. p6}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->deleteTempFile(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->j()V

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    invoke-interface {v2, v4, v6}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->removeFromRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mCoeditTrimLocalSDoc:Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;

    return-void
.end method

.method private finishRequestDownloadInternal([ILjava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->getLocalCoeditDocItemsBySpaceId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->requestSharedItemList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "WaitForDownloadHandler"

    if-nez v2, :cond_0

    const-string v2, "[CS8] finishRequestDownloadInternal() : requestSharedItemList Failed"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS8] finishRequestDownloadInternal() : requestSharedItemSync current size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    aget p1, p1, v4

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->publishLinkSharingFailedEvent(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDeleted()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->notifyDeleteComplete(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS8] finishRequestDownloadInternal() : delete "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteCoedit"

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/app/notes/sync/db/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS8] finishRequestDownloadInternal() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already deleted!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->downloadSpenWNoteOnFailed(Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V

    return-void
.end method

.method private getLocalCoeditDocItemsBySpaceId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "WaitForDownloadHandler"

    const-string v1, "Start to get local coedit list "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/f;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/f;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->downloadSpenWNoteOnFinished(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->requestDownloadInternal(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V

    return-void
.end method

.method private notifyDeleteComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllNoteData notify, uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WaitForDownloadHandler"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDeleteNotifyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDeleteNotifyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mItemId:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->onSuccess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAllNoteData notify 2, uuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDeleteNotifyList:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private publishLinkSharingFailedEvent(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/Event;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COEDIT_LINK_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/Event;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/Event;->setEventData(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;->publish(Lcom/samsung/android/support/senl/nt/coedit/caller/Event;)Z

    return-void
.end method

.method private requestDownloadInternal(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v12, v11, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS7] requestDownloadInternal : spaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "WaitForDownloadHandler"

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[CS7] requestDownloadInternal : spaceId is empty"

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    :try_start_0
    const-string v0, "requestSharedItemSync start"

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v12, v0}, Lu/f;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    invoke-static {v12}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm/a;->b(Ljava/lang/String;)V

    const-string v0, "requestSharedItemSync end"

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS7] requestSharedItemSync failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v12}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->publishLinkSharingFailedEvent(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    invoke-virtual {v0, v14, v12}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->requestSharedItemList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "[CS7-2] sharedItemListResult is null"

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v12}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->publishLinkSharingFailedEvent(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[CS7-2] sharedItemListResult is empty"

    invoke-static {v13, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v12}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->publishLinkSharingFailedEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS7-1] sharedItemListResult size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v15, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v15, v14}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    const-string v1, "CoeditPref"

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "CoeditPrefKeyReadAllTime"

    const-wide/16 v8, -0x1

    invoke-virtual {v1, v2, v8, v9}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/16 v18, 0x0

    aput v18, v7, v18

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    iget-boolean v2, v11, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRequestFirst:Z

    if-eqz v2, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v11, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mItemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "uuid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7] requestDownloadInternal, ignore, not coeditUuid, uuid: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object v1, v7

    goto/16 :goto_a

    :cond_4
    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->isLocalDataChanged(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7-2] requestDownloadInternal, isLocalDataChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    iget-object v2, v10, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    invoke-interface {v2, v6}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->isRunningNoteUuids(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7-2] requestDownloadInternal, ignore, uuid: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is running"

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v2

    const-string v3, "[CS7-2] requestDownloadInternal, stop, data network failed or wifi mode enabled"

    if-nez v2, :cond_7

    invoke-static {v13, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_7
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;->canStartCoedit()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v0, "[CS7-2] requestDownloadInternal, stop, Smart Switch started"

    invoke-static {v13, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_8
    new-instance v2, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-direct {v2, v14, v6}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v5, v3}, Lv/g;->n(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v2, v5}, Lv/g;->l(Lcom/samsung/android/app/notes/sync/db/s;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    move-object v1, v7

    move-object v7, v6

    goto :goto_8

    :cond_a
    :goto_6
    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMemo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lv/d;->l(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v15, v6}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getCheckpoint(Ljava/lang/String;)J

    move-result-wide v19

    cmp-long v21, v3, v8

    if-eqz v21, :cond_b

    cmp-long v21, v19, v8

    if-eqz v21, :cond_b

    cmp-long v3, v19, v3

    if-gez v3, :cond_b

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v19

    move-object v2, v15

    move-wide/from16 v3, v16

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-wide/from16 v5, v19

    move-object v1, v7

    move-object/from16 v7, v22

    invoke-static/range {v2 .. v7}, Lm/a;->c(Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;JJLjava/lang/String;)V

    goto :goto_7

    :cond_b
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object v1, v7

    :goto_7
    new-instance v2, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;

    move-object/from16 v7, v22

    invoke-direct {v2, v7}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getModifiedTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->updateTitleAndModifiedTime(Ljava/lang/String;J)V

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7-1] requestDownloadInternal, ignore, uuid: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_c
    move-object/from16 v21, v5

    move-object v1, v7

    move-object v7, v6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v13, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v12}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->publishLinkSharingFailedEvent(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_c

    :cond_d
    invoke-static {v14}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".sdocx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7-2] requestDownloadInternal, groupId is empty, uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object v7, v1

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_e
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v12, v2}, Lv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget v2, v1, v18

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v1, v18

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v4

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;

    move-object/from16 v19, v0

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;

    move v11, v3

    move-object v3, v1

    move-object v1, v0

    move-object/from16 v20, v13

    move-object v13, v2

    move-object/from16 v2, p0

    move-object/from16 v23, v3

    move-object v3, v7

    move-object/from16 v24, v4

    move-object v4, v14

    move-object/from16 v22, v14

    move-object v14, v7

    move-object/from16 v7, v21

    move-wide/from16 v25, v8

    move-object v8, v12

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V

    invoke-direct {v13, v14, v0, v11}, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;Z)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->registerExternalSnap(Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;)V

    move v1, v11

    move-object/from16 v0, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v22

    move-object/from16 v7, v23

    move-wide/from16 v8, v25

    move-object/from16 v11, p1

    goto/16 :goto_2

    :cond_f
    :goto_b
    move-object v0, v7

    :goto_c
    invoke-direct {v10, v0, v12}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->finishRequestDownloadInternal([ILjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->checkWaitingExternalSnap()V

    return-void
.end method


# virtual methods
.method public cancelCoeditTrimLocalSDoc()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mCoeditTrimLocalSDoc:Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;

    if-eqz v0, :cond_0

    const-string v0, "WaitForDownloadHandler"

    const-string v1, "[CS9] handleMessage : cancel the coedit trim"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mCoeditTrimLocalSDoc:Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mCoeditTrimLocalSDoc:Lcom/samsung/android/app/notes/sync/coedit/sharecore/CoeditTrimLocalSDoc;

    :cond_0
    return-void
.end method

.method public cancelRequestedDownload()V
    .locals 2

    const-string v0, "WaitForDownloadHandler"

    const-string v1, "cancelRequestedDownload"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->removeMessages()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeMessages()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public requestDownload(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS2] requestDownload : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitForDownloadHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->addOnlyNewSpaceIdToDownloadList(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestDownloadAddedNoteByPush(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS2] requestDownloadAddedNoteByPush : spaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitForDownloadHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->addOnlyNewSpaceIdToDownloadList(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestDownloadAddedNoteFromComposer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS2] requestDownloadAddedNoteFromComposer : spaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitForDownloadHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRequestFirst:Z

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->addOnlyNewSpaceIdToDownloadListFromComposer(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestDownloadByPush(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS2] requestDownloadByPush() : spaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitForDownloadHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->addOnlyNewSpaceIdToDownloadList(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestDownloadStandalone(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->requestCoEditStandAloneSpaceList()Ljava/util/List;

    move-result-object v0

    const-string v2, "WaitForDownloadHandler"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS7-1] requestDownloadStandalone() : # of coedit standalone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/mobileservice/social/share/Space;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;->getGroupCount(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# of group member : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_1

    new-instance v4, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->addOnlyNewSpaceIdToDownloadList(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;Z)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CS7] # of valid coedit standalone : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mDownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3
    :goto_1
    const-string p1, "[CS7] requestDownloadStandalone() : No standalone spaces!"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendMessageDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->mWaitForDownload:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
