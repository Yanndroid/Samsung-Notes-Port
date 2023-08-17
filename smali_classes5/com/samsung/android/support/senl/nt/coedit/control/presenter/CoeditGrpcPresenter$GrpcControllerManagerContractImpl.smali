.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GrpcControllerManagerContractImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyStrokeBinary(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->applyStrokeBinary(Ljava/lang/String;[B)V

    return-void
.end method

.method public downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getComposerContract()Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleDownloadUrlMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->handleDownloadUrlMap(Ljava/util/Map;)V

    return-void
.end method

.method public handleReceiveServerResponse(JJJJJZ)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v2

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->handleReceiveServerResponse(JJJJJZ)V

    return-void
.end method

.method public handleResetWorkspaceResponse(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->handleResetWorkspaceResponse(J)V

    return-void
.end method

.method public handleWorkspaceBlock()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->handleWorkspaceBlock()V

    return-void
.end method

.method public isClosing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->isClosingState()Z

    move-result v0

    return v0
.end method

.method public isConcurrencyPausedByNetwork()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    const-string v1, "NETWORK_ISSUE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->isConcurrencyPaused(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CONNECT_BLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getThreadHandler()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ThreadHandler;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->onSnapError(Ljava/lang/String;)V

    return-void
.end method

.method public putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->releaseLock(Ljava/lang/String;)V

    return-void
.end method

.method public runResumeRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->runResumeRunnable()V

    return-void
.end method

.method public setAbnormalAckCheckPoint(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->setAbnormalAckCheckPoint(J)V

    return-void
.end method

.method public setLock(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->setLock(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setPausedByNetwork(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPausedByNetwork, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditGrpcPresenter"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->isConcurrencyPausedByNetwork()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditControlPresenter()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_pause_by_server_unable_to_connect_server:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_pause_by_server_working_offline_reopen_note_to_sync_it:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->showToast(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "NETWORK_ISSUE"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I

    return-void
.end method

.method public updateSnapNoteLatestInfo(JJLjava/lang/String;)V
    .locals 0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->setNoteSnapServerCheckPoint(J)V

    return-void
.end method

.method public uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wakeConcurrencyPool()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter$GrpcControllerManagerContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->b(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->wakeConcurrencyPool()V

    return-void
.end method
