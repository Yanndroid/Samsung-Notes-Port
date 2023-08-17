.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridSmallViewHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GridSmallViewHolder"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;-><init>(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "GridSmallViewHolder"

    return-object v0
.end method

.method public setAdapterContract(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->thumbnail_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->setRatio(F)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->setAdapterContract(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;)V

    return-void
.end method
