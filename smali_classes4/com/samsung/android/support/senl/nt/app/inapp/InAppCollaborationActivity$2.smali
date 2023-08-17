.class Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->initContinuityService()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closedInAppCollaboration()V
    .locals 2

    const-string v0, "InAppCollaborationActivity"

    const-string v1, "closedInAppCollaboration"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->disconnect(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->finishActivity()V

    return-void
.end method

.method public messageReceived([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "uiMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->e(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->d(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->receiveData([B)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readyToInAppCollaboration()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2$2;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
