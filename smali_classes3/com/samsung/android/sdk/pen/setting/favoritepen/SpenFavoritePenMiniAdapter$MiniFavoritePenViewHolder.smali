.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;
.super Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiniFavoritePenViewHolder"
.end annotation


# instance fields
.field private final mDeleteButtonAniListener:Landroid/animation/Animator$AnimatorListener;

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;Landroid/view/View;II)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;-><init>(Landroid/view/View;II)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder$2;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->mDeleteButtonAniListener:Landroid/animation/Animator$AnimatorListener;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->setDeleteButtonVisibility(I)V

    return-void
.end method

.method private setDeleteButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setDeleteButtonVisibility(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->setDeleteButtonVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;->access$400(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;Z)V

    return-void

    :cond_1
    const-wide/16 v2, 0x12c

    const/16 p2, 0xb

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->mDeleteButtonAniListener:Landroid/animation/Animator$AnimatorListener;

    invoke-static {v0, p2, v2, v3, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->scaleUpVisibleAnimation(Landroid/view/View;IJLandroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->mDeleteButtonAniListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x2

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder$1;-><init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;)V

    invoke-virtual {v4, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const-string v3, "alpha"

    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v2, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object v4, v0, p2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->finalize()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getSelectedPosition()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getSelectedPosition()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->setSelectedPosition(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getSelectedPosition()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;->access$300(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;I)Z

    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;ILjava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;->access$100(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;->access$200(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getMode()I

    move-result v0

    if-ne v0, p2, :cond_1

    const/16 p3, 0x8

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->setDeleteButtonVisibility(IZ)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->setRoundViewEnable(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseAdapter;->getMode()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->setDeleteButtonVisibility(IZ)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->setRoundViewEnable(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setViewMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mFavoritePenView:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenBaseView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->setMode(I)V

    :cond_0
    return-void
.end method
