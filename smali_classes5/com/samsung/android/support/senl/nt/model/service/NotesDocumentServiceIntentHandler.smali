.class public Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotesDocumentServiceIntentHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotesDocumentUsecaseExecutor:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mNotesDocumentUsecaseExecutor:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;)Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mNotesDocumentUsecaseExecutor:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->removeCache(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->updateResaveTaskPreference(Z)V

    return-void
.end method

.method private prepareCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->stopTrimCache(Landroid/content/Context;)V

    return-void
.end method

.method public static provideNotesDocumentIntentHandler(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;)Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;)V

    return-object v0
.end method

.method private removeCache(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->deleteDocumentDat(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private resave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resave, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentServiceIntentHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$2;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;Ljava/lang/Runnable;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->restoreByUuid(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    sget-object v6, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->DOCUMENT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    const-string v2, ""

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->createWordDocRepository()Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mNotesDocumentUsecaseExecutor:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/model/executor/injector/NotesDocumentInjector;->provide(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;->open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method private restore(Ljava/io/File;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;I)V
    .locals 8
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "*>;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore, cache file :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentServiceIntentHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".dat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "restore, it is not cache file."

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string p1, "_screenoff"

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "restore, do not restore screen off caches - uuid : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    sget-object p3, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->DOCUMENT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    :cond_2
    move-object v7, p3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mNotesDocumentUsecaseExecutor:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    const/4 v5, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v6, "NotesDocumentServiceIntentHandler"

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->createWordDocRepository()Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setWritingMode(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;->openCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method private restoreByUuid(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "*>;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreByUuid, cache uuid :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentServiceIntentHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mNotesDocumentUsecaseExecutor:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    if-nez p3, :cond_0

    sget-object p3, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->DOCUMENT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    :cond_0
    move-object v6, p3

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "NotesDocumentServiceIntentHandler"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->createWordDocRepository()Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;->openCache(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method private restoreDocumentCaches(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "*>;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->existAnyCacheFiles(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "NotesDocumentServiceIntentHandler"

    const-string p2, "restoreCache, cache dir is not exist."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "restore_uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->restoreByUuid(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getCacheFolderFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    invoke-direct {p0, v3, p2, p3, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->restore(Ljava/io/File;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private restorePDFWriterCaches(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 5
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
            "*>;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getPDFWriterCacheFolderFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/16 v4, 0x64

    invoke-direct {p0, v3, p1, p2, v4}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->restore(Ljava/io/File;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateResaveTaskPreference(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateResaveTaskPreference, inProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentServiceIntentHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APP_UPDATE_PREFERENCE"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "CACHE_RESAVE_TASK_IN_PROGRESS"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public prepareCache(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p2, "sdoc_uuid"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentIntentUtils;->getIntentCaller(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareCache, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", caller : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotesDocumentServiceIntentHandler"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->prepareCache()V

    return-void
.end method

.method public removeCacheAndResave(Landroid/content/Intent;)V
    .locals 11
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->existAnyCacheFiles(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "NotesDocumentServiceIntentHandler"

    if-nez v0, :cond_0

    const-string p1, "removeCacheAndResave, cache dir is not exist."

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getCacheFolderFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "removeCacheAndResave, listFiles is empty"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentIntentUtils;->getIntentCaller(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_4

    aget-object v7, v0, v6

    const-string v8, "removeCacheAndResave, cache file : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".dat"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v7, "removeCacheAndResave, it is not cache file.\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->getFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v9, "_screenoff"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "removeCacheAndResave, do not restore screen off caches - uuid : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v5}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->updateResaveTaskPreference(Z)V

    return-void

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->updateResaveTaskPreference(Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1, v3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->resave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public restoreCaches(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreCache, intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentServiceIntentHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->restoreDocumentCaches(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->restorePDFWriterCaches(Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-void
.end method

.method public save(Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "sdoc_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "body"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "folder_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "background_color"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v1, "background_color_inverted"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentIntentUtils;->getIntentCaller(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save, intent caller : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", folderPath : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColorInverted : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NotesDocumentServiceIntentHandler"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->DOCUMENT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentIntentUtils;->getFolderUuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "save failed"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public save(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 7
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", folderUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColorInverted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotesDocumentServiceIntentHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, p8

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->createWordDocRepository()Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setNewDocument(Z)V

    iget-object p8, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {p8, p1}, Lcom/samsung/android/support/senl/nt/model/executor/injector/NotesDocumentInjector;->provide(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p8

    invoke-virtual {p8, p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setNewDocument(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {p1, p5}, Lcom/samsung/android/support/senl/nt/model/utils/NotesDocumentIntentUtils;->setFolderUuid(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mNotesDocumentUsecaseExecutor:Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$3;-><init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {p1, p8, p2}, Lcom/samsung/android/support/senl/nt/model/executor/DocumentUsecaseExecutor;->open(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;)V

    return-void
.end method

.method public trimCache(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trimCache, caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotesDocumentServiceIntentHandler"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->trimCache(Landroid/content/Context;)V

    return-void
.end method
