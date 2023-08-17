.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$SubHorizontalScroller;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$VerticalScroller;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x14d

.field private static final SHOW_TIME:J = 0x9c4L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field private mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

.field private mDisabled:Z

.field private mEnabledFadeScrollBar:Z

.field private mEnabledPageIndex:Z

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsHiding:Z

.field private mOnScrollListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;

.field private mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

.field private final mParentView:Landroid/view/View;

.field private mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

.field private final mSubMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FastScrollBar"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mParentView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mSubMode:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mEnabledFadeScrollBar:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mEnabledFadeScrollBar:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mEnabledPageIndex:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mOnScrollListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mIsHiding:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    return-void
.end method

.method private initListener()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->runHideAnimation()V

    return-void
.end method

.method public static bridge synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private runHideAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mAnimator:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private runShowAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mAnimator:Landroid/view/ViewPropertyAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setEnabledPageIndex(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mSubMode:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mEnabledPageIndex:Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mEnabledFadeScrollBar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->setVisibility(I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mHideRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mOnScrollListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->setEnabledPageIndex(Z)V

    new-instance p1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    invoke-direct {p1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public isFadingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mEnabledFadeScrollBar:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public isVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->isVertical()Z

    move-result v0

    return v0
.end method

.method public onChangedNoteType(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->setEnabledPageIndex(Z)V

    return-void
.end method

.method public setDirection(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->isVertical()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$VerticalScroller;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$VerticalScroller;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mSubMode:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$SubHorizontalScroller;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$SubHorizontalScroller;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->setDirection(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->initListener()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mDisabled:Z

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mEnabledFadeScrollBar:Z

    return-void
.end method

.method public setPageCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->setPageCount(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->updateText()V

    :cond_0
    return-void
.end method

.method public setPageIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->setPageIndex(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mPageIndexView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->updateText()V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getComposerMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v2, "settings_hide_scroll_bar_when_editing"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->canShow()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mEnabledFadeScrollBar:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->setVisibility(I)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->runShowAnimation()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mIsHiding:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->runShowAnimation()V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public updatePosition(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mScroller:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->setUpdatePosition(Landroid/view/View;F)V

    return-void
.end method
