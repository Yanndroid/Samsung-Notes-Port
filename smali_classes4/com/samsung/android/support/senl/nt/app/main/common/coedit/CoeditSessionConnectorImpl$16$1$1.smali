.class Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;->onResult(Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceListResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;

.field public final synthetic val$spaceListResult:Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceListResult;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceListResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1$1;->this$2:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1$1;->val$spaceListResult:Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceListResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1$1;->val$spaceListResult:Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceListResult;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceListResult;->getResult()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1$1;->this$2:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16;->val$callback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16;->val$groupId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1$1;->this$2:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16;

    iget-boolean v3, v3, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16;->val$isStandalone:Z

    invoke-interface {v2, v1, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;->onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1$1;->this$2:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$16;->val$callback:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;->onFail()V

    :cond_2
    :goto_1
    return-void
.end method
