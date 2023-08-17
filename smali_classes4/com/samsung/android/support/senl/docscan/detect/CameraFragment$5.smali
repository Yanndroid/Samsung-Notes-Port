.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureReader# onImageAvailable, CameraState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->j(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/view/DetectOverlayView;->getResultPoint(I)[Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->f(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->makeDocScanData(Landroid/media/Image;[Landroid/graphics/PointF;)Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->f(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5$1;-><init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
