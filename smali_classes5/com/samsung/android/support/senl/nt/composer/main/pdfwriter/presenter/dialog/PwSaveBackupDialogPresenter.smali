.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;

.field private final mCreator:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogContract$IDialogCreator;

.field private final mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PwSaveBackupDialogPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogContract$IDialogCreator;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    return-void
.end method


# virtual methods
.method public discard()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "discard#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;->getCacheList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->getOriginPdfFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->getCacheFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->deleteCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;->clearData()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discard# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public findFragmentByTag(Landroid/app/Activity;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->findFragmentByTag(Landroid/app/Activity;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;->getCacheList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->getOriginPdfFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public save()V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "save#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;->getPageSize([I)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;->getCacheList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v0, v0, v6

    invoke-direct {v1, v2, v3, v5, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;-><init>(Landroid/app/Activity;Ljava/util/List;II)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;->getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->canShow(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogContract$IDialogCreator;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogContract$IDialogCreator;->createSaveBackupDialogFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->show(Landroid/app/Activity;Ljava/lang/String;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method
