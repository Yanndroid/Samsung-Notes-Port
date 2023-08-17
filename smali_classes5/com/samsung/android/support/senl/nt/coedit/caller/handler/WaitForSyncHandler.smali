.class public Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WaitForSyncHandler"


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mSyncRequestedSpaceIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncRequestedSpaceIdsLock:Ljava/lang/Object;

.field private final mSyncRequiredUuids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitForSync:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "WaitForSyncHandler_handler"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIdsLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIds:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequiredUuids:Ljava/util/Set;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mWaitForSync:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIds:Ljava/util/Queue;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIdsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequiredUuids:Ljava/util/Set;

    return-object p0
.end method

.method private externalSnapStartAllList(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "externalSnapStartAllList spaceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitForSyncHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->requestSharedItemList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "externalSnapStartAllList, result null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "externalSnapStartAllList, requestSharedItemSync size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->registerExternalSnap(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Z)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->INVALID:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    if-ne v1, v2, :cond_1

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->checkWaitingExternalSnap()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->externalSnapStartAllList(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->getSnapState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    move-result-object p0

    return-object p0
.end method

.method private getSnapState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WaitForSyncHandler"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "externalSnapStart, ignore, not coeditUuid, uuid: ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->SKIP:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mContract:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->isRunningNoteUuids(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "externalSnapStart, ignore, uuid: ["

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is running"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->SKIP:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1

    :cond_1
    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequiredUuids:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is not required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->SKIP:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result p4

    if-nez p4, :cond_3

    const-string p1, "externalSnapStart, stop, data network failed or wifi mode enabled"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->INVALID:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/CoeditStartManager;->canStartCoedit()Z

    move-result p4

    if-nez p4, :cond_4

    const-string p1, "externalSnapStart, stop, Smart Switch started"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->INVALID:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1

    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "externalSnapStart, groupId is empty, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->SKIP:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1

    :cond_5
    new-instance p3, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "externalSnapStart, entity is invalid, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->SKIP:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1

    :cond_6
    invoke-virtual {p3}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "externalSnapStart, filePath is empty, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->SKIP:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1

    :cond_7
    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->VALID:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1
.end method

.method private registerExternalSnap(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Z)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;
    .locals 12

    invoke-virtual {p2}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lm/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v0, v5, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->getSnapState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->INVALID:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    if-ne v1, v2, :cond_0

    return-object v2

    :cond_0
    sget-object v2, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->SKIP:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    if-ne v1, v2, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->getOriginFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    return-object v2

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;

    new-instance v11, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v6, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v10, v0, v11, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;Z)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->registerExternalSnap(Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->VALID:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    return-object p1
.end method


# virtual methods
.method public addSpaceIdToSyncRequestedSpaceIds(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIds:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSpaceIdToSyncRequestedSpaceIds, add spaceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitForSyncHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIds:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelRequestedSync()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mWaitForSync:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIdsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "WaitForSyncHandler"

    const-string v2, "cancelRequestedSync"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequiredUuids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIds:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOriginFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "WaitForSyncHandler"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "externalSnapStart, entity is invalid, "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "externalSnapStart, filePath is empty, "

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public registerExternalSnap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerExternalSnap uuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spaceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitForSyncHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->requestSharedItemList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p1, "registerExternalSnap, result null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "uuid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->registerExternalSnap(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Z)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->checkWaitingExternalSnap()V

    :cond_3
    return-void
.end method

.method public requestSync(Ljava/util/List;Ljava/util/Set;)V
    .locals 5
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIdsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIds:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIds:Ljava/util/Queue;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequiredUuids:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "WaitForSyncHandler"

    const-string p2, "requestSync, ignore, same request data used"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "WaitForSyncHandler"

    const-string p2, "requestSync, ignore, empty spaceIds reuested"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string p1, "WaitForSyncHandler"

    const-string p2, "requestSync, ignore, CoeditWithComposerRunning"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mWaitForSync:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mWaitForSync:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIdsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    const-string v0, "WaitForSyncHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSync : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequiredUuids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequiredUuids:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mSyncRequestedSpaceIds:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->addSpaceIdToSyncRequestedSpaceIds(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->mWaitForSync:Landroid/os/Handler;

    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
