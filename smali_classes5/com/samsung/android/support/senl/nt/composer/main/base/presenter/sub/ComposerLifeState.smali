.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mIsChangingDoc:Z

.field private mIsInitLayoutFinished:Z

.field private mIsInitialized:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private final mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsInitialized:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsInitLayoutFinished:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsChangingDoc:Z

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getSavedInstanceState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getViewState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    return-object v0
.end method

.method public isChangingDoc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsChangingDoc:Z

    return v0
.end method

.method public isInitLayoutFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsInitLayoutFinished:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsInitialized:Z

    return v0
.end method

.method public isNotRecreated()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->onStop()V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setChangingDocState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsChangingDoc:Z

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setInitLayoutFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsInitLayoutFinished:Z

    return-void
.end method

.method public setInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsInitialized:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mSavedInstanceState:Landroid/os/Bundle;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mIsChangingDoc:Z

    return-void
.end method

.method public setSavedInstanceState(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method
