.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;
.super Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mFragmentView:Landroid/view/View;

.field public mMultiWindowMode:I

.field public mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

.field public mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;

.field public mSimpleComposerView:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "SimpleComposerFragment"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;-><init>()V

    return-void
.end method

.method private isChangedWindowModeAndUpdate(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mMultiWindowMode:I

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "getMultiWindowMode("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") preMultiWindowMode("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mMultiWindowMode:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mMultiWindowMode:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadNoteInfoArgument()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->KEY_BUNDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate# getArguments is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "unexpected error"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private onWindowModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mSimpleComposerView:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->updateByMultiWindowMode()V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachComposerView(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mSimpleComposerView:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mSimpleComposerView:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;->setProgressVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mSimpleComposerView:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mSimpleComposerView:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mFragmentView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->simple_comp_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->attachView(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mSimpleComposerView:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerView;->updateByMultiWindowMode()V

    return-void
.end method

.method public getLayoutResource()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->simple_comp_view_fragment:I

    return v0
.end method

.method public initAppbarContents(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttach# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "onConfigurationChanged#"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->isChangedWindowModeAndUpdate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->onWindowModeChanged()V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->loadNoteInfoArgument()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;

    return-void
.end method

.method public onCreateFragmentOptionMenu(Landroid/view/Menu;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->getLayoutResource()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mFragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->onDestroy()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroyView# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetach# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    const-string p1, "onMultiWindowModeChanged#"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->isChangedWindowModeAndUpdate(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->onWindowModeChanged()V

    :cond_0
    return-void
.end method

.method public onPrepareFragmentOptionMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;->initProgress(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mProgressController:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment$ProgressController;->setProgressVisibility(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->requestLoadDocument()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mMultiWindowMode:I

    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/SimpleComposerFragment;->mFragmentView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
