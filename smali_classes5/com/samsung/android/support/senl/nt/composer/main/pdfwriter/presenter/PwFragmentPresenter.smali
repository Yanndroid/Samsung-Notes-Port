.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$PwComposerResolver;,
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$PwControllerManager;
    }
.end annotation


# static fields
.field private static final MAXIMUM_DOCUMENT_SIZE_MB:I = 0x800

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mRestoreManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PwFragmentPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setHashTagEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setRestoreEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setLiveSharingEnabled(Z)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->mRestoreManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    return-object p0
.end method

.method private closeIfNoCacheData(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const-string v1, "key_pw_saved_path"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->setSavedInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->unable_to_open_note:I

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mServiceContractImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mServiceContractImpl:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->getPdfFileInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->moveExistPwToFront(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)Z

    :cond_2
    const-string p1, "closeIfNoCacheData"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->finish(Ljava/lang/String;)Z

    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static bridge synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->mRestoreManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    return-object p0
.end method

.method private showSaveBackupDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->mRestoreManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->hasDeleteTarget()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;->setPwDialogContract(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->TAG:Ljava/lang/String;

    const-string v1, "showSaveBackupDialog# pending"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->addPendingJob(Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->TAG:Ljava/lang/String;

    const-string v1, "showSaveBackupDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;->showSaveBackupDialog()V

    :goto_0
    return-void
.end method

.method private unregisterFromPdfWriterManager(Landroid/app/Activity;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->unregister(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createComposerResolver(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$PwComposerResolver;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mComposerCloser:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$PwComposerResolver;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;)V

    return-object v0
.end method

.method public createHeirCreator()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;)V

    return-object v0
.end method

.method public createServiceContractImpl()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;
    .locals 7

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$2;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mComposerCloser:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->isRestoreEnabled()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->createServiceContract()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;)V

    return-object v6
.end method

.method public discardBackup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->mRestoreManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->discard()V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pdf_file_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated# no pdf data"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->setActivity(Landroid/app/Activity;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->finish(Ljava/lang/String;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->mRestoreManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/CompContract$IView;

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IView;

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->isRestoreState(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentContract$IView;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->closeIfNoCacheData(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p2

    if-eqz p2, :cond_3

    instance-of p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->getPdfFileInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->register(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)V

    :cond_3
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->unregisterFromPdfWriterManager(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachView(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->unregisterFromPdfWriterManager(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onDetachView(Landroid/app/Activity;)V

    return-void
.end method

.method public onInitFinished()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onInitFinished()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->mRestoreManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->done(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->showSaveBackupDialog()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;ZZ)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onSaveInstanceState(Landroid/os/Bundle;ZZ)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->mRestoreManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public restoreBackup(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwFragmentPresenter;->mRestoreManager:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/PwRestoreManager;->restore(Landroid/app/Activity;)V

    return-void
.end method

.method public setUuidToHandoffSender(Z)V
    .locals 0

    return-void
.end method
