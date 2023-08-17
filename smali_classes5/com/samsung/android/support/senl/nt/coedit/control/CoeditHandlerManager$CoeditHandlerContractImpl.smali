.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoeditHandlerContractImpl"
.end annotation


# instance fields
.field public mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    return-void
.end method


# virtual methods
.method public canShowProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->canShowProgress()Z

    move-result v0

    return v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlDataWeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->getXmlDataWeight()I

    move-result v0

    return v0
.end method

.method public hideInitProgress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->hideInitProgress(Ljava/lang/String;)V

    return-void
.end method

.method public hideProgress(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->hideProgress(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isCoeditUpdateListenerNonNull()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeleteOnlyMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->isDeleteOnlyMode()Z

    move-result v0

    return v0
.end method

.method public isEditMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->isEditMode()Z

    move-result v0

    return v0
.end method

.method public isFixedReadPermission()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->isFixedReadPermission()Z

    move-result v0

    return v0
.end method

.method public onClickCloseComposer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->onClickCloseComposer()V

    return-void
.end method

.method public onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onListUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->onListUpdate(Ljava/util/List;)V

    return-void
.end method

.method public requestReopen(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->requestReopen(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public requestSaveToDevice(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->requestSaveToDevice(I)V

    return-void
.end method

.method public setDeleteOnlyMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->setDeleteOnlyMode(Z)V

    return-void
.end method

.method public setFixedReadPermission(ZLjava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->setFixedReadPermission(ZLjava/lang/String;)V

    return-void
.end method

.method public setRequestUpdate(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->setRequestUpdate(Z)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$CoeditHandlerContractImpl;->mContract:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;->showProgress(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
