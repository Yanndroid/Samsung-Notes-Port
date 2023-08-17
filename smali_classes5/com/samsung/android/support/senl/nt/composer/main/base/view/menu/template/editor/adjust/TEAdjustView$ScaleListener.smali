.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;->lambda$onScaleEnd$0()V

    return-void
.end method

.method private synthetic lambda$onScaleEnd$0()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->isActionState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->setActionState(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->updateImageView()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->scaleByGesture(FFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->setActionState(I)V

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/b;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/adjust/TEAdjustView$ScaleListener;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
