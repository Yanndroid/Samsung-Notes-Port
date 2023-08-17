.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->externalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

.field public final synthetic val$externalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field public final synthetic val$resourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$groupId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$resourceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$externalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private externalSnapStart(J)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$resourceId:Ljava/lang/String;

    new-instance v10, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5$1;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$externalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    move-object v4, v10

    move-object v5, p0

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;J)V

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->externalSnapStart(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "externalSnapStart"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$externalControlCallback:Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const-string v2, "externalSnapStart# fail to verify"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;->onError(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->v(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$5;->externalSnapStart(J)V

    return-void
.end method
