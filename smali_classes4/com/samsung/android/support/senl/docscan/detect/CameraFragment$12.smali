.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->createCameraPreviewSession()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "CameraFragment"

    const-string v0, "createCameraPreviewSession# onConfigureFailed"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->h(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->b(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "CameraFragment"

    const-string v2, "createCameraPreviewSession# onConfigured"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->B(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->f(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCaptureRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->G(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->p(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v3}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->f(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->PREVIEW:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    iput-object v2, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$12;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->f(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->setCameraCaptureSession(Landroid/hardware/camera2/CameraCaptureSession;)V

    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v1, "CameraFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCameraPreviewSession# onConfigured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
