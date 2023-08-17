.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;
.super Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/CompContract$IView;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;
.implements Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

.field private mContainer:Landroid/view/ViewGroup;

.field public mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

.field private mFragmentView:Landroid/view/View;

.field private mListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

.field private mMultiWindowMode:I

.field public mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

.field private mOrientation:I

.field public mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

.field private mSearchModeView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

.field private mSystemUiManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;

.field public mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

.field private mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

.field public mVoiceRecordMenuContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;

.field private mWindowManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BaseComposerFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    return-object p0
.end method

.method private isAvailableToolbarManager()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->isDisableComposerView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->createToolbarManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private onWindowModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->updateByMultiWindowMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onWindowModeChanged(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachCompList(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->updateView()V

    :goto_0
    return-void
.end method

.method public attachComposerView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->release(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->createComposerView(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->attachView(Landroid/view/ViewGroup;)V

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mMultiWindowMode:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->updateByMultiWindowMode(I)V

    return-void
.end method

.method public attachDirectWriteMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->isAvailableToolbarManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->attachDirectWriteMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;)V

    :cond_0
    return-void
.end method

.method public attachGuideTextView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->initGuideTextView()V

    return-void
.end method

.method public attachHwToolbarMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->isAvailableToolbarManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->attachHwToolbarMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;Z)V

    :cond_0
    return-void
.end method

.method public attachRichTextMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->isAvailableToolbarManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->attachRichTextMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Z)V

    :cond_0
    return-void
.end method

.method public attachSearchModeView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mSearchModeView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;-><init>(Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mSearchModeView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    :cond_0
    return-void
.end method

.method public attachTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->attachTitle()V

    :goto_0
    return-void
.end method

.method public attachToolbar(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->isAvailableToolbarManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->attachToolbar(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;)V

    :cond_0
    return-void
.end method

.method public attachVoiceMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mVoiceRecordMenuContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->getSupportedToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mVoiceRecordMenuContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;->updateView()V

    :goto_0
    return-void
.end method

.method public callOnBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onBackPressed(Z)Z

    return-void
.end method

.method public changeLayout()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->canChangeLayout()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->isChangedTabletLayout(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->blockToHideSip(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onChangeLayoutBefore(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->release()V

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mVoiceRecordMenuContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;->release()V

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mVoiceRecordMenuContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->release()V

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    :cond_3
    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mSearchModeView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->removeFromParent()V

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->getLayoutRes()I

    move-result v6

    invoke-static {v5, v6, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->initialize(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onLoadDocCompleted(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->blockToHideSip(Z)V

    return v2

    :cond_5
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    const-string v2, "changeLayout# layout is not changed"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public changeNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->changeNote(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public createComposerView(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public createDialogCreator()Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DialogCreator;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DialogCreator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DialogCreator;-><init>()V

    return-object v0
.end method

.method public createOptionMenu()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->getOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuCreator;->createOptionMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    return-void
.end method

.method public createPresenter()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    const-string v1, "createPresenter"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V

    return-void
.end method

.method public createSystemUIManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;-><init>(Z)V

    return-object v0
.end method

.method public createToolbarManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;-><init>()V

    return-object v0
.end method

.method public getComposerResolver()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->getComposerResolver()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IComposerResolver;

    move-result-object v0

    return-object v0
.end method

.method public getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLayoutRes()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->composer_fragment_main:I

    return v0
.end method

.method public initActionBar(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->enableToolbar()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->enableAdjustableMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->getSupportedToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->getSupportedToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public initAppbarContents(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_title_layout:I

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->getLayoutRes()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isChangedWindowModeAndUpdate(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mMultiWindowMode:I

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "getMultiWindowMode("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") preMultiWindowMode("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mMultiWindowMode:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mMultiWindowMode:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x6d

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    const-string p1, "Unlock canceled"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->onAttach(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onBLEShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onBLEShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->isChangedWindowModeAndUpdate(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->changeLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mMultiWindowMode:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onWindowModeChanged(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_2

    iput v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOrientation:I

    const/4 v1, 0x1

    :cond_2
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mMultiWindowMode:I

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onWindowModeChanged(I)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->onConfigurationChanged(Landroid/content/res/Configuration;Z)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_7
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->isFullScreenMode()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mSystemUiManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;->getStatusBar()Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$IStatusBar;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$IStatusBar;->updateStatusBar(Landroid/app/Activity;)V

    :cond_8
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->updateNavigationBarState(Landroid/content/res/Configuration;)V

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    if-eqz v2, :cond_b

    if-nez v1, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->updateVisibility()V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->invalidateDelayOptionsMenu()V

    :cond_c
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPLog$StartTime"

    const-string v2, "onCreate# "

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->createPresenter()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->createDialogCreator()Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DialogCreator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onCreated(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;)V

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mWindowManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->createSystemUIManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mSystemUiManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->onCreate(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreateFragmentOptionMenu(Landroid/view/Menu;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->createOptionMenu()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setMenuInflater(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->onCreateOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    :cond_0
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "CPLog$StartTime"

    const-string v1, "onCreateView# "

    invoke-static {p3, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->midTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->initInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->initialize(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mFragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->unregisterHandoffContentObserver(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onDestroy(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mWindowManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->release()V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mContainer:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->setDispatchKeyEvent(Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;)V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->onDetach(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onDetachView(Landroid/app/Activity;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/CompListView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mSearchModeView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/search/SearchModeView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mVoiceRecordMenuContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenuContainer;

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    const-string p1, "onMultiWindowModeChanged#"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->isChangedWindowModeAndUpdate(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mMultiWindowMode:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onWindowModeChanged(I)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->onOptionsItemSelected(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onPause()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareFragmentOptionMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->onPrepareOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->onOptionsMenuPrepared()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mTitle:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->onPrepareFragmentOptionMenu()V

    :cond_2
    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->getKeyboardShortcutGroup()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onResume()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onSaveInstanceState(Landroid/os/Bundle;ZZ)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onStart()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onStop()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onTrimMemory(I)V

    :cond_0
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CPLog$StartTime"

    const-string v1, "onViewCreated# "

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->midTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mSystemUiManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager;->getStatusBar()Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$IStatusBar;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/SystemUiManager$IStatusBar;->initStatusBar(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOrientation:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mMultiWindowMode:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->displayProgressForInitialization()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mContainer:Landroid/view/ViewGroup;

    instance-of p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout;->setDispatchKeyEvent(Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mOptionMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->onWindowFocusChanged()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->onWindowFocusChanged(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public releaseComposerView(Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mToolbarManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->clearSelectedButtonsOfHandWritingToolbarItem()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->releaseAfterCapture(Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    :cond_1
    return-void
.end method

.method public removeCaptureComposerView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->removeCaptureView()V

    :cond_0
    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->TAG:Ljava/lang/String;

    const-string v1, "setPresenter"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/CompContract$IView;)V

    goto :goto_0

    :cond_0
    const-string p1, "setPresenter :  mPresenter set already"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showComposerCover()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mComposerView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->showCover()V

    :cond_0
    return-void
.end method

.method public updateNavigationBarState(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->isAllowedModeToHideNaviBar()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->hideNavigationBar(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->isValidModelToHideNaviBarOnLandscape()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/NavigationBarUtil;->clearHideNavigationBarFlag(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->updateDisallowTouchDownArea(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public verifyScreenLock()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->verifyScreenLock()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
