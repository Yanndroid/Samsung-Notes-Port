.class Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->onDropToPosition(II)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    return-void
.end method
