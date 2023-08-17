.class Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->setHandlerPosition(IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

.field public final synthetic val$idx:I

.field public final synthetic val$x:F

.field public final synthetic val$y:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;IFF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    iput p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->val$idx:I

    iput p3, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->val$x:F

    iput p4, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->c(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->val$idx:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->val$x:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->c(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->val$idx:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;->val$y:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    return-void
.end method
