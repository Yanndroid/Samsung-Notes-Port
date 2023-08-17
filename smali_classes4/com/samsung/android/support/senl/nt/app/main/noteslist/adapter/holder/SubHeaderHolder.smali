.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
.source "SourceFile"


# instance fields
.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSubHeaderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;-><init>(Landroid/view/View;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/16 v0, 0x40

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mHolderType:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;->mSubHeaderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    return-object p0
.end method


# virtual methods
.method public decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
    .locals 4

    iget-wide p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result p3

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isMDEMode(I)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    const-wide/16 v0, -0xf

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_space_list_sub_header_old_format_notes:I

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x10

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_space_list_sub_header_new_format_notes:I

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x11

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_list_sub_header_notebook:I

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mViewMode:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->isSimpleViewMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_fragment_bg_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;->mSubHeaderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;->setId(J)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    move-result-object p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setRootCardView(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setHolderType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;->mSubHeaderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;->setId(J)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    :goto_1
    return-void
.end method

.method public getSubHeaderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;->mSubHeaderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    return-object v0
.end method

.method public onBindViewHolder()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;->mSubHeaderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;->mSubHeaderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method
