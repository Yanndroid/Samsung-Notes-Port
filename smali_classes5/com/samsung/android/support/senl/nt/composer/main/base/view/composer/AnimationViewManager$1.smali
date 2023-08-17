.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->updateMoveState(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    return-void
.end method
