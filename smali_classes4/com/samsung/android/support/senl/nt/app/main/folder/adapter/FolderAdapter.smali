.class public Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderAdapter"


# instance fields
.field private final mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

.field private final mAddFolderIconMarginStart:I

.field private final mCheckBoxMarginStart:I

.field private final mCheckBoxWidth:I

.field private final mContext:Landroid/content/Context;

.field private final mFolderListItemDepthMargin:I

.field private final mFolderListItemMarginStart:I

.field private final mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->folder_list_item_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mFolderListItemMarginStart:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->folder_list_item_margin_start_depth:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mFolderListItemDepthMargin:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->item_checkbox_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mCheckBoxWidth:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->folder_list_item_check_box_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mCheckBoxMarginStart:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->folder_list_item_plus_icon_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAddFolderIconMarginStart:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;I)V

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

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderAdapter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(II)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;ILjava/util/List;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " payLoads size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderAdapter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_2

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateCount(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(II)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getFolderUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->applySelectedViewHolder(Z)V

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;
    .locals 10
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->folder_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mFolderListItemMarginStart:I

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mFolderListItemDepthMargin:I

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mCheckBoxWidth:I

    iget v8, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mCheckBoxMarginStart:I

    iget v9, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAddFolderIconMarginStart:I

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;IIIII)V

    return-object p1
.end method

.method public onItemMove(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getModeIndex()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setCheckBoxStatus(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->isDimItem(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setFolderItemDim(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setFolderItemLayoutTransition()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->applySelectedViewHolder(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    return-void
.end method
