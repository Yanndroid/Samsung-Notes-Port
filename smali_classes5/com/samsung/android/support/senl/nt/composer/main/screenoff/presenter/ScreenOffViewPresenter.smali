.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter$SOMDocInitialization;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocInitialization()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter$SOMDocInitialization;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter$SOMDocInitialization;-><init>(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V

    return-object v0
.end method

.method public createHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/EmptyHandoffManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffViewPresenter;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/EmptyHandoffManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$IComposerPresenter;)V

    return-object v0
.end method

.method public isActionLinkEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHyperTextEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
