.class public Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

.field private final mIsTabletModel:Z

.field private final mMarginStart:I

.field private final mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mIsTabletModel:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->tablet_drawer_bar_icon_margin_start:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->drawer_list_item_depth_margin_start:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mMarginStart:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result p1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mIsTabletModel:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->TYPE_DRAWER_TABLET:I

    :goto_0
    or-int/2addr p1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->isFreeFormWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->TYPE_DRAWER_PHONE_FREE_FORM_WINDOW:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->TYPE_DRAWER_PHONE:I

    goto :goto_0

    :goto_1
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;I)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;ILjava/util/List;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->decorateIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->decorateCount(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->updateNewBadge(I)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->TYPE_DRAWER_TABLET:I

    and-int/2addr v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->drawer_list_item_tablet:I

    :goto_0
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->TYPE_DRAWER_PHONE_FREE_FORM_WINDOW:I

    and-int/2addr p2, v0

    if-lez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->drawer_list_item_free_form_window:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->drawer_list_item:I

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mMarginStart:I

    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;I)V

    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->getFolderUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->applyHighlightSelectedHolder(Z)V

    return-void
.end method
