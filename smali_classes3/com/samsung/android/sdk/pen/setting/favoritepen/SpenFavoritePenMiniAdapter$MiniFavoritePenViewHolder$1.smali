.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;->setDeleteButtonVisibility(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder$1;->this$1:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder$1;->this$1:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder$1;->this$1:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$MiniFavoritePenViewHolder;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    return-void
.end method
