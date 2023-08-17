.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->DocumentScan:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->take_picture:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->J(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    return-void

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->add_to_note:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->getScanDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    const-string v0, "Save to note"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->finishWithSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    const-string v0, "No ScanData"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->finishWithFailed(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->thumbnail:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->I(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    return-void

    :cond_4
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_mode:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->d(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->k(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->showFlashOptions(II)V

    return-void

    :cond_5
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_auto:I

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    const/4 v0, 0x2

    :goto_1
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->t(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;I)V

    goto :goto_2

    :cond_6
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_on:I

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    const/4 v0, 0x3

    goto :goto_1

    :cond_7
    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_off:I

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    goto :goto_1

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->f(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->getCaptureRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->F(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->f(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/docscan/detect/presenter/CameraPresenter;->startPreviewRepeating()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->d(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    move-result-object p1

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->k(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->showFlashOptions(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$9;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->B(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)V

    return-void
.end method
