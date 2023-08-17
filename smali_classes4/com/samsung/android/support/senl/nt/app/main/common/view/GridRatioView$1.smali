.class Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->setGlobalLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->a(Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->isRunningAnimator()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;->b(Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
