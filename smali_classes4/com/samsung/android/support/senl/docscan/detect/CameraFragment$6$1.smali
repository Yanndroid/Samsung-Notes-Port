.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/docscan/detect/presenter/DetectTask$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6$1;->this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRunningDetectLib()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6$1;->this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$6;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->m(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
