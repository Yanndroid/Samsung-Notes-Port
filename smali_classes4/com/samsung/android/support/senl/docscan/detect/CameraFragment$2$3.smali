.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2$3;->this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2$3;->this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->g(Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;)Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2$3;->this$1:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$2;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->clearNavigationBarFlag(Landroid/app/Activity;)V

    return-void
.end method
