.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenBrushScrollManager"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private needScroll(Landroid/view/View;IILandroid/graphics/Rect;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p4, Landroid/graphics/Rect;->left:I

    if-gt p2, p1, :cond_1

    iget v1, p4, Landroid/graphics/Rect;->right:I

    if-gt v1, p3, :cond_1

    return v0

    :cond_1
    if-ge p1, p2, :cond_2

    iget v0, p4, Landroid/graphics/Rect;->right:I

    if-ge p2, v0, :cond_2

    if-gt v0, p3, :cond_2

    return p5

    :cond_2
    if-ge p2, p1, :cond_3

    if-ge p1, p3, :cond_3

    iget p1, p4, Landroid/graphics/Rect;->right:I

    if-le p1, p3, :cond_3

    return p5

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    return-void
.end method

.method public isSupportScroll()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLayout(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_horizontal_scroll_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->setScrollBar(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScrollBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setVisibleChild(Landroid/view/View;Z)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

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

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v2, v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getPaddingEnd()I

    move-result v3

    sub-int v5, v2, v3

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->needScroll(Landroid/view/View;IILandroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setVisibleChild: scroll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, p1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v2, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    :goto_0
    return v1
.end method

.method public smoothScrollTo(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollTo() xPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->mScrollLayout:Lcom/samsung/android/sdk/pen/setting/widget/SpenHorizontalScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method
