.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->externalSnapDownload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field public final synthetic val$workspaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$filePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$groupId:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$workspaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "externalSnapDownload"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const-string v2, "fail to externalSnapDownload, verify failed"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;->onError(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->setFilePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->u(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$workspaceId:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7$1;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    invoke-direct {v4, p0, v5, v6}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$7;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->externalSnapDownload(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V

    return-void
.end method
