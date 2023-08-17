.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter$FavoritePenViewHolder;
.super Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FavoritePenViewHolder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter$FavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;-><init>(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->finalize()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter$FavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getSelectedPosition()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter$FavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter$FavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->setSelectedPosition(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter$FavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter$FavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter$FavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;

    invoke-static {v1, p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;->access$000(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;Landroid/view/View;I)Z

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter$FavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;->access$100(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setMode(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
