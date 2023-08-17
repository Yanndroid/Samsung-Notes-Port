.class Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupWindowMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;->mItemArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;->mItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_title_list_popup_window_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$PopupWindowMenuHolder;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;Landroid/view/View;)V

    return-object p2
.end method
