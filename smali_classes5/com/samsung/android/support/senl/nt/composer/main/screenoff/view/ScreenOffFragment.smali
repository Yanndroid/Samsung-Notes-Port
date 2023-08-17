.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/composer/ScreenOffComposerView;

.field private mCovered:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

.field private mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;

.field private mGuide:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;

.field private mMenuBar:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

.field private mScroll:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ScreenOffFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public attachCovered(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    const-string v1, "attachCovered#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mCovered:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/ICoveredListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mCovered:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    :cond_0
    return-void
.end method

.method public attachGuide(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    const-string v1, "attachGuide#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mGuide:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mGuide:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;

    :cond_0
    return-void
.end method

.method public attachMenuBar(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    const-string v1, "attachMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mMenuBar:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mMenuBar:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;

    :cond_0
    return-void
.end method

.method public attachScroll(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    const-string v1, "attachScroll#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mScroll:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mScroll:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;

    :cond_0
    return-void
.end method

.method public changeLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createComposerView(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/composer/ScreenOffComposerView;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/composer/ScreenOffComposerView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/composer/ScreenOffComposerView;

    return-object v0
.end method

.method public createPresenter()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPresenter# presenter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V

    :cond_0
    return-void
.end method

.method public createSystemUIManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;-><init>(Z)V

    return-object v0
.end method

.method public initActionBar(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    return-void
.end method

.method public initInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    const-string v1, "initInflate#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->screenoff_fragment_main:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged# orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onConfigurationChanged(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isSupportNavigationRotation()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->requestRelayout()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/composer/ScreenOffComposerView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mMenuBar:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/MenuBar;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mGuide:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mScroll:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/scroll/Scroll;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mCovered:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/covered/Covered;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;

    return-void
.end method

.method public onDispatchActionDownEvent()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onDispatchActionDownEvent()V

    :cond_0
    return-void
.end method

.method public onDispatchActionUpEvent()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onDispatchActionUpEvent()V

    :cond_0
    return-void
.end method

.method public onDisplayStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onDisplayStateChanged(I)V

    return-void
.end method

.method public onHomeKeyPressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onHomeKeyPressed()V

    return-void
.end method

.method public onInterrupted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onInterrupted()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated bundle# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->setState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onActivityCreated(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;)V

    return-void
.end method

.method public requestRelayout()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_menu_bar_layout_width_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestRelayout# orientation/isRTLMode/menuBarHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isSupportNavigationRotation()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->TAG:Ljava/lang/String;

    const-string v1, "setPresenter#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/ScreenOffFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;)V

    :cond_0
    return-void
.end method

.method public updateNavigationBarState(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method
