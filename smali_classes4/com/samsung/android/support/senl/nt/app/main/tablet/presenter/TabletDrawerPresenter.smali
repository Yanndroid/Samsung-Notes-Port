.class public Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;
.super Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;
.source "SourceFile"


# static fields
.field private static final DRAG_SCROLL_SPEED:F = 500.0f

.field private static final TAG:Ljava/lang/String; = "TabletDrawerPresenter"


# instance fields
.field private final mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

.field private final mBlockedFolderUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawerBarClickListener:Landroid/view/View$OnClickListener;

.field private mIsDimDragStatus:Z

.field private mSelectedIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mDrawerBarClickListener:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_all_notes:I

    invoke-virtual {p4, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mIsDimDragStatus:Z

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mBlockedFolderUuidMap:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->setExpandedStatus(Ljava/lang/String;I)V

    return-void
.end method

.method private getDefaultBlockedFolderUuidList()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "settings:///"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "favorite:///"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lock:///"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "recentlyImported:///"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tag:///"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "divider:///"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "folderManage:///"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getSelectedIcon(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_all_notes:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$OldNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_old_notes:I

    goto :goto_0

    :cond_2
    const-string v0, "favorite:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_favorite:I

    goto :goto_0

    :cond_3
    const-string v0, "lock:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_lock:I

    goto :goto_0

    :cond_4
    const-string v0, "recentlyImported:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_import:I

    goto :goto_0

    :cond_5
    const-string v0, "tag:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_hashtag:I

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_trash:I

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_myfolders:I

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_shared:I

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_coedit:I

    goto/16 :goto_0

    :cond_a
    return-object v1
.end method

.method private isDragEnabledFolder(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mBlockedFolderUuidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mBlockedFolderUuidMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mIsDimDragStatus:Z

    return p0
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->getDefaultBlockedFolderUuidList()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->isDragEnabledFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setDragBlockedFolderList(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDragBlockedFolderList(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDragStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDrawerBarIconOnDragListener(Landroid/app/Activity;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private setDrawerIconDimDragStatus(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mIsDimDragStatus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->isDragEnabledFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->count:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private smoothScrollToPositionForDrawer(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/view/View;Landroid/view/DragEvent;I)V
    .locals 6

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getTouchPositionFromDragEvent(Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-double v0, p2

    int-to-double v2, p4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v2

    cmpg-double p4, v0, v4

    const/high16 v0, 0x43fa0000    # 500.0f

    if-gez p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    add-int/lit8 p3, p3, -0x1

    const/4 p2, 0x0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->smoothScrollToPositionForDrawer(IF)V

    goto :goto_0

    :cond_0
    int-to-double p2, p2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    cmpl-double p2, p2, v2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->smoothScrollToPositionForDrawer(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDragStatus(Z)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/view/View;Landroid/view/DragEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->smoothScrollToPositionForDrawer(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/view/View;Landroid/view/DragEvent;I)V

    return-void
.end method


# virtual methods
.method public addSALog(I)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "103"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const-string v2, "201"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string v0, "8007"

    packed-switch p1, :pswitch_data_0

    const-string p1, "8015"

    goto :goto_0

    :pswitch_0
    const-string p1, "8008"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "531"

    goto :goto_1

    :pswitch_1
    const-string p1, "8051"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "120"

    goto :goto_1

    :pswitch_2
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "680"

    goto :goto_1

    :pswitch_3
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "662"

    goto :goto_1

    :pswitch_4
    const-string p1, "8050"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "105"

    goto :goto_1

    :pswitch_5
    const-string p1, "8005"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "114"

    goto :goto_1

    :pswitch_6
    const-string p1, "8004"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "113"

    goto :goto_1

    :pswitch_7
    const-string p1, "1311"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "535"

    goto :goto_1

    :pswitch_8
    const-string p1, "8003"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "101"

    goto :goto_1

    :pswitch_9
    const-string p1, "8002"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "501"

    goto :goto_1

    :cond_0
    const-string p1, "8013"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "111"

    goto :goto_1

    :cond_1
    const-string p1, "8010"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "8011"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "202"

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V
    .locals 9

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderItemContainer()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v8, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;

    move-object v0, v8

    move-object v1, p0

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;ILandroidx/recyclerview/widget/LinearLayoutManager;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->isDefaultFolderType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getIconLayout()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerIconDimDragStatus(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V

    return-void
.end method

.method public setDrawerBarClickListener()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_all_notes:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarIconClickListener(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_shared:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarIconClickListener(Landroid/view/View;)Z

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_coedit:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarIconClickListener(Landroid/view/View;)Z

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_trash:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarIconClickListener(Landroid/view/View;)Z

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_myfolders:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarIconClickListener(Landroid/view/View;)Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarIconOnDragListener(Landroid/app/Activity;I)V

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarIconOnDragListener(Landroid/app/Activity;I)V

    return-void
.end method

.method public setDrawerBarIconClickListener(Landroid/view/View;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mDrawerBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mIsDimDragStatus:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDrawerIconDimDragStatus isDimmed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabletDrawerPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mIsDimDragStatus:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mBlockedFolderUuidMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mIsDimDragStatus:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mBlockedFolderUuidMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->getDefaultBlockedFolderUuidList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mBlockedFolderUuidMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mBlockedFolderUuidMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDragBlockedFolderList(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerIconDimDragStatus(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setIconSelected(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->getSelectedIcon(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->mSelectedIcon:Landroid/view/View;

    :cond_3
    :goto_1
    return-void
.end method

.method public setModel()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/TabletDrawerModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/TabletDrawerModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    return-void
.end method
