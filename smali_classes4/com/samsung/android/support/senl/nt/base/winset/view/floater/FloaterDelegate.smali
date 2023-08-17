.class public Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;,
        Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;
    }
.end annotation


# static fields
.field private static final FLY_VELOCITY_MIN_LIMIT:F = 2000.0f

.field private static final TAG:Ljava/lang/String; = "FloaterDelegate"

.field private static final VELOCITY_UNIT:I = 0x3e8


# instance fields
.field private mActionListener:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;

.field private mBlockadedDocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRound:F

.field private mDefaultMarginEnd:I

.field private mDefaultMarginStart:I

.field private mDefaultPaddingEnd:I

.field private mDefaultRound:F

.field private mDockAnimator:Landroid/animation/AnimatorSet;

.field private mDockerInsetSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDockingParam:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;

.field private mDockingSide:I

.field private mDocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFlyXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mFlyYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mIsReadyToFlip:Z

.field private mIsReadyToScroll:Z

.field private mIsReadyToSeek:Z

.field private mModeChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$ModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mPositionYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRoundableBG:Landroid/graphics/drawable/GradientDrawable;

.field private mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mState:I

.field private mTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mViewContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mBlockadedDocks:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockerInsetSizes:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultRound:F

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mCurrentRound:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mModeChangeListeners:Ljava/util/List;

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToScroll:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToFlip:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToSeek:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mActionListener:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mViewContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mActionListener:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setBGCornerRadius(F)V

    return-void
.end method

.method private canHorizontalScroll(I)Z
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->isHorizontalScrollable(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mViewContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;->getParentWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mViewContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;->getEndEdgeSize()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float p1, v1, p1

    if-gez p1, :cond_1

    const-string p1, "FloaterDelegate"

    const-string v1, "can start move X - change  scrollable"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private canStartToMoveFromFlipper(FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToFlip:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private canStartToMoveFromScroll(Landroid/graphics/PointF;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToScroll:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/graphics/PointF;->offset(FF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->getScrollDirection(Landroid/view/View;Landroid/graphics/PointF;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->canHorizontalScroll(I)Z

    move-result v0

    const-string v2, "FloaterDelegate"

    if-eqz v0, :cond_1

    const-string p1, "can not start move X"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->canVerticalScroll(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "can not start move Y"

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method private canStartToMoveFromSeekBar(Landroid/graphics/PointF;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToSeek:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private canVerticalScroll(I)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->isVerticalScrollable(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mViewContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;->getParentHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_1

    const-string p1, "FloaterDelegate"

    const-string v1, "can start move Y - change  scrollable"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private cancelDockingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FloaterDelegate"

    const-string v1, "cancel Spring"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private enabledRound(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mRoundableBG:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mCurrentRound:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultRound:F

    cmpg-float v4, v1, p1

    if-gez v4, :cond_2

    move v3, p1

    goto :goto_0

    :cond_1
    cmpl-float p1, v1, v3

    if-lez p1, :cond_2

    :goto_0
    move v0, v2

    :cond_2
    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->runRoundAnimation(FF)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setBGCornerRadius(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method private isOutOfBoundsFromFloatView(Landroid/graphics/PointF;)Z
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->offset(FF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->contains(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private onDocking(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelDockingAnimation()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockAnimator:Landroid/animation/AnimatorSet;

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->enabledRound(ZZ)V

    xor-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->enableMargin(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->openDocker(II)Z

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setState(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private runFlyAnimation(Landroid/view/View;FFFFZLjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    if-nez p6, :cond_0

    const/high16 p6, 0x44160000    # 600.0f

    const v0, 0x3fb33333    # 1.4f

    goto :goto_0

    :cond_0
    const/high16 p6, 0x43c80000    # 400.0f

    const/high16 v0, 0x3f400000    # 0.75f

    :goto_0
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v1, p1, v2, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, p1, v1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;

    const/4 p2, 0x1

    const-string p3, "Fly"

    invoke-direct {p1, p0, p3, p2, p7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;ZLjava/lang/Runnable;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private runPositionAnimation(Landroid/view/View;FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, p1, v0, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;

    const-string p2, "Position"

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private runRoundAnimation(FF)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut60;

    invoke-direct {p2}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private setBGCornerRadius(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mRoundableBG:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mRoundableBG:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mCurrentRound:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update round : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloaterDelegate"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setBackground(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mRoundableBG:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method private setState(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mState:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloaterDelegate"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mModeChangeListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$ModeChangeListener;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mState:I

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$ModeChangeListener;->onModeChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addDock(ILcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDock(I)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addModeChangeListener(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$ModeChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mModeChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blockadeDock(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->isBlockaded(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mBlockadedDocks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mBlockadedDocks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public canStartToMove(Landroid/graphics/PointF;FF)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToScroll:Z

    const/4 v1, 0x1

    const-string v2, "FloaterDelegate"

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->canStartToMoveFromScroll(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "canStartToMoveFromScroll"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToFlip:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->canStartToMoveFromFlipper(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "canStartToMoveFromFlipper"

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToSeek:Z

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->canStartToMoveFromSeekBar(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "canStartToMoveFromSeekBar"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public cancelTranslationAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method

.method public changeDockerSize(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDock()Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/IChangeable;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockerInsetSize()I

    move-result v1

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/IChangeable;->changeSize(I)V

    :cond_0
    return-void
.end method

.method public closeAllDocker()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->hideDockOthers(I)V

    return-void
.end method

.method public deInitInterceptTouchEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToSeek:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToFlip:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToScroll:Z

    return-void
.end method

.method public enableMargin(Z)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultMarginStart:I

    if-eqz p1, :cond_2

    if-eq v2, v6, :cond_1

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultMarginEnd:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultPaddingEnd:I

    move v7, v2

    move v8, v4

    move v2, v6

    move v6, v5

    goto :goto_3

    :cond_1
    move v6, v5

    move v7, v6

    move v8, v7

    goto :goto_3

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingParam:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;

    if-eqz v7, :cond_3

    iget v8, v7, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->mStartMargin:I

    goto :goto_0

    :cond_3
    move v8, v5

    :goto_0
    add-int/2addr v6, v8

    iget v8, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultMarginEnd:I

    if-eqz v7, :cond_4

    iget v7, v7, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->mEndMargin:I

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_1
    add-int/2addr v7, v8

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    if-ne v6, v8, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    if-eq v7, v8, :cond_5

    goto :goto_2

    :cond_5
    move v8, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v8, v4

    move v2, v5

    move v3, v2

    :goto_3
    if-eqz v8, :cond_a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v6, v5, v7, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "FloaterDelegate"

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    int-to-float v3, v6

    sub-float/2addr p1, v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_7

    cmpl-float v3, p1, v5

    if-lez v3, :cond_8

    goto :goto_4

    :cond_7
    cmpg-float v3, p1, v5

    if-gez v3, :cond_8

    :goto_4
    move p1, v5

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable margin : translationX"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update margin : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public endDrag(Landroid/view/View;)V
    .locals 3

    const-string v0, "FloaterDelegate"

    const-string v1, "run end drag scale animation"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x43c80000    # 400.0f

    const v2, 0x3ec7ae14    # 0.39f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->runScaleAnimation(Landroid/view/View;FFF)V

    return-void
.end method

.method public fly(Landroid/view/View;FFFFZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->runFlyAnimation(Landroid/view/View;FFFFZLjava/lang/Runnable;)V

    return-void
.end method

.method public getDock()Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDock(I)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    move-result-object v0

    return-object v0
.end method

.method public getDock(I)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDockerInsetSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockerInsetSize(I)I

    move-result v0

    return v0
.end method

.method public getDockerInsetSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockerInsetSizes:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getDockingPosEndX()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingParam:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultMarginEnd:I

    iget v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->mEndMargin:I

    add-int/2addr v1, v0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultMarginEnd:I

    return v0
.end method

.method public getDockingPosStartX()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingParam:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultMarginStart:I

    iget v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->mStartMargin:I

    add-int/2addr v1, v0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultMarginStart:I

    return v0
.end method

.method public getDockingSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingParam:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->dockingSize:I

    return v0
.end method

.method public getDockingType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    return v0
.end method

.method public getGlobalVisibleRect(I)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDock(I)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/IChangeable;->getLocation()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingParam:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_2

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->dockingSize:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->dockingSize:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v2, p1, :cond_4

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->dockingSize:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    if-ne v2, p1, :cond_5

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->dockingSize:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    :cond_5
    :goto_0
    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mState:I

    return v0
.end method

.method public hideDockOthers(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/IChangeable;->hide()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initInterceptFlipper(Landroid/graphics/PointF;)V
    .locals 2

    const-class v0, Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->getValidView(Ljava/lang/Class;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToFlip:Z

    :cond_0
    return-void
.end method

.method public initInterceptScroll(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->getScrollDirection(Landroid/view/View;Landroid/graphics/PointF;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToScroll:Z

    return-void
.end method

.method public initInterceptSeekBar(Landroid/graphics/PointF;)V
    .locals 2

    const-class v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->getValidView(Ljava/lang/Class;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToSeek:Z

    return-void
.end method

.method public initLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultMarginStart:I

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultMarginEnd:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultPaddingEnd:I

    return-void
.end method

.method public isBlockaded(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mBlockadedDocks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isInterceptedTouchEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToScroll:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToFlip:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mIsReadyToSeek:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDocking(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mBlockadedDocks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->onDocking(ZZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "on docking - type : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloaterDelegate"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnDocking()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->onDocking(ZZ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    return-void
.end method

.method public openDocker(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->openDocker(II)Z

    return-void
.end method

.method public openDocker(II)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mBlockadedDocks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->hideDockOthers(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDock(I)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockerInsetSize(I)I

    move-result p1

    add-int/2addr p2, p1

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/IChangeable;->show(I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public reboundOnDropZone(Landroid/view/View;FFI)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rebound on drop zone X : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloaterDelegate"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/high16 v1, 0x3f400000    # 0.75f

    if-eq p4, v0, :cond_1

    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    const/high16 p4, 0x43160000    # 150.0f

    :goto_0
    move v6, p4

    move v7, v1

    goto :goto_1

    :cond_0
    const/high16 p4, 0x43c80000    # 400.0f

    goto :goto_0

    :cond_1
    const/high16 p4, 0x44fa0000    # 2000.0f

    const v1, 0x3f59999a    # 0.85f

    goto :goto_0

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->runPositionAnimation(Landroid/view/View;FFFF)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mModeChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockerInsetSizes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public runScaleAnimation(Landroid/view/View;FFF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;

    const-string p2, "Scale"

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public runTranslationAnimation(Landroid/graphics/Point;Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFloatViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$2;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setBackground(Landroid/graphics/drawable/GradientDrawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mRoundableBG:Landroid/graphics/drawable/GradientDrawable;

    :goto_0
    return-void
.end method

.method public setDefaultCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDefaultRound:F

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mCurrentRound:F

    return-void
.end method

.method public setDockParams(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingParam:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->onDocking(ZZ)V

    :cond_0
    return-void
.end method

.method public setDockSide(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockingSide:I

    return-void
.end method

.method public setDockerInsetSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDockerInsetSizes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDockerVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mDocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDock(I)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/IChangeable;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 3

    const-string v0, "FloaterDelegate"

    const-string v1, "run start drag scale animation"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x3f828f5c    # 1.02f

    const/high16 v1, 0x43a50000    # 330.0f

    const v2, 0x3e343958    # 0.176f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->runScaleAnimation(Landroid/view/View;FFF)V

    return-void
.end method

.method public stopActions()V
    .locals 2

    const-string v0, "FloaterDelegate"

    const-string v1, "stopActions"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mPositionYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->mFlyYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelSpringAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelDockingAnimation()V

    return-void
.end method
