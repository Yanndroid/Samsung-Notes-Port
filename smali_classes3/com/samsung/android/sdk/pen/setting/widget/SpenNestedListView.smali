.class public Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field private static final SDK_VERSION:I

.field private static final TAG:Ljava/lang/String; = "SpenNestedListView"


# instance fields
.field private mDownY:F

.field private mParentScrollView:Landroid/widget/ScrollView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->SDK_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method private findParentScrollView()V
    .locals 3

    const-string v0, "SpenNestedListView"

    const-string v1, "findParentScrollView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "There is no more ViewParent."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const-string v0, "SpenNestedListView"

    const-string v1, "dispatchTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v3

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    const-string v1, "mParentScrollView has no scroll"

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v5

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    if-eq v7, v2, :cond_5

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mDownY:F

    sub-float/2addr v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " canScrolList(-1)="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " canScrollList(1)="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dy="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    cmpg-float v9, v7, v4

    if-gez v9, :cond_2

    if-eqz v1, :cond_2

    if-nez v5, :cond_2

    const-string v1, "[MotionEvent.ACTION_MOVE] - 1. parentScrollView : disallow=false, parent is possible scroll down"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_2
    cmpl-float v1, v7, v4

    if-lez v1, :cond_3

    if-nez v6, :cond_3

    if-eqz v3, :cond_3

    const-string v1, "[MotionEvent.ACTION_MOVE] - 2. parentScrollView : disallow=false, parent is possible scroll up"

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    if-eqz v5, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    const-string v1, "[MotionEvent.ACTION_MOVE] - 0. parentScrollView : disallow=true, child is possible scroll down/up "

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v8}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    const-string v1, "[MotionEvent.ACTION_UP] - parentScrollView disallow=false"

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v1, "[MotionEvent.ACTION_DOWN] - parentScrollView disallow=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mDownY:F

    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->findParentScrollView()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedListView;->mParentScrollView:Landroid/widget/ScrollView;

    return-void
.end method
