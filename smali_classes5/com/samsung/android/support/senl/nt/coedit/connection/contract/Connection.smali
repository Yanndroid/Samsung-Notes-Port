.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/connection/contract/Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract catchup(Ljava/lang/String;JJ)V
.end method

.method public abstract clearMultipleTransformData()V
.end method

.method public abstract clearSubmitData()V
.end method

.method public abstract clearTransformData()V
.end method

.method public abstract clearTransformWithMultipleData()V
.end method

.method public abstract close()V
.end method

.method public abstract compose(Ljava/lang/String;)V
.end method

.method public abstract connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract connectSnap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract disconnectSnap()V
.end method

.method public abstract downloadNote(Ljava/lang/String;)V
.end method

.method public abstract getCoeditDataNotifyCheckPoint()J
.end method

.method public abstract getCoeditDataResultCode()I
.end method

.method public abstract getCoeditDataSubmitCheckPoint()J
.end method

.method public abstract getComposedOps()Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceList()V
.end method

.method public abstract getMultipleTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getNoteSnapLatestInfo(Ljava/lang/String;)V
.end method

.method public abstract getSnapDataDownloadStroke(Ljava/lang/String;)[B
.end method

.method public abstract getSnapDataDownloadStrokeMapKeySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSnapDataDownloadXmlData()Ljava/lang/String;
.end method

.method public abstract getSnapDataResourceId()Ljava/lang/String;
.end method

.method public abstract getTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTransformedWithMultipleOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract handleCoeditDataReceiveMessages()V
.end method

.method public abstract initialize(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;)V
.end method

.method public abstract isChannelConnected()Z
.end method

.method public abstract isCoeditDataReceiveMsgEmpty()Z
.end method

.method public abstract isCoeditDataResultDeadlineExceeded()Z
.end method

.method public abstract isCoeditDataResultNotFound()Z
.end method

.method public abstract isCoeditDataResultOk()Z
.end method

.method public abstract isCoeditDataResultUnavailable()Z
.end method

.method public abstract isSnapDataResultOk()Z
.end method

.method public abstract isVaildState()Z
.end method

.method public abstract multipleTransform(Ljava/lang/String;)V
.end method

.method public abstract open()V
.end method

.method public abstract putCoeditDataSubmitRequest(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract putComposeRequest(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract putMultipleTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract putSnapDataUploadNoteRequest(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract putSnapDataUploadStrokeRequest(Ljava/lang/String;Ljava/lang/String;[BJ)V
.end method

.method public abstract putTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract putTransformWithMultipleRequest(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract reOpen(Ljava/lang/String;)V
.end method

.method public abstract refresh()V
.end method

.method public abstract refreshForReopen()V
.end method

.method public abstract releaseContinuousMessageThread(Ljava/lang/String;)V
.end method

.method public abstract removeUndownloadedObjectInfo(Ljava/lang/String;Z)V
.end method

.method public abstract removeUnuploadedContentFileData(Ljava/lang/String;)Z
.end method

.method public abstract requestDownloadStroke(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestPermission(Z)Z
.end method

.method public abstract requestResetWorkspace(Ljava/lang/String;)V
.end method

.method public abstract setCoeditDataAbnormalNotifyLostCatchType()V
.end method

.method public abstract setCoeditDataAbnormalSubmitAckLostCatchupType()V
.end method

.method public abstract setCoeditDataNormalNewMemberCatchType()V
.end method

.method public abstract snapDataRequestUploadFileData(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

.method public abstract submit(Ljava/lang/String;)V
.end method

.method public abstract transform(Ljava/lang/String;)V
.end method

.method public abstract transformWithMultiple(Ljava/lang/String;)V
.end method

.method public abstract uploadNote(Ljava/lang/String;)V
.end method

.method public abstract uploadStroke(Ljava/lang/String;)V
.end method
