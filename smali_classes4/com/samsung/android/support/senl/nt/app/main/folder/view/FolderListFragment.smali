.class public Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;
.implements Lcom/samsung/android/support/senl/nt/app/common/listener/OnCustomKeyListener;
.implements Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FolderListFragment"


# instance fields
.field private accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

.field private mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

.field private mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

.field private mModeFactory:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

.field private mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    return-object p0
.end method


# virtual methods
.method public getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    return-object v0
.end method

.method public getModeIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->getModeIndex()I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackKeyDown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onBackKeyDown()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$layout;->folderlist_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onCustomKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onDataChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onDataChanged(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setFastScrollerEnabled(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->onDestroy()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mModeFactory:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->accessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onPrepareOptionsMenu()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->getModeIndex()I

    move-result v0

    const-string v1, "folder_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->folderlist_recyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->round_corner_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "folder_mode"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    new-instance v7, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/DialogCreator;

    invoke-direct {v7}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/DialogCreator;-><init>()V

    move-object v3, v1

    move-object v4, p0

    move-object v6, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;I)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;Lcom/samsung/android/support/senl/nt/app/main/folder/view/a;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mModeFactory:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->restoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->setMode(I)Z

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setObserveDataChanged()V

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setSelectionListener()V

    :cond_2
    return-void
.end method

.method public setActivityContract(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    return-void
.end method

.method public setMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->getModeIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onModeEnd()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderListFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mModeFactory:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->getMode(I)Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->mMode:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onLayout()V

    const/4 p1, 0x1

    return p1
.end method
