.class public Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocXDocumentLocker;
.super Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SdocXFileLocker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocXDocumentLocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unlockSdocXFile(Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->setDocumentType(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->setOwnerId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocXDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockSdocXFile, fail to set ownerId, e : "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception p0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocXDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockSdocXFile, fail to setDocType, e : "

    goto :goto_0
.end method


# virtual methods
.method public getLockType()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
    .end annotation

    const/4 v0, 0x5

    return v0
.end method

.method public bridge synthetic lock()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->lock()Z

    move-result v0

    return v0
.end method

.method public lockFile()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getAccountGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocPath:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->setOwnerId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocPath:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->setDocumentType(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocXDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lockSdocXFile, fail to setDocType, e : "

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocXDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lockSdocXFile, fail to set ownerId, e : "

    goto :goto_0
.end method

.method public notifyToTagBoard()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->notifyTagBoardByUuid(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic unlock()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->unlock()Z

    move-result v0

    return v0
.end method

.method public unlockFile()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocXDocumentLocker;->unlockSdocXFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
