.class public Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenEdgeEffect;


# static fields
.field private static DEFAULT_DURATION:F = 0.25f

.field public static final MAX_FRAME_COUNT_FOR_HORIZONTAL_EDGE_EFFECT:I = 0x3

.field public static final MIN_GRADIENT_FOR_HORIZONTAL_EDGE_EFFECT:F = 0.1f

.field private static MIN_VELOCITY:F = 100.0f

.field private static OPPOSITE_SCROLL_THRESHOLD:F = 0.2f

.field private static PULL_TIME:J = 0xa7L

.field private static final TAG:Ljava/lang/String; = "SpenStretchEdgeEffect"


# instance fields
.field private mCurPoint:Landroid/graphics/PointF;

.field private mCurPullTime:J

.field private mDeltaPoint:Landroid/graphics/PointF;

.field private mDirection:I

.field private mEffect:[Landroid/widget/EdgeEffect;

.field private mEffectRecede:Z

.field private mIsActionMove:Z

.field private mIsEffectEnabled:Z

.field private mIsShowHorizontalEdgeEffect:Z

.field private mOwnerView:Landroid/view/View;

.field private mPrevPoint:Landroid/graphics/PointF;

.field private mRotation:[F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTouchFrameCount:I

.field private mTransitionX:[I

.field private mTransitionY:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mTouchFrameCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsShowHorizontalEdgeEffect:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mOwnerView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;)[Landroid/widget/EdgeEffect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffectRecede:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/EdgeEffect;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDirection:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mRotation:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    new-instance v4, Landroid/widget/EdgeEffect;

    invoke-direct {v4, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mRotation:[F

    const/high16 v4, 0x42b40000    # 90.0f

    int-to-float v5, v2

    mul-float/2addr v5, v4

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mTransitionX:[I

    aput v1, p1, v1

    const/4 v2, 0x1

    aput v2, p1, v2

    const/4 v3, 0x2

    aput v2, p1, v3

    const/4 v4, 0x3

    aput v1, p1, v4

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mTransitionY:[I

    aput v1, p1, v1

    aput v1, p1, v2

    aput v2, p1, v3

    aput v2, p1, v4

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mPrevPoint:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mCurPoint:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDeltaPoint:Landroid/graphics/PointF;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsEffectEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsActionMove:Z

    return-void
.end method

.method private isOppositeScroll(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mCurPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mCurPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDirection:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    sget v4, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->OPPOSITE_SCROLL_THRESHOLD:F

    neg-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v1, :cond_1

    sget v5, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->OPPOSITE_SCROLL_THRESHOLD:F

    neg-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    or-int/2addr v4, v5

    if-ne v1, v3, :cond_2

    sget v5, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->OPPOSITE_SCROLL_THRESHOLD:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    or-int/2addr v0, v4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    sget v1, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->OPPOSITE_SCROLL_THRESHOLD:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    move v2, v3

    :cond_3
    or-int p1, v0, v2

    return p1
.end method

.method private onPull(IFF)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsActionMove:Z

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    cmpg-float p3, p2, p3

    if-gez p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mOwnerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDirection:I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v0, p3, p1

    aget-object p1, p3, p1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mOwnerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mPrevPoint:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mCurPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mCurPullTime:J

    goto :goto_0

    :cond_2
    sget p2, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->MIN_VELOCITY:F

    cmpl-float p2, p3, p2

    if-lez p2, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffectRecede:Z

    if-nez p2, :cond_3

    sget p2, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->DEFAULT_DURATION:F

    mul-float/2addr p3, p2

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDirection:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v0, p2, p1

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-virtual {v0, p3}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mOwnerView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect$1;-><init>(Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;I)V

    sget-wide v0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->PULL_TIME:J

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private releaseEdgeEffect()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public drawEffect(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenWidth:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mTransitionX:[I

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenHeight:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mTransitionY:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mRotation:[F

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mOwnerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public isFinished()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsEffectEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_5

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsActionMove:Z

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mTouchFrameCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mTouchFrameCount:I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsShowHorizontalEdgeEffect:Z

    if-eqz v1, :cond_2

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDeltaPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsShowHorizontalEdgeEffect:Z

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->isOppositeScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDirection:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDirection:I

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mCurPullTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->PULL_TIME:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDirection:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->onPull(IFF)V

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsActionMove:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->releaseEdgeEffect()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->releaseEdgeEffect()V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsActionMove:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffectRecede:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mPrevPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mTouchFrameCount:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsShowHorizontalEdgeEffect:Z

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mCurPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public setEffectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsEffectEnabled:Z

    return-void
.end method

.method public setScreenInfo(IIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenInfo width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", startY="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SpenStretchEdgeEffect"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenHeight:I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 p4, 0x3

    aget-object p3, p3, p4

    invoke-virtual {p3, p2, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenWidth:I

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenHeight:I

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mEffect:[Landroid/widget/EdgeEffect;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    iget p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenWidth:I

    iget p3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mScreenHeight:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public showEdgeEffect(ZZZZFF)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsEffectEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDeltaPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mCurPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsShowHorizontalEdgeEffect:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDeltaPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    neg-float v1, p5

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->onPull(IFF)V

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDeltaPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    neg-float v0, p6

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->onPull(IFF)V

    :cond_2
    if-eqz p3, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mIsShowHorizontalEdgeEffect:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDeltaPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    neg-float p2, p2

    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->onPull(IFF)V

    :cond_3
    if-eqz p4, :cond_4

    const/4 p1, 0x2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->mDeltaPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    invoke-direct {p0, p1, p2, p6}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->onPull(IFF)V

    :cond_4
    return-void
.end method
