.class Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# instance fields
.field private final LABEL_ANIMATION_DURATION:I

.field private final SEEK_BAR_ANIMATION_LONG_DURATION:I

.field private final SEEK_BAR_ANIMATION_SHORT_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final VALUE_THRESHOLD:I

.field private mAnimatingEndValue:I

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mInnerAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsDragging:Z

.field private mLabelAnimator:Landroid/animation/ValueAnimator;

.field private mLabelAnimatorCancelled:Z

.field private mLabelText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStartProgress:I

.field private mTouchDownX:I


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenSeekBarProgressAnimation"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->TAG:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->SEEK_BAR_ANIMATION_SHORT_DURATION:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->SEEK_BAR_ANIMATION_LONG_DURATION:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->LABEL_ANIMATION_DURATION:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->VALUE_THRESHOLD:I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mInnerAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mScaledTouchSlop:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->setLabelAnimator()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimatorCancelled:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimatorCancelled:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->startLabelAnimator(IFF)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mStartProgress:I

    return p1
.end method

.method public static synthetic access$402(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mIsDragging:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelText:Landroid/widget/TextView;

    return-object p0
.end method

.method private cancelAnimation()V
    .locals 2

    const-string v0, "SpenSeekBarProgressAnimation"

    const-string v1, "cancelAnimation: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private setLabelAnimator()V
    .locals 6

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f428f5c    # 0.76f

    const v3, 0x3d75c28f    # 0.06f

    const v4, 0x3f6e147b    # 0.93f

    const v5, 0x3f2147ae    # 0.63f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private startLabelAnimator(IFF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mLabelText:Landroid/widget/TextView;

    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mTouchDownX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mScaledTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mIsDragging:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lez v1, :cond_4

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    if-eq p1, v3, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledHoverSlop()I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/2addr p1, v2

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mScaledTouchSlop:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mStartProgress:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mTouchDownX:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mIsDragging:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public setStartProgress(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mStartProgress:I

    return-void
.end method

.method public setTarget(ZZZI)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTarget: fromUSer= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isTracking= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isButtonEvent= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsDragging= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mIsDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSeekBarProgressAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mIsDragging:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mStartProgress:I

    sub-int/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mStartProgress:I

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->startAnimation(II)Z

    move-result p1

    return p1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->isAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mIsDragging:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->cancelAnimation()V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public startAnimation(II)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return v1

    :cond_1
    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimatingEndValue:I

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->cancelAnimation()V

    :cond_4
    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimatingEndValue:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenSeekBarProgressAnimation"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v1

    const/4 v1, 0x1

    aput p2, v2, v1

    const-string v3, "Progress"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mInnerAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0xa

    if-gt p1, p2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x64

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return v1
.end method
