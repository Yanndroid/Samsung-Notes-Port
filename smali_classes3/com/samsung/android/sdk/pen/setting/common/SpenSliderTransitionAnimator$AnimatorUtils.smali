.class Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorUtils"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeightAnimator(II)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$1000(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, 0x3

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public getHideAnimator(II)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->getHeightAnimator(II)Landroid/animation/Animator;

    move-result-object p1

    const/16 p2, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->getProgressBgAlphaAnimator(II)Landroid/animation/Animator;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public getProgressBgAlphaAnimator(II)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, 0x4

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$1300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public getProgressColorAnimator(II)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, 0x4

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$1200(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public getShowAnimator(IIIII)Landroid/animation/Animator;
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->getHeightAnimator(II)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->getThumbColorAnimator(II)Landroid/animation/Animator;

    move-result-object p2

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->isSupportProgressBg()Z

    move-result p4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p1, p4, v3

    aput-object p2, p4, v2

    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    invoke-static {p5, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->setCurrentAlpha(II)I

    move-result p4

    const/16 v4, 0xff

    invoke-static {p5, v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->setCurrentAlpha(II)I

    move-result v5

    invoke-virtual {p0, p4, v5}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->getProgressColorAnimator(II)Landroid/animation/Animator;

    move-result-object p4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->getProgressBgAlphaAnimator(II)Landroid/animation/Animator;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    aput-object p4, v5, v1

    const/4 p1, 0x3

    aput-object v4, v5, p1

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$702(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p1, p5}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$802(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)I

    return-object v0
.end method

.method public getThumbColorAnimator(II)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->access$1100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method
