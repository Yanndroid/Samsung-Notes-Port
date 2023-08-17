.class public Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/ntnl/coedit/ICoeditManager;


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

.method public channelReconnected()V
    .locals 0

    return-void
.end method

.method public checkSkipDownloadNote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public externalChannelOpen(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V
    .locals 0

    return-void
.end method

.method public externalSnapDownload(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
    .locals 0

    return-void
.end method

.method public externalSnapStart(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
    .locals 0

    return-void
.end method

.method public externalSnapUpload(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
    .locals 0

    return-void
.end method

.method public handleDeviceListChange(Ljava/lang/String;)V
    .locals 0

    return-void
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

.method public initCoeditController(Lcom/samsung/android/support/senl/ntnl/coedit/ICoeditController;)V
    .locals 0

    return-void
.end method

.method public initGrpcController(Lcom/samsung/android/support/senl/ntnl/coedit/IGrpcController;)V
    .locals 0

    return-void
.end method

.method public initNetworkReconnector()V
    .locals 0

    return-void
.end method

.method public internalChannelOpen(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V
    .locals 0

    return-void
.end method

.method public internalSnapRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public internalSnapRestart(Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public internalSnapStart(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
    .locals 0

    return-void
.end method

.method public isConcurrencyPaused(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isInitializing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkReconnecting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRunningConcurrency()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWorkingConcurrency()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContentFileUploadError(I)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSnapError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I
    .locals 0

    const/4 p1, 0x0

    return p1
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

.method public reconnect(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public releaseNetworkReconnector()V
    .locals 0

    return-void
.end method

.method public requestPermission(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public resumeConcurrency(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public runOnUiThread(J)V
    .locals 0

    return-void
.end method

.method public runResumeRunnable()V
    .locals 0

    return-void
.end method

.method public saveCoeditCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

.method public setNoteSnapServerCheckPoint(J)V
    .locals 0

    return-void
.end method

.method public setServerCheckPoint(J)V
    .locals 0

    return-void
.end method

.method public stop()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public wakeConcurrencyPool()V
    .locals 0

    return-void
.end method
