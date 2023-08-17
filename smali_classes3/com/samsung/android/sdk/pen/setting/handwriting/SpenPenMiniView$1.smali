.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method
