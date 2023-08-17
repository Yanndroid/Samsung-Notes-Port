.class Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->onStartDrag(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    :cond_1
    return-void
.end method
