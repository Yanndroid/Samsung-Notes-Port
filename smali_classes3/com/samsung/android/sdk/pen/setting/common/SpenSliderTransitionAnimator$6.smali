.class Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->endHide()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->endHide()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
