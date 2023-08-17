.class Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$1;->this$0:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$1;->this$0:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->a(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$1;->this$0:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->a(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    move-result-object p1

    const-string v0, "Timer expired"

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;->finishWithSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$1;->this$0:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->a(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;->updateThumbnailView(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter$1;->this$0:Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->a(Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;)Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Save"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method
