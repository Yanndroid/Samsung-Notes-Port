.class Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/docscan/dialog/CheckAddToNoteDialog$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->showCheckAddToNoteDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$15;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNeutralButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$15;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    const-string v1, "onNeutralButtonClicked"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->finishWithFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment$15;->this$0:Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;

    const-string v1, "Save to note"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/detect/CameraFragment;->finishWithSuccess(Ljava/lang/String;)V

    return-void
.end method
