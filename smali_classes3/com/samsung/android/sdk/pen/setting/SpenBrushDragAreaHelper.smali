.class abstract Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALPHA_OPAQUE:F = 1.0f

.field public static final ALPHA_TRANSPARENT:F = 0.0f

.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final TRANSITION_DURATION:I = 0xc8

.field private static final mAlphaAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private static final mTransitionInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mGuide:Landroid/view/View;

.field private mHasTarget:Z

.field private mIsProcessingAnimation:Z

.field private mWithYourPartner:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mTransitionInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mAlphaAnimationInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mHasTarget:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mWithYourPartner:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mIsProcessingAnimation:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mIsProcessingAnimation:Z

    return p1
.end method

.method private getTransitionSet()Landroid/transition/Transition;
    .locals 3

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mTransitionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    return-void
.end method

.method public getCurrentTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuide()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    return-object v0
.end method

.method public hasTarget()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mHasTarget:Z

    return v0
.end method

.method public performDraggingInside()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mWithYourPartner:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->getTransitionSet()Landroid/transition/Transition;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->setGuideVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->setGuideVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->setGuideAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->startAlphaAnimation(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->startAlphaAnimation(Z)V

    return-void
.end method

.method public performDraggingOutside()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mWithYourPartner:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->getTransitionSet()Landroid/transition/Transition;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->startAlphaAnimation(Z)V

    return-void
.end method

.method public setGuideAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setGuideVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startAlphaAnimation(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mIsProcessingAnimation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mIsProcessingAnimation:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->mAlphaAnimationInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public abstract startDrag(Landroid/view/View;)V
.end method
