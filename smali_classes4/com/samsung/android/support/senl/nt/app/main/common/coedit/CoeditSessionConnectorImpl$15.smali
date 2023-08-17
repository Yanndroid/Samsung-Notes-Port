.class Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->requestInvitationAccept(Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
        "Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$isStandalone:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$groupId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$isStandalone:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$callback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getResult()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->getDisplayMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->a(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestInvitationAccept() onResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", displayMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    :try_start_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "CoeditSessionConnectorImpl"

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$groupId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$isStandalone:Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$callback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->i(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->a(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$callback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;->onFail()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->c(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$isStandalone:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_shared_notebook_invitations_success_message:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_success_message:I

    :goto_1
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showDisplayMessageToast(Landroid/content/Context;I)V

    goto :goto_4

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->c(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$isStandalone:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_shared_notebook_invitations_already_expired:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations_already_expired:I

    :goto_2
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showDisplayMessageToast(Landroid/content/Context;I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->c(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showDisplayMessageToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->val$callback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;->onFail()V

    :cond_5
    :goto_4
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$15;->onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V

    return-void
.end method
