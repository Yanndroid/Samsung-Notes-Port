.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;
.super Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;
.implements Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;
.implements Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "ST$ImportFolderView"


# instance fields
.field private final mAdapter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;

.field private final mDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

.field private mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

.field private final mImportFolderViewContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportViewContract;)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-direct {p1, p3, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mAdapter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mImportFolderViewContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->setFastScrollerEnabled(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->setCheckItem(IZ)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateBottomNaviView()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateFolderNameContainer()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateFolderPathDivider()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateNoNoteView()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateSelectAllLayout()V

    return-void
.end method

.method private initFolderPathLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->folderpath_layout_container:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_folderpath_layout_container:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;->setFolderHomeButtonVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$4;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;->setIFolderPathLayoutListener(Lcom/samsung/android/support/senl/nt/app/common/widget/IFolderPathLayoutListener;)V

    return-void
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->onRestoreDialogState(Landroid/os/Bundle;)V

    return-void
.end method

.method private setCheckItem(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->setItemChecked(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateSelectedItemCount()V

    return-void
.end method

.method private updateBottomNaviView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->isLocalNotePickerNeeds()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mBottomNaviView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->import_list_area:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->bottom_navigation_text_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateFolderNameContainer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getCurrentFolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;->updateCurrentPath([Ljava/lang/String;)V

    return-void
.end method

.method private updateFolderPathDivider()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->isLocalNotePickerNeeds()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->import_list_area:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->folderpath_divider:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mFolderPathLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method private updateNoNoteView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->isLocalNotePickerNeeds()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mNoNote:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mNoNote:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSelectAllLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->isLocalNotePickerNeeds()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mSelectAllLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public activityFinish()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dismissFileDownloadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->dismissFileDownloadingDialog()V

    return-void
.end method

.method public getChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mImportFolderViewContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getContainerContentDescription(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getContainerContentDescription(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mImportFolderViewContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getImportFolderInfo(I)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getImportFolderInfo(I)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemContainerContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getItemContainerContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public initLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->import_list_area:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->nonote:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mNoNote:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getNoNoteText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->recyclerview:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mAdapter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;->setOnPenMultiSelectionListener(Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isKeyboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->initBottomNaviView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->initFolderPathLayout()V

    return-void
.end method

.method public isFragmentResumed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mImportFolderViewContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;->isResumed()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mAdapter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mAdapter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onActionDoneOptionsItemSelected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onActionDone()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onBackKeyDown()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->isRootFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "ST$ImportFolderView"

    const-string v1, "onBackKeyDown# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->moveToUpperFolder()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateFolderLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onCreate()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->startContentLoadingDialog()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onDestroy()V

    return-void
.end method

.method public onFolderClicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onFolderClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onItemChecked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onItemChecked()V

    return-void
.end method

.method public onPrepareOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getCheckedItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->onPrepareOptionsMenu(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated()V
    .locals 2

    const-string v0, "ST$ImportFolderView"

    const-string v1, "onViewCreated# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->initLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->initializeToolbar()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateFolderNameContainer()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateSelectedItemCount()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->onViewCreated()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ST$ImportFolderView"

    const-string v1, "onViewStateRestored# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->setAllItemChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->setAllItemChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateSelectedItemCount()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "552"

    const-string v1, "5511"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showErrorDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->showErrorDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public showFileDownloadingDialog(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->showFileDownloadingDialog(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    return-void
.end method

.method public showFileNameInUseDialog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->showFileNameInUseDialog(Ljava/lang/String;)V

    return-void
.end method

.method public startContentLoadingDialog()V
    .locals 2

    const-string v0, "ST$ImportFolderView"

    const-string v1, "startContentLoadingDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->isLocalNotePickerNeeds()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "startContentLoadingDialog# isLocalNotePickerNeeds: false"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mDialog:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->isFileDownloadInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "startContentLoadingDialog#  Loading inProgress"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->initPresenter()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mAdapter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getAppName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getImportType()Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->showFileDownloadingDialog(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V

    return-void
.end method

.method public startGoogleDriveActivity(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mImportFolderViewContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;->startGoogleDriveActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startLocalNotePickerActivity()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mImportFolderViewContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;->startLocalNotePickerActivity()V

    return-void
.end method

.method public startRequestAuthorizationActivity(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mImportFolderViewContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderViewContract;->startRequestAuthorizationActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateFolderLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$5;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$6;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSelectedItemCount()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getCheckedItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getDefaultActionBarTitle()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->updateSelectedItemCount(IILjava/lang/String;)V

    return-void
.end method
