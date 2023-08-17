.class public Lcom/samsung/android/support/senl/nt/coedit/connection/DummyConnectionHelperImpl;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public catchup(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public clearMultipleTransformData()V
    .locals 0

    return-void
.end method

.method public clearSubmitData()V
    .locals 0

    return-void
.end method

.method public clearTransformData()V
    .locals 0

    return-void
.end method

.method public clearTransformWithMultipleData()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public compose(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public connectSnap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disconnectSnap()V
    .locals 0

    return-void
.end method

.method public downloadNote(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getCoeditDataNotifyCheckPoint()J
    .locals 2

    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public getCoeditDataResultCode()I
    .locals 1

    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Lio/grpc/Status$Code;->value()I

    move-result v0

    return v0
.end method

.method public getCoeditDataSubmitCheckPoint()J
    .locals 2

    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public getComposedOps()Ljava/util/List;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceList()V
    .locals 0

    return-void
.end method

.method public getMultipleTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoteSnapLatestInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getSnapDataDownloadStroke(Ljava/lang/String;)[B
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public getSnapDataDownloadStrokeMapKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getSnapDataDownloadXmlData()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSnapDataResourceId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransformedWithMultipleOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleCoeditDataReceiveMessages()V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;)V
    .locals 0

    return-void
.end method

.method public isChannelConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCoeditDataReceiveMsgEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCoeditDataResultDeadlineExceeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCoeditDataResultNotFound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCoeditDataResultOk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCoeditDataResultUnavailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSnapDataResultOk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVaildState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public multipleTransform(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public open()V
    .locals 0

    return-void
.end method

.method public putCoeditDataSubmitRequest(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
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

    const/4 p1, 0x0

    return p1
.end method

.method public putComposeRequest(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public putMultipleTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public putSnapDataUploadNoteRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public putSnapDataUploadStrokeRequest(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 0

    return-void
.end method

.method public putTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public putTransformWithMultipleRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public reOpen(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public refreshForReopen()V
    .locals 0

    return-void
.end method

.method public releaseContinuousMessageThread(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeUndownloadedObjectInfo(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public removeUnuploadedContentFileData(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestDownloadStroke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestPermission(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestResetWorkspace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCoeditDataAbnormalNotifyLostCatchType()V
    .locals 0

    return-void
.end method

.method public setCoeditDataAbnormalSubmitAckLostCatchupType()V
    .locals 0

    return-void
.end method

.method public setCoeditDataNormalNewMemberCatchType()V
    .locals 0

    return-void
.end method

.method public snapDataRequestUploadFileData(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public submit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public transform(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public transformWithMultiple(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public uploadNote(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public uploadStroke(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
