.class public Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenNestedListView"


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mParentScrollView:Landroid/widget/HorizontalScrollView;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mTouchSlop:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method private findParentScrollView()V
    .locals 2

    const-string v0, "SpenNestedListView"

    const-string v1, "findParentScrollView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDisallowInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mDownX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mDownY:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mTouchSlop:I

    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v3, :cond_6

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mDownY:F

    :goto_3
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->setDisallowInterceptTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->findParentScrollView()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedChildListView;->mParentScrollView:Landroid/widget/HorizontalScrollView;

    return-void
.end method
