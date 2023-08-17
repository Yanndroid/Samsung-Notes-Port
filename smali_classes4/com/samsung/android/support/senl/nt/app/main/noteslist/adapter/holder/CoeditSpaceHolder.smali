.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final THUMBNAIL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private mGroupId:Ljava/lang/String;

.field private mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

.field private final mIsPickerMode:Z

.field private mSpaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;-><init>(Landroid/view/View;I)V

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string p2, "CoeditSpaceHolder"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->THUMBNAIL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->setHolderType()V

    const/4 p1, 0x1

    invoke-direct {p0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->initRootView(Landroid/view/View$OnClickListener;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mIsPickerMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;-><init>(Landroid/view/View;I)V

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string p2, "CoeditSpaceHolder"

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->THUMBNAIL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->setHolderType()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->initRootView(Landroid/view/View$OnClickListener;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mIsPickerMode:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mSpaceId:Ljava/lang/String;

    return-object p0
.end method

.method private decorateNewBadge(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->space_new_badge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mIsPickerMode:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private decorateThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->space_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getMembers()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;-><init>(Landroid/view/ViewGroup;Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->THUMBNAIL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initRootView(Landroid/view/View$OnClickListener;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->space_item_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method private setHolderType()V
    .locals 1

    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mHolderType:I

    return-void
.end method


# virtual methods
.method public clearThumbnailHolder()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->space_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->space:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    if-nez p2, :cond_1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;-><init>()V

    const/16 p3, 0x100

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setHolderType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p2

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setRootCardView(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getSpaceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getGroupId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mGroupId:Ljava/lang/String;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$id;->space_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$id;->space_member_count:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getMemberCount()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit_leader_badge:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->isOwnedByMe()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    move p3, v0

    goto :goto_0

    :cond_2
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->getUnReadCount()I

    move-result p2

    const/4 p3, 0x1

    if-lez p2, :cond_3

    move v0, p3

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->decorateNewBadge(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->decorateThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result p1

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    :cond_4
    return-void
.end method

.method public getCoeditSpaceHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mGroupId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mSpaceId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isEditMode(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    return-void
.end method
