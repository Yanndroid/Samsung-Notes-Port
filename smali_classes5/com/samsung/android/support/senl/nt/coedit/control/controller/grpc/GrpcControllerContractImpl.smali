.class public Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mConnectionController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;

.field private final mDummyConnectionController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyConnectionController;

.field private final mDummyManagerController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyManagerController;

.field private final mDummyViewController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyViewController;

.field private mImplementation:Z

.field private final mManagerController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;

.field private final mViewController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyConnectionController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyConnectionController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mDummyConnectionController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyConnectionController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mConnectionController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyViewController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyViewController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mDummyViewController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyViewController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mViewController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyManagerController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyManagerController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mDummyManagerController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyManagerController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mManagerController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mImplementation:Z

    return-void
.end method


# virtual methods
.method public applyStrokeBinary(Ljava/lang/String;[B)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->applyStrokeBinary(Ljava/lang/String;[B)V

    return-void
.end method

.method public downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized getConnection()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mImplementation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mConnectionController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mDummyConnectionController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyConnectionController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getConnection()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;

    move-result-object p1

    return-object p1
.end method

.method public getJwtMode(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getConnection()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->getJwtMode(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mImplementation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mManagerController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mDummyManagerController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyManagerController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getConnection()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getViewer()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mImplementation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mViewController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mDummyViewController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyViewController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleDeviceListChange(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getViewer()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;->handleDeviceListChange(Ljava/lang/String;)V

    return-void
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

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->handleDownloadUrlMap(Ljava/util/Map;)V

    return-void
.end method

.method public handleReceiveServerResponse(JJJJJZ)V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->handleReceiveServerResponse(JJJJJZ)V

    return-void
.end method

.method public handleResetWorkspaceResponse(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->handleResetWorkspaceResponse(J)V

    return-void
.end method

.method public handleWorkspaceBlock()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->handleWorkspaceBlock()V

    return-void
.end method

.method public isAlreadySnapReleased()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getConnection()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->isAlreadySnapReleased()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isConcurrencyPausedByNetwork()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->isConcurrencyPausedByNetwork()Z

    move-result v0

    return v0
.end method

.method public isImplementation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mImplementation:Z

    return v0
.end method

.method public onContentFileUploadError(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getConnection()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->onContentFileUploadError(I)V

    return-void
.end method

.method public onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getViewer()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;->onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->onSnapError(Ljava/lang/String;)V

    return-void
.end method

.method public pauseConcurrency(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getConnection()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->pauseConcurrency(Ljava/lang/String;)I

    move-result p1

    return p1
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

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getConnection()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->reconnect(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mConnectionController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->releaseGrpcContract()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mViewController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;->releaseGrpcContract()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mManagerController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->releaseGrpcContract()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mImplementation:Z

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->releaseLock(Ljava/lang/String;)V

    return-void
.end method

.method public resumeConcurrency(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getConnection()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;->resumeConcurrency(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public runResumeRunnable()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->runResumeRunnable()V

    return-void
.end method

.method public saveUndownloadedStrokeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getViewer()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;->saveUndownloadedStrokeInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAbnormalAckCheckPoint(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->setAbnormalAckCheckPoint(J)V

    return-void
.end method

.method public setGrpcContract(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mConnectionController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ConnectionController;->setGrpcContract(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mViewController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ViewController;->setGrpcContract(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mManagerController:Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/ManagerController;->setGrpcContract(Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->mImplementation:Z

    return-void
.end method

.method public setLock(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->setLock(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setPausedByNetwork(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->setPausedByNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getViewer()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ViewControllerContract;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public updateSnapNoteLatestInfo(JJLjava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->updateSnapNoteLatestInfo(JJLjava/lang/String;)V

    return-void
.end method

.method public uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wakeConcurrencyPool()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->getManager()Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;->wakeConcurrencyPool()V

    return-void
.end method
