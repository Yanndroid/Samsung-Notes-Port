.class public Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$RbControllerManager;,
        Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$RbComposerResolver;,
        Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$RbMenuAttachManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setRestoreEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mFunctionFlags:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/FunctionFlags;->setLiveSharingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public createComposerResolver(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$RbComposerResolver;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mComposerCloser:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$RbComposerResolver;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$Contract;)V

    return-object v0
.end method

.method public createHeirCreator()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter;)V

    return-object v0
.end method

.method public createMenuAttachManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$RbMenuAttachManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/RecycleBinPresenter$RbMenuAttachManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V

    return-object v0
.end method

.method public setUuidToHandoffSender(Z)V
    .locals 0

    return-void
.end method
