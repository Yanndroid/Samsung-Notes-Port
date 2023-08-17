.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Scroller"
.end annotation


# instance fields
.field public mIsScrollingByBar:Z

.field public mMaxPosValue:I

.field public mRangeEnd:I

.field public mRangeStart:I

.field public mScrollBar:Landroid/widget/ImageView;

.field public mStartPos:F

.field public mTouchStartPoint:F

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V

    return-void
.end method

.method private updateColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->notes_primary_color:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->deactivation_color:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public abstract calculateMaxValue(Landroid/view/View;)V
.end method

.method public canShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public initPageIndexView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->show()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->getPositionUpdater()Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mRangeStart:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mRangeEnd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->setUpdatePosition(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public isScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mIsScrollingByBar:Z

    return v0
.end method

.method public abstract isVertical()Z
.end method

.method public onDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mIsScrollingByBar:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->updateColor(Z)V

    return-void
.end method

.method public abstract onMove(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;Landroid/view/MotionEvent;)V
.end method

.method public onUp(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mIsScrollingByBar:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->updateColor(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->hide()V

    return-void
.end method

.method public setUpdatePosition(Landroid/view/View;F)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->invisible()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->mScrollBar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->hide()V

    :cond_0
    return-void
.end method
