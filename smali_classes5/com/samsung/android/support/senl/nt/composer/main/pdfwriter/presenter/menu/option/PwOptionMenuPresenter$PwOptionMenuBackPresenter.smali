.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuBackPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PwOptionMenuBackPresenter"
.end annotation


# instance fields
.field private final mViewModeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuBackPresenter$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuBackPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuBackPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuBackPresenter;->mViewModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuBackPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuBackPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method


# virtual methods
.method public goBackComposer(Landroid/app/Activity;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->canSkipBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->clearCurrentState()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->getScenario(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->finishComposer(Landroid/app/Activity;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwComposerModel;->trimCacheInfo()V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isChangedDocStateWithSnapSavedData()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuBackPresenter;->mViewModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuBackPresenter;->showSaveNoteConfirmDialog(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/option/PwOptionMenuPresenter$PwOptionMenuBackPresenter;->mViewModeRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return v0
.end method

.method public needFinishActivity(Landroid/app/Activity;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method
