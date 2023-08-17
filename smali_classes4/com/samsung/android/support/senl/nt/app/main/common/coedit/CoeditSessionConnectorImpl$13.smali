.class Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->requestSpaceLeave(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)Z
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

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$13;->val$groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$13;->val$spaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$13;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$13;->val$groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$13;->val$spaceId:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Leave:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const/4 v4, 0x0

    const-string v5, "requestSpaceLeave(). onResult() "

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;->k(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$13;->onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V

    return-void
.end method
