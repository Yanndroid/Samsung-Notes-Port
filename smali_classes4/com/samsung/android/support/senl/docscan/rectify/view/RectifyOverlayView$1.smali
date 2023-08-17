.class Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private startPos:Landroid/graphics/PointF;

.field private target:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x2

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getRealPositionListFromRatio()[Landroid/graphics/PointF;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setDelta(Landroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getNumOfAngle()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-eqz p2, :cond_8

    if-eq p2, v4, :cond_7

    const/4 v0, 0x2

    const/4 v5, 0x0

    if-eq p2, v0, :cond_0

    return v5

    :cond_0
    iget p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    if-ne p2, v3, :cond_1

    return v4

    :cond_1
    if-ne p2, v2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->canMoveAllPosition([Landroid/graphics/PointF;)Z

    move-result p2

    if-nez p2, :cond_2

    return v5

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->j(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;[Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_3
    if-ge p2, v1, :cond_5

    new-instance p2, Landroid/graphics/PointF;

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    aget-object v1, p1, v0

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v0, p1, v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->startPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->canMovePosition(ILandroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_4

    return v5

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    invoke-static {p1, v0, p2, v4}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->i(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;ILandroid/graphics/PointF;Z)V

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v1, 0x2

    if-ge p2, v0, :cond_6

    sub-int/2addr p2, v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->canMoveLine(I[Landroid/graphics/PointF;)Z

    move-result p2

    if-nez p2, :cond_2

    return v5

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    if-eq p1, v2, :cond_b

    if-eq p1, v3, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->g(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getTouchedObject(Landroid/graphics/PointF;[Landroid/graphics/PointF;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    const-string v0, "RectifyOverlayView"

    if-ne p2, v3, :cond_9

    const-string p1, "onTouch# ACTION_DOWN outside"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_9
    if-ne p2, v2, :cond_a

    const-string p1, "onTouch# ACTION_DOWN inside"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch# ACTION_DOWN "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    if-ge p2, v1, :cond_b

    new-instance p2, Landroid/graphics/PointF;

    iget v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    aget-object v1, p1, v0

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object p1, p1, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p2, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->startPos:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    iget p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->k(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    iget p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->target:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;->startPos:Landroid/graphics/PointF;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->h(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;ILandroid/graphics/PointF;)V

    :cond_b
    :goto_1
    return v4
.end method
