.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMControllerManager;,
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMComposerResolver;,
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMSaveStrategy;,
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMDocumentServiceManager;,
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;
    }
.end annotation


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setHashTagEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setRestoreEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setPostLaunchEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setInitializeLoadingProgressEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setLiveSharingEnabled(Z)V

    const-string v0, "_screenoff"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mUuidPostfix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createComposerResolver(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMComposerResolver;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mComposerCloser:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMComposerResolver;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;)V

    return-object v0
.end method

.method public createDocumentServiceManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/DocumentServiceManager;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMDocumentServiceManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$SOMDocumentServiceManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;)V

    return-object v0
.end method

.method public createHeirCreator()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;)V

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed(Z)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy(Landroid/app/Activity;ZZ)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onDestroy(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public onDetachView(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;->onDetachView()V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onDetachView(Landroid/app/Activity;)V

    return-void
.end method

.method public onInitFinished()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;->onInitFinished()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;->onPause()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;->onResume()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;ZZ)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onSaveInstanceState(Landroid/os/Bundle;ZZ)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;->onWindowFocusChanged(Z)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onWindowFocusChanged(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogics()V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;

    return-void
.end method

.method public setUuidToHandoffSender(Z)V
    .locals 0

    return-void
.end method
