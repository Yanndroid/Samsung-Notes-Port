.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationCancel#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mIsAnimating:Z

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mStartingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;->onStartingAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationRepeat#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationStart#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mStartingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;->onStartingAnimationStart()V

    return-void
.end method
