.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->internalSnapStartInitialize(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field public final synthetic val$workspaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$groupId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$workspaceId:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->clearSnapCoeditCache(JLjava/lang/String;)V

    return-void
.end method

.method private clearSnapCoeditCache(JLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getServerCheckPoint()J

    move-result-wide v4

    move-wide v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->removeCoeditCacheIfCheckPointIsChanged(Ljava/lang/String;JJLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->releaseSnapRunnable()V

    return-void
.end method

.method private internalSnapStart(J)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$workspaceId:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    invoke-direct {v4, p0, v5, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;J)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->internalSnapStart(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;->onRelease()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->o(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isSnapDelayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->checkSkipDownloadNote()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->q(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    const-string v1, "SNAP_ERROR_VIEW_REATTACH"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->onError(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$filePath:Ljava/lang/String;

    const-string v3, "initSnapNote"

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->v(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->internalSnapStart(J)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$9;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    invoke-static {v2, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->p(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;JLcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V

    return-void
.end method
