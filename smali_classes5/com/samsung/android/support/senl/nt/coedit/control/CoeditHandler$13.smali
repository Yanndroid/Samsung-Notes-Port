.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->initialize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

.field public final synthetic val$caller:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    monitor-enter v0

    :try_start_0
    const-string v1, "CoeditHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->val$caller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->m(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CoeditHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, already in initialize state, uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->q(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->g(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->initUiThreadHandler()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->i(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->initGrpcController()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->initCoeditController()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$13;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->initNetworkConnector()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
