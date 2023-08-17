.class public Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;,
        Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InterceptTouchLayout"


# instance fields
.field private MAX_DRAG_WIDTH:I

.field private mDoNotHandleEvent:Z

.field private mInterceptTouchListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;

.field private mMainViewMode:I

.field private mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

.field private mPrevTouchAction:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->MAX_DRAG_WIDTH:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;->COLLAPSE:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMainViewMode:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mPrevTouchAction:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->MAX_DRAG_WIDTH:I

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;->COLLAPSE:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMainViewMode:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mPrevTouchAction:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->MAX_DRAG_WIDTH:I

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;->COLLAPSE:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMainViewMode:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mPrevTouchAction:I

    return-void
.end method

.method private doNotHandleEvent()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMainViewMode:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isDrawerInvisibleMode(I)Z

    move-result v0

    return v0
.end method

.method private initConfiguration()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchSlop:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initConfiguration# mTouchSlop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterceptTouchLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->initConfiguration()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->doNotHandleEvent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mDoNotHandleEvent:Z

    if-nez v2, :cond_0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_layout:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    float-to-int v2, v0

    float-to-int v4, v1

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mDoNotHandleEvent:Z

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mDoNotHandleEvent:Z

    const-string v3, "InterceptTouchLayout"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string p1, "onInterceptTouchEvent# mDoNotHandleEvent!!!"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    const/4 v5, 0x0

    if-eq p1, v2, :cond_5

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownX:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownY:F

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    sget-object v6, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;->EXPAND:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    const/high16 v7, -0x40800000    # -1.0f

    if-ne p1, v6, :cond_3

    cmpg-float v8, v0, v5

    if-gez v8, :cond_3

    mul-float/2addr v0, v7

    :cond_3
    if-ne p1, v6, :cond_4

    cmpg-float p1, v1, v5

    if-gez p1, :cond_4

    mul-float/2addr v1, v7

    :cond_4
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchSlop:I

    int-to-float v5, p1

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_7

    const-string p1, "onInterceptTouchEvent# INTERCEPT!!!!"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    goto :goto_0

    :cond_5
    iput v5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownX:F

    iput v5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownY:F

    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mDoNotHandleEvent:Z

    goto :goto_0

    :cond_6
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownX:F

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownY:F

    iput v4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mPrevTouchAction:I

    :cond_7
    :goto_0
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMainViewMode:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isDrawerInvisibleMode(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InterceptTouchLayout"

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mInterceptTouchListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mDoNotHandleEvent:Z

    if-eqz v4, :cond_1

    const-string p1, "onTouchEvent# mDoNotHandleEvent!!!"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;->EXPAND:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->MAX_DRAG_WIDTH:I

    int-to-float v1, v1

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownX:F

    sub-float v5, v0, v5

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->MAX_DRAG_WIDTH:I

    int-to-float v1, v1

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownX:F

    sub-float/2addr v5, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;->EXPAND:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    if-ne v1, v5, :cond_4

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->MAX_DRAG_WIDTH:I

    int-to-float v1, v1

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownX:F

    sub-float/2addr v5, v0

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v1, v5

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->MAX_DRAG_WIDTH:I

    int-to-float v1, v1

    iget v5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownX:F

    sub-float v5, v0, v5

    :goto_1
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_2
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v5, 0x1

    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-eq p1, v5, :cond_7

    if-eq p1, v0, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_7

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mPrevTouchAction:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mInterceptTouchListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;->down()V

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mPrevTouchAction:I

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mInterceptTouchListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;->move(F)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mInterceptTouchListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;

    float-to-int v3, v1

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;->up(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent# up dragLength : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mode : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownX:F

    iput v4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownY:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mPrevTouchAction:I

    goto :goto_3

    :cond_8
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownX:F

    iput v3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mTouchDownY:F

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->MAX_DRAG_WIDTH:I

    int-to-float p1, p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;->EXPAND:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    if-ne p1, v0, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mInterceptTouchListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;->down()V

    :goto_3
    return v5

    :cond_a
    :goto_4
    const-string p1, "onTouchEvent# isDrawerInvisibleMode or mInterceptTouchListener is null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setDrawerMaxWidth(II)V
    .locals 0

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->MAX_DRAG_WIDTH:I

    return-void
.end method

.method public setMainViewMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMainViewMode:I

    return-void
.end method

.method public setMode(Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mMode:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$Mode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InterceptTouchLayout"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnInterceptTouchListener(Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout;->mInterceptTouchListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/InterceptTouchLayout$OnInterceptTouchListener;

    return-void
.end method
