.class public Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;
.super Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$Builder;,
        Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadDocumentTask"


# instance fields
.field private mLoadTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;

.field private mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

.field private mMode:I

.field private mSpenDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private checkDatabase(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->COMPOSER_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesDocumentPageRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->getPageIDs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;->getInvalidPageIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentPageRepository;->removeInvalidPages(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mMode:I

    return v0
.end method

.method private notifyOnLoadedCallback(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOnLoadedCallback, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", document  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadDocumentTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mLoadTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;

    if-eqz v0, :cond_0

    invoke-static {p1, p3, p4}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->create(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->subscribe(Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;->onLoaded(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V

    :cond_0
    return-void
.end method

.method private runCacheTask(Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LoadDocumentTask"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runCacheTask, cache : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", target : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getSpenSDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->success(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runCacheTask failed, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private runTask()V
    .locals 10

    const-string v0, "LoadDocumentTask"

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run, create doc instance. mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getLoadPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->isNew()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-interface {v1, v5}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->setNewDocument(Z)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v5

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setNewDocument(Z)V

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run, docExist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getWritingMode()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getPDFWriterCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to open doc, mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", restoreUnsavedData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", cachePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v2, Lcom/samsung/android/support/senl/document/SDocLocker;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mSpenDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->getMode()I

    move-result v7

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->createSpenDocument(Landroid/content/Context;[Ljava/lang/String;IZZ)Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->checkDatabase(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    :goto_4
    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->verifyLockAccountGuid(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;Ljava/lang/String;)Z

    invoke-interface {v1, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->getMode()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getLoadPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->notifyOnLoadedCallback(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V

    :cond_6
    const-string v2, "run, done."

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to open sdoc - success, uuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->success(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to open sdoc - fail, uuid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run failed, e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_5
    return-void
.end method


# virtual methods
.method public getType()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->LOAD:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    return-object v0
.end method

.method public locker(Lcom/samsung/android/support/senl/document/SDocLocker;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/document/SDocLocker;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    return-object p0
.end method

.method public mode(I)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mMode:I

    return-object p0
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "running... target : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheStrategy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mCacheStrategy:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadDocumentTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "open document task - start"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getCacheStrategy()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;->CACHE_MEMORY:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$CacheStrategy;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mLoadTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;->getCache(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->subscribe(Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->runCacheTask(Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->runTask()V

    const-string v0, "open document task - end"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public spenSDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mSpenDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    return-object p0
.end method

.method public taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;->mLoadTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;

    return-object p0
.end method
