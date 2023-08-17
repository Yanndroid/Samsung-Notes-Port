.class public Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyManagerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ManagerControllerContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyStrokeBinary(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public handleDownloadUrlMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public handleReceiveServerResponse(JJJJJZ)V
    .locals 0

    return-void
.end method

.method public handleResetWorkspaceResponse(J)V
    .locals 0

    return-void
.end method

.method public handleWorkspaceBlock()V
    .locals 0

    return-void
.end method

.method public isClosing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConcurrencyPausedByNetwork()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V
    .locals 0
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

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public runResumeRunnable()V
    .locals 0

    return-void
.end method

.method public setAbnormalAckCheckPoint(J)V
    .locals 0

    return-void
.end method

.method public setLock(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setPausedByNetwork(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSnapNoteLatestInfo(JJLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public wakeConcurrencyPool()V
    .locals 0

    return-void
.end method
