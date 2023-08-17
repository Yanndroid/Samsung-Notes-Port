.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->internalChannelOpen(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field public final synthetic val$workspaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$groupId:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$workspaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "internalChannelOpen"

    new-instance v3, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->l(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditHandlingContract;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    const-string v2, "internalChannelOpen"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isClosingState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->n(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CoeditHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalChannelOpen# Handler is running now, skip uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->c(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/model/CoeditHandlerModel;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

    const-string v2, "Already Running"

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;->onCompleted(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->isSnapDelayedState()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    const-string v2, "internalChannelOpen"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->r(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$workspaceId:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$CoeditOpenCallbackImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->internalChannelOpen(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
