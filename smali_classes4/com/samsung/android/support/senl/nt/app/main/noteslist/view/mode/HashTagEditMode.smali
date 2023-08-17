.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;


# static fields
.field private static final TAG:Ljava/lang/String; = "HashTagEditMode"


# instance fields
.field private final mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->getCurrentOptionsMenuStatusEdit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastOptionsMenuStatus()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->getMenuStatus()J

    move-result-wide v0

    return-wide v0
.end method

.method public getModeIndex()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "HashTagEditMode"

    return-object v0
.end method

.method public onBackKeyDown()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->releaseEditMode()V

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onCustomKeyEventEdit(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onDataChanged(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->onDataChangedBase(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

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
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onLayoutBase()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onLayout()V

    return-void
.end method

.method public onModeEnd()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onOptionsItemSelectedEdit(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onPrepareOptionsMenuEdit()V

    return-void
.end method

.method public onSelectAll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

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
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onWindowFocusChangedEdit(Z)V

    return-void
.end method

.method public releaseEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getPrevModeIndex()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "115"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->updateCheckBoxStateEdit(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;)V

    return-void
.end method
