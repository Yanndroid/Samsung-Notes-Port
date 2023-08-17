.class public Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper$ViewFlipperActionListener;
    }
.end annotation


# instance fields
.field private mActionListener:Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper$ViewFlipperActionListener;

.field private mDownX:F

.field private mDownY:F

.field private mTouchSlope:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mDownX:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mDownY:F

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mDownX:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mDownY:F

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->init(Landroid/content/Context;)V

    return-void
.end method

.method private changeFlip(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->showPrevious()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mActionListener:Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper$ViewFlipperActionListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper$ViewFlipperActionListener;->onFlipped(Z)V

    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mTouchSlope:I

    return-void
.end method

.method private onLeftSwipe()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$anim;->brush_color_slide_in_left_to_right:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$anim;->brush_color_slide_out_left_to_right:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->changeFlip(Z)V

    return-void
.end method

.method private onRightSwipe()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$anim;->brush_color_slide_in_right_to_left:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$anim;->brush_color_slide_out_right_to_left:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->changeFlip(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mTouchSlope:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->onRightSwipe()V

    return v1

    :cond_2
    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->onLeftSwipe()V

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mDownY:F

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActionListener(Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper$ViewFlipperActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->mActionListener:Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper$ViewFlipperActionListener;

    return-void
.end method
