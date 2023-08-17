.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuPdfPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PwOptionMenuPdfPresenter"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;)V

    return-void
.end method


# virtual methods
.method public addSALogPdfExecute()V
    .locals 4

    const-string v0, "326"

    const-string v1, "6800"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isSingleMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    int-to-long v1, v2

    const-string v3, "3909"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public handleSecurePdf()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_this_protected_pdf_is_view_only:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public setPdfWriteState(Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setNotSave()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->init(ZZZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;->mMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;->invalidateOptionsMenu()V

    return-void
.end method
