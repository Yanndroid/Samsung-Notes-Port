.class public Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocDocumentLocker;
.super Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SdocDocumentLocker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocDocumentLocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLockType()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic lock()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->lock()Z

    move-result v0

    return v0
.end method

.method public lockFile()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->isLocked(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockFile, isLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;->makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->lock(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockFile, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public notifyToTagBoard()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/tag/OldHashtagResolver;->notifyTagBoardByUuid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic unlock()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->unlock()Z

    move-result v0

    return v0
.end method

.method public unlockFile()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->isLocked(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockFile, isLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;->makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->unlock(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->isEncryptedBy64BitKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocUuid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->checkValidEncryptedContent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/SdocDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockFile, e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
