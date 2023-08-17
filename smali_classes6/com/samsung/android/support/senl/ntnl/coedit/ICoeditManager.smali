.class public interface abstract Lcom/samsung/android/support/senl/ntnl/coedit/ICoeditManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract applyStrokeBinary(Ljava/lang/String;[B)V
.end method

.method public abstract channelReconnected()V
.end method

.method public abstract checkSkipDownloadNote()Z
.end method

.method public abstract close()V
.end method

.method public abstract downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract externalChannelOpen(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V
.end method

.method public abstract externalSnapDownload(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
.end method

.method public abstract externalSnapStart(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
.end method

.method public abstract externalSnapUpload(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
.end method

.method public abstract handleDeviceListChange(Ljava/lang/String;)V
.end method

.method public abstract handleDownloadUrlMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleReceiveServerResponse(JJJJJZ)V
.end method

.method public abstract handleResetWorkspaceResponse(J)V
.end method

.method public abstract handleWorkspaceBlock()V
.end method

.method public abstract initCoeditController(Lcom/samsung/android/support/senl/ntnl/coedit/ICoeditController;)V
.end method

.method public abstract initGrpcController(Lcom/samsung/android/support/senl/ntnl/coedit/IGrpcController;)V
.end method

.method public abstract initNetworkReconnector()V
.end method

.method public abstract internalChannelOpen(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;)V
.end method

.method public abstract internalSnapRefresh()Z
.end method

.method public abstract internalSnapRestart(Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;Lcom/samsung/android/support/senl/ntnl/coedit/CoeditCallback;Ljava/lang/String;)V
.end method

.method public abstract internalSnapStart(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/ntnl/coedit/SnapCallback;)V
.end method

.method public abstract isConcurrencyPaused(Ljava/lang/String;)Z
.end method

.method public abstract isInitializing()Z
.end method

.method public abstract isNetworkReconnecting()Z
.end method

.method public abstract isRunningConcurrency()Z
.end method

.method public abstract isWorkingConcurrency()Z
.end method

.method public abstract onContentFileUploadError(I)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onSnapError(Ljava/lang/String;)V
.end method

.method public abstract pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I
.end method

.method public abstract putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract reconnect(Ljava/lang/String;)V
.end method

.method public abstract releaseLock(Ljava/lang/String;)V
.end method

.method public abstract releaseNetworkReconnector()V
.end method

.method public abstract requestPermission(Z)Z
.end method

.method public abstract resumeConcurrency(Ljava/lang/String;)I
.end method

.method public abstract runOnUiThread(J)V
.end method

.method public abstract runResumeRunnable()V
.end method

.method public abstract saveCoeditCache()Z
.end method

.method public abstract setAbnormalAckCheckPoint(J)V
.end method

.method public abstract setLock(Ljava/lang/String;)Z
.end method

.method public abstract setNoteSnapServerCheckPoint(J)V
.end method

.method public abstract setServerCheckPoint(J)V
.end method

.method public abstract stop()J
.end method

.method public abstract uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract wakeConcurrencyPool()V
.end method
