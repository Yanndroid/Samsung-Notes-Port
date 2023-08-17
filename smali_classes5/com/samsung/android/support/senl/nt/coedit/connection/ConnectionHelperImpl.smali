.class public Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;,
        Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectionHelperImpl"


# instance fields
.field private final mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

.field private mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

.field private mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

.field private final mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionHelperImpl validation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_VALIDATION:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionHelperImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->coeditDataRequestDownloadFileData(Ljava/util/List;)V

    return-void
.end method

.method private coeditDataRequestDownloadFileData(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "coeditDataRequestDownloadFileData"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getBinaryInfo()LcoeditCoreMessage/BinaryInfo;

    move-result-object v1

    invoke-virtual {v1}, LcoeditCoreMessage/BinaryInfo;->getMimetype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object/stroke"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getObjId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getBinaryInfo()LcoeditCoreMessage/BinaryInfo;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/BinaryInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->requestDownloadStroke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestDownloadObject(LcoeditCoreMessage/ObjectInfo;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private coeditDataRequestUploadObjects(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "coeditDataRequestUploadObjects"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->coeditDataRequestUploadObjects(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private coeditDataRequestUploadStrokes(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getBinarySize()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getBinaryData()[B

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->putCoeditDataUploadStrokeMsgQueue(Ljava/lang/String;JLjava/lang/String;[B)V

    const-string v0, "UploadStroke"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->uploadStroke(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coeditDataRequestUploadStrokes, Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionHelperImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;JLjava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleCheckPointCoeditOpPair(JLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelEnableState(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->requestRetryFailedData()V

    return-void
.end method

.method private getCoeditDataReceiveMsgData()Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isCoeditDataReceiveMsgEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getCoeditDataReceiveMsgData()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ConnectionHelperImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCoeditDataReceiveMsgData# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private getCoeditObjectInfos(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isChannelConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->initUploadedStroke(Ljava/util/List;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->coeditDataRequestUploadStrokes(Ljava/util/List;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isUploadStrokeFinished()Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "ConnectionHelperImpl"

    const-string v0, "uploadStrokes. wait to response"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    const-string v0, "UploadStrokes"

    invoke-interface {p3, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->setLock(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    return v1

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isUploadStrokeFailed()Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->setObjectInfo(Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method private handleCheckPointCoeditOpPair(JLjava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->getCoeditDataNotifyCheckPoint()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->setCoeditDataNotifyCheckPoint(J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/util/ProtoBufUtils;->deserialize(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->putNotifyNoteOpsBuffer(JLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private handleCoeditDataReceiveMessage(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "ConnectionHelperImpl"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    instance-of v1, p1, LcoeditCoreMessage/ServerMsg;

    if-eqz v1, :cond_1

    check-cast p1, LcoeditCoreMessage/ServerMsg;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleReceiveServerMessage(LcoeditCoreMessage/ServerMsg;)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, LcoeditCoreMessage/SubmitResponse;

    if-eqz v1, :cond_2

    check-cast p1, LcoeditCoreMessage/SubmitResponse;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleReceiveSubmitResponse(LcoeditCoreMessage/SubmitResponse;)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, LcoeditCoreMessage/CatchupResponse;

    if-eqz v1, :cond_3

    check-cast p1, LcoeditCoreMessage/CatchupResponse;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleReceiveCatchupResponse(LcoeditCoreMessage/CatchupResponse;)V

    goto :goto_0

    :cond_3
    instance-of v1, p1, LcoeditObjectMessage/DownloadStrokeResponse;

    if-eqz v1, :cond_4

    check-cast p1, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleReceiveDownloadStrokeResponse(LcoeditObjectMessage/DownloadStrokeResponse;)V

    goto :goto_0

    :cond_4
    instance-of v1, p1, LcoeditCoreMessage/ResetWorkspaceResponse;

    if-eqz v1, :cond_5

    check-cast p1, LcoeditCoreMessage/ResetWorkspaceResponse;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleResetWorkspaceResponse(LcoeditCoreMessage/ResetWorkspaceResponse;)V

    goto :goto_0

    :cond_5
    instance-of v1, p1, LcoeditCoreMessage/PermissionResponse;

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCoeditDataReceiveMessage# unused msgObj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handleCoeditDataReceiveMessage. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->requestRetryFailedData()V

    return-void
.end method

.method private handleReceiveCatchupResponse(LcoeditCoreMessage/CatchupResponse;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->getAbnormalReleased(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v2, ""

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {p1}, LcoeditCoreMessage/CatchupResponse;->getCheckpointCoeditopPairList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LcoeditCoreMessage/CheckPointCoeditOpPair;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCheckpoint()J

    move-result-wide v5

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v4}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDeviceInfo()LcoeditCoreMessage/DeviceInfo;

    move-result-object v7

    invoke-virtual {v7}, LcoeditCoreMessage/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v4}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDeviceInfo()LcoeditCoreMessage/DeviceInfo;

    move-result-object v7

    invoke-virtual {v7}, LcoeditCoreMessage/DeviceInfo;->getDvcId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-interface {v1, v5, v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->setAbnormalAckCheckPoint(J)V

    move v1, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCoeditOperationList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getExtraData()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleCheckPointCoeditOpPair(JLjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getObjectInfoList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->coeditDataRequestDownloadFileData(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to putNotiBuffer. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConnectionHelperImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private handleReceiveDownloadStrokeResponse(LcoeditObjectMessage/DownloadStrokeResponse;)V
    .locals 4

    const-string v0, "ConnectionHelperImpl"

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isChannelConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, LcoeditObjectMessage/DownloadStrokeResponse;->hasBinary()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, LcoeditObjectMessage/DownloadStrokeResponse;->getBinary()LcoeditObjectMessage/Binary;

    move-result-object p1

    invoke-virtual {p1}, LcoeditObjectMessage/Binary;->getChunk()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->findStrokeData([B)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "handleReceiveDownloadStrokeResponse, strokeData null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->getObjId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->getObjectBinaryHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->applyStrokeBinary(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->removeDownloadStrokeData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReceiveDownloadStrokeResponse, onCompleted: releaseByteArrayOutputStream error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleReceiveResponseDeviceList(LcoeditCoreMessage/ServerMsg;)V
    .locals 9

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getDeviceInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ConnectionHelperImpl"

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcoeditCoreMessage/DeviceInfo;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "dvc_id"

    invoke-virtual {v1}, LcoeditCoreMessage/DeviceInfo;->getDvcId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "uid"

    invoke-virtual {v1}, LcoeditCoreMessage/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, LcoeditCoreMessage/DeviceInfo;->getDeviceInfoChangeTypeValue()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "device_info_permission_type"

    const-string v6, "device_info_connection_type"

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v1}, LcoeditCoreMessage/DeviceInfo;->getDeviceInfoChangeTypeValue()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    :goto_1
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1}, LcoeditCoreMessage/DeviceInfo;->getPermissionType()LcoeditCoreMessage/PermissionType;

    move-result-object v1

    sget-object v6, LcoeditCoreMessage/PermissionType;->EDIT:LcoeditCoreMessage/PermissionType;

    if-ne v1, v6, :cond_1

    move v7, v4

    goto :goto_1

    :goto_3
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReceiveDeviceList for DeviceInfo, JSONException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v1, "device_info_list"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleReceiveDeviceList for DeviceInfoList, JSONException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->handleReceiveDeviceList(Ljava/lang/String;)V

    return-void
.end method

.method private handleReceiveResponseDisconnectByEvent(LcoeditCoreMessage/ServerMsg;)V
    .locals 3

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getEventInfo()LcoeditCoreMessage/EventInfo;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/EventInfo;->getEventType()LcoeditCoreMessage/EventType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReceiveResponseDisconnectByEvent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ConnectionHelperImpl"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$1;->$SwitchMap$coeditCoreMessage$EventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReceiveServerMessage, unexpected eventType "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReceiveServerMessage, unused eventType :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    const-string v0, "SERVER_ERROR_MAINTENANCE"

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    const-string v0, "SERVER_ERROR_UPDATE_APP_VERSION"

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    const-string v0, "SERVER_ERROR_UPDATE_XML_VERSION"

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;->onError(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleReceiveServerMessage(LcoeditCoreMessage/ServerMsg;)V
    .locals 4

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getServerCmd()LcoeditCoreMessage/ServerCmd;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$1;->$SwitchMap$coeditCoreMessage$ServerCmd:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "ConnectionHelperImpl"

    packed-switch v0, :pswitch_data_0

    const-string p1, "handleReceiveServerMessage, unused server cmd used "

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReceiveResponseWorkspaceBlockStateChange, isWorkspaceBlocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getWorkspaceBlocked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", workspaceVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/ServerMsg;->getWorkspaceVersion()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->handleWorkspaceBlock()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleReceiveResponseDisconnectByEvent(LcoeditCoreMessage/ServerMsg;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleReceiveResponseDeviceList(LcoeditCoreMessage/ServerMsg;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleReceiveServerResponseMsg(LcoeditCoreMessage/ServerMsg;)V

    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private handleReceiveServerResponseMsg(LcoeditCoreMessage/ServerMsg;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v1

    invoke-virtual {v1}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result v1

    sget-object v2, Lio/grpc/Status$Code;->ALREADY_EXISTS:Lio/grpc/Status$Code;

    invoke-virtual {v2}, Lio/grpc/Status$Code;->value()I

    move-result v2

    const-string v3, "ConnectionHelperImpl"

    if-eq v1, v2, :cond_5

    sget-object v2, Lio/grpc/Status$Code;->ABORTED:Lio/grpc/Status$Code;

    invoke-virtual {v2}, Lio/grpc/Status$Code;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->getDvcId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->setDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->getWorkspaceBlocked()Z

    move-result v1

    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->getWorkspaceVersion()J

    move-result-wide v4

    if-nez v1, :cond_2

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getWorkspaceVersion()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReceiveServerResponseMsg, responseWorkspaceVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cachedWorkspaceVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mismatched, set isWorkspaceBlock true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    move/from16 v17, v1

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->setResponsedWorkspaceVersion(J)V

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->getSessionValidTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v7, v1, v3

    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v1

    invoke-virtual {v1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCheckpoint()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->getConnectedDeviceCnt()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->hasPolicyInfo()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->getPolicyInfo()LcoeditCoreMessage/PolicyInfo;

    move-result-object v1

    invoke-virtual {v1}, LcoeditCoreMessage/PolicyInfo;->getMaxEditableDeviceCnt()I

    move-result v1

    int-to-long v4, v1

    move-wide v13, v4

    goto :goto_0

    :cond_3
    move-wide v13, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->hasPolicyInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, LcoeditCoreMessage/ServerMsg;->getPolicyInfo()LcoeditCoreMessage/PolicyInfo;

    move-result-object v1

    invoke-virtual {v1}, LcoeditCoreMessage/PolicyInfo;->getMaxConnectableDeviceCnt()I

    move-result v1

    int-to-long v1, v1

    move-wide v15, v1

    goto :goto_1

    :cond_4
    move-wide v15, v2

    :goto_1
    invoke-interface/range {v6 .. v17}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->handleReceiveServerResponse(JJJJJZ)V

    return-void

    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReceiveServerResponseMsg return : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleReceiveSubmitResponse(LcoeditCoreMessage/SubmitResponse;)V
    .locals 4

    invoke-virtual {p1}, LcoeditCoreMessage/SubmitResponse;->getCheckpoint()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {p1}, LcoeditCoreMessage/SubmitResponse;->getCheckpoint()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->setCoeditDataSubmitCheckPoint(J)V

    :cond_0
    return-void
.end method

.method private handleResetWorkspaceResponse(LcoeditCoreMessage/ResetWorkspaceResponse;)V
    .locals 7

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->getLatestSnapshotCheckpoint()J

    move-result-wide v1

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->getWorkspaceVersion()J

    move-result-wide v3

    invoke-virtual {p1}, LcoeditCoreMessage/ResetWorkspaceResponse;->getIsBlocked()Z

    move-result p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleResetWorkspaceResponse, workspaceId: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], lastSnapshotCheckPoint: ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "], workspaceVersion: ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "], isWorkspaceBlocked: ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConnectionHelperImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->handleResetWorkspaceResponse(J)V

    return-void
.end method

.method private isChannelConnectedState(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->isNotOpenedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isChannelConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChannelConnectedState ignore state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ConnectionHelperImpl"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private isChannelEnableState(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->isAlreadyStopped()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->isUndefinedState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChannelEnableState ignore state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , caller : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ConnectionHelperImpl"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method private isJwtValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "SERVER_ERRORUNEXPECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SERVER_ERROR_UPDATE_XML_VERSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SERVER_ERROR_UPDATE_APP_VERSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SERVER_ERROR_MAINTENANCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SERVER_ERROR_UNKNOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->onSnapError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private requestRetryFailedData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isChannelConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getUnuploadedNoteOpFileDatas()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->coeditDataRequestUploadObjects(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getUndownloadedObjectInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->coeditDataRequestDownloadFileData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public catchup(Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "GetDeviceList"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCatchup(JJ)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/16 p3, 0x6e

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public clearMultipleTransformData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->clearMultipleTransformData()V

    return-void
.end method

.method public clearSubmitData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->clearSubmitData()V

    return-void
.end method

.method public clearTransformData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->clearTransformData()V

    return-void
.end method

.method public clearTransformWithMultipleData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->clearTransformWithMultipleData()V

    return-void
.end method

.method public close()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->isAlreadyClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->isUndefinedState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/4 v1, 0x3

    const-string v2, "CLOSE"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->setClosedState()V

    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore close request, state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionHelperImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public compose(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Compose"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/16 v1, 0x6d

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoeditTransform(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ConnectionHelperImpl"

    const-string v2, "connect, ignore, data network failed or wifi mode enabled"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    iget-object v11, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    new-instance v12, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;

    const/4 v1, 0x0

    invoke-direct {v12, p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditGrpcDataContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Lcom/samsung/android/support/senl/nt/coedit/connection/a;)V

    new-instance v13, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;

    invoke-direct {v13, p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Lcom/samsung/android/support/senl/nt/coedit/connection/b;)V

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v13}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->createChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->setStartedState()V

    return-void
.end method

.method public connectSnap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    move-object/from16 v6, p5

    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isJwtValid(Ljava/lang/String;)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    return v11

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    iget-object v9, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    new-instance v10, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;

    const/4 v2, 0x0

    invoke-direct {v10, p0, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$SnapGrpcDataContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Lcom/samsung/android/support/senl/nt/coedit/connection/c;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->createChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    const-string v2, "Start - Snap Set Finished State false"

    invoke-virtual {v1, v2, v11}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->requestSnap(Ljava/lang/String;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public disconnectSnap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    const-string v1, "Stop - Shutdown Channel"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->requestSnap(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->release()V

    return-void
.end method

.method public downloadNote(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    const/16 v1, 0x67

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->requestSnap(Ljava/lang/String;I)V

    return-void
.end method

.method public getCoeditDataNotifyCheckPoint()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getCoeditDataNotifyCheckPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCoeditDataResultCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getCoeditDataResultCode()I

    move-result v0

    return v0
.end method

.method public getCoeditDataSubmitCheckPoint()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getCoeditDataSubmitCheckPoint()J

    move-result-wide v0

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getComposedOps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceList()V
    .locals 3

    const-string v0, "GetDeviceList"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/16 v2, 0x6f

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    :cond_0
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getMultipleTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;

    move-result-object v0

    return-object v0
.end method

.method public getNoteSnapLatestInfo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    const/16 v1, 0x68

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->requestSnap(Ljava/lang/String;I)V

    return-void
.end method

.method public getSnapDataDownloadStroke(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->getSnapDataDownloadStroke(Ljava/lang/String;)[B

    move-result-object p1

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->getSnapDataDownloadStrokeMapKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSnapDataDownloadXmlData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->getSnapDataDownloadXmlData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnapDataResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->getSnapDataResourceId()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getTransformedOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;

    move-result-object v0

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getTransformedWithMultipleOps()Lcom/samsung/android/support/senl/ntnl/coedit/OperationPair;

    move-result-object v0

    return-object v0
.end method

.method public handleCoeditDataReceiveMessages()V
    .locals 1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->getCoeditDataReceiveMsgData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->handleCoeditDataReceiveMessage(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initialize(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    return-void
.end method

.method public isChannelConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isChannelConnected()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataReceiveMsgEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isCoeditDataReceiveMsgEmpty()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataResultDeadlineExceeded()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isCoeditDataResultDeadlineExceeded()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataResultNotFound()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isCoeditDataResultNotFound()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataResultOk()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isCoeditDataResultOk()Z

    move-result v0

    return v0
.end method

.method public isCoeditDataResultUnavailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isCoeditDataResultUnavailable()Z

    move-result v0

    return v0
.end method

.method public isSnapDataResultOk()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->isSnapDataResultOk()Z

    move-result v0

    return v0
.end method

.method public isVaildState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public multipleTransform(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MultipleTransform"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/16 v1, 0x6b

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoeditTransform(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->isStartedState()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore open request, state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->getState()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionHelperImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->setOpenedState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/4 v1, 0x1

    const-string v2, "OPEN"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    return-void
.end method

.method public putCoeditDataSubmitRequest(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .locals 8
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isChannelConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v7, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->getCoeditObjectInfos(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p4

    if-nez p4, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p5}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->coeditDataRequestUploadObjects(Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    move-object v3, p3

    move-wide v4, p1

    move-object v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->putSubmitRequest(Ljava/util/List;JLjava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method public putComposeRequest(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOp;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->putComposeRequest(Ljava/util/List;)V

    return-void
.end method

.method public putMultipleTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->putMultipleTransformRequest(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public putSnapDataUploadNoteRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->putUploadNoteRequest(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putSnapDataUploadStrokeRequest(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->putSnapDataUploadStrokeRequest(Ljava/lang/String;Ljava/lang/String;[BJ)V

    return-void
.end method

.method public putTransformRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->putTransformRequest(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public putTransformWithMultipleRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->putTransformWithMultipleRequest(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public reOpen(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isChannelConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->setOpenedState()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/4 v0, 0x1

    const-string v1, "REOPEN"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 3

    const-string v0, "REFRESH"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public refreshForReopen()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->refreshForReopen()V

    return-void
.end method

.method public releaseContinuousMessageThread(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->releaseContinuousMessageThread(Ljava/lang/String;)V

    return-void
.end method

.method public removeUndownloadedObjectInfo(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isChannelConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->removeUndownloadedObjectInfo(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->isChannelConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->removeUndownloadedObjectInfo(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeUnuploadedContentFileData(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->isChannelConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->removeUnuploadedContentFileData(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->isChannelConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->removeUnuploadedContentFileData(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public requestDownloadStroke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "DownloadStroke"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->saveDownloadStrokeData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->putDownloadStrokeData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->putCoeditDataDownloadStrokeMsgQueue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to DownloadStroke. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConnectionHelperImpl"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/16 p2, 0x69

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    return-void
.end method

.method public requestPermission(Z)Z
    .locals 3

    const-string v0, "RequestPermission"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->putPermissionRequest(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermission, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "EDIT"

    goto :goto_0

    :cond_1
    const-string p1, "VIEW"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x70

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isCoeditDataResultOk()Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore requestPermission request. error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConnectionHelperImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public requestResetWorkspace(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ResetWorkspace"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_ "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->getWorkspaceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x71

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setCoeditDataAbnormalNotifyLostCatchType()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    sget-object v1, LcoeditCoreMessage/CatchupType;->ABNORMAL_NOTIFY_LOST:LcoeditCoreMessage/CatchupType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->setCoeditDataCatchupType(LcoeditCoreMessage/CatchupType;)V

    return-void
.end method

.method public setCoeditDataAbnormalSubmitAckLostCatchupType()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    sget-object v1, LcoeditCoreMessage/CatchupType;->ABNORMAL_SUBMIT_ACK_LOST:LcoeditCoreMessage/CatchupType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->setCoeditDataCatchupType(LcoeditCoreMessage/CatchupType;)V

    return-void
.end method

.method public setCoeditDataNormalNewMemberCatchType()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    sget-object v1, LcoeditCoreMessage/CatchupType;->NORMAL_NEW_MEMBER:LcoeditCoreMessage/CatchupType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->setCoeditDataCatchupType(LcoeditCoreMessage/CatchupType;)V

    return-void
.end method

.method public snapDataRequestUploadFileData(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->snapDataRequestUploadFileData(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public stop()V
    .locals 1

    const-string v0, "stop"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelEnableState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->stopChannel()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;->setStoppedState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mGrpcRunnableContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mConnectionHelperContract:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->release()V

    return-void
.end method

.method public submit(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Submit"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/16 v1, 0x67

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public transform(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Transform"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/16 v1, 0x6a

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoeditTransform(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public transformWithMultiple(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TransformWithMultiple"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/16 v1, 0x6c

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoeditTransform(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public uploadNote(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mSnapGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;

    const/16 v1, 0x66

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->requestSnap(Ljava/lang/String;I)V

    return-void
.end method

.method public uploadStroke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UploadStroke"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->isChannelConnectedState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->mCoeditGrpcManager:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;

    const/16 v1, 0x68

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/CoeditGrpcManager;->requestCoedit(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
