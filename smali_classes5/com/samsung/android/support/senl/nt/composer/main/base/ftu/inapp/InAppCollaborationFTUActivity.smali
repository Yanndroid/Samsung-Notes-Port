.class public Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final DELAY_FINISH_WITH_FAIL:I = 0x96

.field private static final DELAY_FINISH_WITH_SUCCESS:I = 0x190

.field private static final DELAY_SHOW_START_BUTTON:I = 0xfa0

.field private static final DURATION_DISMISS:I = 0x96

.field private static final DURATION_SHOW:I = 0xc8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLottie:Lcom/airbnb/lottie/LottieAnimationView;

.field private final mOnDimTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnStartClickListener:Landroid/view/View$OnClickListener;

.field private mStart:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mOnStartClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mOnDimTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mLottie:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private dismissAllView()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->dismissFTUVideo()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->dismissStartButton()V

    return-void
.end method

.method private dismissFTUVideo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private dismissStartButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mStart:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mStart:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->dismissAllView()V

    return-void
.end method

.method private finishWithDelay(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;Z)V

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x96

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private finishWithFail()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishWithSuccess()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->finishWithDelay(Z)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->finishWithFail()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->finishWithSuccess()V

    return-void
.end method

.method private init()V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->lottie:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mLottie:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->use_phone_as_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mStart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mOnStartClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mOnDimTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->showStartButton()V

    return-void
.end method

.method private showFTUVideo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showStartButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mStart:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mStart:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->mStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateSystemColor()V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->in_app_collaboration_ftu_bg_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setStatusBarTheme(Landroid/app/Activity;IZ)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setNavigationBarTheme(Landroid/app/Activity;IZ)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->updateSystemColor()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->in_app_collaboration_ftu_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->init()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->showFTUVideo()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->updateSystemColor()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->setInAppFTUUsed()V

    return-void
.end method
