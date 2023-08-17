.class Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumOfAngle()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getNumOfAngle()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVertexFromIndex(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getVertex(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public onLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setImageX(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setImageY(F)V

    return-void
.end method

.method public onMeasured(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setImageWidth(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setImageHeight(F)V

    return-void
.end method
