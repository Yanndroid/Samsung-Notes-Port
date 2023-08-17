.class Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->showHandlerPreview()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$5;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$5;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->b(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$5;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->m(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    return-void
.end method
