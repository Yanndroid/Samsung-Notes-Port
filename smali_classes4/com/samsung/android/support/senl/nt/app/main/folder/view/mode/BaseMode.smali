.class public Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;


# instance fields
.field public final mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

.field public final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field public final mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

.field public final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

.field public final mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    return-void
.end method


# virtual methods
.method public getModeIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isDimItem(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBackKeyDown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->onBackKeyDown()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDataChanged(I)V
    .locals 0

    return-void
.end method

.method public onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemLongPressed(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemPressReleased()V
    .locals 0

    return-void
.end method

.method public onLayout()V
    .locals 0

    return-void
.end method

.method public onModeEnd()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepareOptionsMenu()V
    .locals 0

    return-void
.end method

.method public showBottomNavigation()V
    .locals 0

    return-void
.end method

.method public updateSelectedFolderCount(ZI)V
    .locals 0

    return-void
.end method
