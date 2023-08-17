.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/docscan/detect/controller/DetectLibWrapper$DetectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartScanResult(Z[F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->u(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->d(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->activeTakePictureBtn(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->j(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->setResult([F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$7;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->j(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->clearCanvas()V

    :goto_0
    return-void
.end method
