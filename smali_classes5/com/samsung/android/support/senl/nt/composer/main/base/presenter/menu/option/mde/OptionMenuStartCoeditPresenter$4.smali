.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->copyNoteToCoedit(Landroid/app/Activity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private changeNote(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copyNoteToCoedit# changeNote"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->readyCoedit(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->saveState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->changeDocument(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgress(II)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;->isChangedToLightMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->coedit_swiched_to_light_mode:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method private saveState()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getPageLayoutColumn()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getPageLayoutRow()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->isPageLayoutFitToScreen()Z

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->isScrollVertical()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;->setPageSetting(IIZZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->setSavedState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager$SavedState;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;->getResult()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;->getResult()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xcb

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_sync_network_connection_error:I

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;->getResult()I

    move-result v0

    const/16 v2, 0xca

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;->getResult()I

    move-result v0

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;->getResult()I

    move-result p1

    const/16 v0, 0xcd

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->coedit_fail_to_share_as_too_big:I

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_failed_to_copy:I

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->changeNote(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$4;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeCoeditNote$ResultValues;)V

    return-void
.end method
