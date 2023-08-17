.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$1;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$1;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setImmersiveModeEnable(Landroid/app/Activity;Z)V

    return-void
.end method
