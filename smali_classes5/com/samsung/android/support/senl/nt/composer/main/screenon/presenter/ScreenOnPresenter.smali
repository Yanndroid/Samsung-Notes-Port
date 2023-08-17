.class public Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter$SonMenuAttachManager;
    }
.end annotation


# instance fields
.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;


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
.method public createHeirCreator()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager$HeirCreator;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;)V

    return-object v0
.end method

.method public createMenuAttachManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter$SonMenuAttachManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter$SonMenuAttachManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V

    return-object v0
.end method

.method public initBackgroundColor()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->initBackgroundColor()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->addBackgroundColorObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getBackgroundColor()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->isBackgroundColorInverted()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->hasBackgroundImage()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;->setBackgrounColorOfCustomMenu(IZZ)V

    :cond_0
    return-void
.end method

.method public onChangedBackgroundColor(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;->setBackgrounColorOfCustomMenu(IZZ)V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onDestroy(Landroid/app/Activity;ZZ)V

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->setCompViewPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    :cond_0
    return-void
.end method

.method public onInitFinished()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onInitFinished()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;->startQuickNoteFTUIfNeeds()V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/CompContract$IView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/CompContract$IView;)V

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;

    :cond_0
    return-void
.end method

.method public startQuickNoteFTUIfNeeds()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isContextAwarenessEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->isQuickNoteFTUNeeds()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->setQuickNoteFTUUsed()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->mSubManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/quicknote/QuickNoteFTUActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
