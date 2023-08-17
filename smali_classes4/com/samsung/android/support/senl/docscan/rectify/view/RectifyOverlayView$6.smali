.class Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->updateHandlerPreviewPosition()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$dimen;->rectify_overlay_view_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->e(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->b(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    :goto_0
    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v3}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->a(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->a(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->b(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    goto :goto_4

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->e(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v3}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v3}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->b(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v3}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->b(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v0, v3, v0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->b(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->b(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setY(F)V

    return-void
.end method
