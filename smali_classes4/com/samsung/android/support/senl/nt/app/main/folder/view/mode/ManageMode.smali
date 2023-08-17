.class public Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;
.super Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ManageMode"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    return-void
.end method

.method private showPopupMenu(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;ILandroid/view/View;)V
    .locals 4

    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x800003

    invoke-direct {v0, v1, p3, v2}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$menu;->drawer_popup_menu:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->rename:I

    invoke-interface {v1, p2}, Landroid/view/Menu;->removeItem(I)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->delete:I

    invoke-interface {v1, p2}, Landroid/view/Menu;->removeItem(I)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->change_color:I

    invoke-interface {v1, p2}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnDismissListener(Landroidx/appcompat/widget/PopupMenu$OnDismissListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public getModeIndex()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onBackKeyDown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->saveFolderExpandState()V

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$menu;->folderlist_manage:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->ManageCategory:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTouchedView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTouchPos()[F

    move-result-object v5

    aget v5, v5, v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTouchPos()[F

    move-result-object v6

    aget v0, v6, v0

    invoke-static {v2, v4, v5, v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getAnchorView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x3

    const-string v4, "111"

    if-ne p2, v2, :cond_1

    const-string p1, "1107"

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->anchor_view:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;->getModeIndex()I

    move-result v0

    invoke-virtual {p1, v1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showAddFolderDialog(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-gt p2, v1, :cond_2

    const-string v1, "1122"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;->showPopupMenu(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;ILandroid/view/View;)V

    :cond_2
    :goto_0
    return v3
.end method

.method public onItemLongPressed(I)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getDimFolderCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v4, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1, v3, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setExpandedStatus(ZLjava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->setMode(I)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLongPressed(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->setMode(I)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->startLongPressMultiSelection()V

    :goto_1
    return v1
.end method

.method public onLayout()V
    .locals 3

    const-string v0, "ManageMode"

    const-string v1, "onLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->manage_folder:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->attachAddFolderItem(ZZ)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Menu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    if-ne p1, v1, :cond_3

    const-string p1, "111"

    const-string v1, "1108"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getDimFolderCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setExpandedStatus(ZLjava/lang/String;I)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getDimFolderCount()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addCheckedItem(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->setMode(I)Z

    return v0

    :cond_3
    return v3
.end method
