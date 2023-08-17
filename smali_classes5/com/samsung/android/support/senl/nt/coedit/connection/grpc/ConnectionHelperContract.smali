.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract applyStrokeBinary(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method public abstract downloadContentFile(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract getWorkspaceId()Ljava/lang/String;
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

.method public abstract handleReceiveDeviceList(Ljava/lang/String;)V
.end method

.method public abstract handleReceiveServerResponse(JJJJJZ)V
.end method

.method public abstract handleResetWorkspaceResponse(J)V
.end method

.method public abstract handleWorkspaceBlock()V
.end method

.method public abstract isConcurrencyPausedByNetwork()Z
.end method

.method public abstract onContentFileUploadError(I)V
.end method

.method public abstract onEditorUpdate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSnapError(Ljava/lang/String;)V
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

.method public abstract saveDownloadStrokeData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAbnormalAckCheckPoint(J)V
.end method

.method public abstract setLock(Ljava/lang/String;)Z
.end method

.method public abstract setPausedByNetwork(Ljava/lang/String;)V
.end method

.method public abstract updateSnapNoteLatestInfo(JJLjava/lang/String;)V
.end method

.method public abstract uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract wakeConcurrencyPool()V
.end method
