.class public Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;
.super Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenNestedHorizontalScrollView"


# instance fields
.field private mDownX:F

.field private mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->initScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->initScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->initScrollView()V

    return-void
.end method

.method private findParentHorizontalScrollView()V
    .locals 3

    move-object v0, p0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v1, :cond_2

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "SpenNestedHorizontalScrollView"

    const-string v2, "There is no more ViewParent."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initScrollView()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mTouchSlop:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mDownX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    cmpg-float v3, v0, v4

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mDownX:F

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->findParentHorizontalScrollView()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;->mParentHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-void
.end method
