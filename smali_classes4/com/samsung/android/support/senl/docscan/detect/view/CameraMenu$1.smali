.class Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->setFlashModeActivated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

.field public final synthetic val$isActivated:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$1;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$1;->val$isActivated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$1;->this$0:Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;->a(Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$id;->flash_mode:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/docscan/detect/view/CameraMenu$1;->val$isActivated:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    return-void
.end method
