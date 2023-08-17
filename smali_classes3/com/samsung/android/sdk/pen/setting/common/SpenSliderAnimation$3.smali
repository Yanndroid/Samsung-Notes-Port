.class Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "SpenSliderAnimation"

    const-string v1, "onAnimationCancel() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->NORMAL:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->EXPEND:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    goto :goto_0

    :cond_1
    const-string p1, "What is happened?"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "SpenSliderAnimation"

    const-string v1, "onAnimationEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->EXPEND:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->ENDING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$402(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->endAnimation()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->NORMAL:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;)V

    goto :goto_0

    :cond_1
    const-string p1, "What is happened?"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "SpenSliderAnimation"

    const-string v1, "onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->STARTING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->ENDING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    goto :goto_0

    :cond_1
    const-string p1, "What is happened?"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
