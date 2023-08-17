.class public abstract Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;


# static fields
.field public static final DIST_FACTOR:F = 0.05f

.field public static final FADE_ANIMATION_DURATION:I = 0xc8

.field private static final FLY_VELOCITY_MIN_LIMIT:F = 2000.0f

.field private static final SHADOW_ALPHA:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "FloatLayout"

.field private static final TIME_FOR_LONG_PRESS:J = 0x190L

.field private static final TIME_FOR_LONG_PRESS_BY_SINGLE_DOWN:J = 0x1f4L

.field private static final VELOCITY_UNIT:I = 0x3e8


# instance fields
.field public mBottomMargin:F

.field private mContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;

.field public mCurrentTouch:Landroid/graphics/PointF;

.field public mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

.field private mDropAction:Ljava/lang/Runnable;

.field public mEnableDocking:Z

.field private mEnableFly:Z

.field private mEndEdgeSize:F

.field public mHasScrollable:Z

.field public mHasSeekBar:Z

.field public mHasViewFlipper:Z

.field private mHideAnimator:Landroid/animation/ValueAnimator;

.field public mInit:Landroid/graphics/PointF;

.field public mIsFlying:Z

.field private mIsFreeze:Z

.field private mIsInterceptedTouch:Z

.field public mIsMoving:Z

.field public mIsReleased:Z

.field private mLongPressHandler:Landroid/os/Handler;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mLongTouchSlope:I

.field private mOperatingActionCount:I

.field private mOriginPoint:Landroid/graphics/Point;

.field private mOriginRect:Landroid/graphics/Rect;

.field public mParentHeight:I

.field public mParentWidth:I

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field public mStart:Landroid/graphics/PointF;

.field public mStartMargin:F

.field private mStartPress:Z

.field private mTouchSlope:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableFly:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFreeze:Z

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasScrollable:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasViewFlipper:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasSeekBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsInterceptedTouch:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFlying:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEndEdgeSize:F

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsReleased:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongPressHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableFly:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFreeze:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasScrollable:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasViewFlipper:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasSeekBar:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsInterceptedTouch:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFlying:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEndEdgeSize:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsReleased:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginPoint:Landroid/graphics/Point;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongPressHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableFly:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFreeze:Z

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasScrollable:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasViewFlipper:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasSeekBar:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsInterceptedTouch:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFlying:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEndEdgeSize:F

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsReleased:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginPoint:Landroid/graphics/Point;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongPressHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableFly:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFreeze:Z

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasScrollable:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasViewFlipper:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasSeekBar:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsInterceptedTouch:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFlying:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEndEdgeSize:F

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsReleased:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginPoint:Landroid/graphics/Point;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongPressHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOperatingActionCount:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOperatingActionCount:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->drop(Z)V

    return-void
.end method

.method private cancelLongPressGesture()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongPressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->moveIntoTouchPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method private detectLongPressGesture(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$3;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongPressRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongPressHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private drop(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFreeze:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->dropY(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->dropX(Z)Z

    :cond_1
    return-void
.end method

.method private getOriginPoint(Landroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private initInterceptEvent()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasScrollable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->initInterceptScroll(Landroid/graphics/PointF;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasViewFlipper:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->initInterceptFlipper(Landroid/graphics/PointF;)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHasSeekBar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->initInterceptSeekBar(Landroid/graphics/PointF;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsInterceptedTouch:Z

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mTouchSlope:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongTouchSlope:I

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V

    invoke-direct {p1, p0, v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IViewContract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOperatingActionCount:I

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$2;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDropAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setShadowAlpha(Landroid/view/View;F)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->makeAnimation()V

    return-void
.end method

.method private makeAnimation()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$4;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$5;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$6;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$7;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private move(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setMoving(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "move : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloatLayout"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private moveIntoTouchPoint(Landroid/graphics/PointF;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->updateXY(FF)V

    return-void
.end method

.method private onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->cancelLongPressGesture()V

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onTouchMove(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result p1

    return p1

    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onTouchUp()V

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onTouchDown(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isTouchedOutsideForUnDocking(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->detectLongPressGesture(Landroid/view/MotionEvent;)V

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 6

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFreeze:Z

    if-eqz v1, :cond_5

    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongTouchSlope:I

    int-to-float v3, v3

    cmpg-float p2, p2, v3

    if-gez p2, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mLongTouchSlope:I

    int-to-float v3, v3

    cmpg-float p2, p2, v3

    if-gez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long p2, v2, v4

    if-ltz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->dispatchLongPress(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "touch : move - out bound - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloatLayout"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onTouchMove(Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public actionFly(FFLjava/lang/Runnable;)V
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v4, p1, v3

    add-float/2addr v4, v0

    mul-float/2addr v3, p2

    add-float/2addr v3, v1

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEndEdgeSize:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_2

    iget v5, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->right:F

    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDestination(Landroid/graphics/RectF;)Z

    move-result v6

    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getHorizonSnappingDelta(FF)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fly to drop zone : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    int-to-float v2, v4

    sub-float v2, v1, v2

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->fly(Landroid/view/View;FFFFZLjava/lang/Runnable;)V

    return-void
.end method

.method public addDock(ILcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->addDock(ILcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock;)V

    return-void
.end method

.method public addModeChangeListener(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$ModeChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->addModeChangeListener(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$ModeChangeListener;)V

    return-void
.end method

.method public animateToFinalPosition(Landroid/graphics/Point;)V
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getOriginPoint(Landroid/graphics/Point;)V

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->offset(II)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDropAction:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->runTranslationAnimation(Landroid/graphics/Point;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blockadeDock(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->blockadeDock(IZ)V

    return-void
.end method

.method public canStartToMove(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->canStartToMove(Landroid/graphics/PointF;FF)Z

    move-result p1

    return p1
.end method

.method public cancelTranslationAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->cancelTranslationAnimation()V

    return-void
.end method

.method public captureOriginPosition()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public contains(Landroid/graphics/PointF;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->contains(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public dispatchLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    const-string v1, "FloatLayout"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "dispatchLongPress"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->onUnDocking()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setMoving(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getUndockDestination([FLandroid/view/MotionEvent;)V

    const/4 p1, 0x0

    aget v3, v2, p1

    aget v4, v2, v0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->updateXY(FF)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start position delta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "dispatchLongPress : ignored not docking"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dropAction()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDropAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public dropHorizontalDocking(ZI)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dropHorizontalDocking# withAnimation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getTopDockingPosition()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dropHorizontalDocking# getTopDockingPosition() "

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomDockingPosition()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dropHorizontalDocking# getBottomDockingPosition() "

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->reboundOnDropZone(FFZI)V

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onDocking(IZ)V

    return-void
.end method

.method public dropX(Z)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->closeAllDocker()V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    int-to-float v4, v2

    iget v5, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEndEdgeSize:F

    sub-float/2addr v4, v5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEndEdgeSize:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    sub-float v4, v2, v4

    move v2, v6

    :cond_0
    cmpg-float v5, v0, v3

    const/4 v7, 0x1

    if-gez v5, :cond_1

    invoke-virtual {p0, v3, v1, p1, v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->reboundOnDropZone(FFZI)V

    return v7

    :cond_1
    cmpl-float v3, v0, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;

    if-eqz v3, :cond_2

    sub-float v0, v4, v0

    float-to-int v0, v0

    invoke-interface {v3, v2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;->getSnappingDelta(II)I

    move-result v6

    :cond_2
    int-to-float v0, v6

    sub-float/2addr v4, v0

    invoke-virtual {p0, v4, v1, p1, v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->reboundOnDropZone(FFZI)V

    return v7

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    int-to-float v3, v2

    cmpl-float p1, p1, v3

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;

    if-eqz p1, :cond_4

    invoke-interface {p1, v2, v6}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;->getSnappingDelta(II)I

    move-result p1

    goto :goto_0

    :cond_4
    move p1, v6

    :goto_0
    if-eqz p1, :cond_5

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0, v1, v7, v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->reboundOnDropZone(FFZI)V

    return v7

    :cond_5
    return v6
.end method

.method public dropY(Z)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dropY withAnimation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingSide()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->isBlockaded(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->dropHorizontalDocking(ZI)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public enableDocking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    return-void
.end method

.method public enableMargin(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->enableMargin(Z)V

    return-void
.end method

.method public fly(FFLjava/lang/Runnable;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableFly:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fly : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FloatLayout"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    cmpl-float v0, v2, v3

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->actionFly(FFLjava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getBorder()Landroid/graphics/RectF;
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getTopDockingArea()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomDockingPosition()F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    :goto_0
    int-to-float v1, v1

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getBottomDockingArea()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getBottomDockingPosition()F
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getBottomMargin()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    return v0
.end method

.method public getDestination(Landroid/graphics/RectF;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBorder()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v1, v3

    const/4 v5, 0x1

    if-gez v4, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getTopDockingPosition()F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    move v2, v5

    goto :goto_1

    :cond_2
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomDockingPosition()F

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v4, v1

    move v1, v4

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingPosStartX()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v0, v2, v0

    :cond_5
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return v5

    :cond_6
    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    invoke-virtual {p1, v3, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_2

    :cond_7
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_8
    :goto_2
    return v5
.end method

.method public getDockingBoundary()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDockingGravity()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x800005

    return v0

    :cond_1
    const v0, 0x800003

    return v0

    :cond_2
    const/16 v0, 0x50

    return v0

    :cond_3
    const/16 v0, 0x30

    return v0
.end method

.method public getDockingSide()I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingType()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingBoundary()I

    move-result v2

    if-ne v2, v1, :cond_2

    return v1

    :cond_1
    move v2, v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDockingSide# prev docking side : prevDocking "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " docking "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getDockingSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result v0

    return v0
.end method

.method public getDockingType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getEnabledDocking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    return v0
.end method

.method public getEndEdgeSize()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEndEdgeSize:F

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getHorizonSnappingDelta(FF)I
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;

    if-eqz v1, :cond_1

    sub-float/2addr p1, p2

    float-to-int p1, p1

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;->getSnappingDelta(II)I

    move-result v2

    :cond_1
    return v2
.end method

.method public getIsMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    return v0
.end method

.method public getOriginRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getParentHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    return v0
.end method

.method public getParentWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDockingArea()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTopDockingPosition()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUndockDestination([FLandroid/view/MotionEvent;)V
    .locals 3
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v2

    add-float/2addr v1, p2

    const/4 p2, 0x0

    aput v0, p1, p2

    const/4 p2, 0x1

    aput v1, p1, p2

    return-void
.end method

.method public interceptTouchOnce()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsInterceptedTouch:Z

    return-void
.end method

.method public isAcceptableOverlap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFreezeState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFreeze:Z

    return v0
.end method

.method public isHideRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    return v0
.end method

.method public isStateDocking()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchedOnChildView(Landroid/graphics/PointF;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->contains(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTouchedOutsideForUnDocking(Landroid/graphics/PointF;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isTouchedOnChildView(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onActionEnd()V
.end method

.method public abstract onActionStart()V
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->initLayout()V

    return-void
.end method

.method public onDocking(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->onDocking(IZZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFieldSizeChanged()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    return-void
.end method

.method public onFling(FFLjava/lang/Runnable;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    const-string v1, "FloatLayout"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onFling : is moving? "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->fly(FFLjava/lang/Runnable;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFlying:Z

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onFieldSizeChanged()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mCurrentTouch:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->canStartToMove(Landroid/graphics/PointF;FF)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->move(FF)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchDown(Landroid/graphics/PointF;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->initInterceptEvent()V

    return-void
.end method

.method public onTouchMove(Landroid/graphics/PointF;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsInterceptedTouch:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mTouchSlope:I

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_1

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->isInterceptedTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsInterceptedTouch:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touch : move : scrolling : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mTouchSlope:I

    int-to-float v3, v2

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_3

    int-to-float v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    :cond_3
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->move(FF)V

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->moveIntoTouchPoint(Landroid/graphics/PointF;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchUp()V
    .locals 2

    const-string v0, "FloatLayout"

    const-string v1, "touch : up"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartPress:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->deInitInterceptTouchEvent()V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setMoving(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFlying:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFlying:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFreeze:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->actionFly(FFLjava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public onUndocking(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->onUnDocking()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method

.method public openDocker(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->openDocker(II)Z

    move-result p1

    return p1
.end method

.method public reboundOnDropZone(FFZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rebound drop zone : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {p3, p0, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->reboundOnDropZone(Landroid/view/View;FFI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->stopActions()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->release()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsReleased:Z

    return-void
.end method

.method public runScaleAnimation(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->runScaleAnimation(Landroid/view/View;FFF)V

    return-void
.end method

.method public runTranslationAnimation(Landroid/graphics/Point;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->runTranslationAnimation(Landroid/graphics/Point;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public setBottomMargin(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mContract:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater$IContract;

    return-void
.end method

.method public setDefaultCornerRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setDefaultCornerRadius(F)V

    return-void
.end method

.method public setDockParams(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setDockParams(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;)V

    return-void
.end method

.method public setDockSide(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setDockSide(I)V

    return-void
.end method

.method public setDocker(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->closeAllDocker()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->openDocker(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableFly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableFly:Z

    return-void
.end method

.method public setEndEdgeSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEndEdgeSize:F

    return-void
.end method

.method public setFreezeState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsFreeze:Z

    return-void
.end method

.method public setMoving(Z)V
    .locals 3

    const-string v0, "FloatLayout"

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "moving : onDocking - not move"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsMoving:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->startMoveWithAnimation(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moving : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  width "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setStartMargin(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    return-void
.end method

.method public startHideAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startMoveWithAnimation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->startDrag(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->endDrag(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public startShowAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateDockerSizeWithMargin()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->changeDockerSize(I)V

    return-void
.end method

.method public updateState()V
    .locals 2

    const-string v0, "FloatLayout"

    const-string v1, "updateState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->drop(Z)V

    return-void
.end method

.method public updateXY(FF)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p2, v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr p1, v1

    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method
