.class Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$600(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$700(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->isSupportProgressBg()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->setCurrentAlpha(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "SpenSliderTransitionAnimation"

    const-string v0, "[SHOW] onAnimationEnd()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "SpenSliderTransitionAnimation"

    const-string v0, "[SHOW] onAnimationStart()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
