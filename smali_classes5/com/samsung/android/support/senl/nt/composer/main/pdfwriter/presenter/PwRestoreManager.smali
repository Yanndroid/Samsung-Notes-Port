.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_RESTORE_INFO:Ljava/lang/String; = "restore_info"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeleteTargetCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPwFileManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

.field private mRestoreCheckFlag:Z

.field private mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PwRestoreManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreCheckFlag:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mPwFileManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    return-void
.end method

.method private findRestoreTargetAndRemoveItFrom(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->getOriginPdfFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->getCacheFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hasBackupData(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IView;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pdf_file_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasBackupData# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mPwFileManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getValidCacheFiles(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "hasBackupData# not exist cacheInfo"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->isSaveAs()Z

    move-result v3

    const-string v5, "hasBackupData# delete target# "

    if-eqz v3, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mPwFileManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getDeleteTargetList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mDeleteTargetCacheList:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mDeleteTargetCacheList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->findRestoreTargetAndRemoveItFrom(Ljava/lang/String;Ljava/util/List;)Ljava/io/File;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mPwFileManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    invoke-virtual {v6, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getDeleteTargetList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mDeleteTargetCacheList:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mDeleteTargetCacheList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->extractFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IView;->showRestoreDialog(J)V

    return v4

    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
.method public clearDeleteData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mDeleteTargetCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mDeleteTargetCacheList:Ljava/util/List;

    return-void
.end method

.method public createPwDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;->OpenByView:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo$OpenType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->getPdfFileInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->setPdfFileInfo(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)V

    return-object v0
.end method

.method public discard()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "discard#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mPwFileManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->deleteCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public done(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "done#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    :cond_0
    return-void
.end method

.method public getDeleteTargetCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mDeleteTargetCacheList:Ljava/util/List;

    return-object v0
.end method

.method public hasDeleteTarget()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mDeleteTargetCacheList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRestoreInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRestoreState(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IView;Landroid/os/Bundle;)Z
    .locals 2
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreCheckFlag:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreCheckFlag:Z

    if-nez p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->hasBackupData(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IView;)Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "restore_info"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    const-string v1, "restore_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public restore(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->TAG:Ljava/lang/String;

    const-string v1, "restore#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "pdf_open_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "new_doc"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "tool_type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdoc_uuid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->mRestoreInfo:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/RestoreInfo;->getPdfFileInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doc_path"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
