.class Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA_VALUE:I = 0xff

.field private static final MIN_ALPHA_VALUE:I = 0x0

.field private static final PROGRESS_ALPHA_CHANGE_DURATION:I = 0x190

.field private static final PROGRESS_SCALE_CHANGE_DURATION:I = 0xfa

.field private static final PROGRESS_THUMB_COLOR_CHANGE_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SpenSliderTransitionAnimation"


# instance fields
.field private mAnimatorUtils:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;

.field private mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

.field private mEndHeight:I

.field private final mHeightAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mHideAnimator:Landroid/animation/Animator;

.field private final mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mProgressBgAlphaAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mProgressColorAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mProgressThumbAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mShowAniThumbColor:I

.field private mShowAnimator:Landroid/animation/Animator;

.field private final mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowCurrentColor:I

.field private mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

.field private mStartHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHeightAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mProgressThumbAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$3;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mProgressColorAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$4;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mProgressBgAlphaAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$5;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$6;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_slider_track_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mStartHeight:I

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_slider_opacity_progress_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mEndHeight:I

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mAnimatorUtils:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->setSliderHeight(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->setThumbColor(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHeightAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mProgressThumbAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mProgressColorAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mProgressBgAlphaAdjustListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->setProgressColor(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->setProgressBgAlpha(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mEndHeight:I

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAniThumbColor:I

    return p0
.end method

.method public static synthetic access$702(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAniThumbColor:I

    return p1
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowCurrentColor:I

    return p0
.end method

.method public static synthetic access$802(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowCurrentColor:I

    return p1
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private setProgressBgAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setProgressBgAlpha(I)V

    :cond_0
    return-void
.end method

.method private setProgressColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->isSupportProgressBg()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setProgressColor(I)V

    :cond_0
    return-void
.end method

.method private setSliderHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private setThumbColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setThumbColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "SpenSliderTransitionAnimation"

    const-string v1, "cancelAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAnimator:Landroid/animation/Animator;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "showAnimator is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAnimator:Landroid/animation/Animator;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "hideAnimator is canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideAnimator:Landroid/animation/Animator;

    :cond_3
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mAnimatorUtils:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->cancel()V

    return-void
.end method

.method public endHide()V
    .locals 2

    const-string v0, "SpenSliderTransitionAnimation"

    const-string v1, "endHide()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mEndHeight:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setThumbAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setProgressBgAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isRunningAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHeight(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHeight() s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSliderTransitionAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mStartHeight:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mEndHeight:I

    return-void
.end method

.method public setHideAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public startHide()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;->setThumbAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mAnimatorUtils:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mEndHeight:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mStartHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->getHideAnimator(II)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startShow(III)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mColorControl:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarColorControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mSliderAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mAnimatorUtils:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mStartHeight:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mEndHeight:I

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator$AnimatorUtils;->getShowAnimator(IIIII)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAnimator:Landroid/animation/Animator;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderTransitionAnimator;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method
