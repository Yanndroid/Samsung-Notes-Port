.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "CameraFragment"

    const-string v0, "cameraStateCallback# onDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->onPauseCamera()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "CameraFragment"

    const-string v1, "cameraStateCallback# onOpened"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->h(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->OPENED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    iput-object v2, v1, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->e(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->s(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->q(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->r(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$3;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->z(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
