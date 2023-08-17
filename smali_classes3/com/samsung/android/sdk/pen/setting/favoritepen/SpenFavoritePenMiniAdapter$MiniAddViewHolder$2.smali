.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->setVisibility(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;

.field public final synthetic val$isVisible:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$2;->this$1:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$2;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$2;->this$1:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->mAddButton:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$2;->this$1:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;->access$700(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$2;->val$isVisible:Z

    if-nez v3, :cond_0

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder$2;->this$1:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniAddViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
