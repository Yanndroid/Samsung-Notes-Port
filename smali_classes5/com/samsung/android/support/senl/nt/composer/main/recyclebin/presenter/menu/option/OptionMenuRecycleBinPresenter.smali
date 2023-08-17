.class public Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/menu/option/OptionMenuRecycleBinPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickDeleteBtn(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickDeleteBtn(Z)V

    return-void
.end method

.method public onClickRestoreBtn()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/model/RecycleBinModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/model/RecycleBinModel;->restore()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->mMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;

    const-string v1, "onClickRestoreBtn"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;->finish(Ljava/lang/String;)Z

    return-void
.end method
