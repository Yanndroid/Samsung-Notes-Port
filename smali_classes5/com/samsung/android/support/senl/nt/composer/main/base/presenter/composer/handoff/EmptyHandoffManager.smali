.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/EmptyHandoffManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$IComposerPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$IComposerPresenter;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->setDisabled(Z)V

    return-void
.end method


# virtual methods
.method public cancelWaitingSync()V
    .locals 0

    return-void
.end method

.method public disableHandoffTemporary()V
    .locals 0

    return-void
.end method

.method public getHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->getHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$IDialogManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;)V
    .locals 0

    return-void
.end method

.method public isDisabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public sendHandoffData()V
    .locals 0

    return-void
.end method

.method public updatePendingStateFromHandoff()V
    .locals 0

    return-void
.end method

.method public updateStateFromHandoff()V
    .locals 0

    return-void
.end method
