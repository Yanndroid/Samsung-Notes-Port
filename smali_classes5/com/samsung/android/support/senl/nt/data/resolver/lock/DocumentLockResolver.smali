.class public Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DocumentLockResolver"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeAccountGuidByUuid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ".sdocx"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->setOwnerId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesLockDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->changeAccountGuidByUuid(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs changeLockGuidForUndefined(Landroid/content/Context;Ljava/lang/String;[I)V
    .locals 5
    .param p2    # [I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesLockDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object p0

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p2, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v4, v3, v1

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->getPathListWithEmptyGuid([I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->setOwnerId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeLockGuidForUndefined, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->changeLockGuidForUndefined(Ljava/lang/String;[I)V

    return-void
.end method

.method private static createFileLocker(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/DocumentLocker;
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->getDocumentFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".sdoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocDocumentLocker;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocDocumentLocker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v1, ".sdocx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocXDocumentLocker;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocXDocumentLocker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/UnknownDocumentLocker;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/UnknownDocumentLocker;-><init>()V

    return-object p0
.end method

.method public static execute(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->lock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->unlock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static getDocumentFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->TAG:Ljava/lang/String;

    const-string p1, "getDocumentFilePath, docUuid is null."

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->TAG:Ljava/lang/String;

    const-string p1, "getDocumentFilePath, docPath is null."

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static lock(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock() : docUuid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->createFileLocker(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/DocumentLocker;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/DocumentLocker;->lock()Z

    move-result p0

    return p0
.end method

.method public static unlock(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock() : docUuid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->createFileLocker(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/DocumentLocker;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/DocumentLocker;->unlock()Z

    move-result p0

    return p0
.end method
