.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SETTING_SHOW_COUNT_KEY:Ljava/lang/String; = "zoom_lock_tip"


# instance fields
.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mZoomTipView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    return-object p0
.end method

.method private getHideAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    const-string v7, "scaleY"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    new-array v6, v2, [F

    fill-array-data v6, :array_2

    const-string v7, "alpha"

    invoke-static {v0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v1, 0x1

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getShowAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    const-string v7, "scaleY"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v1, 0x1

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isNotAvailableToShow()Z
    .locals 6

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "zoom_lock_tip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ge v3, v5, :cond_0

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return v2

    :cond_0
    return v4
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->getShowAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->getShowAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->getHideAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public show()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->getShowAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->getHideAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->getHideAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->getShowAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;->mZoomTipView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomLockTip;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
