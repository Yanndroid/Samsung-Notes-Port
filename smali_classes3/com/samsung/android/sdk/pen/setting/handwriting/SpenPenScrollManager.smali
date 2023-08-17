.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenScrollManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtraValue:I

.field private mScrollHeight:I

.field private mScrollPaddingBottom:I

.field private mScrollPaddingEnd:I

.field private mScrollPaddingStart:I

.field private mScrollPaddingTop:I

.field private mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

.field private mScrollWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingStart:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingEnd:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingTop:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingBottom:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollWidth:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollHeight:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mExtraValue:I

    return-void
.end method

.method private needScroll(Landroid/view/View;IIZ)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v5, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, v1, Landroid/graphics/Rect;->left:I

    if-gt p2, p1, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-gt v2, p3, :cond_1

    return v0

    :cond_1
    if-ge p1, p2, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-ge p2, v2, :cond_2

    if-gt v2, p3, :cond_2

    if-nez p4, :cond_3

    return v0

    :cond_2
    if-ge p2, p1, :cond_3

    if-ge p1, p3, :cond_3

    iget p1, v1, Landroid/graphics/Rect;->right:I

    if-le p1, p3, :cond_3

    if-nez p4, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    return-void
.end method

.method public getScrollWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportScroll()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExtraValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mExtraValue:I

    return-void
.end method

.method public setLayout(Landroid/widget/FrameLayout;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingStart:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingTop:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingEnd:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/HorizontalScrollView;->setPaddingRelative(IIII)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, p3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    invoke-virtual {p3, v0, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollWidth:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollHeight:I

    invoke-direct {p2, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    invoke-virtual {p1, p3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingStart:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingTop:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingEnd:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollPaddingBottom:I

    return-void
.end method

.method public setVisibleChild(Landroid/view/View;Z)Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->needScroll(Landroid/view/View;IIZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mScrollView:Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedHorizontalScrollView;

    if-nez p2, :cond_2

    iget p2, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->mExtraValue:I

    sub-int/2addr p2, v0

    :goto_0
    invoke-virtual {p1, p2, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method
