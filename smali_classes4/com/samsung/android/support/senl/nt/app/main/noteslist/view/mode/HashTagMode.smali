.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HashTagMode"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    return-void
.end method

.method private isSupportedEditMode()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getCaller()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private onNavigateUp()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->clearSelectedTag()Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->finishActivity()V

    return-void
.end method


# virtual methods
.method public clearSelectedTag()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSelectedTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->onHashTagSelected(Ljava/util/Set;)V

    const/4 v0, 0x1

    return v0
.end method

.method public finishActivity()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getModeIndex()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "HashTagMode"

    return-object v0
.end method

.method public onBackKeyDown()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->clearSelectedTag()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onBackKeyDown()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->backStackHistory()Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$menu;->noteslist_select:I

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
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onDataChanged(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->setToolbarSubTitle()V

    return-void
.end method

.method public onDataChangedBase(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->clearSelectedTag()Z

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onDataChangedBase(I)V

    return-void
.end method

.method public onItemLongPressed(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->isSupportedEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "8023"

    goto :goto_0

    :cond_1
    const-string v0, "1005"

    :goto_0
    const-string v1, "115"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "122"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->setEditMode(Z)Z

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onItemLongPressed(Ljava/lang/String;)Z

    return v0
.end method

.method public onLayout()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->setTipCard(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->setToolbarTitle()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->setToolbarSubTitle()V

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
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x102002c

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->onNavigateUp()V

    goto :goto_3

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    const-string v2, "115"

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "8025"

    goto :goto_0

    :cond_2
    const-string p1, "1006"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "122"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->setEditMode(Z)Z

    goto :goto_3

    :cond_3
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_search:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "8021"

    goto :goto_1

    :cond_4
    const-string p1, "0001"

    :goto_1
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "221"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

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
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected itemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_pin_to_favorites:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_folder:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_pdf:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->isSupportedEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    return-void
.end method

.method public setEditMode(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->setEditMode(Z)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    move-result p1

    return p1
.end method

.method public setTipCard(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->hasCreatePostLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/HashTagMode;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTipCard# caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->getTipCardHelper()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->clearTipCard(Z)V

    return-void
.end method

.method public setToolbarSubTitle()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_count_notes:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setToolbarTitle()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->tags_title:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(I)V

    return-void
.end method
