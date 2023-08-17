.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BixbyContractImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    return-void
.end method


# virtual methods
.method public executeActionSendTask(Landroid/content/Intent;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v1

    const/4 v2, 0x1

    const-string v4, "bixby action send"

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getPrevMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->executeTaskActionSend(Landroid/content/Intent;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;ZZ)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getMenuManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getMenuPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;

    move-result-object v0

    return-object v0
.end method

.method public setEditModeFromBixby()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->TAG:Ljava/lang/String;

    const-string v1, "setEditModeFromBixby# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BixbyContractImpl;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    const-string v2, "set edit mode from bixby"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    return-void
.end method
