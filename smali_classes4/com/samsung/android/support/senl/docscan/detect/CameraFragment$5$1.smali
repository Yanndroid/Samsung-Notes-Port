.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;

.field public final synthetic val$scanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;Lcom/samsung/android/support/senl/docscan/model/DocScanData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5$1;->this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5$1;->val$scanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5$1;->this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->i(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$5$1;->val$scanData:Lcom/samsung/android/support/senl/docscan/model/DocScanData;

    const-string v2, "CameraFragment"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$Contract;->showRectifyEditView(Lcom/samsung/android/support/senl/docscan/model/DocScanData;Ljava/lang/String;)V

    return-void
.end method
