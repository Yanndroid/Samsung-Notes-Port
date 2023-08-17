.class public Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;


# instance fields
.field private mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyStrokeBinary(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->applyStrokeBinary(Ljava/lang/String;[B)V

    return-void
.end method

.method public downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->getWorkspaceId()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->handleDownloadUrlMap(Ljava/util/Map;)V

    return-void
.end method

.method public handleReceiveServerResponse(JJJJJZ)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->handleReceiveServerResponse(JJJJJZ)V

    return-void
.end method

.method public handleResetWorkspaceResponse(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->handleResetWorkspaceResponse(J)V

    return-void
.end method

.method public handleWorkspaceBlock()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->handleWorkspaceBlock()V

    return-void
.end method

.method public isClosing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isConcurrencyPausedByNetwork()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->isConcurrencyPausedByNetwork()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->onSnapError(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public releaseGrpcContract()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->releaseLock(Ljava/lang/String;)V

    return-void
.end method

.method public runResumeRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->runResumeRunnable()V

    return-void
.end method

.method public setAbnormalAckCheckPoint(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->setAbnormalAckCheckPoint(J)V

    return-void
.end method

.method public setGrpcContract(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    return-void
.end method

.method public setLock(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->setLock(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setPausedByNetwork(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->setPausedByNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public updateSnapNoteLatestInfo(JJLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->updateSnapNoteLatestInfo(JJLjava/lang/String;)V

    return-void
.end method

.method public uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wakeConcurrencyPool()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->mManagerContract:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->wakeConcurrencyPool()V

    return-void
.end method
