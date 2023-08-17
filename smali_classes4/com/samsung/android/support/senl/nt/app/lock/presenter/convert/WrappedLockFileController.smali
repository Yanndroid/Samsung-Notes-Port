.class public Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WrappedLockFileController"


# instance fields
.field private mSpenSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

.field private mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    const-string v0, ".sdocx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenWNote(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    goto :goto_0

    :cond_0
    const-string v0, ".sdoc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSpenSDoc(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->WNOTE_LOCKED_FILE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getAttachedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    if-eqz v0, :cond_2

    sget v2, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->SDOC_LOCKED_FILE_KEY:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getBoundFilePath(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "WrappedLockFileController"

    if-eqz v2, :cond_1

    const-string v1, "getFilePath, file path is empty"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->extractFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const-string v7, "@"

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePath# IOException e: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public release()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const-string v1, "WrappedLockFileController"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseDocFile# fail to close SpenWnote, e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->mSpenSDoc:Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseDocFile# fail to close SpenSDoc,  e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
