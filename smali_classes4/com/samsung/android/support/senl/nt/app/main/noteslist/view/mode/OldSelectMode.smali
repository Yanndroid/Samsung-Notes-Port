.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OldSelectMode"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    return-void
.end method

.method private setTipCard(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTipCard# caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->getTipCardHelper()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->loadConvertProgressingTipCard()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->clearTipCard(Z)V

    return-void
.end method


# virtual methods
.method public getIntentForNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/IntentFactory;->makeIntent(ILandroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getModeIndex()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OldSelectMode"

    return-object v0
.end method

.method public onBackKeyDown()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContextClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getTouchPos()[F

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    aget v5, v3, v2

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-static {v4, p1, v5, v3}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getAnchorView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p1

    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x800003

    invoke-direct {v3, v4, p1, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$menu;->noteslist_popup_menu:I

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->move:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->lock:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->unlock:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->save:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->duplicate:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->secure_folder:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->share:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    :cond_1
    new-array p1, v6, [Z

    aput-boolean v2, p1, v2

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;[ZLjava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;[ZLjava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    return v6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$menu;->old_noteslist_select:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x22

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/16 v2, 0x1000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onCustomKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onDataChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->getAddonsHandler()Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->isProgressDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDataChanged# count 0, back to all note"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->onFolderSelected(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onDataChanged(I)V

    return-void
.end method

.method public onItemLongPressed(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;->setEditMode(Z)Z

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onItemLongPressed(Ljava/lang/String;)Z

    return v0
.end method

.method public onLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setHideSelectAllCheckbox()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->resetCheckItems()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;->updateTitle()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->updateRecyclerViewPaddingBottom(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;->setTipCard(I)V

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

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_search:I

    const-string v2, "536"

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "8021"

    goto :goto_0

    :cond_1
    const-string p1, "0001"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "221"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    goto :goto_3

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "8025"

    goto :goto_1

    :cond_3
    const-string p1, "1006"

    :goto_1
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/OldSelectMode;->setEditMode(Z)Z

    goto :goto_3

    :cond_4
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_pin_to_favorites:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->clickPinToFavorites()V

    goto :goto_3

    :cond_5
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_viewby:I

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "8027"

    goto :goto_2

    :cond_6
    const-string p1, "1015"

    :goto_2
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showViewByPopupMenu()V

    :goto_3
    return v0

    :cond_7
    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_pin_to_favorites:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_viewby:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isPinFavorites()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_pin_to_favorites:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_sort_by_unpin_favorite_to_top:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public setEditMode(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->setEditMode(Z)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    move-result p1

    return p1
.end method

.method public updateTitle()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->uncategorised:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_screen_off_memo_category:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->converted_notes:I

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(Ljava/lang/String;)V

    return-void
.end method
