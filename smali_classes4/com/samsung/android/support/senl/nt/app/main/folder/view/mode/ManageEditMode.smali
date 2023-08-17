.class public Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;
.super Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;
.source "SourceFile"


# static fields
.field private static final ANIMATE_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ManageEditMode"


# instance fields
.field private final mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private final mOnClickSelectAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->mOnClickSelectAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;)Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->mOnClickSelectAllListener:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->onSelectAll(Z)V

    return-void
.end method

.method private modeChangeAnimation(Z)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modeChangeAnimation# isCurrentEditMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageEditMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->isDimItem(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setFolderItemDim(Z)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addAnimateItem(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getIconLayout()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/senl/nt/app/R$drawable;->drawer_list_ripple:I

    invoke-virtual {v9, v10, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(II)V

    if-eqz p1, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setCheckBoxStatus(I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private onSelectAll(Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "addFolder:///"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "1121"

    const-string v5, "112"

    if-eqz p1, :cond_2

    const-string v6, "1"

    invoke-static {v5, v4, v6}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->setFolderSelectedDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V

    goto :goto_1

    :cond_2
    const-string v6, "0"

    invoke-static {v5, v4, v6}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->setFolderSelectedDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V

    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->onSelectAll(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->updateSelectedFolderCount(ZI)V

    return-void
.end method

.method private scrollToBottomHolder()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->setSelectedUuid(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;Ljava/lang/String;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setExpandFolderList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setExpandedStatus(ZLjava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setFolderSelectedDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_not_selected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_tick_box:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemLayout()Landroid/view/View;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemLayout()Landroid/view/View;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCount()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showBottomNavigation(I)V
    .locals 5

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$menu;->folderlist_manage_edit_bottom:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateBottomNavigationMenu(ILcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->getBottomNavigationMenu()Landroid/view/Menu;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderCount()I

    move-result v2

    sub-int/2addr v2, v1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v4

    if-ne v2, v4, :cond_2

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete_all:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_delete:I

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_MSNotes:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    if-le p1, v1, :cond_5

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_folder:I

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_rename:I

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getModeIndex()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isDimItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderMoveMap()Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->isDimStatusItem(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onBackKeyDown()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->setMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x1d

    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onCustomKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLongPressed(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    and-int/2addr p1, v1

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showDeleteFolderDialog(I)V

    return v3

    :cond_4
    :goto_0
    return v2

    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    and-int/2addr p1, v1

    if-eq p1, v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->onSelectAll(Z)V

    return v3

    :cond_7
    :goto_1
    return v2
.end method

.method public onDataChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->onDataChanged(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getDimFolderCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->onSelectAll(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->updateSelectedFolderCount(ZI)V

    :goto_0
    return-void
.end method

.method public onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onItemLongPressed(I)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->startLongPressMultiSelection()V

    return v0
.end method

.method public onItemPressReleased()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->scrollToBottomHolder()V

    return-void
.end method

.method public onLayout()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->startActionMode(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->isLongPressed()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLongPressed(Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderCount()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getDimFolderCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->onSelectAll(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->updateSelectedFolderCount(ZI)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLongPressed(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->attachAddFolderItem(ZZ)V

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->modeChangeAnimation(Z)V

    return-void
.end method

.method public onModeEnd()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->finishActionMode()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->clearCheckedItems()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setHideSelectAllCheckbox()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->attachAddFolderItem(ZZ)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->modeChangeAnimation(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

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

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getCheckedItemUuidList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    const-string v4, "112"

    if-ne p1, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string v3, "1123"

    invoke-static {v4, v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->setExpandFolderList(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showDeleteFolderDialog(I)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_move:I

    if-ne p1, v2, :cond_3

    const-string p1, "1310"

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->setExpandFolderList(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showFolderMoveDialog()V

    goto :goto_0

    :cond_3
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_folder:I

    if-ne p1, v2, :cond_4

    const-string p1, "1124"

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->getModeIndex()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showAddFolderDialog(Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_rename:I

    if-ne p1, v2, :cond_5

    const-string p1, "1125"

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showRenameFolderDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_change_color:I

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showChangeColorDialog(Ljava/util/ArrayList;I)V

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v3
.end method

.method public onPrepareOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->showBottomNavigation(I)V

    return-void
.end method

.method public showBottomNavigation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->showBottomNavigation(I)V

    return-void
.end method

.method public updateSelectedFolderCount(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->updateSelectedFolderCount(ZI)V

    return-void
.end method
