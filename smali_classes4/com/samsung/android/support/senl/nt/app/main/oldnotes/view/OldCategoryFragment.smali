.class public Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment$Contract;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OldCategoryFragment"


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment$Contract;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

.field private mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$menu;->old_category_list_select:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p3, "OldCategoryFragment"

    const-string v0, "onCreateView# "

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->old_category_list_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDataChanged(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->no_note:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-lez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->release()V

    return-void
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment$Contract;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment$Contract;->onCategorySelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_converted_notes:I

    if-ne v0, v1, :cond_0

    const-string p1, "old_converted_notes"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->onItemSelected(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_converted_notes:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->isOldConvertedDataExist()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "535"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->collapsing_toolbar:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p2, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->upgradable_notes:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->seslSetSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->upgradable_notes:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->old_note_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x21

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter;->init(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/presenter/OldCategoryPresenter$Contract;)V

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/adpater/OldCategoryAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment$Contract;

    return-void
.end method

.method public startConvertAllNotes()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment;->mContract:Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment$Contract;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/view/OldCategoryFragment$Contract;->startConvertAllNotes()V

    :cond_0
    return-void
.end method
