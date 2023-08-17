.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SEEK_BAR_ANIMATION_LONG_DURATION:I = 0x190

.field private static final SEEK_BAR_ANIMATION_SHORT_DURATION:I = 0x64

.field private static final VALUE_THRESHOLD:I = 0xa


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAnimatingEndValue:I

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mInnerAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsDragging:Z

.field private mScaledTouchSlop:I

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mStartProgress:I

.field private mTouchDownX:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SeekBarProgressAnimation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mInnerAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mScaledTouchSlop:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;)Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mIsDragging:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mStartProgress:I

    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->TAG:Ljava/lang/String;

    const-string v1, "cancelAnimation: "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mInnerAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

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

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mIsDragging:Z

    return v0
.end method

.method public setOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

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
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mTouchDownX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mScaledTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mIsDragging:Z

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

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledHoverSlop()I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/2addr p1, v2

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mScaledTouchSlop:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mStartProgress:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mTouchDownX:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mIsDragging:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public setStartProgress(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mStartProgress:I

    return-void
.end method

.method public setTarget(ZZI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTarget: fromUSer= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isTracking= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsDragging= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mIsDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mIsDragging:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mStartProgress:I

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->startAnimation(II)Z

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->isAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mIsDragging:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->cancelAnimation()V

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public startAnimation(II)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-ne p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimatingEndValue:I

    if-ne p2, p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->cancelAnimation()V

    :cond_3
    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimatingEndValue:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAnimation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v1

    const/4 v1, 0x1

    aput p2, v2, v1

    const-string v3, "Progress"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mInnerAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

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

    if-gt p1, p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x64

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    :goto_1
    return v1
.end method
