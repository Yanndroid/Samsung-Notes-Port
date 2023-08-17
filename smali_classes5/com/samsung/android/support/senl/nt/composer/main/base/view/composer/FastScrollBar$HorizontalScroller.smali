.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HorizontalScroller"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_scroll_bar_horizontal:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public calculateMaxValue(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mRangeStart:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mRangeEnd:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mRangeStart:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mMaxPosValue:I

    return-void
.end method

.method public canShow()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVertical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->onDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;->calculateMaxValue(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->initPageIndexView()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mStartPos:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mTouchStartPoint:F

    return-void
.end method

.method public onMove(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;Landroid/view/MotionEvent;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mStartPos:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mTouchStartPoint:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mMaxPosValue:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mMaxPosValue:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p2, v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;->onChangedScrollBarX(FLandroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->getPositionUpdater()Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->updateVariablePosition(Landroid/view/View;)V

    return-void
.end method

.method public onUp(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->onUp(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;->onTouchUpScrollBar(Z)V

    return-void
.end method

.method public setUpdatePosition(Landroid/view/View;F)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->setUpdatePosition(Landroid/view/View;F)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$HorizontalScroller;->calculateMaxValue(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mMaxPosValue:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method
