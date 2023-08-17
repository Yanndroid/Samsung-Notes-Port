.class Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/inapp/view/dialog/DisconnectDialogFragment$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButton()V
    .locals 2

    const-string v0, "InAppCollaborationActivity"

    const-string v1, "onBackPressed# onPositiveButton - disconnect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->closeInAppCollaboration()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->finishActivity()V

    :cond_0
    return-void
.end method
