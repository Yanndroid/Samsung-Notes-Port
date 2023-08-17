.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;


# static fields
.field private static final TAG:Ljava/lang/String; = "OldEditMode"


# instance fields
.field private final mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView$Contract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

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

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastOptionsMenuStatus()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getModeIndex()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OldEditMode"

    return-object v0
.end method

.method public onBackKeyDown()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->releaseEditMode()V

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onCustomKeyEventEdit(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onDataChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDataChanged# count 0, back to all note"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->onFolderSelected(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onDataChangedBase(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onLayout()V

    return-void
.end method

.method public onModeEnd()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

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
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->MemoList:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    const-string v2, "LockTask"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->checkRunningTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onOptionsItemSelected# return - lock task is running"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->shareOldNotes()V

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_convert:I

    const-string v2, "537"

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result p1

    const-string v1, "5351"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showConvertNotesDialog()V

    goto :goto_0

    :cond_3
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result p1

    const-string v1, "5352"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showDeleteDialog()V

    goto :goto_0

    :cond_4
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_lock:I

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->isUnlock()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setLockNotes()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setUnlockNotes()V

    goto :goto_0

    :cond_6
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_remove_from_favorites:I

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->updateFavorite(Z)V

    goto :goto_0

    :cond_7
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_to_favorites:I

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->updateFavorite(Z)V

    :cond_8
    :goto_0
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    goto/16 :goto_7

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$menu;->old_noteslist_edit_bottom:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;)V

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateBottomNavigationMenu(ILcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->getBottomNavigationMenu()Landroid/view/Menu;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesUUID()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v2, v1, :cond_2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete_all:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete:I

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckNotesCountInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result v2

    if-lez v2, :cond_3

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_share:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK:I

    sget v4, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK_GROUP:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->findConvertTaskGroup(IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)Z

    move-result v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->action_convert:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    xor-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedNotesCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getImportLockedNotesCount()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getFavoriteNotesCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v3, v4, :cond_7

    if-eq v4, v5, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedFileProvider()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move v4, v7

    goto :goto_2

    :cond_6
    :goto_1
    move v4, v0

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_7
    move v4, v0

    move v5, v7

    :goto_3
    if-ne v3, v6, :cond_8

    move v6, v0

    move v8, v7

    goto :goto_4

    :cond_8
    move v8, v0

    move v6, v7

    :goto_4
    const/16 v9, 0x64

    if-le v3, v9, :cond_9

    move v4, v0

    move v5, v4

    move v6, v5

    move v8, v6

    goto :goto_5

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockMenuEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    move v4, v0

    move v5, v4

    :cond_a
    :goto_5
    if-nez v5, :cond_b

    if-nez v4, :cond_b

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_lock:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    goto :goto_6

    :cond_b
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CheckNotesCountInfo;->getLockedNotesCount()I

    move-result v1

    if-ne v3, v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->action_lock:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->setLockIcon(Landroid/view/MenuItem;Z)V

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_lock:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->setLockIcon(Landroid/view/MenuItem;Z)V

    :goto_6
    if-nez v6, :cond_d

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_to_favorites:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_d
    if-nez v8, :cond_e

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_remove_from_favorites:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->removeItem(Landroid/view/Menu;I)V

    :cond_e
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    xor-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    :cond_f
    :goto_7
    return-void
.end method

.method public onSelectAll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->onWindowFocusChangedEdit(Z)V

    return-void
.end method

.method public releaseEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "536"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldEditMode;->mEditModeView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/EditModeView;->updateCheckBoxStateEdit(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;)V

    return-void
.end method

.method public updateTitle()V
    .locals 0

    return-void
.end method
