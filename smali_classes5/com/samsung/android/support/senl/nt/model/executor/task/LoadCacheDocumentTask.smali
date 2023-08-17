.class public Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;
.super Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$Builder;,
        Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$LoadCacheTaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadCacheDocumentTask"


# instance fields
.field private mCaller:Ljava/lang/String;

.field private mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "**>;"
        }
    .end annotation
.end field

.field private mLoadCacheTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$LoadCacheTaskCallback;

.field private mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "**>;)V"
        }
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

    const-string v1, ", document : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadCacheDocumentTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mLoadCacheTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$LoadCacheTaskCallback;

    if-eqz v0, :cond_0

    invoke-static {p1, p3, p4}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->create(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->subscribe(Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$LoadCacheTaskCallback;->onLoaded(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V

    :cond_0
    return-void
.end method

.method private runCacheTask(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LoadCacheDocumentTask"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runCacheTask, cache : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", target : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->isNewDocument()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setNewDocument(Z)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSaveStrategy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;->getSpenSDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->success(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runCacheTask failed, e : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private runTask(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V
    .locals 9
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LoadCacheDocumentTask"

    :try_start_0
    const-string v1, "runTask, create doc instance."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/document/SDocLocker;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mSpenDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->createSpenDocument(Landroid/content/Context;[Ljava/lang/String;IZZ)Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v3

    :goto_1
    instance-of v1, p1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setLoadTime(JLjava/lang/String;)V

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->verifyLockAccountGuid(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;Ljava/lang/String;)Z

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    instance-of v1, v3, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    if-eqz v1, :cond_3

    check-cast v3, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/nt/model/utils/VoiceDataUtil;->setCachedVoiceRecordingPath(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)V

    goto :goto_2

    :cond_3
    instance-of v1, v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v1, :cond_4

    check-cast v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {p1, v3, v2}, Lcom/samsung/android/support/senl/nt/model/utils/VoiceDataUtil;->setCachedVoiceRecordingPath(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getLoadPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->notifyOnLoadedCallback(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V

    const-string v1, "runTask, done."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->success(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runTask failed, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public caller(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadCacheDocumentTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mCaller:Ljava/lang/String;

    return-object p0
.end method

.method public documentRepository(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "**>;)",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-object p0
.end method

.method public getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return-object v0
.end method

.method public getType()Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;->LOAD_CACHE:Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$Type;

    return-object v0
.end method

.method public lockConfirm(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lockConfirm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoadCacheDocumentTask"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public locker(Lcom/samsung/android/support/senl/document/SDocLocker;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/document/SDocLocker;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locker : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadCacheDocumentTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mLocker:Lcom/samsung/android/support/senl/document/SDocLocker;

    return-object p0
.end method

.method public run()V
    .locals 6

    const-string v0, "open cache document task - end"

    const-string v1, "LoadCacheDocumentTask"

    :try_start_0
    const-string v2, "open cache document task - start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mDocumentRepository:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getWritingMode()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getPDFWriterCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running... target : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mTarget:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mCaller:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uuid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cachePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mLoadCacheTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$LoadCacheTaskCallback;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$LoadCacheTaskCallback;->getCache(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object v3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "running, SpenSDocDataSource : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/model/executor/injector/NotesDocumentInjector;->provide(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/model/repository/cache/DocumentCacheRepository;->subscribe(Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->runCacheTask(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mCaller:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/support/senl/nt/model/executor/injector/NotesDocumentInjector;->restoreCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->runTask(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "running, document not exist - uuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "running, cache not exist."

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t restore cache and memory cache not exist."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask;->fail(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public spenSDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mSpenDocument:Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    return-object p0
.end method

.method public taskListener(Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$LoadCacheTaskCallback;)Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask;->mLoadCacheTaskCallback:Lcom/samsung/android/support/senl/nt/model/executor/task/LoadCacheDocumentTask$LoadCacheTaskCallback;

    return-object p0
.end method
