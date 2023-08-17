.class Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;
    }
.end annotation


# static fields
.field private static final PROGRESS_SCALE_DURATION:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "SpenSliderAnimation"

.field private static final THUMB_SCALE_DOWN_DURATION:I = 0x64

.field private static final THUMB_SCALE_UP_DURATION:I = 0x12c


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mDefaultSliderHeight:I

.field private mDownX:F

.field private mEndAnimator:Landroid/animation/AnimatorSet;

.field private mIsMoving:Z

.field private mProgressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressMaxHeight:I

.field private mProgressMinHeight:I

.field private mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mReadyState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStartAnimator:Landroid/animation/AnimatorSet;

.field private mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

.field private mThumbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/ScaleDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbMaxLevel:I

.field private mThumbMinLevel:I

.field private mThumbUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$3;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->NORMAL:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mReadyState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setState(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mEndAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mReadyState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mReadyState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    return-object p1
.end method

.method private setState(Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState() :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSliderAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->NORMAL:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressMinHeight:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setProgress(I)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbMaxLevel:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setThumbLevel(I)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->EXPEND:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressMaxHeight:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setProgress(I)V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbMinLevel:I

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mSeekBar:Landroid/widget/SeekBar;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mEndAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mEndAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mEndAnimator:Landroid/animation/AnimatorSet;

    :cond_4
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbList:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->NORMAL:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    return-void
.end method

.method public endAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mEndAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mEndAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressMaxHeight:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressMinHeight:I

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v0, [I

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbMinLevel:I

    aput v5, v2, v3

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbMaxLevel:I

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mEndAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mEndAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endAnimation() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSliderAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->STARTING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "endAnimation() But startAnimation is running.... "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->ENDING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mReadyState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->EXPEND:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->ENDING:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mEndAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoAnimation(Landroid/widget/SeekBar;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mTouchSlop:I

    return-void
.end method

.method public setOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "SpenSliderAnimation"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mIsMoving:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mDownX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mIsMoving:Z

    const-string p1, "[AUTO] startAnimation()"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->startAnimation()V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mIsMoving:Z

    if-eqz p1, :cond_4

    const-string p1, "[AUTO] endAnimation()"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->endAnimation()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mDownX:F

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mIsMoving:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setProgress(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProgress() height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSliderAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mDefaultSliderHeight:I

    sub-int/2addr v0, p1

    rem-int/lit8 v2, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/lit8 v2, v0, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setProgress() ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mDefaultSliderHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = TOP["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], SIZE["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], BOTTOM["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] drawableSize="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v3, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->setInsets(IIII)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public varargs setProgressInformation(III[Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mDefaultSliderHeight:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressMinHeight:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressMaxHeight:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    :goto_0
    array-length p2, p4

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressList:Ljava/util/List;

    aget-object p3, p4, p1

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setThumbInformation(II[Landroid/graphics/drawable/ScaleDrawable;)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbMinLevel:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbMaxLevel:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbList:Ljava/util/List;

    aget-object v0, p3, p1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setThumbLevel(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setThumbLevel() level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSliderAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public startAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressMinHeight:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressMaxHeight:I

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v0, [I

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbMaxLevel:I

    aput v5, v2, v3

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbMinLevel:I

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mThumbUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startAnimation() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSliderAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mState:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;->NORMAL:Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation$AnimationState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->mStartAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method
