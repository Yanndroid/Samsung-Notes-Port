.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiniAddViewHolder"
.end annotation


# instance fields
.field public mAddButton:Landroid/widget/ImageView;

.field private final mAddButtonAniListener:Landroid/animation/Animator$AnimatorListener;

.field private mAddViewEditModeHeight:I

.field private mAddViewEditModeWidth:I

.field private mAddViewViewModeHeight:I

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;Landroid/view/View;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$3;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddButtonAniListener:Landroid/animation/Animator$AnimatorListener;

    sget v0, Lcom/samsung/android/spen/R$id;->add_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_round_bg_elevation_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getElevation()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddButton:Landroid/widget/ImageView;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverEffect(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$1;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddViewViewModeHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_add_view_edit_mode_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddViewEditModeHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_add_view_edit_mode_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddViewEditModeWidth:I

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddButtonAniListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method


# virtual methods
.method public setVisibility(IZ)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddViewViewModeHeight:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddViewEditModeHeight:I

    :goto_1
    if-eqz v1, :cond_2

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddViewViewModeHeight:I

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddViewEditModeWidth:I

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getPenCount()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getMaxCount()I

    move-result v5

    if-lt v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_4
    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$2;

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$2;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
