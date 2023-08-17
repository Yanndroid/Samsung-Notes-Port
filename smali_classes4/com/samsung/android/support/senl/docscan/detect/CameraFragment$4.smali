.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 10
    .param p1    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->h(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v4}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v5, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->PREVIEW:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v4, v5, :cond_1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->d(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p1, v7}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->setFlashModeActivated(Z)V

    monitor-exit v0

    return-void

    :cond_1
    const-string v4, "CameraFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CaptureCallback# CameraState : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v9}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v9

    iget-object v9, v9, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", aeState : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", afState : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", awbState : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", flashMode : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v4, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->WAIT_CONVERGENCE:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-ne p1, v4, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->a(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move p1, v7

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v8

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->C(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_6

    move v7, v8

    :cond_6
    move p1, v7

    goto :goto_3

    :cond_7
    :goto_2
    monitor-exit v0

    return-void

    :cond_8
    :goto_3
    if-nez p1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->A(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "CameraFragment"

    const-string v1, "PreviewCallback process# Timed out waiting for pre=capture sequence to completed."

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v8

    :cond_9
    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->n(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)I

    move-result p1

    if-lez p1, :cond_b

    :goto_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->n(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->x(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->n(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)I

    move-result v1

    sub-int/2addr v1, v8

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->v(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;I)V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->PREVIEW:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    iput-object v1, p1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    :cond_b
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$4;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
