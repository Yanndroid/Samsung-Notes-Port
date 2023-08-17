.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mContainer:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mIsAnimating:Z

.field public mStartingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsStartingAnimation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initAnimation(I)V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAnimation# color "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xffffff

    and-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "#%06X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$3;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    return-void
.end method


# virtual methods
.method public abstract getStartOffset()I
.end method

.method public init(Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;ILcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "init#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mStartingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->initSystemValues()V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->initAnimation(I)V

    return-void
.end method

.method public abstract initPosition()V
.end method

.method public abstract initSystemValues()V
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mIsAnimating:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mStartingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;

    return-void
.end method

.method public start()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start# isAnimating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->isAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mIsAnimating:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->initPosition()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->getStartOffset()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->TAG:Ljava/lang/String;

    const-string v1, "stop#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mIsAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mStartingAnimationListener:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimationListener;->onStartingAnimationEnd()V

    :cond_1
    return-void
.end method
