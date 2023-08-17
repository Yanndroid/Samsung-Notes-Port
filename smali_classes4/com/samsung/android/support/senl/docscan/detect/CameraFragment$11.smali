.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->closeCamera()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$11;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$11;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->r(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$11;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->c(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$11;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->r(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$11;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->w(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;Lcom/samsung/android/support/senl/docscan/detect/view/AutoTextureView;)V

    return-void
.end method
