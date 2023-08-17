.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$filePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$groupId:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$workspaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private internalSnapStart(Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->f(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    const-string v1, "internalSnap"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->s(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V

    const-string v0, "SNAP_ERROR_NO_NETWORK"

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;->onStartOfflineMode(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->g(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->f(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalSnapStart# user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->n(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    const/4 v1, 0x0

    const-string v2, "Already Running"

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;->onCompleted(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$filePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$groupId:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$workspaceId:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->j(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$4;->internalSnapStart(Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V

    return-void
.end method
