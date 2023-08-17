.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager$PwConvertSettingDialogPresenter;,
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager$PwSaveNoteConfirmDialogPresenter;
    }
.end annotation


# instance fields
.field private mSaveBackupDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createConvertSettingDialogPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ConvertSettingDialogPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager$PwConvertSettingDialogPresenter;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager$PwConvertSettingDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V

    return-object v0
.end method

.method public createSaveNoteConfirmDialogPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveNoteConfirmDialogPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager$PwSaveNoteConfirmDialogPresenter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager$PwSaveNoteConfirmDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    return-object v0
.end method

.method public getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x1f4

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;->mSaveBackupDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    :cond_0
    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogContract$IDialogCreator;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;->mSaveBackupDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    return-void
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;->mSaveBackupDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;->mSaveBackupDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    :cond_0
    return-void
.end method

.method public setPwDialogContract(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;->mSaveBackupDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->setContract(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter$Contract;)V

    return-void
.end method

.method public showSaveBackupDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwDialogPresenterManager;->mSaveBackupDialogPresenter:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/dialog/PwSaveBackupDialogPresenter;->show()V

    return-void
.end method
