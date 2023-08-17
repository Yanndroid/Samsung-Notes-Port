.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private final mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private final mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

.field private final mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mHashTagEnabled:Z

.field private final mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

.field private final mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Initializer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mHashTagEnabled:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    return-object p0
.end method

.method private blockSipToShow(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->blockToShow(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;Ljava/lang/String;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    return-object p0
.end method

.method private handleActionSend(Landroid/content/Intent;Z)Z
    .locals 14

    move-object v0, p0

    move-object v2, p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->isSendAction(Landroid/content/Intent;)I

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    return v10

    :cond_0
    const/4 v3, 0x2

    const/4 v11, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->unsupported_format_note:I

    invoke-static {v1, v3, v10}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->setEntryDefaultState(Landroid/content/Intent;Z)V

    return v11

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->isToolbarSmartTip()Z

    move-result v12

    invoke-direct {p0, v10, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->isSipBlockCase(ZZ)Z

    move-result v1

    const-string v13, "handleActionSend "

    if-eqz v1, :cond_2

    invoke-direct {p0, v11, v13}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->blockSipToShow(ZLjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    const-string v4, "insert item from share"

    invoke-virtual {v1, v3, v4, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->isDefaultTemplatePdf()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->isSendActionWithPdf(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->getOptionMenuAddPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->executeNewAddActionWithPdfTemplate(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->setPendingJobToTaskController(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->executeTaskActionSend(Landroid/content/Intent;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;ZZ)V

    :goto_0
    invoke-direct {p0, v10, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->isSipBlockCase(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v10, v13}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->blockSipToShow(ZLjava/lang/String;)V

    :cond_4
    return v11
.end method

.method private handleEntryAction(Landroid/content/Intent;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->handleActionSend(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->TAG:Ljava/lang/String;

    const-string p2, "handleEntryAction# action send"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->handleWidgetAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->TAG:Ljava/lang/String;

    const-string p2, "handleEntryAction# widget action"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->setEntryDefaultState(Landroid/content/Intent;Z)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->getOptionMenuAddPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->executeNewAddActionWithPdf(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->getOptionMenuAddPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->executeNewAddActionWithPdfTemplate(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->executeSearchTextAction(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private handleWidgetAction(Landroid/content/Intent;)Z
    .locals 8

    const-string v0, "MEMO_WIDGET_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->isDefaultTemplatePdf()Z

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->getOptionMenuAddPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v4

    xor-int/lit8 v5, v7, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->executeWidgetSendAction(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Z)Z

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->getOptionMenuAddPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->executeNewAddActionWithPdfTemplate(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->setPendingJobToTaskController(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private initHashTag(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mHashTagEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isHashTagFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->isMde()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->TAG:Ljava/lang/String;

    const-string v1, "initHashTag#, Initialized the tag list from [DB] "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->getTagListByDocUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/hashtag/HashTagDataHelper;->convertToTagDataListFromNotesTagEntity(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;->setOriginalSortedList(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->initTagList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private initTagList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/hashtag/HashTagDataHelper;->convertToTagStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->setTagList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getTitleEditorPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getHashTagPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;->saveTagList(Ljava/util/List;)V

    return-void
.end method

.method private isSipBlockCase(ZZ)Z
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isToolbarSmartTip()Z
    .locals 7

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "guide_smart_tip_shown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isTabletLayout()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    const-string v3, "customize_toolbar_tip_shown"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "floating_guide_count_id"

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v6, "custom_guide_count_id"

    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v5, :cond_2

    if-nez v1, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    :cond_4
    :goto_2
    return v2

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isSupport()Z

    move-result v0

    if-nez v1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    :cond_7
    :goto_3
    return v2
.end method

.method private setDataFromDB(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setOpenedTime()V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->setStrokeRecognitionData()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->initHashTag(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->TAG:Ljava/lang/String;

    const-string v1, "setDataFromDB#"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setEntryDefaultState(Landroid/content/Intent;Z)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->isToolbarSmartTip()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pdf_open_uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->isSipBlockCase(ZZ)Z

    move-result v2

    const-string v3, "onInitFinished#isSipBlockCase"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->blockSipToShow(ZLjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "tool_type"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "popup_note"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->canUseSpen(Landroid/app/Activity;)Z

    move-result v4

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->isPdfViewAction(Landroid/content/Intent;)Z

    move-result p1

    invoke-virtual {v2, p2, v4, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->init(ZZZ)V

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->isSipBlockCase(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v6, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->blockSipToShow(ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private setPendingJobToTaskController(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->addPendingJob(Ljava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method public initChangeNoteCase()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->setDataFromDB(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->initFirstCase()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Init:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    const-string v4, "changing doc"

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getToolbarPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->clearSelectedButtonsOfHandWritingToolbarItem()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public initFirstCase(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->setDataFromDB(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->handleEntryAction(Landroid/content/Intent;Z)V

    const-string p1, "pick_note"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setFinishAfterSave(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->initFirstCase()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->TAG:Ljava/lang/String;

    const-string v1, "initFirstCase#"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restore(Landroidx/lifecycle/LifecycleOwner;Landroid/os/Bundle;Z)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->setStrokeRecognitionData()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mHashTagEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isHashTagFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->isMde()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->TAG:Ljava/lang/String;

    const-string v1, "initComposer#, Initialized the tag list from [SDocState] "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getTagDataSource()Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagDataSource;->cloneChangedSortedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->initTagList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->initHashTag(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->getHwToolbarPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;->restoreSettingState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->restoreState(Landroid/os/Bundle;ZLcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SoftInputManagerContract;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->restoreState(Landroid/os/Bundle;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->restoreState(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/EntityManager;->updateDataRepository(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->isShowingProgressCircleByType(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->hideProgress(IZ)V

    :cond_2
    return-void
.end method

.method public restoreMenu(Landroid/os/Bundle;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mMenuPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;->restoreState(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public setStrokeRecognitionData()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getSearchDataListFromDB(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->getActionLinkDataListFromDB(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->createStrokeRecognitionData(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->setStrokeRecognitionData(Ljava/util/Map;Ljava/util/List;Z)V

    return-void
.end method
