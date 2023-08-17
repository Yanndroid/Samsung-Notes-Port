.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SelectMode;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;


# static fields
.field private static final TAG:Ljava/lang/String; = "EditMode"


# instance fields
.field private final mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SelectMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SelectMode;->mIsEditMode:Z

    return-void
.end method


# virtual methods
.method public callCustomKeyEventBase(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onCustomKeyEventBase(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentOptionsMenuStatus()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->getCurrentOptionsMenuStatusEdit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastOptionsMenuStatus()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->getMenuStatus()J

    move-result-wide v0

    return-wide v0
.end method

.method public getModeIndex()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "EditMode"

    return-object v0
.end method

.method public onBackKeyDown()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getLongPressFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "9901"

    const-string v2, "5"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLongPressFlag(Z)V

    const-string v0, "ShareTask"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->cancelRunningTask(Ljava/lang/String;)V

    const-string v0, "ShareDialogTask"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->cancelRunningTask(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->releaseEditMode()V

    const/4 v0, 0x1

    return v0
.end method

.method public onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onCustomKeyEventEdit(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onDataChanged(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onDataChangedBase(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onDataChangedEdit(I)V

    return-void
.end method

.method public onItemLongPressed(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onItemLongPressedBase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onLayoutBase()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->hasCreatePostLogic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setMigrationListener(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onLayout()V

    return-void
.end method

.method public onModeEnd()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onModeEndEdit()V

    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->isUuidInCheckedNotes(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onItemChecked(Ljava/lang/String;Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onOptionsItemSelectedEdit(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onPrepareOptionsMenuEdit()V

    return-void
.end method

.method public onSelectAll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onSelectAll(Z)V

    return-void
.end method

.method public onSubFolderSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->isUuidInCheckedFolder(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onItemChecked(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->filteredInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public releaseEditMode()V
    .locals 2

    const-string v0, "EditMode"

    const-string v1, "releaseEditMode"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->updateDrawerIconWithBadge(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesListSALogModel;->addSAlogOnBackKeyDown(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEditMode(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showBottomNavigation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    return-void
.end method

.method public updateCheckBoxState(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/EditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->updateCheckBoxStateEdit(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;)V

    return-void
.end method

.method public updateTitle()V
    .locals 0

    return-void
.end method
