.class public Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter$RecyclerBinModeController;,
        Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter$RecyclerBinControllerManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public createComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter$RecyclerBinControllerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter$RecyclerBinControllerManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/a;)V

    return-object v0
.end method

.method public createHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/EmptyHandoffManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinViewPresenter;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/EmptyHandoffManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$IComposerPresenter;)V

    return-object v0
.end method
