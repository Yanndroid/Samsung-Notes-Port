.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/TipCardHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
.source "SourceFile"


# instance fields
.field private mTipCardHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;-><init>(Landroid/view/View;I)V

    const/16 p1, 0x200

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mHolderType:I

    return-void
.end method


# virtual methods
.method public decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/TipCardHolder;->mTipCardHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;-><init>()V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setRootCardView(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/TipCardHolder;->mTipCardHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    :cond_0
    return-void
.end method

.method public getTipCardHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/TipCardHolder;->mTipCardHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    return-object v0
.end method

.method public onBindViewHolder()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/TipCardHolder;->mTipCardHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onTipCardBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method
