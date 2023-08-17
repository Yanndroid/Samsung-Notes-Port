.class Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->createSharedNotebooks(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

.field public final synthetic val$groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->val$groupId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceResult;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceResult;->getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceResult;->getResult()Lcom/samsung/android/sdk/mobileservice/social/share/Space;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->a(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS3-1] createSharedNotebooks#, succeed to requestSpaceCreation#, groupId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->val$groupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", spaceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->d(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->val$groupId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceResult;->getResult()Lcom/samsung/android/sdk/mobileservice/social/share/Space;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getSpaceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->onSuccess(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->a(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CS3-2] createSharedNotebooks#, fail to requestSpaceCreation#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->c(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Create:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->d(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->isStandalone()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showUnknownFailToast(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->d(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->onFail()Z

    :goto_1
    return-void
.end method
