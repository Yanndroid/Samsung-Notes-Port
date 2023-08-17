.class public Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;
.super Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewContract$PenRecyclerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;
    }
.end annotation


# instance fields
.field private mIsLongPressed:Z

.field public mLayoutMode:I

.field private mViewModel:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mIsLongPressed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mIsLongPressed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mIsLongPressed:Z

    return-void
.end method


# virtual methods
.method public createViewModel()Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/BasePenRecyclerViewModel;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;-><init>(Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewContract$PenRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mViewModel:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;

    return-object v0
.end method

.method public getGapStrategy()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->getLayoutMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isStaggeredGridLayout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getGapStrategy()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mLayoutMode:I

    return v0
.end method

.method public getOnLongPressMultiSelectionListener()Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mViewModel:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->getOnLongPressMultiSelectionListener()Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;

    move-result-object v0

    return-object v0
.end method

.method public isLongPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mIsLongPressed:Z

    return v0
.end method

.method public removeOnLongPressMultiSelectionListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mViewModel:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->removeOnLongPressMultiSelectionListener()V

    return-void
.end method

.method public setGapStrategy(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->getLayoutMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isStaggeredGridLayout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    :cond_0
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mLayoutMode:I

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mLayoutMode:I

    return-void
.end method

.method public setLongPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mIsLongPressed:Z

    return-void
.end method

.method public setOnLongPressMultiSelectionListener(Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->mViewModel:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerViewModel;->setOnLongPressMultiSelectionListener(Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/OnLongPressMultiSelectionListener;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V

    return-void
.end method

.method public startLongPressMultiSelection()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLongPressed(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    return-void
.end method
